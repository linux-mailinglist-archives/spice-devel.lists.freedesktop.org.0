Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438C71FCAD
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 01:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EFE689259;
	Wed, 15 May 2019 23:11:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6120789259
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 23:11:20 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hR349-0001rp-MC
 for spice-devel@lists.freedesktop.org; Wed, 15 May 2019 18:12:06 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hR33N-0008KB-NL
 for spice-devel@lists.freedesktop.org; Thu, 16 May 2019 01:11:17 +0200
Date: Thu, 16 May 2019 01:11:17 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hR33N-0008KB-NL@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It makes no sense to expect average frame sizes anywhere
 close
 to 2GB. Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 server/gstreamer-encoder.c
 | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WGNwUsUyJKdqAt5IZFy/XKAPGQ/AmPGGTxOMiGn1aAE=; b=hYhCPi+FTBw7BeEXy/M8ZoCvr7
 Q3ElDBm3qQNdQPJbKBGZ90/yQN6LvBUy32auOd155SShjvRTndGIiU7wKBHmdkhek+1FFsCH53gRq
 rcoGANSbc326riD6wnSdyj90XKf6os9AFAAGlTORm4qdDidRDY9DnXgnfnVaDZp/GJTc=;
Subject: [Spice-devel] [spice] gstreamer-encoder: Return the average frame
 size as a 32 bit int
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SXQgbWFrZXMgbm8gc2Vuc2UgdG8gZXhwZWN0IGF2ZXJhZ2UgZnJhbWUgc2l6ZXMgYW55d2hlcmUg
Y2xvc2UgdG8gMkdCLgoKU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNv
ZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDQgKystLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rl
ci5jCmluZGV4IGUzMTllZWEyMi4uNjEzMDc4MWRhIDEwMDY0NAotLS0gYS9zZXJ2ZXIvZ3N0cmVh
bWVyLWVuY29kZXIuYworKysgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwpAQCAtMzk2LDcg
KzM5Niw3IEBAIHN0YXRpYyB1aW50NjRfdCBnZXRfYXZlcmFnZV9lbmNvZGluZ190aW1lKFNwaWNl
R3N0RW5jb2RlciAqZW5jb2RlcikKICAgICByZXR1cm4gZW5jb2Rlci0+c3RhdF9kdXJhdGlvbl9z
dW0gLyBjb3VudDsKIH0KIAotc3RhdGljIHVpbnQ2NF90IGdldF9hdmVyYWdlX2ZyYW1lX3NpemUo
U3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQorc3RhdGljIHVpbnQzMl90IGdldF9hdmVyYWdlX2Zy
YW1lX3NpemUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQogewogICAgIHVpbnQzMl90IGNvdW50
ID0gZW5jb2Rlci0+aGlzdG9yeV9sYXN0ICsKICAgICAgICAgKGVuY29kZXItPmhpc3RvcnlfbGFz
dCA8IGVuY29kZXItPnN0YXRfZmlyc3QgPyBTUElDRV9HU1RfSElTVE9SWV9TSVpFIDogMCkgLQpA
QCAtNTIwLDcgKzUyMCw3IEBAIHN0YXRpYyB1aW50MzJfdCBnZXRfbWluX3BsYXliYWNrX2RlbGF5
KFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKICAgICAgKiBhbiBJIGZyYW1lKSBhbmQgYW4gYXZl
cmFnZSBmcmFtZS4gVGhpcyBhbHNvIHRha2VzIGludG8gYWNjb3VudCB0aGUKICAgICAgKiBmcmFt
ZXMgZHJvcHBlZCBieSB0aGUgZW5jb2RlciBiaXQgcmF0ZSBjb250cm9sLgogICAgICAqLwotICAg
IHVpbnQ2NF90IHNpemUgPSBnZXRfbWF4aW11bV9mcmFtZV9zaXplKGVuY29kZXIpICsgZ2V0X2F2
ZXJhZ2VfZnJhbWVfc2l6ZShlbmNvZGVyKTsKKyAgICB1aW50MzJfdCBzaXplID0gZ2V0X21heGlt
dW1fZnJhbWVfc2l6ZShlbmNvZGVyKSArIGdldF9hdmVyYWdlX2ZyYW1lX3NpemUoZW5jb2Rlcik7
CiAgICAgdWludDMyX3Qgc2VuZF90aW1lID0gTVNFQ19QRVJfU0VDICogc2l6ZSAqIDggLyBlbmNv
ZGVyLT5iaXRfcmF0ZTsKIAogICAgIC8qIEFsc28gZmFjdG9yIGluIHRoZSBuZXR3b3JrIGxhdGVu
Y3kgd2l0aCBhIG1hcmdpbiBmb3Igaml0dGVyLiAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
