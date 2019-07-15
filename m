Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EE768624
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:18:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A48689733;
	Mon, 15 Jul 2019 09:18:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8412089733
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:18:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2225E356E4
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:18:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 18F9160A9A
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:18:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EF761843720;
 Mon, 15 Jul 2019 09:18:17 +0000 (UTC)
Date: Mon, 15 Jul 2019 05:18:17 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1870637329.68793.1563182297027.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712091242.13214-7-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-7-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.3]
Thread-Topic: x11-randr: simplest fix for address-of-packed-member
Thread-Index: IXKY9seFEDt/iTIoREEZD34WcOAMNA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 15 Jul 2019 09:18:17 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 6/7] x11-randr: simplest fix
 for address-of-packed-member
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gVGhlIHN0cnVj
dCB0eXBlIGZvciB3aWR0aC9oZWlnaHQgaXMgdWludDMyX3Qgd2hpbGUgd2UgYXJlIHRyeWluZyB0
bwo+IGFjY2VzcyBhbmQgY2hhbmdlIGl0IHdpdGggaW50KiAtIGNvZGUgY2FuIGJlIGltcHJvdmVk
IGEgYml0IGluIGZvbGxvd2luZwo+IHBhdGNoZXMgYnV0IHRoaXMgb25lIGZpeGVzIHRoZSB3YXJu
aW5nIGJ5IGNvcHlpbmcgdGhlIHZhbHVlIGZyb20gdGhlCj4gc3RydWN0IGFuZCBjb3B5aW5nIGJh
Y2sgbmV3IHZhbHVlIGFmdGVyd2FyZHMuCj4gCj4gQWxzbzoKPiAtIE1vdmVkIHZhcmlhYmxlcyB0
byBpbnRlcm5hbCBzY29wZTsKPiAtIEFkZGVkIGJyYWNlcyB0byBpbm5lciBpZjsKPiAKPiAgPiBz
cmMvdmRhZ2VudC94MTEtcmFuZHIuYzogSW4gZnVuY3Rpb24g4oCYemVyb19iYXNlX21vbml0b3Jz
4oCZOgo+ICA+ICAgICBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYzo2MjE6Mjg6IGVycm9yOiB0YWtp
bmcgYWRkcmVzcyBvZiBwYWNrZWQgbWVtYmVyCj4gID4gICAgIG9mCj4gID4gICAgIOKAmHN0cnVj
dCBWREFnZW50TW9uQ29uZmln4oCZIG1heSByZXN1bHQgaW4gYW4gdW5hbGlnbmVkIHBvaW50ZXIg
dmFsdWUKPiAgPiBbLVdlcnJvcj1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXJdCj4gID4gICA2MjEg
fCAgICAgICAgIG1vbl93aWR0aCA9IChpbnQgKikmbW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0ud2lk
dGg7Cj4gID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn4KPiAgPiBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYzo2MjI6Mjk6IGVy
cm9yOiB0YWtpbmcgYWRkcmVzcyBvZiBwYWNrZWQgbWVtYmVyIG9mCj4gID4gICAgIOKAmHN0cnVj
dCBWREFnZW50TW9uQ29uZmln4oCZIG1heSByZXN1bHQgaW4gYW4gdW5hbGlnbmVkIHBvaW50ZXIg
dmFsdWUKPiAgPiAgICAgWy1XZXJyb3I9YWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyXQo+ICA+ICAg
NjIyIHwgICAgICAgICBtb25faGVpZ2h0ID0gKGludCAqKSZtb25fY29uZmlnLT5tb25pdG9yc1tp
XS5oZWlnaHQ7Cj4gID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3Nv
IDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy92ZGFnZW50L3gxMS1yYW5kci5j
IHwgMTggKysrKysrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudC94MTEtcmFu
ZHIuYyBiL3NyYy92ZGFnZW50L3gxMS1yYW5kci5jCj4gaW5kZXggOTI0ZjVlYy4uNzU4NTAzMSAx
MDA2NDQKPiAtLS0gYS9zcmMvdmRhZ2VudC94MTEtcmFuZHIuYwo+ICsrKyBiL3NyYy92ZGFnZW50
L3gxMS1yYW5kci5jCj4gQEAgLTYxMSwyMCArNjExLDI0IEBAIHN0YXRpYyB2b2lkIHplcm9fYmFz
ZV9tb25pdG9ycyhzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGludCAqd2lkdGgsIGludCAqaGVpZ2h0KQo+ICB7Cj4gICAgICBpbnQgaSwg
bWluX3ggPSBJTlRfTUFYLCBtaW5feSA9IElOVF9NQVgsIG1heF94ID0gSU5UX01JTiwgbWF4X3kg
PQo+ICAgICAgSU5UX01JTjsKPiAtICAgIGludCAqbW9uX2hlaWdodCwgKm1vbl93aWR0aDsKPiAg
Cj4gICAgICBmb3IgKGkgPSAwOyBpIDwgbW9uX2NvbmZpZy0+bnVtX29mX21vbml0b3JzOyBpKysp
IHsKPiAtICAgICAgICBpZiAoIW1vbml0b3JfZW5hYmxlZCgmbW9uX2NvbmZpZy0+bW9uaXRvcnNb
aV0pKQo+ICsgICAgICAgIGludCBtb25faGVpZ2h0LCBtb25fd2lkdGg7Cj4gKwo+ICsgICAgICAg
IGlmICghbW9uaXRvcl9lbmFibGVkKCZtb25fY29uZmlnLT5tb25pdG9yc1tpXSkpIHsKPiAgICAg
ICAgICAgICAgY29udGludWU7Cj4gKyAgICAgICAgfQo+ICAgICAgICAgIG1vbl9jb25maWctPm1v
bml0b3JzW2ldLnggJj0gfjc7Cj4gICAgICAgICAgbW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0ud2lk
dGggJj0gfjc7Cj4gLSAgICAgICAgbW9uX3dpZHRoID0gKGludCAqKSZtb25fY29uZmlnLT5tb25p
dG9yc1tpXS53aWR0aDsKPiAtICAgICAgICBtb25faGVpZ2h0ID0gKGludCAqKSZtb25fY29uZmln
LT5tb25pdG9yc1tpXS5oZWlnaHQ7Cj4gLSAgICAgICAgY29uc3RyYWluX3RvX3NjcmVlbih4MTEs
IG1vbl93aWR0aCwgbW9uX2hlaWdodCk7Cj4gKyAgICAgICAgbW9uX3dpZHRoID0gbW9uX2NvbmZp
Zy0+bW9uaXRvcnNbaV0ud2lkdGg7Cj4gKyAgICAgICAgbW9uX2hlaWdodCA9IG1vbl9jb25maWct
Pm1vbml0b3JzW2ldLmhlaWdodDsKCldoeSBub3QgZm9sbG93aW5nIEM5OSBhbmQgZGVmaW5lIGFu
ZCBpbml0aWFsaXplIGluIHRoZSBzYW1lCmxpbmU/Cgo+ICsgICAgICAgIGNvbnN0cmFpbl90b19z
Y3JlZW4oeDExLCAmbW9uX3dpZHRoLCAmbW9uX2hlaWdodCk7Cj4gICAgICAgICAgbWluX3ggPSBN
SU4obW9uX2NvbmZpZy0+bW9uaXRvcnNbaV0ueCwgbWluX3gpOwo+ICAgICAgICAgIG1pbl95ID0g
TUlOKG1vbl9jb25maWctPm1vbml0b3JzW2ldLnksIG1pbl95KTsKPiAtICAgICAgICBtYXhfeCA9
IE1BWChtb25fY29uZmlnLT5tb25pdG9yc1tpXS54ICsgKm1vbl93aWR0aCwgbWF4X3gpOwo+IC0g
ICAgICAgIG1heF95ID0gTUFYKG1vbl9jb25maWctPm1vbml0b3JzW2ldLnkgKyAqbW9uX2hlaWdo
dCwgbWF4X3kpOwo+ICsgICAgICAgIG1heF94ID0gTUFYKG1vbl9jb25maWctPm1vbml0b3JzW2ld
LnggKyBtb25fd2lkdGgsIG1heF94KTsKPiArICAgICAgICBtYXhfeSA9IE1BWChtb25fY29uZmln
LT5tb25pdG9yc1tpXS55ICsgbW9uX2hlaWdodCwgbWF4X3kpOwo+ICsgICAgICAgIG1vbl9jb25m
aWctPm1vbml0b3JzW2ldLndpZHRoID0gbW9uX3dpZHRoOwo+ICsgICAgICAgIG1vbl9jb25maWct
Pm1vbml0b3JzW2ldLmhlaWdodCA9IG1vbl9oZWlnaHQ7Cj4gICAgICB9Cj4gICAgICBpZiAobWlu
X3ggIT0gMCB8fCBtaW5feSAhPSAwKSB7Cj4gICAgICAgICAgc3lzbG9nKExPR19FUlIsICIlczog
YWdlbnQgY29uZmlnICVkLCVkIHJvb3RlZCwgYWRqdXN0aW5nIHRvIDAsMC4iLAoKT3RoZXJ3aXNl
IHBhdGNoIGxvb2tzIGdvb2QsIEkgdGhpbmsgdGhlIGNvZGUgZ2VuZXJhdGVkIGNvdWxkIGFsc28K
YmUgYmV0dGVyIHRoYW4gYmVmb3JlLgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
