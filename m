Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7F62394E
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 16:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6028E892C0;
	Mon, 20 May 2019 14:03:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA8E892C0
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 14:03:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 51CD987642;
 Mon, 20 May 2019 14:03:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4609B18994;
 Mon, 20 May 2019 14:03:47 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3728F1806B13;
 Mon, 20 May 2019 14:03:47 +0000 (UTC)
Date: Mon, 20 May 2019 10:03:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1993442866.19037101.1558361025750.JavaMail.zimbra@redhat.com>
In-Reply-To: <alpine.DEB.2.21.1905201550160.10407@amboise.dolphin>
References: <E1hR33N-0008KB-NL@amboise>
 <1940036155.18668461.1557991240154.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1905201550160.10407@amboise.dolphin>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.15]
Thread-Topic: gstreamer-encoder: Return the average frame size as a 32 bit int
Thread-Index: iTrUAOz4YRxGJ1g/O0yyM22gIPz78g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 20 May 2019 14:03:48 +0000 (UTC)
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

PiAKPiBPbiBUaHUsIDE2IE1heSAyMDE5LCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gWy4uLl0K
PiA+ID4gQEAgLTUyMCw3ICs1MjAsNyBAQCBzdGF0aWMgdWludDMyX3QKPiA+ID4gZ2V0X21pbl9w
bGF5YmFja19kZWxheShTcGljZUdzdEVuY29kZXIKPiA+ID4gKmVuY29kZXIpCj4gPiA+ICAgICAg
ICogYW4gSSBmcmFtZSkgYW5kIGFuIGF2ZXJhZ2UgZnJhbWUuIFRoaXMgYWxzbyB0YWtlcyBpbnRv
IGFjY291bnQKPiA+ID4gICAgICAgdGhlCj4gPiA+ICAgICAgICogZnJhbWVzIGRyb3BwZWQgYnkg
dGhlIGVuY29kZXIgYml0IHJhdGUgY29udHJvbC4KPiA+ID4gICAgICAgKi8KPiA+ID4gLSAgICB1
aW50NjRfdCBzaXplID0gZ2V0X21heGltdW1fZnJhbWVfc2l6ZShlbmNvZGVyKSArCj4gPiA+IGdl
dF9hdmVyYWdlX2ZyYW1lX3NpemUoZW5jb2Rlcik7Cj4gPiA+ICsgICAgdWludDMyX3Qgc2l6ZSA9
IGdldF9tYXhpbXVtX2ZyYW1lX3NpemUoZW5jb2RlcikgKwo+ID4gPiBnZXRfYXZlcmFnZV9mcmFt
ZV9zaXplKGVuY29kZXIpOwo+ID4gPiAgICAgIHVpbnQzMl90IHNlbmRfdGltZSA9IE1TRUNfUEVS
X1NFQyAqIHNpemUgKiA4IC8gZW5jb2Rlci0+Yml0X3JhdGU7Cj4gPiA+ICAKPiA+IAo+ID4gSGVy
ZSB5b3UgaGF2ZSA4MDAwICogMiAqIGZyYW1lX3NpemUgc28gY291bGQgb3ZlcmZsb3cgdWludDMy
X3Qgd2l0aAo+ID4gZnJhbWVfc2l6ZSA+PSB+MjU2a2IuCj4gCj4gUmlnaHQuIEl0J3MgY29uZnVz
aW5nIHRoYXQgTlNFQ19QRVJfU0VDIGFuZCBOU0VDX1BFUl9NSUxMSVNFQyBhcmUgTEwKPiBjb25z
dGFudHMgYnV0IG5vdCBOU0VDX1BFUl9NSUNST1NFQyBhbmQgTVNFQ19QRVJfU0VDLiBTaG91bGQg
dGhhdCBiZQo+IGNoYW5nZWQ/Cj4gCj4gU2luY2UgdGhleSBhcmUgYWxsIGxlc3MgdGhhbiBvciBl
cXVhbCB0byBvbmUgYmlsbGlvbiwgc2hvdWxkIHRoZXkganVzdAo+IGJlIGJhc2ljIGNvbnN0YW50
cyAod2hpY2ggd291bGQgYXZvaWQgdGhlICVsbGQgdnMuICVsZCBjb25mdXNpb24KPiB3aGVuZXZl
ciB0aGV5IGFyZSB1c2VkIGluIGEgdHJhY2UpIG9yIHNob3VsZCB0aGV5IGFsbCBiZSBMTCBjb25z
dGFudHMgdG8KPiBhdm9pZCB1bmV4cGVjdGVkIG92ZXJmbG93cy4KPiAKCldlbGwsIG9uIG9uZSBz
aWRlIHlvdSBhdm9pZCB0aGUgdXNhZ2Ugb2YgYmlnIG51bWJlciwgb24gdGhlIG90aGVyIHNpZGUK
eW91IGFyZSBwcm9wb3NpbmcgdG8gdXNlIGFsbCA2NCBiaXQgYXQgbGVhc3QuCkkgd291bGQgYXZv
aWQgdG8gbW92ZSB0byBhbGwgNjQgYml0LCBldmVuIGlmIG1vcmUgYW5kIG1vcmUgbWFjaGluZXMg
YXJlCjY0IGJpdCBjb3VsZCBiZSBzdGlsbCBmYXN0IHRvIHN0YXkgb24gMzIgYml0LCBjb21waWxl
cnMsIGV2ZW4gb24gNjQgYml0CmNhbiBkbyBzb21lIG9wdGltaXphdGlvbnMgdXNpbmcgMzIgYml0
IGFyaXRobWV0aWMuCgo+IAo+ID4gSSBhZ3JlZSBnZXRfYXZlcmFnZV9mcmFtZV9zaXplIGNhbiBz
YWZlbHkgcmV0dXJucyB1aW50MzJfdCBidXQgeW91IHNob3VsZAo+ID4gY2hhbmdlIGFib3ZlIGxp
bmUgdG8KPiA+IAo+ID4gICAgdWludDMyX3Qgc2VuZF90aW1lID0gKHVpbnQzMl90KSAoKHVpbnQ2
NF90KSAoTVNFQ19QRVJfU0VDICogOCkgKiBzaXplIC8KPiA+ICAgIGVuY29kZXItPmJpdF9yYXRl
KTsKPiA+IAo+ID4gb3IgbGVhdmUgc2l6ZSB1aW50NjRfdC4KPiAKPiBJIHdvdWxkIGJlIG9rIHdp
dGggdGhhdCB0b28uIEl0J3MgbW9zdGx5IGhhdmluZyBnZXRfYXZlcmFnZV9mcmFtZV9zaXplKCkK
PiByZXR1cm4gYW4gdWludDY0X3Qgd2hlbiBnZXRfbWF4aW11bV9mcmFtZV9zaXplKCkgcmV0dXJu
cyBhbiB1aW50MzJfdAo+IHRoYXQgd2FzIGJvdGhlcmluZyBtZS4KPiAKClllcywgaXQgbWFrZXMg
c2Vuc2UuIE1heWJlIGFkZGluZyBhIG5vdGUgaWYgZm9yY2luZyBjb252ZXJzaW9uIHdoeS4KCkZy
ZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
