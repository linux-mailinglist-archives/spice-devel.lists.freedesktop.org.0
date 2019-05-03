Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FCD13362
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 19:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF5E6E83C;
	Fri,  3 May 2019 17:53:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 3603 seconds by postgrey-1.36 at gabe;
 Fri, 03 May 2019 17:53:47 UTC
Received: from nologin.es (mail.nologin.es [217.75.227.232])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C6496E83C
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 17:53:46 +0000 (UTC)
Received: from [62.81.190.66] (account javier.celaya@flexvdi.com HELO
 flexdevel.jca.flexvdi.com)
 by nologin.es (CommuniGate Pro SMTP 6.2.12)
 with ESMTPSA id 33668129; Fri, 03 May 2019 18:53:42 +0200
From: Javier Celaya <javier.celaya@flexvdi.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  3 May 2019 18:52:00 +0200
Message-Id: <20190503165200.24328-1-javier.celaya@flexvdi.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Spice-devel] [Spice-Gtk] SpiceSession: Create webdav even with
 NULL shared_dir
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
Cc: devel@flexvdi.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QSBwaG9kYXYgc2VydmVyIGNyZWF0ZWQgd2l0aCBhIE5VTEwgc2hhcmVkIGRpciBpcyB2YWxpZCBh
bmQKcmVzdWx0cyBpbiBhbiBlcnJvciBhbnN3ZXIgdG8gYWxsIHJlcXVlc3RzIG9mIHRoZSB3ZWJk
YXYgY2hhbm5lbCwKaW5zdGVhZCBvZiBzaWxlbnRseSBpZ25vcmluZyB0aGVtLgoKVGhpcyBpcyBi
ZXR0ZXIgdGhhbiBqdXN0IHJldHVybmluZyBOVUxMIGZyb20Kc3BpY2Vfc2Vzc2lvbl9nZXRfd2Vi
ZGF2X3NlcnZlciBiZWNhdXNlOgphKSBpdCBjcmFzaGVzIGNoYW5uZWxfd2ViZGF2LmM6c3RhcnRf
Y2xpZW50LgpiKSBldmVuIGlmIGl0IGRpZCBub3QgY3Jhc2gsIGFjY2VzcyB0byB0aGUgc2hhcmVk
IGRpciBmcm9tIHRoZSBndWVzdAogICB3b3VsZCBmYWlsIGJ5IHRpbWVvdXQgaW5zdGVhZCBvZiBp
bW1lZGlhdGVseSBub3RpZnlpbmcgb2YgYW4gZXJyb3IuCi0tLQogc3JjL3NwaWNlLXNlc3Npb24u
YyB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
c3JjL3NwaWNlLXNlc3Npb24uYyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKaW5kZXggMDRiYTEyNC4u
Y2JjZDhjNCAxMDA2NDQKLS0tIGEvc3JjL3NwaWNlLXNlc3Npb24uYworKysgYi9zcmMvc3BpY2Ut
c2Vzc2lvbi5jCkBAIC0yODEzLDEwICsyODEzLDYgQEAgUGhvZGF2U2VydmVyKiBzcGljZV9zZXNz
aW9uX2dldF93ZWJkYXZfc2VydmVyKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKICAgICBzdGF0aWMg
R011dGV4IG11dGV4OwogCiAgICAgY29uc3QgZ2NoYXIgKnNoYXJlZF9kaXIgPSBzcGljZV9zZXNz
aW9uX2dldF9zaGFyZWRfZGlyKHNlc3Npb24pOwotICAgIGlmIChzaGFyZWRfZGlyID09IE5VTEwp
IHsKLSAgICAgICAgU1BJQ0VfREVCVUcoIk5vIHNoYXJlZCBkaXIgc2V0LCBub3QgY3JlYXRpbmcg
d2ViZGF2IHNlcnZlciIpOwotICAgICAgICByZXR1cm4gTlVMTDsKLSAgICB9CiAKICAgICBnX211
dGV4X2xvY2soJm11dGV4KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
