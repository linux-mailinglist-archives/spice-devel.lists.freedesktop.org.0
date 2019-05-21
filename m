Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B188C24955
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 09:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F4F890BB;
	Tue, 21 May 2019 07:49:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96409890BB
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 07:49:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3E26E13AA9;
 Tue, 21 May 2019 07:49:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 32AA5600CC;
 Tue, 21 May 2019 07:49:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 268025B423;
 Tue, 21 May 2019 07:49:43 +0000 (UTC)
Date: Tue, 21 May 2019 03:49:43 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1897334739.19344977.1558424983109.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hSsfb-0001ku-LD@amboise>
References: <E1hSsfb-0001ku-LD@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.25]
Thread-Topic: gstreamer-encoder: Return the average frame size as a 32 bit int
Thread-Index: CtqzU7pdalHCR1cL8TUKpEI4aDb7ow==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 21 May 2019 07:49:43 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v2] gstreamer-encoder: Return the average
 frame size as a 32 bit int
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBJdCBtYWtlcyBubyBzZW5zZSB0byBleHBlY3QgYXZlcmFnZSBmcmFtZSBzaXplcyBhbnl3
aGVyZSBjbG9zZSB0byAyR0IuCj4gQnV0IHRoZW4gbWFrZSBzdXJlIHRvIGF2b2lkIGFyaXRobWV0
aWMgb3ZlcmZsb3dzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdl
dEBjb2Rld2VhdmVycy5jb20+CgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJl
ZGhhdC5jb20+Cgo+IC0tLQo+IAo+IEluIGdldF9taW5fcGxheWJhY2tfZGVsYXkoKSBJIG9wdGVk
IGZvciB0aGUgY2FzdCBhcHByb2FjaCBhcyB0aGlzIG1ha2VzCj4gd2hhdCBoYXBwZW5zIGNsZWFy
ZXIuIEkgZGVlbWVkIHRoZSBhc3NpZ25tZW50ICh1aW50MzJfdCkgdW5uZWNlc3NhcnkKPiB0aG91
Z2guCj4gCj4gIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgNiArKystLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIu
Ywo+IGluZGV4IDBmZjEyMDFhOS4uMDEwMWIzNmZhIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9nc3Ry
ZWFtZXItZW5jb2Rlci5jCj4gKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBAQCAt
Mzk2LDcgKzM5Niw3IEBAIHN0YXRpYyB1aW50NjRfdCBnZXRfYXZlcmFnZV9lbmNvZGluZ190aW1l
KFNwaWNlR3N0RW5jb2Rlcgo+ICplbmNvZGVyKQo+ICAgICAgcmV0dXJuIGVuY29kZXItPnN0YXRf
ZHVyYXRpb25fc3VtIC8gY291bnQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyB1aW50NjRfdCBnZXRfYXZl
cmFnZV9mcmFtZV9zaXplKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKPiArc3RhdGljIHVpbnQz
Ml90IGdldF9hdmVyYWdlX2ZyYW1lX3NpemUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQo+ICB7
Cj4gICAgICB1aW50MzJfdCBjb3VudCA9IGVuY29kZXItPmhpc3RvcnlfbGFzdCArCj4gICAgICAg
ICAgKGVuY29kZXItPmhpc3RvcnlfbGFzdCA8IGVuY29kZXItPnN0YXRfZmlyc3QgPwo+ICAgICAg
ICAgIFNQSUNFX0dTVF9ISVNUT1JZX1NJWkUgOiAwKSAtCj4gQEAgLTUyMCw4ICs1MjAsOCBAQCBz
dGF0aWMgdWludDMyX3QgZ2V0X21pbl9wbGF5YmFja19kZWxheShTcGljZUdzdEVuY29kZXIKPiAq
ZW5jb2RlcikKPiAgICAgICAqIGFuIEkgZnJhbWUpIGFuZCBhbiBhdmVyYWdlIGZyYW1lLiBUaGlz
IGFsc28gdGFrZXMgaW50byBhY2NvdW50IHRoZQo+ICAgICAgICogZnJhbWVzIGRyb3BwZWQgYnkg
dGhlIGVuY29kZXIgYml0IHJhdGUgY29udHJvbC4KPiAgICAgICAqLwo+IC0gICAgdWludDY0X3Qg
c2l6ZSA9IGdldF9tYXhpbXVtX2ZyYW1lX3NpemUoZW5jb2RlcikgKwo+IGdldF9hdmVyYWdlX2Zy
YW1lX3NpemUoZW5jb2Rlcik7Cj4gLSAgICB1aW50MzJfdCBzZW5kX3RpbWUgPSBNU0VDX1BFUl9T
RUMgKiBzaXplICogOCAvIGVuY29kZXItPmJpdF9yYXRlOwo+ICsgICAgdWludDMyX3Qgc2l6ZSA9
IGdldF9tYXhpbXVtX2ZyYW1lX3NpemUoZW5jb2RlcikgKwo+IGdldF9hdmVyYWdlX2ZyYW1lX3Np
emUoZW5jb2Rlcik7Cj4gKyAgICB1aW50MzJfdCBzZW5kX3RpbWUgPSAoKHVpbnQ2NF90KU1TRUNf
UEVSX1NFQyAqIDgpICogc2l6ZSAvCj4gZW5jb2Rlci0+Yml0X3JhdGU7Cj4gIAo+ICAgICAgLyog
QWxzbyBmYWN0b3IgaW4gdGhlIG5ldHdvcmsgbGF0ZW5jeSB3aXRoIGEgbWFyZ2luIGZvciBqaXR0
ZXIuICovCj4gICAgICB1aW50MzJfdCBuZXRfbGF0ZW5jeSA9IGdldF9uZXR3b3JrX2xhdGVuY3ko
ZW5jb2RlcikgKiAoMS4wICsKPiAgICAgIFNQSUNFX0dTVF9MQVRFTkNZX01BUkdJTik7Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
