Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B3CD0AFC
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 11:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1296E93C;
	Wed,  9 Oct 2019 09:23:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4986E93C
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B9D9488135D
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 108BA60920;
 Wed,  9 Oct 2019 09:23:17 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  9 Oct 2019 10:23:01 +0100
Message-Id: <20191009092302.15025-5-fziglio@redhat.com>
In-Reply-To: <20191009092302.15025-1-fziglio@redhat.com>
References: <20191009092302.15025-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Wed, 09 Oct 2019 09:23:19 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3 4/5] test-smartcard: Add test
 for Smartcard device
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

Q3JlYXRlIFNtYXJkY2FyZCBkZXZpY2UuCkNvbm5lY3QgdG8gaXQgYW5kIHRlc3Qgc29tZSBtZXNz
YWdlcyBhcmUgcGFyc2VkIGFuZCBwcm9jZXNzZWQKYXMgZXhwZWN0ZWQuCgpTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KQWNrZWQtYnk6IFZpY3RvciBU
b3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3Rlc3RzLy5naXRpZ25vcmUg
ICAgICAgfCAgIDEgKwogc2VydmVyL3Rlc3RzL01ha2VmaWxlLmFtICAgICAgfCAgIDQgKwogc2Vy
dmVyL3Rlc3RzL21lc29uLmJ1aWxkICAgICAgfCAgIDQgKwogc2VydmVyL3Rlc3RzL3Rlc3Qtc21h
cnRjYXJkLmMgfCAyMTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogNCBmaWxl
cyBjaGFuZ2VkLCAyMjAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNlcnZlci90
ZXN0cy90ZXN0LXNtYXJ0Y2FyZC5jCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzLy5naXRpZ25v
cmUgYi9zZXJ2ZXIvdGVzdHMvLmdpdGlnbm9yZQppbmRleCAzNmU5NzhkNGYuLjU2Y2M3ZWI5YSAx
MDA2NDQKLS0tIGEvc2VydmVyL3Rlc3RzLy5naXRpZ25vcmUKKysrIGIvc2VydmVyL3Rlc3RzLy5n
aXRpZ25vcmUKQEAgLTI5LDUgKzI5LDYgQEAgdGVzdC1sZWFrcwogdGVzdC1zYXNsCiB0ZXN0LXJl
Y29yZAogdGVzdC13ZWJzb2NrZXQKK3Rlc3Qtc21hcnRjYXJkCiAvdGVzdC0qLmxvZwogL3Rlc3Qt
Ki50cnMKZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbSBiL3NlcnZlci90ZXN0
cy9NYWtlZmlsZS5hbQppbmRleCA5ODI1MDg1MTAuLmRkMjg1YzI0ZSAxMDA2NDQKLS0tIGEvc2Vy
dmVyL3Rlc3RzL01ha2VmaWxlLmFtCisrKyBiL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbQpAQCAt
NjgsNiArNjgsMTAgQEAgY2hlY2tfUFJPR1JBTVMgPQkJCQlcCiAJdGVzdC1yZWNvcmQJCQkJXAog
CSQoTlVMTCkKIAoraWYgSEFWRV9TTUFSVENBUkQKK2NoZWNrX1BST0dSQU1TICs9IHRlc3Qtc21h
cnRjYXJkCitlbmRpZgorCiBpZiAhT1NfV0lOMzIKIGNoZWNrX1BST0dSQU1TICs9CQkJCVwKIAl0
ZXN0LXN0cmVhbQkJCQlcCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvbWVzb24uYnVpbGQgYi9z
ZXJ2ZXIvdGVzdHMvbWVzb24uYnVpbGQKaW5kZXggMzM0NzJmMTRlLi45NWFkZTYwZmEgMTAwNjQ0
Ci0tLSBhL3NlcnZlci90ZXN0cy9tZXNvbi5idWlsZAorKysgYi9zZXJ2ZXIvdGVzdHMvbWVzb24u
YnVpbGQKQEAgLTY1LDYgKzY1LDEwIEBAIGlmIHNwaWNlX3NlcnZlcl9oYXNfc2FzbAogICB0ZXN0
cyArPSBbWyd0ZXN0LXNhc2wnLCB0cnVlXV0KIGVuZGlmCiAKK2lmIHNwaWNlX3NlcnZlcl9oYXNf
c21hcnRjYXJkID09IHRydWUKKyAgdGVzdHMgKz0gW1sndGVzdC1zbWFydGNhcmQnLCB0cnVlXV0K
K2VuZGlmCisKIGlmIGhvc3RfbWFjaGluZS5zeXN0ZW0oKSAhPSAnd2luZG93cycKICAgdGVzdHMg
Kz0gWwogICAgIFsndGVzdC1zdHJlYW0nLCB0cnVlXSwKZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0
cy90ZXN0LXNtYXJ0Y2FyZC5jIGIvc2VydmVyL3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwLi5hYWMyZTc5NDEKLS0tIC9kZXYvbnVsbAor
KysgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1zbWFydGNhcmQuYwpAQCAtMCwwICsxLDIxMSBAQAorLyog
LSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zmc2V0OiA0OyBpbmRlbnQtdGFicy1tb2RlOiBuaWwgLSot
ICovCisvKgorICAgQ29weXJpZ2h0IChDKSAyMDE5IFJlZCBIYXQsIEluYy4KKworICAgVGhpcyBs
aWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vcgor
ICAgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1
YmxpYworICAgTGljZW5zZSBhcyBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRh
dGlvbjsgZWl0aGVyCisgICB2ZXJzaW9uIDIuMSBvZiB0aGUgTGljZW5zZSwgb3IgKGF0IHlvdXIg
b3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KKworICAgVGhpcyBsaWJyYXJ5IGlzIGRpc3RyaWJ1
dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCisgICBidXQgV0lUSE9VVCBB
TlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgorICAgTUVS
Q0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRo
ZSBHTlUKKyAgIExlc3NlciBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMu
CisKKyAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIg
R2VuZXJhbCBQdWJsaWMKKyAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5v
dCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KKyovCisvKioKKyAqIFRlc3Qg
U21hcnRjYXJkIGRldmljZSBhbmQgY2hhbm5lbAorICovCisKKyNpbmNsdWRlIDxjb25maWcuaD4K
KyNpbmNsdWRlIDxzdHJpbmcuaD4KKyNpbmNsdWRlIDxzdGRsaWIuaD4KKyNpbmNsdWRlIDxzdGRp
by5oPgorI2luY2x1ZGUgPHN0ZGJvb2wuaD4KKyNpbmNsdWRlIDx1bmlzdGQuaD4KKworI2luY2x1
ZGUgPHNwaWNlL3Byb3RvY29sLmg+CisjaW5jbHVkZSA8c3BpY2Uvc3RyZWFtLWRldmljZS5oPgor
CisjaW5jbHVkZSAidGVzdC1kaXNwbGF5LWJhc2UuaCIKKyNpbmNsdWRlICJ0ZXN0LWdsaWItY29t
cGF0LmgiCisjaW5jbHVkZSAicmVkcy5oIgorI2luY2x1ZGUgInZtYy1lbXUuaCIKKyNpbmNsdWRl
ICJyZWQtY2xpZW50LmgiCisjaW5jbHVkZSAibmV0LXV0aWxzLmgiCisjaW5jbHVkZSAid2luLWFs
YXJtLmgiCisKK3N0YXRpYyBTcGljZUNvcmVJbnRlcmZhY2UgKmNvcmU7CitzdGF0aWMgVGVzdCAq
dGVzdDsKK3N0YXRpYyBWbWNFbXUgKnZtYzsKK3R5cGVkZWYgaW50IFRlc3RGaXh0dXJlOworCitz
dGF0aWMgdm9pZCB0ZXN0X3NtYXJ0Y2FyZF9zZXR1cChUZXN0Rml4dHVyZSAqZml4dHVyZSwgZ2Nv
bnN0cG9pbnRlciB1c2VyX2RhdGEpCit7CisgICAgZ19hc3NlcnRfbnVsbChjb3JlKTsKKyAgICBn
X2Fzc2VydF9udWxsKHRlc3QpOworICAgIGdfYXNzZXJ0X251bGwodm1jKTsKKyAgICBjb3JlID0g
YmFzaWNfZXZlbnRfbG9vcF9pbml0KCk7CisgICAgZ19hc3NlcnRfbm9ubnVsbChjb3JlKTsKKyAg
ICB0ZXN0ID0gdGVzdF9uZXcoY29yZSk7CisgICAgZ19hc3NlcnRfbm9ubnVsbCh0ZXN0KTsKKyAg
ICB2bWMgPSB2bWNfZW11X25ldygic21hcnRjYXJkIiwgTlVMTCk7CisgICAgZ19hc3NlcnRfbm9u
bnVsbCh2bWMpOworfQorCitzdGF0aWMgdm9pZCB0ZXN0X3NtYXJ0Y2FyZF90ZWFyZG93bihUZXN0
Rml4dHVyZSAqZml4dHVyZSwgZ2NvbnN0cG9pbnRlciB1c2VyX2RhdGEpCit7CisgICAgZ19hc3Nl
cnRfbm9ubnVsbChjb3JlKTsKKyAgICBnX2Fzc2VydF9ub25udWxsKHRlc3QpOworICAgIGdfYXNz
ZXJ0X25vbm51bGwodm1jKTsKKworICAgIHZtY19lbXVfZGVzdHJveSh2bWMpOworICAgIHZtYyA9
IE5VTEw7CisgICAgdGVzdF9kZXN0cm95KHRlc3QpOworICAgIHRlc3QgPSBOVUxMOworICAgIGJh
c2ljX2V2ZW50X2xvb3BfZGVzdHJveSgpOworICAgIGNvcmUgPSBOVUxMOworfQorCitzdGF0aWMg
UmVkU3RyZWFtICpjcmVhdGVfZHVtbXlfc3RyZWFtKFNwaWNlU2VydmVyICpzZXJ2ZXIsIGludCAq
cF9zb2NrZXQpCit7CisgICAgaW50IHN2WzJdOworICAgIGdfYXNzZXJ0X2NtcGludChzb2NrZXRw
YWlyKEFGX0xPQ0FMLCBTT0NLX1NUUkVBTSwgMCwgc3YpLCA9PSwgMCk7CisgICAgaWYgKHBfc29j
a2V0KSB7CisgICAgICAgICpwX3NvY2tldCA9IHN2WzFdOworICAgIH0KKyAgICByZWRfc29ja2V0
X3NldF9ub25fYmxvY2tpbmcoc3ZbMF0sIHRydWUpOworICAgIHJlZF9zb2NrZXRfc2V0X25vbl9i
bG9ja2luZyhzdlsxXSwgdHJ1ZSk7CisKKyAgICBSZWRTdHJlYW0gKiBzdHJlYW0gPSByZWRfc3Ry
ZWFtX25ldyhzZXJ2ZXIsIHN2WzBdKTsKKyAgICBnX2Fzc2VydF9ub25udWxsKHN0cmVhbSk7CisK
KyAgICByZXR1cm4gc3RyZWFtOworfQorCitzdGF0aWMgdm9pZCBzZW5kX2Fja19zeW5jKGludCBz
b2NrZXQsIHVpbnQzMl90IGdlbmVyYXRpb24pCit7CisgICAgc3RydWN0IHsKKyAgICAgICAgdWlu
dDE2X3QgZHVtbXk7CisgICAgICAgIHVpbnQxNl90IHR5cGU7CisgICAgICAgIHVpbnQzMl90IGxl
bjsKKyAgICAgICAgdWludDMyX3QgZ2VuZXJhdGlvbjsKKyAgICB9IG1zZzsKKyAgICBTUElDRV9W
RVJJRlkoc2l6ZW9mKG1zZykgPT0gMTIpOworICAgIG1zZy50eXBlID0gR1VJTlQxNl9UT19MRShT
UElDRV9NU0dDX0FDS19TWU5DKTsKKyAgICBtc2cubGVuID0gR1VJTlQzMl9UT19MRShzaXplb2Yo
Z2VuZXJhdGlvbikpOworICAgIG1zZy5nZW5lcmF0aW9uID0gR1VJTlQzMl9UT19MRShnZW5lcmF0
aW9uKTsKKworICAgIGdfYXNzZXJ0X2NtcGludChzb2NrZXRfd3JpdGUoc29ja2V0LCAmbXNnLnR5
cGUsIDEwKSwgPT0sIDEwKTsKK30KKworc3RhdGljIHZvaWQgc2VuZF9kYXRhKGludCBzb2NrZXQs
IHVpbnQzMl90IHR5cGUpCit7CisgICAgc3RydWN0IHsKKyAgICAgICAgdWludDE2X3QgZHVtbXk7
CisgICAgICAgIHVpbnQxNl90IHR5cGU7CisgICAgICAgIHVpbnQzMl90IGxlbjsKKyAgICAgICAg
VlNDTXNnSGVhZGVyIHZoZWFkZXI7CisgICAgICAgIGNoYXIgZGF0YVs2XTsKKyAgICB9IG1zZzsK
KyAgICBTUElDRV9WRVJJRlkoc2l6ZW9mKG1zZykgPT0gOCsxMis4KTsKKyAgICBtc2cudHlwZSA9
IEdVSU5UMTZfVE9fTEUoU1BJQ0VfTVNHQ19TTUFSVENBUkRfREFUQSk7CisgICAgbXNnLmxlbiA9
IEdVSU5UMzJfVE9fTEUoc2l6ZW9mKFZTQ01zZ0hlYWRlcikrNik7CisgICAgbXNnLnZoZWFkZXIu
dHlwZSA9IEdVSU5UMzJfVE9fTEUodHlwZSk7CisgICAgbXNnLnZoZWFkZXIucmVhZGVyX2lkID0g
MDsKKyAgICBtc2cudmhlYWRlci5sZW5ndGggPSBHVUlOVDMyX1RPX0xFKDYpOworICAgIHN0cmNw
eShtc2cuZGF0YSwgImhlbGxvIik7CisKKyAgICBnX2Fzc2VydF9jbXBpbnQoc29ja2V0X3dyaXRl
KHNvY2tldCwgJm1zZy50eXBlLCBzaXplb2YobXNnKS00KSwgPT0sIHNpemVvZihtc2cpLTQpOwor
fQorCitzdGF0aWMgdm9pZCBjaGVja19kYXRhKHZvaWQgKm9wYXF1ZSkKK3sKKyAgICBzdGF0aWMg
Y29uc3QgY2hhciBleHBlY3RlZF9idWZbXSA9CisgICAgICAgIC8vIGZvcndhcmRlZCBSZWFkZXJB
ZGQgbWVzc2FnZSwgbm90ZSB0aGF0IHBheWxvYWQgaXMgc3RyaXBwZWQKKyAgICAgICAgIlx4MDBc
eDAwXHgwMFx4MDNceDAwXHgwMFx4MDBceDAwXHgwMFx4MDBceDAwXHgwMCIKKyAgICAgICAgLy8g
Zm9yd2FyZGVkIEFQRFUgbWVzc2FnZQorICAgICAgICAiXHgwMFx4MDBceDAwXHgwN1x4MDBceDAw
XHgwMFx4MDBceDAwXHgwMFx4MDBceDA2XHg2OFx4NjVceDZjXHg2Y1x4NmZceDAwIjsKKyAgICBj
b25zdCBzaXplX3QgZXhwZWN0ZWRfYnVmX2xlbiA9IHNpemVvZihleHBlY3RlZF9idWYpIC0gMTsK
KyAgICBnX2Fzc2VydF9jbXBpbnQodm1jLT53cml0ZV9wb3MsID09LCBleHBlY3RlZF9idWZfbGVu
KTsKKyAgICBnX2Fzc2VydF90cnVlKG1lbWNtcCh2bWMtPndyaXRlX2J1ZiwgZXhwZWN0ZWRfYnVm
LCBleHBlY3RlZF9idWZfbGVuKSA9PSAwKTsKKyAgICBiYXNpY19ldmVudF9sb29wX3F1aXQoKTsK
K30KKworc3RhdGljIHZvaWQgdGVzdF9zbWFydGNhcmQoVGVzdEZpeHR1cmUgKmZpeHR1cmUsIGdj
b25zdHBvaW50ZXIgdXNlcl9kYXRhKQoreworICAgIFNwaWNlU2VydmVyICpjb25zdCBzZXJ2ZXIg
PSB0ZXN0LT5zZXJ2ZXI7CisgICAgdWludDhfdCAqcCA9IHZtYy0+bWVzc2FnZTsKKworICAgIHNw
aWNlX3NlcnZlcl9hZGRfaW50ZXJmYWNlKHNlcnZlciwgJnZtYy0+aW5zdGFuY2UuYmFzZSk7CisK
KyAgICAvLyBhZGQgVlNDX0luaXQgbWVzc2FnZQorICAgIG1lbWNweShwLCAiXHgwMFx4MDBceDAw
XHgwMVx4MGFceDBiXHgwY1x4MGRceDAwXHgwMFx4MDBceDAwIiwgMTIpOworICAgIHAgKz0gMTI7
CisgICAgdm1jX2VtdV9hZGRfcmVhZF90aWxsKHZtYywgcCk7CisKKyAgICAvLyBmaW5kIFNtYXJ0
Y2FyZCBjaGFubmVsIHRvIGNvbm5lY3QgdG8KKyAgICBSZWRDaGFubmVsICpjaGFubmVsID0gcmVk
c19maW5kX2NoYW5uZWwoc2VydmVyLCBTUElDRV9DSEFOTkVMX1NNQVJUQ0FSRCwgMCk7CisgICAg
Z19hc3NlcnRfbm9ubnVsbChjaGFubmVsKTsKKworICAgIC8vIGNyZWF0ZSBkdW1teSBSZWRDbGll
bnQgYW5kIE1haW5DaGFubmVsQ2xpZW50CisgICAgUmVkQ2hhbm5lbENhcGFiaWxpdGllcyBjYXBz
OworICAgIG1lbXNldCgmY2FwcywgMCwgc2l6ZW9mKGNhcHMpKTsKKyAgICB1aW50MzJfdCBjb21t
b25fY2FwcyA9IDEgPDwgU1BJQ0VfQ09NTU9OX0NBUF9NSU5JX0hFQURFUjsKKyAgICBjYXBzLm51
bV9jb21tb25fY2FwcyA9IDE7CisgICAgY2Fwcy5jb21tb25fY2FwcyA9IHNwaWNlX21lbWR1cCgm
Y29tbW9uX2NhcHMsIHNpemVvZihjb21tb25fY2FwcykpOworCisgICAgUmVkQ2xpZW50ICpjbGll
bnQgPSByZWRfY2xpZW50X25ldyhzZXJ2ZXIsIEZBTFNFKTsKKyAgICBnX2Fzc2VydF9ub25udWxs
KGNsaWVudCk7CisKKyAgICBNYWluQ2hhbm5lbCAqbWFpbl9jaGFubmVsID0gbWFpbl9jaGFubmVs
X25ldyhzZXJ2ZXIpOworICAgIGdfYXNzZXJ0X25vbm51bGwobWFpbl9jaGFubmVsKTsKKworICAg
IE1haW5DaGFubmVsQ2xpZW50ICptY2M7CisgICAgbWNjID0gbWFpbl9jaGFubmVsX2xpbmsobWFp
bl9jaGFubmVsLCBjbGllbnQsIGNyZWF0ZV9kdW1teV9zdHJlYW0oc2VydmVyLCBOVUxMKSwKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAwLCBGQUxTRSwgJmNhcHMpOworICAgIGdfYXNzZXJ0
X25vbm51bGwobWNjKTsKKyAgICByZWRfY2xpZW50X3NldF9tYWluKGNsaWVudCwgbWNjKTsKKwor
ICAgIC8vIGNyZWF0ZSBvdXIgdGVzdGluZyBSZWRDaGFubmVsQ2xpZW50CisgICAgaW50IGNsaWVu
dF9zb2NrZXQ7CisgICAgcmVkX2NoYW5uZWxfY29ubmVjdChjaGFubmVsLCBjbGllbnQsIGNyZWF0
ZV9kdW1teV9zdHJlYW0oc2VydmVyLCAmY2xpZW50X3NvY2tldCksCisgICAgICAgICAgICAgICAg
ICAgICAgICBGQUxTRSwgJmNhcHMpOworICAgIHJlZF9jaGFubmVsX2NhcGFiaWxpdGllc19yZXNl
dCgmY2Fwcyk7CisKKyAgICAvLyBwdXNoIGRhdGEgdG8gZGV2aWNlCisgICAgc3BpY2Vfc2VydmVy
X2NoYXJfZGV2aWNlX3dha2V1cCgmdm1jLT5pbnN0YW5jZSk7CisKKyAgICAvLyBwdXNoIGRhdGEg
aW50byBjaGFubmVsCisgICAgc2VuZF9hY2tfc3luYyhjbGllbnRfc29ja2V0LCAxKTsKKyAgICBz
ZW5kX2RhdGEoY2xpZW50X3NvY2tldCwgVlNDX1JlYWRlckFkZCk7CisgICAgc2VuZF9kYXRhKGNs
aWVudF9zb2NrZXQsIFZTQ19BUERVKTsKKworICAgIC8vIGNoZWNrIGRhdGEgYXJlIHByb2Nlc3Nl
ZCBhZnRlciBhIHNob3J0IHRpbWUKKyAgICBTcGljZVRpbWVyICp3YXRjaF90aW1lcjsKKyAgICB3
YXRjaF90aW1lciA9IGNvcmUtPnRpbWVyX2FkZChjaGVja19kYXRhLCBjb3JlKTsKKyAgICBjb3Jl
LT50aW1lcl9zdGFydCh3YXRjaF90aW1lciwgMTAwKTsKKworICAgIC8vIHN0YXJ0IGFsbCB0ZXN0
CisgICAgYWxhcm0oMTApOworICAgIGJhc2ljX2V2ZW50X2xvb3BfbWFpbmxvb3AoKTsKKyAgICBh
bGFybSgwKTsKKworICAgIC8vIGNsZWFudXAKKyAgICBjb3JlLT50aW1lcl9yZW1vdmUod2F0Y2hf
dGltZXIpOworICAgIHJlZF9jbGllbnRfZGVzdHJveShjbGllbnQpOworICAgIGdfb2JqZWN0X3Vu
cmVmKG1haW5fY2hhbm5lbCk7CisgICAgZ19vYmplY3RfdW5yZWYoY2hhbm5lbCk7Cit9CisKK2lu
dCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCit7CisgICAgZ190ZXN0X2luaXQoJmFyZ2Ms
ICZhcmd2LCBOVUxMKTsKKworICAgIGdfdGVzdF9hZGQoIi9zZXJ2ZXIvc21hcnRjYXJkIiwgVGVz
dEZpeHR1cmUsIE5VTEwsIHRlc3Rfc21hcnRjYXJkX3NldHVwLAorICAgICAgICAgICAgICAgdGVz
dF9zbWFydGNhcmQsIHRlc3Rfc21hcnRjYXJkX3RlYXJkb3duKTsKKworICAgIHJldHVybiBnX3Rl
c3RfcnVuKCk7Cit9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
