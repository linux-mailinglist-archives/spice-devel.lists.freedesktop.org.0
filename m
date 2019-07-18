Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7CD6C9F7
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1986E317;
	Thu, 18 Jul 2019 07:32:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CF66E317
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:32:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 050543082145
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:32:33 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DBF3260920;
 Thu, 18 Jul 2019 07:32:31 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 08:32:23 +0100
Message-Id: <20190718073225.13190-2-fziglio@redhat.com>
In-Reply-To: <20190718073225.13190-1-fziglio@redhat.com>
References: <20190718073225.13190-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 18 Jul 2019 07:32:33 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/3] ci: Separate SPICE specific
 Valgrind suppression
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

UHJldmlvdXNseSB3ZSBhZGQgc3VwcHJlc3Npb24gdG8gZ2xpYi5zdXBwIGZpbGUgKHN1cHByZXNz
aW9ucyBmcm9tCkdsaWIpLgpLZWVwIHRoZSBnbGliLnN1cHAgZmlsZSBwcmlzdGluZSBhbmQgYWRk
IGFub3RoZXIgZmlsZSBzcGVjaWZpYwpmb3IgU1BJQ0UuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvdGVzdHMvTWFrZWZpbGUu
YW0gICAgICAgICB8ICAyICstCiBzZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvZ2xpYi5zdXBwICB8IDM5
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBzZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQv
c3BpY2Uuc3VwcCB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMg
Y2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvdGVzdHMvTWFrZWZpbGUuYW0gYi9zZXJ2ZXIvdGVzdHMvTWFrZWZpbGUuYW0KaW5kZXggMjZh
YWRkNWYxLi5jY2FmNWM4N2MgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbQor
KysgYi9zZXJ2ZXIvdGVzdHMvTWFrZWZpbGUuYW0KQEAgLTEsNyArMSw3IEBACiBOVUxMID0KIAog
QFZBTEdSSU5EX0NIRUNLX1JVTEVTQAotVkFMR1JJTkRfU1VQUFJFU1NJT05TX0ZJTEVTID0gJChz
cmNkaXIpL3ZhbGdyaW5kL2dsaWIuc3VwcAorVkFMR1JJTkRfU1VQUFJFU1NJT05TX0ZJTEVTID0g
JChzcmNkaXIpL3ZhbGdyaW5kL2dsaWIuc3VwcCAkKHNyY2RpcikvdmFsZ3JpbmQvc3BpY2Uuc3Vw
cAogRVhUUkFfRElTVCA9CQkJCVwKIAkkKFZBTEdSSU5EX1NVUFBSRVNTSU9OU19GSUxFUykJXAog
CW1lc29uLmJ1aWxkCQkJXApkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL2dsaWIu
c3VwcCBiL3NlcnZlci90ZXN0cy92YWxncmluZC9nbGliLnN1cHAKaW5kZXggY2EwNjg0ZDZjLi45
MjM2YjNkMTYgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy92YWxncmluZC9nbGliLnN1cHAKKysr
IGIvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL2dsaWIuc3VwcApAQCAtNTQzLDQyICs1NDMsMyBAQAog
CS4uLgogCWZ1bjpnX29iamVjdF9uZXdfdmFsaXN0CiB9Ci0KLXsKLQlweF9wcm94eV9mYWN0b3J5
X2dldF9wcm94aWVzCi0JTWVtY2hlY2s6TGVhawotCWZ1bjptYWxsb2MKLQlmdW46dGxzX2dldF9h
ZGRyX3RhaWwKLQkuLi4KLQlmdW46cHhfcHJveHlfZmFjdG9yeV9nZXRfcHJveGllcwotfQotCi17
Ci0JcHhfcHJveHlfZmFjdG9yeV9nZXRfcHJveGllczIKLQlNZW1jaGVjazpMZWFrCi0JZnVuOm1h
bGxvYwotCS4uLgotCWZ1bjpfX3Rsc19nZXRfYWRkcgotCS4uLgotCWZ1bjpweF9wcm94eV9mYWN0
b3J5X2dldF9wcm94aWVzCi19Ci0KLXsKLQlnbnV0bHNfdGxzX3JuZF9sZWFrCi0JTWVtY2hlY2s6
TGVhawotCWZ1bjptYWxsb2MKLQkuLi4KLQlmdW46X190bHNfZ2V0X2FkZHIKLQkuLi4KLQlmdW46
Z251dGxzX3JuZAotfQotCi17Ci0JZ251dGxzX3Rsc19wMTFfa2l0X2xlYWsKLQlNZW1jaGVjazpM
ZWFrCi0JZnVuOm1hbGxvYwotCS4uLgotCWZ1bjpfX3Rsc19nZXRfYWRkcgotCS4uLgotCWZ1bjpw
MTFfa2l0X21vZHVsZXNfbG9hZAotfQpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3ZhbGdyaW5k
L3NwaWNlLnN1cHAgYi9zZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAuLjFiZmU4MTAwNgotLS0gL2Rldi9udWxsCisrKyBi
L3NlcnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBwCkBAIC0wLDAgKzEsMzggQEAKK3sKKwlw
eF9wcm94eV9mYWN0b3J5X2dldF9wcm94aWVzCisJTWVtY2hlY2s6TGVhaworCWZ1bjptYWxsb2MK
KwlmdW46dGxzX2dldF9hZGRyX3RhaWwKKwkuLi4KKwlmdW46cHhfcHJveHlfZmFjdG9yeV9nZXRf
cHJveGllcworfQorCit7CisJcHhfcHJveHlfZmFjdG9yeV9nZXRfcHJveGllczIKKwlNZW1jaGVj
azpMZWFrCisJZnVuOm1hbGxvYworCS4uLgorCWZ1bjpfX3Rsc19nZXRfYWRkcgorCS4uLgorCWZ1
bjpweF9wcm94eV9mYWN0b3J5X2dldF9wcm94aWVzCit9CisKK3sKKwlnbnV0bHNfdGxzX3JuZF9s
ZWFrCisJTWVtY2hlY2s6TGVhaworCWZ1bjptYWxsb2MKKwkuLi4KKwlmdW46X190bHNfZ2V0X2Fk
ZHIKKwkuLi4KKwlmdW46Z251dGxzX3JuZAorfQorCit7CisJZ251dGxzX3Rsc19wMTFfa2l0X2xl
YWsKKwlNZW1jaGVjazpMZWFrCisJZnVuOm1hbGxvYworCS4uLgorCWZ1bjpfX3Rsc19nZXRfYWRk
cgorCS4uLgorCWZ1bjpwMTFfa2l0X21vZHVsZXNfbG9hZAorfQotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
