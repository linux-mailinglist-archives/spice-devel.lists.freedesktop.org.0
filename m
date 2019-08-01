Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1D37DF3C
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF27A6E701;
	Thu,  1 Aug 2019 15:39:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F7C36E701
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:39:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2B7F330C7473
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:39:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 233086266F
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:39:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16063264C8;
 Thu,  1 Aug 2019 15:39:49 +0000 (UTC)
Date: Thu, 1 Aug 2019 11:39:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <299479209.4203325.1564673988804.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190801150119.29179-3-ssheribe@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <20190801150119.29179-3-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.16]
Thread-Topic: gst-plugin: Free input buffer and XImage as soon as possible
Thread-Index: QsjxjGgTGeYdmBOmUz2WddSlNZOYrA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 01 Aug 2019 15:39:49 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 3/4] gst-plugin:
 Free input buffer and XImage as soon as possible
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

PiAKPiAtLS0KPiAgc3JjL2dzdC1wbHVnaW4uY3BwIHwgMzEgKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1
Z2luLmNwcAo+IGluZGV4IDBhMWQwNDEuLmM3NDEyYzUgMTAwNjQ0Cj4gLS0tIGEvc3JjL2dzdC1w
bHVnaW4uY3BwCj4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4gQEAgLTY3LDYgKzY3LDE1IEBA
IHN0cnVjdCBHc3RTYW1wbGVEZWxldGVyIHsKPiAgCj4gIHVzaW5nIEdzdFNhbXBsZVVQdHIgPSBz
dGQ6OnVuaXF1ZV9wdHI8R3N0U2FtcGxlLCBHc3RTYW1wbGVEZWxldGVyPjsKPiAgCj4gK3N0cnVj
dCBHc3RCdWZmZXJEZWxldGVyIHsKPiArICAgIHZvaWQgb3BlcmF0b3IoKShHc3RCdWZmZXIqIHAp
Cj4gKyAgICB7Cj4gKyAgICAgICAgZ3N0X2J1ZmZlcl91bnJlZihwKTsKPiArICAgIH0KPiArfTsK
PiArCj4gK3VzaW5nIEdzdEJ1ZmZlclVQdHIgPSBzdGQ6OnVuaXF1ZV9wdHI8R3N0QnVmZmVyLCBH
c3RCdWZmZXJEZWxldGVyPjsKPiArCj4gIGNsYXNzIEdzdHJlYW1lckZyYW1lQ2FwdHVyZSBmaW5h
bCA6IHB1YmxpYyBGcmFtZUNhcHR1cmUKPiAgewo+ICBwdWJsaWM6Cj4gQEAgLTg2LDcgKzk1LDYg
QEAgcHJpdmF0ZToKPiAgICAgIERpc3BsYXkgKmNvbnN0IGRweTsKPiAgI2lmIFhMSUJfQ0FQVFVS
RQo+ICAgICAgdm9pZCB4bGliX2NhcHR1cmUoKTsKPiAtICAgIFhJbWFnZSAqaW1hZ2UgPSBudWxs
cHRyOwo+ICAjZW5kaWYKPiAgICAgIEdzdE9iamVjdFVQdHI8R3N0RWxlbWVudD4gcGlwZWxpbmUs
IGNhcHR1cmUsIHNpbms7Cj4gICAgICBHc3RTYW1wbGVVUHRyIHNhbXBsZTsKPiBAQCAtMzA2LDEy
ICszMTQsNiBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6ZnJlZV9zYW1wbGUoKQo+ICAg
ICAgICAgIGdzdF9idWZmZXJfdW5tYXAoZ3N0X3NhbXBsZV9nZXRfYnVmZmVyKHNhbXBsZS5nZXQo
KSksICZtYXApOwo+ICAgICAgICAgIHNhbXBsZS5yZXNldCgpOwo+ICAgICAgfQo+IC0jaWYgWExJ
Ql9DQVBUVVJFCj4gLSAgICBpZihpbWFnZSkgewo+IC0gICAgICAgIGltYWdlLT5mLmRlc3Ryb3lf
aW1hZ2UoaW1hZ2UpOwo+IC0gICAgICAgIGltYWdlID0gbnVsbHB0cjsKPiAtICAgIH0KPiAtI2Vu
ZGlmCj4gIH0KPiAgCj4gIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6fkdzdHJlYW1lckZyYW1lQ2Fw
dHVyZSgpCj4gQEAgLTMyNyw5ICszMjksMTQgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6
OlJlc2V0KCkKPiAgfQo+ICAKPiAgI2lmIFhMSUJfQ0FQVFVSRQo+ICt2b2lkIGZyZWVfeGltYWdl
KGdwb2ludGVyIGRhdGEpIHsKCmJyYWNrZXQgb24gbmV4dCBsaW5lCgo+ICsgICAgKChYSW1hZ2Uq
KWRhdGEpLT5mLmRlc3Ryb3lfaW1hZ2UoKFhJbWFnZSopZGF0YSk7Cj4gK30KPiArCj4gIHZvaWQg
R3N0cmVhbWVyRnJhbWVDYXB0dXJlOjp4bGliX2NhcHR1cmUoKQo+ICB7Cj4gICAgICBpbnQgc2Ny
ZWVuID0gWERlZmF1bHRTY3JlZW4oZHB5KTsKPiArICAgIFhJbWFnZSAqaW1hZ2UgPSBudWxscHRy
Owo+ICAKCkkgd291bGQgZGVjbGFyZSArIGluaXRpYWxpemUgb24gdGhlIHNhbWUgbGluZQoKPiAg
ICAgIFdpbmRvdyB3aW4gPSBSb290V2luZG93KGRweSwgc2NyZWVuKTsKPiAgICAgIFhXaW5kb3dB
dHRyaWJ1dGVzIHdpbl9pbmZvOwo+IEBAIC0zNTUsOSArMzYyLDExIEBAIHZvaWQgR3N0cmVhbWVy
RnJhbWVDYXB0dXJlOjp4bGliX2NhcHR1cmUoKQo+ICAgICAgICAgIHRocm93IHN0ZDo6cnVudGlt
ZV9lcnJvcigiQ2Fubm90IGNhcHR1cmUgZnJvbSBYIik7Cj4gICAgICB9Cj4gIAo+IC0gICAgR3N0
QnVmZmVyICpidWY7Cj4gLSAgICBidWYgPSBnc3RfYnVmZmVyX25ld193cmFwcGVkKGltYWdlLT5k
YXRhLCBpbWFnZS0+aGVpZ2h0ICoKPiBpbWFnZS0+Ynl0ZXNfcGVyX2xpbmUpOwo+IC0gICAgaWYg
KCFidWYpIHsKPiArICAgIEdzdEJ1ZmZlclVQdHIgYnVmKGdzdF9idWZmZXJfbmV3X3dyYXBwZWRf
ZnVsbCgoR3N0TWVtb3J5RmxhZ3MpMCwKPiBpbWFnZS0+ZGF0YSwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbWFnZS0+aGVpZ2h0ICoKPiBpbWFn
ZS0+Ynl0ZXNfcGVyX2xpbmUsIDAsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW1hZ2UtPmhlaWdodCAqCj4gaW1hZ2UtPmJ5dGVzX3Blcl9saW5l
LCBpbWFnZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBmcmVlX3hpbWFnZSkpOwo+ICsgICAgaWYgKCFidWYuZ2V0KCkpIHsKPiAgICAgICAgICB0
aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkZhaWxlZCB0byB3cmFwIGltYWdlIGluIGdzdHJlYW1l
cgo+ICAgICAgICAgIGJ1ZmZlciIpOwo+ICAgICAgfQo+ICAKPiBAQCAtMzY5LDcgKzM3OCw3IEBA
IHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjp4bGliX2NhcHR1cmUoKQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG51bGxwdHIpKTsKPiAgCj4gICAgICAvLyBQ
dXNoIHNhbXBsZQo+IC0gICAgR3N0U2FtcGxlVVB0ciBhcHBzcmNfc2FtcGxlKGdzdF9zYW1wbGVf
bmV3KGJ1ZiwgY2Fwcy5nZXQoKSwgbnVsbHB0ciwKPiBudWxscHRyKSk7Cj4gKyAgICBHc3RTYW1w
bGVVUHRyIGFwcHNyY19zYW1wbGUoZ3N0X3NhbXBsZV9uZXcoYnVmLmdldCgpLCBjYXBzLmdldCgp
LAo+IG51bGxwdHIsIG51bGxwdHIpKTsKCkknbSBhIGJpdCBjb25mdXNlZCBvbiByZWZlcmVuY2Ug
Y291bnRpbmcgaGVyZS4KVGhlIGNoYW5nZSBzZWVtcyB0byBpbmRpY2F0ZSB0aGF0IG5vdyAiYnVm
IiBpcyBmcmVlZCBhdXRvbWF0aWNhbGx5CihhcyB0aGUgdW5pcXVlX3B0cikuClNvLCBpcyB0aGlz
IHBhdGNoIGFsc28gZml4aW5nIGEgbWVtb3J5IGxlYWsgPwoKPiAgICAgIGlmIChnc3RfYXBwX3Ny
Y19wdXNoX3NhbXBsZShHU1RfQVBQX1NSQyhjYXB0dXJlLmdldCgpKSwKPiAgICAgIGFwcHNyY19z
YW1wbGUuZ2V0KCkpICE9IEdTVF9GTE9XX09LKSB7Cj4gICAgICAgICAgdGhyb3cgc3RkOjpydW50
aW1lX2Vycm9yKCJnc3RyYW1lciBhcHBzcmMgZWxlbWVudCBjYW5ub3QgcHVzaAo+ICAgICAgICAg
IHNhbXBsZSIpOwo+ICAgICAgfQoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
