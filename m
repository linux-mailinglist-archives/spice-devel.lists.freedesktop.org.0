Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0349227821
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CF389D44;
	Thu, 23 May 2019 08:37:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C52B89D43
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 97A8830832EF
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:52 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B78A15D9C3;
 Thu, 23 May 2019 08:37:51 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:22 +0200
Message-Id: <20190523083725.1554-11-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 23 May 2019 08:37:52 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 10/13] spice-win: don't assign
 drive_letter on error
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

ZHJpdmVfbGV0dGVyIHNob3VsZCBiZSBhc3NpZ25lZCBvbmx5IHdoZW4gdGhlIG1hcHBpbmcgd2Fz
IHN1Y2Nlc3NmdWwuCgpTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQu
Y29tPgotLS0KIHNwaWNlL3NwaWNlLXdlYmRhdmQuYyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9z
cGljZS9zcGljZS13ZWJkYXZkLmMgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKaW5kZXggMjkwNThl
Ny4uZjJjN2YwNyAxMDA2NDQKLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCisrKyBiL3NwaWNl
L3NwaWNlLXdlYmRhdmQuYwpAQCAtOTEwLDE0ICs5MTAsMjAgQEAgbWFwX2RyaXZlX2NiKEdUYXNr
ICp0YXNrLAogICAgICAgICAgIGJyZWFrOwogICAgICAgICB9CiAKLSAgICAgIGlmIChtYXBfZHJp
dmUgKGRyaXZlX2xldHRlcikgIT0gRVJST1JfQUxSRUFEWV9BU1NJR05FRCkKKyAgICAgIHJldCA9
IG1hcF9kcml2ZSAoZHJpdmVfbGV0dGVyKTsKKyAgICAgIGlmIChyZXQgPT0gRVJST1JfQUxSRUFE
WV9BU1NJR05FRCkKICAgICAgICAgewotICAgICAgICAgIGJyZWFrOworICAgICAgICAgIC8qIHRy
eSBhZ2FpbiB3aXRoIGFub3RoZXIgbGV0dGVyICovCisgICAgICAgICAgY29udGludWU7CisgICAg
ICAgIH0KKyAgICAgIGlmIChyZXQgIT0gTk9fRVJST1IpCisgICAgICAgIHsKKyAgICAgICAgICBk
cml2ZV9sZXR0ZXIgPSAwOwogICAgICAgICB9CisgICAgICBicmVhazsKICAgICAgIC8vVE9ETzog
QWZ0ZXIgbWFwcGluZywgcmVuYW1lIG5ldHdvcmsgZHJpdmUgZnJvbSBcXGxvY2FsaG9zdEBQT1JU
XERhdldXV1Jvb3QKICAgICAgIC8vICAgICAgdG8gc29tZXRoaW5nIGxpa2UgU1BJQ0UgU2hhcmVk
IEZvbGRlcgogICAgIH0KLQogICBnX211dGV4X2xvY2soJm1hcF9kcml2ZV9kYXRhLT5zZXJ2aWNl
X2RhdGEtPm11dGV4KTsKICAgbWFwX2RyaXZlX2RhdGEtPnNlcnZpY2VfZGF0YS0+ZHJpdmVfbGV0
dGVyID0gZHJpdmVfbGV0dGVyOwogICBnX211dGV4X3VubG9jaygmbWFwX2RyaXZlX2RhdGEtPnNl
cnZpY2VfZGF0YS0+bXV0ZXgpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
