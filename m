Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C352F98E2F
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 10:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFAF6EAB1;
	Thu, 22 Aug 2019 08:45:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85796EAB4
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:45:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8FBC9106BB24
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:45:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 85469600CD
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:45:57 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C7932551B;
 Thu, 22 Aug 2019 08:45:57 +0000 (UTC)
Date: Thu, 22 Aug 2019 04:45:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <483357276.8207281.1566463557346.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190822083706.nekpsvsfnhzw5tek@wingsuit>
References: <20190820140547.15251-1-jjanku@redhat.com>
 <20190822083706.nekpsvsfnhzw5tek@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.109, 10.4.195.12]
Thread-Topic: vmcstream: fix task cancellation
Thread-Index: omgCcT8jazkRQ6FunJ6vQ19GpWe/Vg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Thu, 22 Aug 2019 08:45:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] vmcstream: fix task
 cancellation
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

PiAKPiBIaSwKPiAKPiBPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCAwNDowNTo0NlBNICswMjAwLCBK
YWt1YiBKYW5rxa8gd3JvdGU6Cj4gPiBJZiB0aGUgdGFzayBpcyBjYW5jZWxsZWQsIGdfdGFza19w
cm9wYWdhdGVfcG9pbnRlcigpCj4gPiBpbiBzcGljZV92bWNfb3V0cHV0X3N0cmVhbV93cml0ZV9m
aW5pc2goKSByZXR1cm5zIE5VTEwKPiA+IHdoaWNoIHByb2R1Y2VzIGZvbGxvd2luZyBlcnJvcnM6
Cj4gPiAKPiA+ICAgICAoc3BpY3k6MTM1OTcpOiBHU3BpY2UtQ1JJVElDQUwgKio6IDE1OjM5OjQ2
LjE2ODoKPiA+ICAgICBzcGljZV92bWNfd3JpdGVfZmluaXNoOiBhc3NlcnRpb24gJ3Jlc3VsdCAh
PSBOVUxMJyBmYWlsZWQKPiA+IAo+ID4gICAgIChzcGljeToxMzU5Nyk6IEdMaWItR09iamVjdC1D
UklUSUNBTCAqKjogMTU6Mzk6NDYuMTY4OiBnX29iamVjdF91bnJlZjoKPiA+ICAgICBhc3NlcnRp
b24gJ0dfSVNfT0JKRUNUIChvYmplY3QpJyBmYWlsZWQKPiAKPiBXaGF0IEkgZm91bmQgd2VpcmQg
d2FzIGFjdHVhbGx5IHRoYXQgd2UgZG8gX3JlZigpIG9uIHdyaXRlX2NiKCkKPiBidXQgdGhpcyBn
b3QgY2xlYW51cCBhbnl3YXksIHNlZW1zIGxpa2UgYSBidWcgc29tZXdoZXJlLgo+IAoKSXQncyBu
b3QgYSBidWcsIGFzIEpha3ViIHNhaWQgYW5kIGZyb20gZ190YXNrX3Byb3BhZ2F0ZV9wb2ludGVy
CmRvY3VtZW50YXRpb24gIklmIHRoZSB0YXNrIHJlc3VsdGVkIGluIGFuIGVycm9yLCBvciB3YXMg
Y2FuY2VsbGVkLAp0aGVuIHRoaXMgd2lsbCBpbnN0ZWFkIHJldHVybiBOVUxMIGFuZCBzZXQgZXJy
b3IuIgoKU28gc3BpY2Vfdm1jX291dHB1dF9zdHJlYW1fd3JpdGVfZmluaXNoIGNhbGxlZCBnX3Rh
c2tfcHJvcGFnYXRlX3BvaW50ZXIKYW5kIHBhc3NlZCBpdCBhcyAicmVzdWx0IiB0byBzcGljZV92
bWNfd3JpdGVfZmluaXNoIHdoaWNoIHRyaWdnZXIKdGhlICJhc3NlcnRpb24gJ3Jlc3VsdCAhPSBO
VUxMJyIgZXJyb3IuIFdoZW4gc3BpY2Vfdm1jX3dyaXRlX2ZpbmlzaApyZXR1cm5lZCBhIGdfb2Jq
ZWN0X3VucmVmIGlzIGNhbGxlZCBvbiB0aGUgTlVMTCBvYmplY3QgY2F1c2luZwp0aGUgImFzc2Vy
dGlvbiAnR19JU19PQkpFQ1QgKG9iamVjdCknIGZhaWxlZCIuCgo+IEkgZG9uJ3Qgc2VlIG5vdGhp
bmcgd3Jvbmcgd2l0aCB5b3VyIHByb3Bvc2FsLCBhY3R1YWxseSB0aGlua3MgaXQKPiBpcyBiZXR0
ZXIgdG8gZG8gdGhlIHdyaXRlIG9uIHdyaXRlX2NiKCkgYW5kIGxldCB0aGUgX2ZpbmlzaCgpCj4g
anVzdCBwcm92aWRlIHRoZSBvdmVyYWxsIGZlZWRiYWNrIG9mIHRoZSBfYXN5bmMoKSBjYWxsLgo+
IAo+ID4gVG8gZml4IHRoaXMsIGNhbGwgc3BpY2Vfdm1jX3dyaXRlX2ZpbmlzaCgpIGltbWVkaWF0
ZWx5IGluIHRoZQo+ID4gY29ycmVzcG9uZGluZyB3cml0ZV9jYigpLgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgo+IAo+IEFja2VkLWJ5OiBW
aWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IAo+ID4gLS0tCj4gPiAgc3JjL3Zt
Y3N0cmVhbS5jIHwgMjMgKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9zcmMvdm1jc3RyZWFtLmMgYi9zcmMvdm1jc3RyZWFtLmMKPiA+IGluZGV4IGI2ZjZkMWEuLmI3
ZGExMDMgMTAwNjQ0Cj4gPiAtLS0gYS9zcmMvdm1jc3RyZWFtLmMKPiA+ICsrKyBiL3NyYy92bWNz
dHJlYW0uYwo+ID4gQEAgLTM5NywxOCArMzk3LDExIEBAIHNwaWNlX3ZtY19vdXRwdXRfc3RyZWFt
X3dyaXRlX2ZuKEdPdXRwdXRTdHJlYW0KPiA+ICpzdHJlYW0sCj4gPiAgCj4gPiAgc3RhdGljIGdz
c2l6ZQo+ID4gIHNwaWNlX3ZtY19vdXRwdXRfc3RyZWFtX3dyaXRlX2ZpbmlzaChHT3V0cHV0U3Ry
ZWFtICpzdHJlYW0sCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdB
c3luY1Jlc3VsdCAqc2ltcGxlLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBHQXN5bmNSZXN1bHQgKnJlc3VsdCwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgR0Vycm9yICoqZXJyb3IpCj4gPiAgewo+ID4gLSAgICBTcGljZVZtY091dHB1
dFN0cmVhbSAqc2VsZiA9IFNQSUNFX1ZNQ19PVVRQVVRfU1RSRUFNKHN0cmVhbSk7Cj4gPiAtICAg
IEdBc3luY1Jlc3VsdCAqcmVzID0gZ190YXNrX3Byb3BhZ2F0ZV9wb2ludGVyKEdfVEFTSyhzaW1w
bGUpLCBlcnJvcik7Cj4gPiAtICAgIGdzc2l6ZSBieXRlc193cml0dGVuOwo+ID4gLQo+ID4gLSAg
ICBTUElDRV9ERUJVRygic3BpY2V2bWMgd3JpdGUgZmluaXNoIik7Cj4gPiAtICAgIGJ5dGVzX3dy
aXR0ZW4gPSBzcGljZV92bWNfd3JpdGVfZmluaXNoKHNlbGYtPmNoYW5uZWwsIHJlcywgZXJyb3Ip
Owo+ID4gLSAgICBnX29iamVjdF91bnJlZihyZXMpOwo+ID4gLQo+ID4gLSAgICByZXR1cm4gYnl0
ZXNfd3JpdHRlbjsKPiA+ICsgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwoZ190YXNrX2lzX3ZhbGlk
KHJlc3VsdCwgc3RyZWFtKSwgLTEpOwo+ID4gKyAgICByZXR1cm4gZ190YXNrX3Byb3BhZ2F0ZV9p
bnQoR19UQVNLKHJlc3VsdCksIGVycm9yKTsKPiA+ICB9Cj4gPiAgCj4gPiAgc3RhdGljIHZvaWQK
PiA+IEBAIC00MTcsOSArNDEwLDE3IEBAIHdyaXRlX2NiKEdPYmplY3QgKnNvdXJjZV9vYmplY3Qs
Cj4gPiAgICAgICAgICAgZ3BvaW50ZXIgdXNlcl9kYXRhKQo+ID4gIHsKPiA+ICAgICAgR1Rhc2sg
KnRhc2sgPSB1c2VyX2RhdGE7Cj4gPiArICAgIEdFcnJvciAqZXJyb3IgPSBOVUxMOwo+ID4gKyAg
ICBnc3NpemUgYnl0ZXNfd3JpdHRlbjsKPiA+ICAKPiA+IC0gICAgZ190YXNrX3JldHVybl9wb2lu
dGVyKHRhc2ssIGdfb2JqZWN0X3JlZihyZXMpLCBnX29iamVjdF91bnJlZik7Cj4gPiArICAgIFNQ
SUNFX0RFQlVHKCJzcGljZXZtYyB3cml0ZSBmaW5pc2giKTsKPiA+ICsgICAgYnl0ZXNfd3JpdHRl
biA9IHNwaWNlX3ZtY193cml0ZV9maW5pc2goU1BJQ0VfQ0hBTk5FTChzb3VyY2Vfb2JqZWN0KSwK
PiA+IHJlcywgJmVycm9yKTsKPiA+ICAKPiA+ICsgICAgaWYgKGVycm9yKSB7Cj4gPiArICAgICAg
ICBnX3Rhc2tfcmV0dXJuX2Vycm9yKHRhc2ssIGVycm9yKTsKPiA+ICsgICAgfSBlbHNlIHsKPiA+
ICsgICAgICAgIGdfdGFza19yZXR1cm5faW50KHRhc2ssIGJ5dGVzX3dyaXR0ZW4pOwo+ID4gKyAg
ICB9Cj4gPiAgICAgIGdfb2JqZWN0X3VucmVmKHRhc2spOwo+ID4gIH0KPiA+ICAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
