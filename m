Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 160091FCAB
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 01:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708E289257;
	Wed, 15 May 2019 23:11:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B576B89257
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 23:11:10 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hR33z-0001rU-TM
 for spice-devel@lists.freedesktop.org; Wed, 15 May 2019 18:11:56 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hR33D-0008Jc-SQ
 for spice-devel@lists.freedesktop.org; Thu, 16 May 2019 01:11:08 +0200
Date: Thu, 16 May 2019 01:11:07 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hR33D-0008Jc-SQ@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 server/mjpeg-encoder.c | 1 - 1 file changed,
 1 deletion(-) diff --git a/server/mjpeg-encoder.c
 b/server/mjpeg-encoder.c index b373e8b71..1400519bb 100644 ---
 a/server/mjpeg-encoder.c
 +++ b/server/mjpeg-encoder.c @@ -38,7 +38,6 @@ static const int mjpeg_qualit
 [...] Content analysis details:   (-103.7 points, 5.0 required)
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
 bh=m4785QLwYck2U6UZVTwn/sCGv7VEwvk3jQ//3Ehbg5o=; b=VW03z+nH6T3ue1Qyh2orqzy3ZQ
 HDuwp56ACZ19AiFYEvOo+X9Mq30wWvqDlNIWZ0UhG4jy3si6YFugzbQvfh6Xza+deqCQLM1A5mxWi
 rmNwYtdFP1j5DE9FJNvdiE3HEmfi2HgXQIm2YM/Hmtry0xww7Q/QCP3Lf10ULD17A+0M=;
Subject: [Spice-devel] [spice] mjpeg: Remove the unused
 MJPEG_LOW_FPS_RATE_TH constant
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

U2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4K
LS0tCiBzZXJ2ZXIvbWpwZWctZW5jb2Rlci5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9tanBlZy1lbmNvZGVyLmMgYi9zZXJ2ZXIvbWpw
ZWctZW5jb2Rlci5jCmluZGV4IGIzNzNlOGI3MS4uMTQwMDUxOWJiIDEwMDY0NAotLS0gYS9zZXJ2
ZXIvbWpwZWctZW5jb2Rlci5jCisrKyBiL3NlcnZlci9tanBlZy1lbmNvZGVyLmMKQEAgLTM4LDcg
KzM4LDYgQEAgc3RhdGljIGNvbnN0IGludCBtanBlZ19xdWFsaXR5X3NhbXBsZXNbTUpQRUdfUVVB
TElUWV9TQU1QTEVfTlVNXSA9IHsyMCwgMzAsIDQwLAogI2RlZmluZSBNSlBFR19BVkVSQUdFX1NJ
WkVfV0lORE9XIDMKIAogI2RlZmluZSBNSlBFR19CSVRfUkFURV9FVkFMX01JTl9OVU1fRlJBTUVT
IDMKLSNkZWZpbmUgTUpQRUdfTE9XX0ZQU19SQVRFX1RIIDMKIAogI2RlZmluZSBNSlBFR19TRVJW
RVJfU1RBVFVTX0VWQUxfRlBTX0lOVEVSVkFMIDEKICNkZWZpbmUgTUpQRUdfU0VSVkVSX1NUQVRV
U19ET1dOR1JBREVfRFJPUF9GQUNUT1JfVEggMC4xCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
