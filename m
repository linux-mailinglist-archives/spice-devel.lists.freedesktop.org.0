Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E29D2781D
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ACD989D02;
	Thu, 23 May 2019 08:37:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BAC589CFA
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 95FFB309B159
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:47 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B039D5D9C3;
 Thu, 23 May 2019 08:37:46 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:18 +0200
Message-Id: <20190523083725.1554-7-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 23 May 2019 08:37:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 06/13] spice: print err when g_open
 fails
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

RG9uJ3QgZmFpbCBzaWxlbnRseSB3aGVuIHdlIGNhbm5vdCBvcGVuIHRoZSB3ZWJkYXYgdmlydGlv
IHBvcnQuCgpTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgot
LS0KIHNwaWNlL3NwaWNlLXdlYmRhdmQuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcGljZS9zcGljZS13ZWJkYXZkLmMgYi9zcGljZS9z
cGljZS13ZWJkYXZkLmMKaW5kZXggM2ZhYzI4Yi4uZDliMWZhZSAxMDA2NDQKLS0tIGEvc3BpY2Uv
c3BpY2Utd2ViZGF2ZC5jCisrKyBiL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwpAQCAtMjQsNiArMjQs
NyBAQAogI2luY2x1ZGUgPGdpby9ndW5peG91dHB1dHN0cmVhbS5oPgogI2luY2x1ZGUgPGZjbnRs
Lmg+CiAjaW5jbHVkZSA8Z2xpYi9nc3RkaW8uaD4KKyNpbmNsdWRlIDxlcnJuby5oPgogI2VuZGlm
CiAKICNpZmRlZiBHX09TX1dJTjMyCkBAIC03MDMsOCArNzA0LDEyIEBAIG9wZW5fbXV4X3BhdGgg
KGNvbnN0IGNoYXIgKnBhdGgpCiAgIGdfZGVidWcgKCJPcGVuICVzIiwgcGF0aCk7CiAjaWZkZWYg
R19PU19VTklYCiAgIHBvcnRfZmQgPSBnX29wZW4gKHBhdGgsIE9fUkRXUik7CisgIGdpbnQgZXJy
c3YgPSBlcnJubzsKICAgaWYgKHBvcnRfZmQgPT0gLTEpCisgICAgeworICAgICAgZ19wcmludGVy
cigiRmFpbGVkIHRvIG9wZW4gJXM6ICVzXG4iLCBwYXRoLCBnX3N0cmVycm9yKGVycnN2KSk7CiAg
ICAgICBleGl0ICgxKTsKKyAgICB9CiAKICAgd2FpdF9mb3JfdmlydGlvX2hvc3QgKHBvcnRfZmQp
OwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
