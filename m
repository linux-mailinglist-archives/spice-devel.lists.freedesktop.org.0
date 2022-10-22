Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40906608DA5
	for <lists+spice-devel@lfdr.de>; Sat, 22 Oct 2022 16:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B1410E076;
	Sat, 22 Oct 2022 14:23:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 577 seconds by postgrey-1.36 at gabe;
 Sat, 22 Oct 2022 12:00:56 UTC
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90C410E121
 for <spice-devel@lists.freedesktop.org>; Sat, 22 Oct 2022 12:00:56 +0000 (UTC)
Received: from fwd88.dcpf.telekom.de (fwd88.aul.t-online.de [10.223.144.114])
 by mailout09.t-online.de (Postfix) with SMTP id D43AADDAB;
 Sat, 22 Oct 2022 13:51:16 +0200 (CEST)
Received: from linpower.localnet ([84.175.228.229]) by fwd88.t-online.de
 with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
 esmtp id 1omD23-2Izys50; Sat, 22 Oct 2022 13:51:15 +0200
Received: by linpower.localnet (Postfix, from userid 1000)
 id 755DA2000A4; Sat, 22 Oct 2022 13:51:15 +0200 (CEST)
From: =?UTF-8?q?Volker=20R=C3=BCmelin?= <vr_qemu@t-online.de>
To: spice-devel@lists.freedesktop.org
Date: Sat, 22 Oct 2022 13:51:15 +0200
Message-Id: <20221022115115.23040-1-vr_qemu@t-online.de>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-TOI-EXPURGATEID: 150726::1666439475-E20B2E65-86675EB0/0/0 CLEAN NORMAL
X-TOI-MSGID: 4f8372b4-6d2c-461b-84c5-163b235bfab0
X-Mailman-Approved-At: Sat, 22 Oct 2022 14:23:38 +0000
Subject: [Spice-devel] [PATCH] sound: fix pointer arithmetic in
 snd_record_handle_write()
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

The variable 'now' counts in audio sample frames, but the variable
'data' is of type uint8_t *. Multiply 'now' by the size of an audio
sample frame to get the correct source pointer.

This improves the quality of audio recordings in QEMU a little bit.

Fixes: 5d5a7bd181 ("sound: Avoid cast that could cause alignment problems")
Signed-off-by: Volker Rümelin <vr_qemu@t-online.de>
---
 server/sound.cpp | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/server/sound.cpp b/server/sound.cpp
index eca2706c..4909d158 100644
--- a/server/sound.cpp
+++ b/server/sound.cpp
@@ -302,7 +302,7 @@ static bool snd_record_handle_write(RecordChannelClient *record_client, size_t s
     memcpy(record_client->samples + write_pos, data, now << 2);
 
     if (size) {
-        memcpy(record_client->samples, data + now, size << 2);
+        memcpy(record_client->samples, data + (now << 2), size << 2);
     }
 
     if (record_client->write_pos - record_client->read_pos > RECORD_SAMPLES_SIZE) {
-- 
2.35.3

