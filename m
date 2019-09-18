Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6300BB5E82
	for <lists+spice-devel@lfdr.de>; Wed, 18 Sep 2019 10:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907466EE34;
	Wed, 18 Sep 2019 08:03:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69ADE6EE34
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 08:03:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 106F4308421A
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 08:03:32 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E86F25D6D0;
 Wed, 18 Sep 2019 08:03:30 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 18 Sep 2019 09:03:27 +0100
Message-Id: <20190918080327.6040-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 18 Sep 2019 08:03:32 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] char-device: Fix some endianess
 issues migrating
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

RGF0YSBmcm9tIG5ldHdvcmsgYXJlIGFsd2F5cyBsaXR0bGUgZW5kaWFuLCBjb252ZXJ0IHRvIGhv
c3QKY29udmVudGlvbi4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgotLS0KIHNlcnZlci9jaGFyLWRldmljZS5jIHwgMTMgKysrKysrKysrKystLQog
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwppbmRleCAw
M2FjOTkwNy4uZTdjNmRmYTggMTAwNjQ0Ci0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5jCisrKyBi
L3NlcnZlci9jaGFyLWRldmljZS5jCkBAIC04NTUsNyArODU1LDcgQEAgdm9pZCByZWRfY2hhcl9k
ZXZpY2VfbWlncmF0ZV9kYXRhX21hcnNoYWxsX2VtcHR5KFNwaWNlTWFyc2hhbGxlciAqbSkKICAg
ICBtaWdfZGF0YSA9IChTcGljZU1pZ3JhdGVEYXRhQ2hhckRldmljZSAqKXNwaWNlX21hcnNoYWxs
ZXJfcmVzZXJ2ZV9zcGFjZShtLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZigqbWlnX2RhdGEp
KTsKICAgICBtZW1zZXQobWlnX2RhdGEsIDAsIHNpemVvZigqbWlnX2RhdGEpKTsKLSAgICBtaWdf
ZGF0YS0+dmVyc2lvbiA9IFNQSUNFX01JR1JBVEVfREFUQV9DSEFSX0RFVklDRV9WRVJTSU9OOwor
ICAgIG1pZ19kYXRhLT52ZXJzaW9uID0gR1VJTlQzMl9UT19MRShTUElDRV9NSUdSQVRFX0RBVEFf
Q0hBUl9ERVZJQ0VfVkVSU0lPTik7CiAgICAgbWlnX2RhdGEtPmNvbm5lY3RlZCA9IEZBTFNFOwog
fQogCkBAIC05MjYsMTQgKzkyNiwyMyBAQCB2b2lkIHJlZF9jaGFyX2RldmljZV9taWdyYXRlX2Rh
dGFfbWFyc2hhbGwoUmVkQ2hhckRldmljZSAqZGV2LAogfQogCiBib29sIHJlZF9jaGFyX2Rldmlj
ZV9yZXN0b3JlKFJlZENoYXJEZXZpY2UgKmRldiwKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgU3BpY2VNaWdyYXRlRGF0YUNoYXJEZXZpY2UgKm1pZ19kYXRhKQorICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBTcGljZU1pZ3JhdGVEYXRhQ2hhckRldmljZSAqbWlnX2RhdGFfbGUpCiB7
CiAgICAgUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudDsKICAgICB1aW50MzJfdCBjbGll
bnRfdG9rZW5zX3dpbmRvdzsKKyAgICBTcGljZU1pZ3JhdGVEYXRhQ2hhckRldmljZSBtaWdfZGF0
YVsxXTsKIAogICAgIHNwaWNlX2Fzc2VydChnX2xpc3RfbGVuZ3RoKGRldi0+cHJpdi0+Y2xpZW50
cykgPT0gMSAmJgogICAgICAgICAgICAgICAgICBkZXYtPnByaXYtPndhaXRfZm9yX21pZ3JhdGVf
ZGF0YSk7CiAKKyAgICBtaWdfZGF0YS0+dmVyc2lvbiA9IEdVSU5UMzJfRlJPTV9MRShtaWdfZGF0
YV9sZS0+dmVyc2lvbik7CisgICAgbWlnX2RhdGEtPmNvbm5lY3RlZCA9IG1pZ19kYXRhX2xlLT5j
b25uZWN0ZWQ7CisgICAgbWlnX2RhdGEtPm51bV9jbGllbnRfdG9rZW5zID0gR1VJTlQzMl9GUk9N
X0xFKG1pZ19kYXRhX2xlLT5udW1fY2xpZW50X3Rva2Vucyk7CisgICAgbWlnX2RhdGEtPm51bV9z
ZW5kX3Rva2VucyA9IEdVSU5UMzJfRlJPTV9MRShtaWdfZGF0YV9sZS0+bnVtX3NlbmRfdG9rZW5z
KTsKKyAgICBtaWdfZGF0YS0+d3JpdGVfc2l6ZSA9IEdVSU5UMzJfRlJPTV9MRShtaWdfZGF0YV9s
ZS0+d3JpdGVfc2l6ZSk7CisgICAgbWlnX2RhdGEtPndyaXRlX251bV9jbGllbnRfdG9rZW5zID0g
R1VJTlQzMl9GUk9NX0xFKG1pZ19kYXRhX2xlLT53cml0ZV9udW1fY2xpZW50X3Rva2Vucyk7Cisg
ICAgbWlnX2RhdGEtPndyaXRlX2RhdGFfcHRyID0gR1VJTlQzMl9GUk9NX0xFKG1pZ19kYXRhX2xl
LT53cml0ZV9kYXRhX3B0cik7CisKICAgICBkZXZfY2xpZW50ID0gZ19saXN0X2xhc3QoZGV2LT5w
cml2LT5jbGllbnRzKS0+ZGF0YTsKICAgICBpZiAobWlnX2RhdGEtPnZlcnNpb24gPiBTUElDRV9N
SUdSQVRFX0RBVEFfQ0hBUl9ERVZJQ0VfVkVSU0lPTikgewogICAgICAgICBzcGljZV9lcnJvcigi
ZGV2ICVwIGVycm9yOiBtaWdyYXRpb24gZGF0YSB2ZXJzaW9uICV1IGlzIGJpZ2dlciB0aGFuIHNl
bGYgJXUiLAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
