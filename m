Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E31CDF30A
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 11:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05658905A;
	Tue, 30 Apr 2019 09:34:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5C288EFF
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 09:34:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 46EA8308FEC1
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 09:34:03 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.166])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 69F0C2A18E;
 Tue, 30 Apr 2019 09:34:02 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 11:33:35 +0200
Message-Id: <20190430093339.14062-2-jjanku@redhat.com>
In-Reply-To: <20190430093339.14062-1-jjanku@redhat.com>
References: <20190430093339.14062-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 30 Apr 2019 09:34:03 +0000 (UTC)
Subject: [Spice-devel] [vdagent-linux v2 1/5] build: add GIO dependency
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

UmVxdWlyZSBVTklYLXNwZWNpZmljIEdJTyBwYWNrYWdlIHRvIGJ1aWxkIHNwaWNlLXZkYWdlbnQu
CgpUaGlzIHBhY2thZ2UgaW5jbHVkZXM6CgotIEdEQnVzIHdoaWNoIGlzIGdvaW5nIHRvIGJlIHVz
ZWQgaW5zdGVhZCBvZiBsaWJkYnVzIGluCiAgY29uc29sZS1raXQuYyBhbmQgc3lzdGVtZC1sb2dp
bi5jCgotIEkvTyBzdHJlYW0gY2xhc3NlcyBhbmQgbmV0d29ya2luZyBBUElzIHRoYXQgYXJlIGdv
aW5nIHRvCiAgYmUgdXNlZCBpbiBWREFnZW50Q29ubmVjdGlvbgoKVmVyc2lvbiAyLjQ0IGlzIHJl
cXVpcmVkIGJlY2F1c2Ugb2YgdGhlIGZvbGxvd2luZyBkZWZpbml0aW9uczoKLSBnX2lucHV0X3N0
cmVhbV9yZWFkX2FsbF8qCi0gZ19vdXRwdXRfc3RyZWFtX3dyaXRlX2FsbF8qCi0gR1NpbXBsZUlP
U3RyZWFtCgpHSU8gcmVxdWlyZXMgR0xpYiBhbmQgR09iamVjdCwgc28gd2UgY2FuIGRlcGVuZCBz
b2xlbHkgb24gaXQuCgpHTGliIHZlcnNpb24gYWNyb3NzIGRpZmZlcmVudCBkaXN0cmlidXRpb25z
OgogICAgRmVkb3JhIDMwOiAgICAyLjYwCiAgICBGZWRvcmEgMjk6ICAgIDIuNTgKICAgIEZlZG9y
YSAyODogICAgMi41NgoKICAgIFJIRUwgNy42OiAgICAgMi41NgogICAgUkhFTCA3LjU6ICAgICAy
LjU0CiAgICBSSEVMIDcuNDogICAgIDIuNTAKCiAgICBEZWJpYW4gMTA6ICAgIDIuNTgKICAgIERl
YmlhbiA5OiAgICAgMi41MAogICAgRGViaWFuIDg6ICAgICAyLjQyCgogICAgVWJ1bnR1IDE5LjA0
OiAyLjYwCiAgICBVYnVudHUgMTguMDQ6IDIuNTYKICAgIFVidW50dSAxNi4wNDogMi40OAoKU2ln
bmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBNYWtlZmls
ZS5hbSAgfCAxMiArKysrKystLS0tLS0KIGNvbmZpZ3VyZS5hYyB8ICAyICstCiAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9NYWtl
ZmlsZS5hbSBiL01ha2VmaWxlLmFtCmluZGV4IDNiOTdkZTUuLmJmOTM3YjkgMTAwNjQ0Ci0tLSBh
L01ha2VmaWxlLmFtCisrKyBiL01ha2VmaWxlLmFtCkBAIC0xNyw3ICsxNyw3IEBAIHNyY19zcGlj
ZV92ZGFnZW50X0NGTEFHUyA9CQkJXAogCSQoRFJNX0NGTEFHUykJCQkJXAogCSQoWF9DRkxBR1Mp
CQkJCVwKIAkkKFNQSUNFX0NGTEFHUykJCQkJXAotCSQoR0xJQjJfQ0ZMQUdTKQkJCQlcCisJJChH
SU8yX0NGTEFHUykJCQkJXAogCSQoR1RLX0NGTEFHUykJCQkJXAogCSQoQUxTQV9DRkxBR1MpCQkJ
CVwKIAktSSQoc3JjZGlyKS9zcmMJCQkJXApAQCAtMjgsNyArMjgsNyBAQCBzcmNfc3BpY2VfdmRh
Z2VudF9MREFERCA9CQkJXAogCSQoRFJNX0xJQlMpCQkJCVwKIAkkKFhfTElCUykJCQkJXAogCSQo
U1BJQ0VfTElCUykJCQkJXAotCSQoR0xJQjJfTElCUykJCQkJXAorCSQoR0lPMl9MSUJTKQkJCQlc
CiAJJChHVEtfTElCUykJCQkJXAogCSQoQUxTQV9MSUJTKQkJCQlcCiAJJChOVUxMKQpAQCAtNTIs
NyArNTIsNyBAQCBzcmNfc3BpY2VfdmRhZ2VudF9TT1VSQ0VTID0JCQlcCiAKIHRlc3RzX3Rlc3Rf
ZmlsZV94ZmVyc19DRkxBR1MgPQkJCVwKIAkkKFNQSUNFX0NGTEFHUykJCQkJXAotCSQoR0xJQjJf
Q0ZMQUdTKQkJCQlcCisJJChHSU8yX0NGTEFHUykJCQkJXAogCS1JJChzcmNkaXIpL3NyYwkJCQlc
CiAJLUkkKHNyY2Rpcikvc3JjL3ZkYWdlbnQJCQlcCiAJLURVRFNDU19OT19TRVJWRVIJCQlcCkBA
IC02MCw3ICs2MCw3IEBAIHRlc3RzX3Rlc3RfZmlsZV94ZmVyc19DRkxBR1MgPQkJCVwKIAogdGVz
dHNfdGVzdF9maWxlX3hmZXJzX0xEQUREID0JCQlcCiAJJChTUElDRV9MSUJTKQkJCQlcCi0JJChH
TElCMl9MSUJTKQkJCQlcCisJJChHSU8yX0xJQlMpCQkJCVwKIAkkKE5VTEwpCiAKIHRlc3RzX3Rl
c3RfZmlsZV94ZmVyc19TT1VSQ0VTID0JCQlcCkBAIC03Niw3ICs3Niw3IEBAIHNyY19zcGljZV92
ZGFnZW50ZF9DRkxBR1MgPQkJCVwKIAkkKExJQlNZU1RFTURfTE9HSU5fQ0ZMQUdTKQkJXAogCSQo
UENJQUNDRVNTX0NGTEFHUykJCQlcCiAJJChTUElDRV9DRkxBR1MpCQkJCVwKLQkkKEdMSUIyX0NG
TEFHUykJCQkJXAorCSQoR0lPMl9DRkxBR1MpCQkJCVwKIAkkKFBJRV9DRkxBR1MpCQkJCVwKIAkt
SSQoc3JjZGlyKS9zcmMJCQkJXAogCSQoTlVMTCkKQEAgLTg3LDcgKzg3LDcgQEAgc3JjX3NwaWNl
X3ZkYWdlbnRkX0xEQUREID0JCQlcCiAJJChMSUJTWVNURU1EX0xPR0lOX0xJQlMpCQlcCiAJJChQ
Q0lBQ0NFU1NfTElCUykJCQlcCiAJJChTUElDRV9MSUJTKQkJCQlcCi0JJChHTElCMl9MSUJTKQkJ
CQlcCisJJChHSU8yX0xJQlMpCQkJCVwKIAkkKFBJRV9MREZMQUdTKQkJCQlcCiAJJChOVUxMKQog
CmRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKaW5kZXggMDJjZjVmNy4u
N2RkZjg2ZCAxMDA2NDQKLS0tIGEvY29uZmlndXJlLmFjCisrKyBiL2NvbmZpZ3VyZS5hYwpAQCAt
MTAwLDcgKzEwMCw3IEBAIEFDX0FSR19FTkFCTEUoW3N0YXRpYy11aW5wdXRdLAogICAgICAgICAg
ICAgICBbZW5hYmxlX3N0YXRpY191aW5wdXQ9IiRlbmFibGV2YWwiXSwKICAgICAgICAgICAgICAg
W2VuYWJsZV9zdGF0aWNfdWlucHV0PSJubyJdKQogCi1QS0dfQ0hFQ0tfTU9EVUxFUyhbR0xJQjJd
LCBbZ2xpYi0yLjAgPj0gMi4zNF0pCitQS0dfQ0hFQ0tfTU9EVUxFUyhbR0lPMl0sIFtnaW8tdW5p
eC0yLjAgPj0gMi40NF0pCiBQS0dfQ0hFQ0tfTU9EVUxFUyhYLCBbeGZpeGVzIHhyYW5kciA+PSAx
LjMgeGluZXJhbWEgeDExXSkKIFBLR19DSEVDS19NT0RVTEVTKFNQSUNFLCBbc3BpY2UtcHJvdG9j
b2wgPj0gMC4xNC4wXSkKIFBLR19DSEVDS19NT0RVTEVTKEFMU0EsIFthbHNhID49IDEuMC4yMl0p
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
