Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC10157FAB
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FEA6E0B6;
	Thu, 27 Jun 2019 09:51:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1C96E0B6
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:51:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ACD7DA70E
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:51:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A472319C68
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:51:58 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B59A1806B19;
 Thu, 27 Jun 2019 09:51:58 +0000 (UTC)
Date: Thu, 27 Jun 2019 05:51:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <746213379.24959635.1561629117134.JavaMail.zimbra@redhat.com>
In-Reply-To: <034f4cfc-bd30-05fc-0e7f-d79d90ede101@redhat.com>
References: <20190627090527.7748-1-fziglio@redhat.com>
 <034f4cfc-bd30-05fc-0e7f-d79d90ede101@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.22]
Thread-Topic: display-channel: Initialise variable as soon as possible
Thread-Index: UQWiaShZETZzStEUVttxROn63Y8x0w==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 27 Jun 2019 09:51:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] display-channel: Initialise
 variable as soon as possible
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaQo+IAo+IFN1Z2dlc3Rpb25zOgo+ICAgIEluaXRpYWxpc2UgLT4gSW5pdGlhbGl6ZSAg
KD8pIChJcyB0aGlzIEJyaXRpc2ggdnMgQW1lcmljYW4gPykKClllcywgVVMvVUsgOi0pCgo+ICAg
IHZhcmlhYmxlIC0+IHByZXYgKD8pCj4gCgoiSW5pdGlhbGl6ZSBwcmV2IGFzIHNvb24gYXMgcG9z
c2libGUiID8KCnR5cG8gaW4gbXkgc3ViamVjdDogdmFyaWFibGUgLT4gdmFyaWFibGVzCgo+IE9u
IDYvMjcvMTkgMTI6MDUgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IEF2b2lkcyB0byBo
YXZlIG5vdCBpbml0aWFsaXNlZCB2YXJpYWJsZXMgYmVmb3JlIGNvbnN0cnVjdGVkIGlzIGNhbGxl
ZC4KPiAKPiBJIHRoaW5rIHRoaXMgbGluZSBjYW4gYmUgcmVtb3ZlZCwgdGhlIG5leHQgbGluZSBl
eHBsYWlucyB3aGF0J3MgbmVlZGVkLgo+IAoKSSdsbCByZW1vdmUKCj4gPiBUaGlzIGF2b2lkIHBv
dGVudGlhbGx5IG1lbW9yeSBlcnJvcnMgd2hpbGUgc2V0dGluZyBwcm9wZXJ0aWVzLgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAK
PiBBY2suCj4gCj4gVXJpLgo+IAoKRnJlZGlhbm8KCj4gPiAtLS0KPiA+ICAgc2VydmVyL2Rpc3Bs
YXktY2hhbm5lbC5jIHwgMTAgKysrKystLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rp
c3BsYXktY2hhbm5lbC5jIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gPiBpbmRleCA3ZGRk
NDRjMTQuLmY5OWZkOGZhZiAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwu
Ywo+ID4gKysrIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gPiBAQCAtMjI3NywxMiArMjI3
NywxNyBAQCBkaXNwbGF5X2NoYW5uZWxfaW5pdChEaXNwbGF5Q2hhbm5lbCAqc2VsZikKPiA+ICAg
ICAgIHNlbGYtPnByaXYgPSBnX25ldzAoRGlzcGxheUNoYW5uZWxQcml2YXRlLCAxKTsKPiA+ICAg
ICAgIHNlbGYtPnByaXYtPmltYWdlX2NvbXByZXNzaW9uID0gU1BJQ0VfSU1BR0VfQ09NUFJFU1NJ
T05fQVVUT19HTFo7Cj4gPiAgICAgICBzZWxmLT5wcml2LT5wdWIgPSBzZWxmOwo+ID4gKyAgICBz
ZWxmLT5wcml2LT5yZW5kZXJlciA9IFJFRF9SRU5ERVJFUl9JTlZBTElEOwo+ID4gKyAgICBzZWxm
LT5wcml2LT5zdHJlYW1fdmlkZW8gPSBTUElDRV9TVFJFQU1fVklERU9fT0ZGOwo+ID4gICAKPiA+
ICAgICAgIGltYWdlX2VuY29kZXJfc2hhcmVkX2luaXQoJnNlbGYtPnByaXYtPmVuY29kZXJfc2hh
cmVkX2RhdGEpOwo+ID4gICAKPiA+ICAgICAgIHJpbmdfaW5pdCgmc2VsZi0+cHJpdi0+Y3VycmVu
dF9saXN0KTsKPiA+ICAgICAgIGRyYXdhYmxlc19pbml0KHNlbGYpOwo+ID4gICAgICAgc2VsZi0+
cHJpdi0+aW1hZ2Vfc3VyZmFjZXMub3BzID0gJmltYWdlX3N1cmZhY2VzX29wczsKPiA+ICsKPiA+
ICsgICAgaW1hZ2VfY2FjaGVfaW5pdCgmc2VsZi0+cHJpdi0+aW1hZ2VfY2FjaGUpOwo+ID4gKyAg
ICBkaXNwbGF5X2NoYW5uZWxfaW5pdF92aWRlb19zdHJlYW1zKHNlbGYpOwo+ID4gICB9Cj4gPiAg
IAo+ID4gICBzdGF0aWMgdm9pZAo+ID4gQEAgLTIyOTUsOCArMjMwMCw2IEBAIGRpc3BsYXlfY2hh
bm5lbF9jb25zdHJ1Y3RlZChHT2JqZWN0ICpvYmplY3QpCj4gPiAgIAo+ID4gICAgICAgc3BpY2Vf
YXNzZXJ0KHNlbGYtPnByaXYtPnZpZGVvX2NvZGVjcyk7Cj4gPiAgIAo+ID4gLSAgICBzZWxmLT5w
cml2LT5yZW5kZXJlciA9IFJFRF9SRU5ERVJFUl9JTlZBTElEOwo+ID4gLQo+ID4gICAgICAgc3Rh
dF9pbml0KCZzZWxmLT5wcml2LT5hZGRfc3RhdCwgImFkZCIsIENMT0NLX1RIUkVBRF9DUFVUSU1F
X0lEKTsKPiA+ICAgICAgIHN0YXRfaW5pdCgmc2VsZi0+cHJpdi0+ZXhjbHVkZV9zdGF0LCAiZXhj
bHVkZSIsCj4gPiAgICAgICBDTE9DS19USFJFQURfQ1BVVElNRV9JRCk7Cj4gPiAgICAgICBzdGF0
X2luaXQoJnNlbGYtPnByaXYtPl9fZXhjbHVkZV9zdGF0LCAiX19leGNsdWRlIiwKPiA+ICAgICAg
IENMT0NLX1RIUkVBRF9DUFVUSU1FX0lEKTsKPiA+IEBAIC0yMzA4LDkgKzIzMTEsNiBAQCBkaXNw
bGF5X2NoYW5uZWxfY29uc3RydWN0ZWQoR09iamVjdCAqb2JqZWN0KQo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgImFkZF90b19jYWNoZSIsIFRSVUUpOwo+ID4gICAgICAgc3RhdF9pbml0X2Nv
dW50ZXIoJnNlbGYtPnByaXYtPm5vbl9jYWNoZV9jb3VudGVyLCByZWRzLCBzdGF0LAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgIm5vbl9jYWNoZSIsIFRSVUUpOwo+ID4gLSAgICBpbWFnZV9j
YWNoZV9pbml0KCZzZWxmLT5wcml2LT5pbWFnZV9jYWNoZSk7Cj4gPiAtICAgIHNlbGYtPnByaXYt
PnN0cmVhbV92aWRlbyA9IFNQSUNFX1NUUkVBTV9WSURFT19PRkY7Cj4gPiAtICAgIGRpc3BsYXlf
Y2hhbm5lbF9pbml0X3ZpZGVvX3N0cmVhbXMoc2VsZik7Cj4gPiAgIAo+ID4gICAgICAgcmVkX2No
YW5uZWxfc2V0X2NhcChjaGFubmVsLCBTUElDRV9ESVNQTEFZX0NBUF9NT05JVE9SU19DT05GSUcp
Owo+ID4gICAgICAgcmVkX2NoYW5uZWxfc2V0X2NhcChjaGFubmVsLCBTUElDRV9ESVNQTEFZX0NB
UF9QUkVGX0NPTVBSRVNTSU9OKTsKPiA+IAo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
