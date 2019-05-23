Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F182781B
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4A389CF8;
	Thu, 23 May 2019 08:37:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93D889CE1
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 31C9A64458
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:45 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 605BF5D9C3;
 Thu, 23 May 2019 08:37:44 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:16 +0200
Message-Id: <20190523083725.1554-5-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 23 May 2019 08:37:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 04/13] spice: quit service quickly
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

V2Ugc2hvdWxkbid0IHdhaXQgZm9yIDEgc2Vjb25kIGlmIHRoZSBzZXJ2aWNlIGlzIHN1cHBvc2Vk
IHRvIHN0b3AuCgpTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29t
PgotLS0KIHNwaWNlL3NwaWNlLXdlYmRhdmQuYyB8IDE1ICsrKysrKysrKy0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9z
cGljZS9zcGljZS13ZWJkYXZkLmMgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKaW5kZXggY2RmYTcz
ZC4uNmFkNjNjNSAxMDA2NDQKLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCisrKyBiL3NwaWNl
L3NwaWNlLXdlYmRhdmQuYwpAQCAtOTIzLDExICs5MjMsMTUgQEAgbWFwX2RyaXZlX2NiKEdUYXNr
ICp0YXNrLAogCiAjZW5kaWYKIAotc3RhdGljIHZvaWQKKy8qIHJldHVybnMgRkFMU0UgaWYgdGhl
IHNlcnZpY2Ugc2hvdWxkIHF1aXQgKi8KK3N0YXRpYyBnYm9vbGVhbgogcnVuX3NlcnZpY2UgKFNl
cnZpY2VEYXRhICpzZXJ2aWNlX2RhdGEpCiB7CiAgIGdfZGVidWcgKCJSdW4gc2VydmljZSIpOwog
CisgIGlmIChxdWl0X3NlcnZpY2UpCisgICAgcmV0dXJuIEZBTFNFOworCiAjaWZkZWYgR19PU19X
SU4zMgogICBNYXBEcml2ZURhdGEgbWFwX2RyaXZlX2RhdGE7CiAgIG1hcF9kcml2ZV9kYXRhLmNh
bmNlbF9tYXAgPSBnX2NhbmNlbGxhYmxlX25ldyAoKTsKQEAgLTEwMDMsNiArMTAwNyw3IEBAIHJ1
bl9zZXJ2aWNlIChTZXJ2aWNlRGF0YSAqc2VydmljZV9kYXRhKQogI2Vsc2UKICAgY2xvc2UgKHBv
cnRfZmQpOwogI2VuZGlmCisgIHJldHVybiAhcXVpdF9zZXJ2aWNlOwogfQogCiAjaWZkZWYgR19P
U19XSU4zMgpAQCAtMTA2NCw5ICsxMDY5LDggQEAgc2VydmljZV9tYWluIChEV09SRCBhcmdjLCBU
Q0hBUiAqYXJndltdKQogICBzZXJ2aWNlX3N0YXR1cy5kd1dhaXRIaW50ID0gMDsKICAgU2V0U2Vy
dmljZVN0YXR1cyAoc2VydmljZV9zdGF0dXNfaGFuZGxlLCAmc2VydmljZV9zdGF0dXMpOwogCi0g
IHdoaWxlICghcXVpdF9zZXJ2aWNlKSB7Ci0gICAgICBydW5fc2VydmljZSAoJnNlcnZpY2VfZGF0
YSk7Ci0gICAgICBnX3VzbGVlcCAoR19VU0VDX1BFUl9TRUMpOworICB3aGlsZSAocnVuX3NlcnZp
Y2UoJnNlcnZpY2VfZGF0YSkpIHsKKyAgICBnX3VzbGVlcChHX1VTRUNfUEVSX1NFQyk7CiAgIH0K
IAogICBzZXJ2aWNlX3N0YXR1cy5kd0N1cnJlbnRTdGF0ZSA9IFNFUlZJQ0VfU1RPUFBFRDsKQEAg
LTExNTQsOCArMTE1OCw3IEBAIG1haW4gKGludCBhcmdjLCBjaGFyICphcmd2W10pCiAgICAgICAg
IH0KICAgICB9IGVsc2UKICNlbmRpZgotICB3aGlsZSAoIXF1aXRfc2VydmljZSkgewotICAgIHJ1
bl9zZXJ2aWNlICgmc2VydmljZV9kYXRhKTsKKyAgd2hpbGUgKHJ1bl9zZXJ2aWNlKCZzZXJ2aWNl
X2RhdGEpKSB7CiAgICAgZ191c2xlZXAgKEdfVVNFQ19QRVJfU0VDKTsKICAgfQogCi0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
