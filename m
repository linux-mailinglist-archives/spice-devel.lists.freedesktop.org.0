Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58178A209F
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA8856E125;
	Thu, 29 Aug 2019 16:17:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4582D6E125
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:17:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E64018CF1AE
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:17:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DC9E31001B05
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:17:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D24561800B74;
 Thu, 29 Aug 2019 16:17:43 +0000 (UTC)
Date: Thu, 29 Aug 2019 12:17:43 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <401101174.10116584.1567095463808.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190829121602.16695-1-kpouget@redhat.com>
References: <782333838.10040153.1567072456525.JavaMail.zimbra@redhat.com>
 <20190829121602.16695-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.29]
Thread-Topic: streaming: make draw-area visible on MJPEG encoder creation
Thread-Index: b8NcMKwnyGZ6lDi8VJDV35xY88yJ4w==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Thu, 29 Aug 2019 16:17:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] streaming: make draw-area visible on
 MJPEG encoder creation
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

PiAKPiBUaGlzIHBhdGNoIGFsbG93cyB0aGUgTUpQRUcgZW5jb2RlciB0byBpbmZvcm0gdGhlIHNw
aWNlLXdpZGdldCB0aGF0Cj4gaXRzIHZpZGVvIGRyYXdpbmcgYXJlYSAoZHJhdy1hcmVhKSBzaG91
bGQgYmUgbWFkZSB2aXNpYmxlIG9uIHNjcmVlbi4KPiAKPiBUaGlzIGlzIHJlcXVpcmVkIHRvIHN3
aXRjaCBmcm9tIEdTVCB2aWRlbyBkZWNvZGluZyB0byBuYXRpdmUgTUpQRUcKPiBkZWNvZGluZywg
b3RoZXJ3aXNlIHRoZSBnc3QtYXJlYSByZW1haW5lZCBvbiB0b3AgYW5kIHRoZSBNSlBFRyB2aWRl
bwo+IHN0cmVhbSB3YXMgbmV2ZXIgc2hvd24uCj4gCj4gU2lnbmVkLW9mZi1ieTogS2V2aW4gUG91
Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+CgpGaW5lIGZvciBtZS4gU25pciBoYWQgdGhlIG1vc3Qg
Y29tbWVudHMgb24gZWFybGllciB2ZXJzaW9ucy4KCj4gLS0tCj4gIHNyYy9jaGFubmVsLWRpc3Bs
YXktbWpwZWcuYyB8IDMgKysrCj4gIHNyYy9zcGljZS13aWRnZXQuYyAgICAgICAgICB8IDkgKysr
KysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgYi9zcmMvY2hh
bm5lbC1kaXNwbGF5LW1qcGVnLmMKPiBpbmRleCA2NDdkMzFiLi42MzZhOThiIDEwMDY0NAo+IC0t
LSBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwo+ICsrKyBiL3NyYy9jaGFubmVsLWRpc3Bs
YXktbWpwZWcuYwo+IEBAIC0zMDAsNSArMzAwLDggQEAgVmlkZW9EZWNvZGVyKiBjcmVhdGVfbWpw
ZWdfZGVjb2RlcihpbnQgY29kZWNfdHlwZSwKPiBkaXNwbGF5X3N0cmVhbSAqc3RyZWFtKQo+ICAK
PiAgICAgIC8qIEFsbCB0aGUgb3RoZXIgZmllbGRzIGFyZSBpbml0aWFsaXplZCB0byB6ZXJvIGJ5
IGdfbmV3MCgpLiAqLwo+ICAKPiArICAgIC8qIG1ha2VzIHRoZSBkcmF3LWFyZWEgdmlzaWJsZSAq
Lwo+ICsgICAgaGFuZF9waXBlbGluZV90b193aWRnZXQoc3RyZWFtLCBOVUxMKTsKPiArCj4gICAg
ICByZXR1cm4gKFZpZGVvRGVjb2RlciopZGVjb2RlcjsKPiAgfQo+IGRpZmYgLS1naXQgYS9zcmMv
c3BpY2Utd2lkZ2V0LmMgYi9zcmMvc3BpY2Utd2lkZ2V0LmMKPiBpbmRleCBhOWJhMWYxLi43YzI1
N2ZmIDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS13aWRnZXQuYwo+ICsrKyBiL3NyYy9zcGljZS13
aWRnZXQuYwo+IEBAIC0yNzgwLDEzICsyNzgwLDIwIEBAIHN0YXRpYyB2b2lkIGdzdF9zaXplX2Fs
bG9jYXRlKEd0a1dpZGdldCAqd2lkZ2V0LAo+IEdka1JlY3RhbmdsZSAqYSwgZ3BvaW50ZXIgZGF0
YSkKPiAgfQo+ICAKPiAgLyogVGhpcyBjYWxsYmFjayBzaG91bGQgcGFzcyB0byB0aGUgd2lkZ2V0
IGEgcG9pbnRlciBvZiB0aGUgcGlwZWxpbmUKPiAtICogc28gdGhhdCB3ZSBjYW4gc2V0IHBpcGVs
aW5lIGFuZCBvdmVybGF5IHJlbGF0ZWQgY2FsbHMgZnJvbSBoZXJlLgo+ICsgKiBzbyB0aGF0IHdl
IGNhbiB0aGUgc2V0IEdTVCBwaXBlbGluZSBhbmQgb3ZlcmxheSByZWxhdGVkIGNhbGxzIGZyb20K
PiArICogaGVyZS4gIElmIHRoZSBwaXBlbGluZSBwb2ludGVyIGlzIE5VTEwsIHRoZSBkcmF3aW5n
IGFyZWEgb2YgdGhlCj4gKyAqIG5hdGl2ZSByZW5kZXJlciBpcyBzZXQgdmlzaWJsZS4KPiAgICov
Cj4gIHN0YXRpYyBnYm9vbGVhbiBzZXRfb3ZlcmxheShTcGljZUNoYW5uZWwgKmNoYW5uZWwsIHZv
aWQqIHBpcGVsaW5lX3B0ciwKPiAgU3BpY2VEaXNwbGF5ICpkaXNwbGF5KQo+ICB7Cj4gICNpZiBk
ZWZpbmVkKEdES19XSU5ET1dJTkdfWDExKQo+ICAgICAgU3BpY2VEaXNwbGF5UHJpdmF0ZSAqZCA9
IGRpc3BsYXktPnByaXY7Cj4gIAo+ICsgICAgaWYgKHBpcGVsaW5lX3B0ciA9PSBOVUxMKSB7Cj4g
KyAgICAgICAgZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ssICJkcmF3
LWFyZWEiKTsKPiArICAgICAgICByZXR1cm4gdHJ1ZTsKPiArICAgIH0KPiArCj4gICAgICAvKiBH
c3RWaWRlb092ZXJsYXkgaXMgY3VycmVudGx5IHVzZWQgb25seSB1bmRlciB4ICovCj4gICAgICBp
ZiAoIWdfZ2V0ZW52KCJESVNBQkxFX0dTVFZJREVPT1ZFUkxBWSIpICYmCj4gICAgICAgICAgR0RL
X0lTX1gxMV9ESVNQTEFZKGdka19kaXNwbGF5X2dldF9kZWZhdWx0KCkpKSB7Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
