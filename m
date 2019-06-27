Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F4157F68
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028DF6E84B;
	Thu, 27 Jun 2019 09:37:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3E66E84A
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:37:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 624E3C05B03F
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:37:01 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C2A231001B14;
 Thu, 27 Jun 2019 09:37:00 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190627090527.7748-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <034f4cfc-bd30-05fc-0e7f-d79d90ede101@redhat.com>
Date: Thu, 27 Jun 2019 12:36:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190627090527.7748-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 27 Jun 2019 09:37:01 +0000 (UTC)
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkKClN1Z2dlc3Rpb25zOgogICBJbml0aWFsaXNlIC0+IEluaXRpYWxpemUgICg/KSAoSXMgdGhp
cyBCcml0aXNoIHZzIEFtZXJpY2FuID8pCiAgIHZhcmlhYmxlIC0+IHByZXYgKD8pCgpPbiA2LzI3
LzE5IDEyOjA1IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gQXZvaWRzIHRvIGhhdmUgbm90
IGluaXRpYWxpc2VkIHZhcmlhYmxlcyBiZWZvcmUgY29uc3RydWN0ZWQgaXMgY2FsbGVkLgoKSSB0
aGluayB0aGlzIGxpbmUgY2FuIGJlIHJlbW92ZWQsIHRoZSBuZXh0IGxpbmUgZXhwbGFpbnMgd2hh
dCdzIG5lZWRlZC4KCj4gVGhpcyBhdm9pZCBwb3RlbnRpYWxseSBtZW1vcnkgZXJyb3JzIHdoaWxl
IHNldHRpbmcgcHJvcGVydGllcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkFjay4KClVyaS4KCj4gLS0tCj4gICBzZXJ2ZXIvZGlzcGxh
eS1jaGFubmVsLmMgfCAxMCArKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGlzcGxheS1j
aGFubmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPiBpbmRleCA3ZGRkNDRjMTQuLmY5
OWZkOGZhZiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPiArKysgYi9z
ZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPiBAQCAtMjI3NywxMiArMjI3NywxNyBAQCBkaXNwbGF5
X2NoYW5uZWxfaW5pdChEaXNwbGF5Q2hhbm5lbCAqc2VsZikKPiAgICAgICBzZWxmLT5wcml2ID0g
Z19uZXcwKERpc3BsYXlDaGFubmVsUHJpdmF0ZSwgMSk7Cj4gICAgICAgc2VsZi0+cHJpdi0+aW1h
Z2VfY29tcHJlc3Npb24gPSBTUElDRV9JTUFHRV9DT01QUkVTU0lPTl9BVVRPX0dMWjsKPiAgICAg
ICBzZWxmLT5wcml2LT5wdWIgPSBzZWxmOwo+ICsgICAgc2VsZi0+cHJpdi0+cmVuZGVyZXIgPSBS
RURfUkVOREVSRVJfSU5WQUxJRDsKPiArICAgIHNlbGYtPnByaXYtPnN0cmVhbV92aWRlbyA9IFNQ
SUNFX1NUUkVBTV9WSURFT19PRkY7Cj4gICAKPiAgICAgICBpbWFnZV9lbmNvZGVyX3NoYXJlZF9p
bml0KCZzZWxmLT5wcml2LT5lbmNvZGVyX3NoYXJlZF9kYXRhKTsKPiAgIAo+ICAgICAgIHJpbmdf
aW5pdCgmc2VsZi0+cHJpdi0+Y3VycmVudF9saXN0KTsKPiAgICAgICBkcmF3YWJsZXNfaW5pdChz
ZWxmKTsKPiAgICAgICBzZWxmLT5wcml2LT5pbWFnZV9zdXJmYWNlcy5vcHMgPSAmaW1hZ2Vfc3Vy
ZmFjZXNfb3BzOwo+ICsKPiArICAgIGltYWdlX2NhY2hlX2luaXQoJnNlbGYtPnByaXYtPmltYWdl
X2NhY2hlKTsKPiArICAgIGRpc3BsYXlfY2hhbm5lbF9pbml0X3ZpZGVvX3N0cmVhbXMoc2VsZik7
Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkCj4gQEAgLTIyOTUsOCArMjMwMCw2IEBAIGRpc3Bs
YXlfY2hhbm5lbF9jb25zdHJ1Y3RlZChHT2JqZWN0ICpvYmplY3QpCj4gICAKPiAgICAgICBzcGlj
ZV9hc3NlcnQoc2VsZi0+cHJpdi0+dmlkZW9fY29kZWNzKTsKPiAgIAo+IC0gICAgc2VsZi0+cHJp
di0+cmVuZGVyZXIgPSBSRURfUkVOREVSRVJfSU5WQUxJRDsKPiAtCj4gICAgICAgc3RhdF9pbml0
KCZzZWxmLT5wcml2LT5hZGRfc3RhdCwgImFkZCIsIENMT0NLX1RIUkVBRF9DUFVUSU1FX0lEKTsK
PiAgICAgICBzdGF0X2luaXQoJnNlbGYtPnByaXYtPmV4Y2x1ZGVfc3RhdCwgImV4Y2x1ZGUiLCBD
TE9DS19USFJFQURfQ1BVVElNRV9JRCk7Cj4gICAgICAgc3RhdF9pbml0KCZzZWxmLT5wcml2LT5f
X2V4Y2x1ZGVfc3RhdCwgIl9fZXhjbHVkZSIsIENMT0NLX1RIUkVBRF9DUFVUSU1FX0lEKTsKPiBA
QCAtMjMwOCw5ICsyMzExLDYgQEAgZGlzcGxheV9jaGFubmVsX2NvbnN0cnVjdGVkKEdPYmplY3Qg
Km9iamVjdCkKPiAgICAgICAgICAgICAgICAgICAgICAgICAiYWRkX3RvX2NhY2hlIiwgVFJVRSk7
Cj4gICAgICAgc3RhdF9pbml0X2NvdW50ZXIoJnNlbGYtPnByaXYtPm5vbl9jYWNoZV9jb3VudGVy
LCByZWRzLCBzdGF0LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICJub25fY2FjaGUiLCBUUlVF
KTsKPiAtICAgIGltYWdlX2NhY2hlX2luaXQoJnNlbGYtPnByaXYtPmltYWdlX2NhY2hlKTsKPiAt
ICAgIHNlbGYtPnByaXYtPnN0cmVhbV92aWRlbyA9IFNQSUNFX1NUUkVBTV9WSURFT19PRkY7Cj4g
LSAgICBkaXNwbGF5X2NoYW5uZWxfaW5pdF92aWRlb19zdHJlYW1zKHNlbGYpOwo+ICAgCj4gICAg
ICAgcmVkX2NoYW5uZWxfc2V0X2NhcChjaGFubmVsLCBTUElDRV9ESVNQTEFZX0NBUF9NT05JVE9S
U19DT05GSUcpOwo+ICAgICAgIHJlZF9jaGFubmVsX3NldF9jYXAoY2hhbm5lbCwgU1BJQ0VfRElT
UExBWV9DQVBfUFJFRl9DT01QUkVTU0lPTik7Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
