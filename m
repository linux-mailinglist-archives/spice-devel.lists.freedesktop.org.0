Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF9755C85
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 01:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37206E1BB;
	Tue, 25 Jun 2019 23:44:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB88F6E1BE
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 23:44:46 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hfv7l-0003M2-GK
 for spice-devel@lists.freedesktop.org; Tue, 25 Jun 2019 18:45:18 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hfv7E-00006z-44
 for spice-devel@lists.freedesktop.org; Wed, 26 Jun 2019 01:44:44 +0200
Date: Wed, 26 Jun 2019 01:44:44 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <9e4beeec69d6cb7be4e5c9d4b292f2761d5158e2.1561506197.git.fgouget@free.fr>
Message-ID: <30b37bbce10da709c1d01a1d21abb610bf339637.1561506197.git.fgouget@free.fr>
References: <9e4beeec69d6cb7be4e5c9d4b292f2761d5158e2.1561506197.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  More data helps improve the accuracy of the estimation of
 the true clock offset and minimum network latency. Signed-off-by: Francois
 Gouget <fgouget@codeweavers.com> --- src/channel-playback.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-) 
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
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oaUAYjuKE89ay+Ob+4Wz7vuPOXHFbIRPBKsRJ/BXyZw=; b=XDv5iKqJ12ZBkKYpXQPMiBU69
 lOCZ57xe/jaFu7MnOL4zHpEq3LiYQokWvkWgCODKTzT+ssnq1MzXO3DbVNphyND3r9ok9qXHd+WCA
 r+lwtsBICzsLnc7iiy/gnpoQUY2NcjQEgNbBTAyneMuf5qWE4lkg0Tj0hbuPX3RIS84vA=;
Subject: [Spice-devel] [client v3 2/6] playback: Use the audio timestamps
 for the global mmtime conversion
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

TW9yZSBkYXRhIGhlbHBzIGltcHJvdmUgdGhlIGFjY3VyYWN5IG9mIHRoZSBlc3RpbWF0aW9uIG9m
IHRoZSB0cnVlIGNsb2NrCm9mZnNldCBhbmQgbWluaW11bSBuZXR3b3JrIGxhdGVuY3kuCgpTaWdu
ZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNyYy9jaGFubmVsLXBsYXliYWNrLmMgfCAxMSArKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5l
bC1wbGF5YmFjay5jIGIvc3JjL2NoYW5uZWwtcGxheWJhY2suYwppbmRleCBhMDA3MDZmZS4uNjU2
YTQwMzcgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLXBsYXliYWNrLmMKKysrIGIvc3JjL2NoYW5u
ZWwtcGxheWJhY2suYwpAQCAtMzAyLDE0ICszMDIsMTYgQEAgc3RhdGljIHZvaWQgcGxheWJhY2tf
aGFuZGxlX2RhdGEoU3BpY2VDaGFubmVsICpjaGFubmVsLCBTcGljZU1zZ0luICppbikKIHsKICAg
ICBTcGljZVBsYXliYWNrQ2hhbm5lbFByaXZhdGUgKmMgPSBTUElDRV9QTEFZQkFDS19DSEFOTkVM
KGNoYW5uZWwpLT5wcml2OwogICAgIFNwaWNlTXNnUGxheWJhY2tQYWNrZXQgKnBhY2tldCA9IHNw
aWNlX21zZ19pbl9wYXJzZWQoaW4pOworICAgIFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbjsKIAogI2lm
ZGVmIERFQlVHCiAgICAgQ0hBTk5FTF9ERUJVRyhjaGFubmVsLCAiJXM6IHRpbWUgJXUgZGF0YSAl
cCBzaXplICVkIiwgX19GVU5DVElPTl9fLAogICAgICAgICAgICAgICAgICAgcGFja2V0LT50aW1l
LCBwYWNrZXQtPmRhdGEsIHBhY2tldC0+ZGF0YV9zaXplKTsKICNlbmRpZgogCi0gICAgaWYgKHNw
aWNlX21tdGltZV9kaWZmKGMtPmxhc3RfdGltZSwgcGFja2V0LT50aW1lKSA+IDApCi0gICAgICAg
IGdfd2Fybl9pZl9yZWFjaGVkKCk7CisgICAgLyogVGhpcyBhbHNvIHVwZGF0ZXMgdGhlIHRpbWUg
b2Zmc2V0ICovCisgICAgc2Vzc2lvbiA9IHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24oY2hhbm5l
bCk7CisgICAgc3BpY2Vfc2Vzc2lvbl9tbXRpbWUyY2xpZW50X3RpbWUoc2Vzc2lvbiwgcGFja2V0
LT50aW1lKTsKIAogICAgIGMtPmxhc3RfdGltZSA9IHBhY2tldC0+dGltZTsKIApAQCAtMzYxLDEx
ICszNjMsMTYgQEAgc3RhdGljIHZvaWQgcGxheWJhY2tfaGFuZGxlX3N0YXJ0KFNwaWNlQ2hhbm5l
bCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaW4pCiB7CiAgICAgU3BpY2VQbGF5YmFja0NoYW5uZWxQ
cml2YXRlICpjID0gU1BJQ0VfUExBWUJBQ0tfQ0hBTk5FTChjaGFubmVsKS0+cHJpdjsKICAgICBT
cGljZU1zZ1BsYXliYWNrU3RhcnQgKnN0YXJ0ID0gc3BpY2VfbXNnX2luX3BhcnNlZChpbik7Cisg
ICAgU3BpY2VTZXNzaW9uICpzZXNzaW9uOwogCiAgICAgQ0hBTk5FTF9ERUJVRyhjaGFubmVsLCAi
JXM6IGZtdCAldSBjaGFubmVscyAldSBmcmVxICV1IHRpbWUgJXUgbW9kZSAlcyIsIF9fRlVOQ1RJ
T05fXywKICAgICAgICAgICAgICAgICAgIHN0YXJ0LT5mb3JtYXQsIHN0YXJ0LT5jaGFubmVscywg
c3RhcnQtPmZyZXF1ZW5jeSwgc3RhcnQtPnRpbWUsCiAgICAgICAgICAgICAgICAgICBzcGljZV9h
dWRpb19kYXRhX21vZGVfdG9fc3RyaW5nKGMtPm1vZGUpKTsKIAorICAgIC8qIFRoaXMgYWxzbyB1
cGRhdGVzIHRoZSB0aW1lIG9mZnNldCAqLworICAgIHNlc3Npb24gPSBzcGljZV9jaGFubmVsX2dl
dF9zZXNzaW9uKGNoYW5uZWwpOworICAgIHNwaWNlX3Nlc3Npb25fbW10aW1lMmNsaWVudF90aW1l
KHNlc3Npb24sIHN0YXJ0LT50aW1lKTsKKwogICAgIGMtPmZyYW1lX2NvdW50ID0gMDsKICAgICBj
LT5sYXN0X3RpbWUgPSBzdGFydC0+dGltZTsKICAgICBjLT5pc19hY3RpdmUgPSBUUlVFOwotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
