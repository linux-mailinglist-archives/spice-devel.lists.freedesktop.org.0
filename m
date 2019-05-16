Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4C120015
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 09:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E92E891A1;
	Thu, 16 May 2019 07:20:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91ACE891A1
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 07:20:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E26D88E55;
 Thu, 16 May 2019 07:20:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 028AF5D971;
 Thu, 16 May 2019 07:20:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA9F21806B11;
 Thu, 16 May 2019 07:20:41 +0000 (UTC)
Date: Thu, 16 May 2019 03:20:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1940036155.18668461.1557991240154.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hR33N-0008KB-NL@amboise>
References: <E1hR33N-0008KB-NL@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.12]
Thread-Topic: gstreamer-encoder: Return the average frame size as a 32 bit int
Thread-Index: bhsva6ZC7beIREpThIXuusk48MC/Ww==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 16 May 2019 07:20:42 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] gstreamer-encoder: Return the average
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
aGVyZSBjbG9zZSB0byAyR0IuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxm
Z291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KClN1cmUgYnV0IDI1NiBrYiBhcmUgcG9zc2libGUuCgo+
IC0tLQo+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCj4g
aW5kZXggZTMxOWVlYTIyLi42MTMwNzgxZGEgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL2dzdHJlYW1l
ci1lbmNvZGVyLmMKPiArKysgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+IEBAIC0zOTYs
NyArMzk2LDcgQEAgc3RhdGljIHVpbnQ2NF90IGdldF9hdmVyYWdlX2VuY29kaW5nX3RpbWUoU3Bp
Y2VHc3RFbmNvZGVyCj4gKmVuY29kZXIpCj4gICAgICByZXR1cm4gZW5jb2Rlci0+c3RhdF9kdXJh
dGlvbl9zdW0gLyBjb3VudDsKPiAgfQo+ICAKPiAtc3RhdGljIHVpbnQ2NF90IGdldF9hdmVyYWdl
X2ZyYW1lX3NpemUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQo+ICtzdGF0aWMgdWludDMyX3Qg
Z2V0X2F2ZXJhZ2VfZnJhbWVfc2l6ZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIpCj4gIHsKPiAg
ICAgIHVpbnQzMl90IGNvdW50ID0gZW5jb2Rlci0+aGlzdG9yeV9sYXN0ICsKPiAgICAgICAgICAo
ZW5jb2Rlci0+aGlzdG9yeV9sYXN0IDwgZW5jb2Rlci0+c3RhdF9maXJzdCA/Cj4gICAgICAgICAg
U1BJQ0VfR1NUX0hJU1RPUllfU0laRSA6IDApIC0KPiBAQCAtNTIwLDcgKzUyMCw3IEBAIHN0YXRp
YyB1aW50MzJfdCBnZXRfbWluX3BsYXliYWNrX2RlbGF5KFNwaWNlR3N0RW5jb2Rlcgo+ICplbmNv
ZGVyKQo+ICAgICAgICogYW4gSSBmcmFtZSkgYW5kIGFuIGF2ZXJhZ2UgZnJhbWUuIFRoaXMgYWxz
byB0YWtlcyBpbnRvIGFjY291bnQgdGhlCj4gICAgICAgKiBmcmFtZXMgZHJvcHBlZCBieSB0aGUg
ZW5jb2RlciBiaXQgcmF0ZSBjb250cm9sLgo+ICAgICAgICovCj4gLSAgICB1aW50NjRfdCBzaXpl
ID0gZ2V0X21heGltdW1fZnJhbWVfc2l6ZShlbmNvZGVyKSArCj4gZ2V0X2F2ZXJhZ2VfZnJhbWVf
c2l6ZShlbmNvZGVyKTsKPiArICAgIHVpbnQzMl90IHNpemUgPSBnZXRfbWF4aW11bV9mcmFtZV9z
aXplKGVuY29kZXIpICsKPiBnZXRfYXZlcmFnZV9mcmFtZV9zaXplKGVuY29kZXIpOwo+ICAgICAg
dWludDMyX3Qgc2VuZF90aW1lID0gTVNFQ19QRVJfU0VDICogc2l6ZSAqIDggLyBlbmNvZGVyLT5i
aXRfcmF0ZTsKPiAgCgpIZXJlIHlvdSBoYXZlIDgwMDAgKiAyICogZnJhbWVfc2l6ZSBzbyBjb3Vs
ZCBvdmVyZmxvdyB1aW50MzJfdCB3aXRoCmZyYW1lX3NpemUgPj0gfjI1NmtiLgpJIGFncmVlIGdl
dF9hdmVyYWdlX2ZyYW1lX3NpemUgY2FuIHNhZmVseSByZXR1cm5zIHVpbnQzMl90IGJ1dCB5b3Ug
c2hvdWxkCmNoYW5nZSBhYm92ZSBsaW5lIHRvCgogICB1aW50MzJfdCBzZW5kX3RpbWUgPSAodWlu
dDMyX3QpICgodWludDY0X3QpIChNU0VDX1BFUl9TRUMgKiA4KSAqIHNpemUgLyBlbmNvZGVyLT5i
aXRfcmF0ZSk7CgpvciBsZWF2ZSBzaXplIHVpbnQ2NF90LgoKPiAgICAgIC8qIEFsc28gZmFjdG9y
IGluIHRoZSBuZXR3b3JrIGxhdGVuY3kgd2l0aCBhIG1hcmdpbiBmb3Igaml0dGVyLiAqLwoKRnJl
ZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
