Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C108BC497
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 11:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A372089B55;
	Tue, 24 Sep 2019 09:15:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C65D89B01
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 22EDB3082E24
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9DA6B5D9D5
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:04 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 11:14:58 +0200
Message-Id: <20190924091502.16038-3-victortoso@redhat.com>
In-Reply-To: <20190924091502.16038-1-victortoso@redhat.com>
References: <20190924091502.16038-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 24 Sep 2019 09:15:05 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 2/6] spice-channel: add internal
 spice_channel_set_state()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU28gd2UgY2FuIGVhc2lseSB0
cmFjayBjaGFubmVsJ3Mgc3RhdGUgY2hhbmdlcyBpbnN0ZWFkIG9mIGRvaW5nIHNvIGJ5CmFjY2Vz
c2luZyBpdHMgUHJpdmF0ZSBzdHJ1Y3R1cmUuIFNvbWUgbW9yZSBjaGVja2luZyBvbiB0aGUgc3Rh
dGUKbWFjaGluZSBjYW4gYmUgbGF0ZXIgYWRkZWQgYXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IFZp
Y3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtbWFpbi5j
ICAgICAgIHwgIDggKysrKy0tLS0KIHNyYy9zcGljZS1jaGFubmVsLXByaXYuaCB8ICAxICsKIHNy
Yy9zcGljZS1jaGFubmVsLmMgICAgICB8IDM3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIHNyYy9zcGljZS1zZXNzaW9uLmMgICAgICB8ICA0ICsrLS0KIDQgZmlsZXMgY2hh
bmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMv
Y2hhbm5lbC1tYWluLmMgYi9zcmMvY2hhbm5lbC1tYWluLmMKaW5kZXggYWMwZDQwOC4uYTBhYjUy
MCAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtbWFpbi5jCisrKyBiL3NyYy9jaGFubmVsLW1haW4u
YwpAQCAtMjIxNSwxMSArMjIxNSwxMSBAQCBzdGF0aWMgdm9pZCBtaWdyYXRlX2NoYW5uZWxfZXZl
bnRfY2IoU3BpY2VDaGFubmVsICpjaGFubmVsLCBTcGljZUNoYW5uZWxFdmVudCBldgogICAgICAg
ICAgICAgaWYgKG1pZy0+ZG9fc2VhbWxlc3MpIHsKICAgICAgICAgICAgICAgICBTcGljZU1haW5D
aGFubmVsUHJpdmF0ZSAqbWFpbl9wcml2ID0gU1BJQ0VfTUFJTl9DSEFOTkVMKGNoYW5uZWwpLT5w
cml2OwogCi0gICAgICAgICAgICAgICAgYy0+c3RhdGUgPSBTUElDRV9DSEFOTkVMX1NUQVRFX01J
R1JBVElPTl9IQU5EU0hBS0U7CisgICAgICAgICAgICAgICAgc3BpY2VfY2hhbm5lbF9zZXRfc3Rh
dGUoY2hhbm5lbCwgU1BJQ0VfQ0hBTk5FTF9TVEFURV9NSUdSQVRJT05fSEFORFNIQUtFKTsKICAg
ICAgICAgICAgICAgICBtaWctPmRzdF9jaGFubmVsID0gY2hhbm5lbDsKICAgICAgICAgICAgICAg
ICBtYWluX3ByaXYtPm1pZ3JhdGVfZGF0YSA9IG1pZzsKICAgICAgICAgICAgIH0gZWxzZSB7Ci0g
ICAgICAgICAgICAgICAgYy0+c3RhdGUgPSBTUElDRV9DSEFOTkVMX1NUQVRFX01JR1JBVElORzsK
KyAgICAgICAgICAgICAgICBzcGljZV9jaGFubmVsX3NldF9zdGF0ZShjaGFubmVsLCBTUElDRV9D
SEFOTkVMX1NUQVRFX01JR1JBVElORyk7CiAgICAgICAgICAgICAgICAgbWlnLT5uY2hhbm5lbHMt
LTsKICAgICAgICAgICAgIH0KICAgICAgICAgICAgIC8qIG5vdyBjb25uZWN0IHRoZSByZXN0IG9m
IHRoZSBjaGFubmVscyAqLwpAQCAtMjIzOCw3ICsyMjM4LDcgQEAgc3RhdGljIHZvaWQgbWlncmF0
ZV9jaGFubmVsX2V2ZW50X2NiKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VDaGFubmVsRXZl
bnQgZXYKICAgICAgICAgICAgIH0KICAgICAgICAgICAgIGdfbGlzdF9mcmVlKGNoYW5uZWxzKTsK
ICAgICAgICAgfSBlbHNlIHsKLSAgICAgICAgICAgIGMtPnN0YXRlID0gU1BJQ0VfQ0hBTk5FTF9T
VEFURV9NSUdSQVRJTkc7CisgICAgICAgICAgICBzcGljZV9jaGFubmVsX3NldF9zdGF0ZShjaGFu
bmVsLCBTUElDRV9DSEFOTkVMX1NUQVRFX01JR1JBVElORyk7CiAgICAgICAgICAgICBtaWctPm5j
aGFubmVscy0tOwogICAgICAgICB9CiAKQEAgLTIyNjIsNyArMjI2Miw3IEBAIHN0YXRpYyBnYm9v
bGVhbiBtYWluX21pZ3JhdGVfaGFuZHNoYWtlX2RvbmUoZ3BvaW50ZXIgZGF0YSkKICAgICBnX3Jl
dHVybl92YWxfaWZfZmFpbChzcGljZV9jaGFubmVsX2dldF9jaGFubmVsX3R5cGUoY2hhbm5lbCkg
PT0gU1BJQ0VfQ0hBTk5FTF9NQUlOLCBGQUxTRSk7CiAgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwo
c3BpY2VfY2hhbm5lbF9nZXRfc3RhdGUoY2hhbm5lbCkgPT0gU1BJQ0VfQ0hBTk5FTF9TVEFURV9N
SUdSQVRJT05fSEFORFNIQUtFLCBGQUxTRSk7CiAKLSAgICBjLT5zdGF0ZSA9IFNQSUNFX0NIQU5O
RUxfU1RBVEVfTUlHUkFUSU5HOworICAgIHNwaWNlX2NoYW5uZWxfc2V0X3N0YXRlKGNoYW5uZWws
IFNQSUNFX0NIQU5ORUxfU1RBVEVfTUlHUkFUSU5HKTsKICAgICBtaWctPm5jaGFubmVscy0tOwog
ICAgIGlmIChtaWctPm5jaGFubmVscyA9PSAwKQogICAgICAgICBjb3JvdXRpbmVfeWllbGR0byht
aWctPmZyb20sIE5VTEwpOwpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWNoYW5uZWwtcHJpdi5oIGIv
c3JjL3NwaWNlLWNoYW5uZWwtcHJpdi5oCmluZGV4IDgwZWE3MTQuLjRmODkzZGQgMTAwNjQ0Ci0t
LSBhL3NyYy9zcGljZS1jaGFubmVsLXByaXYuaAorKysgYi9zcmMvc3BpY2UtY2hhbm5lbC1wcml2
LmgKQEAgLTE3MSw2ICsxNzEsNyBAQCB2b2lkIHNwaWNlX2NoYW5uZWxfdXAoU3BpY2VDaGFubmVs
ICpjaGFubmVsKTsKIHZvaWQgc3BpY2VfY2hhbm5lbF93YWtldXAoU3BpY2VDaGFubmVsICpjaGFu
bmVsLCBnYm9vbGVhbiBjYW5jZWwpOwogCiBTcGljZVNlc3Npb24qIHNwaWNlX2NoYW5uZWxfZ2V0
X3Nlc3Npb24oU3BpY2VDaGFubmVsICpjaGFubmVsKTsKK3ZvaWQgc3BpY2VfY2hhbm5lbF9zZXRf
c3RhdGUoU3BpY2VDaGFubmVsICpjaGFubmVsLCBnaW50IHN0YXRlKTsKIGVudW0gc3BpY2VfY2hh
bm5lbF9zdGF0ZSBzcGljZV9jaGFubmVsX2dldF9zdGF0ZShTcGljZUNoYW5uZWwgKmNoYW5uZWwp
OwogZ3VpbnQ2NCBzcGljZV9jaGFubmVsX2dldF9xdWV1ZV9zaXplIChTcGljZUNoYW5uZWwgKmNo
YW5uZWwpOwogCmRpZmYgLS1naXQgYS9zcmMvc3BpY2UtY2hhbm5lbC5jIGIvc3JjL3NwaWNlLWNo
YW5uZWwuYwppbmRleCAzMTVlMjg3Li4yNmZhNjcxIDEwMDY0NAotLS0gYS9zcmMvc3BpY2UtY2hh
bm5lbC5jCisrKyBiL3NyYy9zcGljZS1jaGFubmVsLmMKQEAgLTMwMDksNiArMzAwOSw0MyBAQCBT
cGljZVNlc3Npb24qIHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24oU3BpY2VDaGFubmVsICpjaGFu
bmVsKQogICAgIHJldHVybiBjaGFubmVsLT5wcml2LT5zZXNzaW9uOwogfQogCitzdGF0aWMgY29u
c3QgY2hhciAqCitjaGFubmVsX3N0YXRlX3RvX3N0cmluZyhnaW50IHN0YXRlKQoreworICAgIHN3
aXRjaChzdGF0ZSkgeworICAgIGNhc2UgU1BJQ0VfQ0hBTk5FTF9TVEFURV9VTkNPTk5FQ1RFRDoK
KyAgICAgICAgcmV0dXJuICJ1bmNvbm5lY3RlZCI7CisgICAgY2FzZSBTUElDRV9DSEFOTkVMX1NU
QVRFX1JFQ09OTkVDVElORzoKKyAgICAgICAgcmV0dXJuICJyZWNvbm5lY3RpbmciOworICAgIGNh
c2UgU1BJQ0VfQ0hBTk5FTF9TVEFURV9DT05ORUNUSU5HOgorICAgICAgICByZXR1cm4gImNvbm5l
Y3RpbmciOworICAgIGNhc2UgU1BJQ0VfQ0hBTk5FTF9TVEFURV9SRUFEWToKKyAgICAgICAgcmV0
dXJuICJyZWFkeSI7CisgICAgY2FzZSBTUElDRV9DSEFOTkVMX1NUQVRFX1NXSVRDSElORzoKKyAg
ICAgICAgcmV0dXJuICJzd2l0Y2hpbmciOworICAgIGNhc2UgU1BJQ0VfQ0hBTk5FTF9TVEFURV9N
SUdSQVRJTkc6CisgICAgICAgIHJldHVybiAibWlncmF0aW5nIjsKKyAgICBjYXNlIFNQSUNFX0NI
QU5ORUxfU1RBVEVfTUlHUkFUSU9OX0hBTkRTSEFLRToKKyAgICAgICAgcmV0dXJuICJtaWdyYXRp
b24gaGFuZHNoYWtlIjsKKyAgICBkZWZhdWx0OgorICAgICAgICBnX3dhcm5faWZfcmVhY2hlZCgp
OworICAgIH0KKyAgICByZXR1cm4gIj8/Pz8iOworfQorCitHX0dOVUNfSU5URVJOQUwKK3ZvaWQg
c3BpY2VfY2hhbm5lbF9zZXRfc3RhdGUoU3BpY2VDaGFubmVsICpjaGFubmVsLCBnaW50IHN0YXRl
KQoreworICAgIGdfcmV0dXJuX2lmX2ZhaWwoU1BJQ0VfSVNfQ0hBTk5FTChjaGFubmVsKSk7Cisg
ICAgZ19yZXR1cm5faWZfZmFpbChzdGF0ZSA+PSBTUElDRV9DSEFOTkVMX1NUQVRFX1VOQ09OTkVD
VEVEICYmCisgICAgICAgICAgICAgICAgICAgICBzdGF0ZSA8PSBTUElDRV9DSEFOTkVMX1NUQVRF
X01JR1JBVElPTl9IQU5EU0hBS0UpOworCisgICAgQ0hBTk5FTF9ERUJVRyhjaGFubmVsLCAic3Rh
dGUgY2hhbmdpbmcgZnJvbSAlcyAtPiAlcyIsCisgICAgICAgICAgICAgICAgICBjaGFubmVsX3N0
YXRlX3RvX3N0cmluZyhjaGFubmVsLT5wcml2LT5zdGF0ZSksCisgICAgICAgICAgICAgICAgICBj
aGFubmVsX3N0YXRlX3RvX3N0cmluZyhzdGF0ZSkpOworICAgIGNoYW5uZWwtPnByaXYtPnN0YXRl
ID0gc3RhdGU7Cit9CisKIEdfR05VQ19JTlRFUk5BTAogZW51bSBzcGljZV9jaGFubmVsX3N0YXRl
IHNwaWNlX2NoYW5uZWxfZ2V0X3N0YXRlKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCkKIHsKZGlmZiAt
LWdpdCBhL3NyYy9zcGljZS1zZXNzaW9uLmMgYi9zcmMvc3BpY2Utc2Vzc2lvbi5jCmluZGV4IGFm
ZWI3MjQuLmE3NzBjOTIgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1zZXNzaW9uLmMKKysrIGIvc3Jj
L3NwaWNlLXNlc3Npb24uYwpAQCAtMTg4OSw3ICsxODg5LDcgQEAgc3RhdGljIGdib29sZWFuIGFm
dGVyX21haW5faW5pdChncG9pbnRlciBkYXRhKQogICAgICAgICBsID0gbC0+bmV4dDsKIAogICAg
ICAgICBzcGljZV9zZXNzaW9uX2NoYW5uZWxfbWlncmF0ZShzZWxmLCBjaGFubmVsKTsKLSAgICAg
ICAgY2hhbm5lbC0+cHJpdi0+c3RhdGUgPSBTUElDRV9DSEFOTkVMX1NUQVRFX1JFQURZOworICAg
ICAgICBzcGljZV9jaGFubmVsX3NldF9zdGF0ZShjaGFubmVsLCBTUElDRV9DSEFOTkVMX1NUQVRF
X1JFQURZKTsKICAgICAgICAgc3BpY2VfY2hhbm5lbF91cChjaGFubmVsKTsKICAgICB9CiAKQEAg
LTE5MzcsNyArMTkzNyw3IEBAIHZvaWQgc3BpY2Vfc2Vzc2lvbl9taWdyYXRlX2VuZChTcGljZVNl
c3Npb24gKnNlbGYpCiAKICAgICAgICAgaWYgKCFTUElDRV9JU19NQUlOX0NIQU5ORUwoY2hhbm5l
bCkpIHsKICAgICAgICAgICAgIC8qIGZyZWV6ZSBvdGhlciBjaGFubmVscyAqLwotICAgICAgICAg
ICAgY2hhbm5lbC0+cHJpdi0+c3RhdGUgPSBTUElDRV9DSEFOTkVMX1NUQVRFX01JR1JBVElORzsK
KyAgICAgICAgICAgIHNwaWNlX2NoYW5uZWxfc2V0X3N0YXRlKGNoYW5uZWwsIFNQSUNFX0NIQU5O
RUxfU1RBVEVfTUlHUkFUSU5HKTsKICAgICAgICAgfQogCiAgICAgICAgIC8qIHJlc2V0IGZvciBt
aWdyYXRpb24sIGRpc2Nvbm5lY3QgKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
