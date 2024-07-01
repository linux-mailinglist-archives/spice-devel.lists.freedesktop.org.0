Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3322891DDB7
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2024 13:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BCE10E10C;
	Mon,  1 Jul 2024 11:21:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 503 seconds by postgrey-1.36 at gabe;
 Mon, 01 Jul 2024 11:21:07 UTC
Received: from new-mail.astralinux.ru (new-mail.astralinux.ru [51.250.53.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370D010E10C
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2024 11:21:07 +0000 (UTC)
Received: from rbta-msk-lt-106062.astralinux.ru (unknown [10.177.20.58])
 by new-mail.astralinux.ru (Postfix) with ESMTPA id 4WCNgF4TNQzlW49;
 Mon,  1 Jul 2024 14:12:41 +0300 (MSK)
From: Anastasia Belova <abelova@astralinux.ru>
To: spice-devel@lists.freedesktop.org
Cc: Anastasia Belova <abelova@astralinux.ru>,
	sdl.qemu@linuxtesting.org
Subject: [PATCH] usbredirhost: prevent overflow in
 usbredirhost_set_iso_threshold
Date: Mon,  1 Jul 2024 14:11:54 +0300
Message-Id: <20240701111154.11633-1-abelova@astralinux.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DrWeb-SpamScore: 0
X-DrWeb-SpamState: legit
X-DrWeb-SpamDetail: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehuddgtddvucetufdoteggodetrfcurfhrohhfihhlvgemucfftfghgfeunecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheptehnrghsthgrshhirgcuuegvlhhovhgruceorggsvghlohhvrgesrghsthhrrghlihhnuhigrdhruheqnecuggftrfgrthhtvghrnhepfffhffeigfegvdejudfhtdejgfdvhfetiedvgfelveeliefhjefhfeektefhgeehnecukfhppedutddrudejjedrvddtrdehkeenucfrrghrrghmpehhvghloheprhgsthgrqdhmshhkqdhlthdquddtiedtiedvrdgrshhtrhgrlhhinhhugidrrhhupdhinhgvthepuddtrddujeejrddvtddrheekmeegkeefgeekpdhmrghilhhfrhhomheprggsvghlohhvrgesrghsthhrrghlihhnuhigrdhruhdpnhgspghrtghpthhtohepfedprhgtphhtthhopehsphhitggvqdguvghvvghlsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdhrtghpthhtoheprggsvghlohhvrgesrghsthhrrghlihhnuhigrdhruhdprhgtphhtthhopehsughlrdhqvghmuheslhhinhhugihtvghsthhinhhgrdhorhhgnecuffhrrdghvggsucetnhhtihhsphgrmhemucenucfvrghgshem
X-DrWeb-SpamVersion: Dr.Web Antispam 1.0.7.202406240#1719828397#02
X-AntiVirus: Checked by Dr.Web [MailD: 11.1.19.2307031128,
 SE: 11.1.12.2210241838, Core engine: 7.00.65.05230, Virus records: 12039011,
 Updated: 2024-Jul-01 08:59:52 UTC]
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

pkts_per_transfer < MAX_PACKETS_PER_TRANSFER = 32.
transfer_count < MAX_TRANSFER_COUNT = 16.
max_packetsize = maxp * mult. mult <= 3.
maxp <= 0x7ff. If all variables have their max value,
the result will be bigger that uint16_t.
Add an explicit cast.

Signed-off-by: Anastasia Belova <abelova@astralinux.ru>
---
 usbredirhost/usbredirhost.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/usbredirhost/usbredirhost.c b/usbredirhost/usbredirhost.c
index 03c56e9..ca19473 100644
--- a/usbredirhost/usbredirhost.c
+++ b/usbredirhost/usbredirhost.c
@@ -1193,7 +1193,7 @@ static void usbredirhost_stop_stream(struct usbredirhost *host,
 static void usbredirhost_set_iso_threshold(struct usbredirhost *host,
     uint8_t pkts_per_transfer, uint8_t transfer_count, uint16_t max_packetsize)
 {
-    uint64_t reference = pkts_per_transfer * transfer_count * max_packetsize;
+    uint64_t reference = (uint64_t)pkts_per_transfer * transfer_count * max_packetsize;
     host->iso_threshold.lower = reference / 2;
     host->iso_threshold.higher = reference * 3;
     DEBUG("higher threshold is %" PRIu64 " bytes | lower threshold is %" PRIu64 " bytes",
-- 
2.30.2

