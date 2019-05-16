Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A25A62003C
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 09:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE161891A8;
	Thu, 16 May 2019 07:27:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70DB891A8
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 07:27:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B50536883;
 Thu, 16 May 2019 07:27:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 810AA5D6A9;
 Thu, 16 May 2019 07:27:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 79A394A460;
 Thu, 16 May 2019 07:27:35 +0000 (UTC)
Date: Thu, 16 May 2019 03:27:35 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <227937980.18668669.1557991655450.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hR32e-0008Aj-4w@amboise>
References: <E1hR32e-0008Aj-4w@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.4]
Thread-Topic: gstreamer-encoder: Include encoding time in
 get_min_playback_delay()
Thread-Index: n0fly2N3U1V8v6ZMHzWods7+fH2emw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 16 May 2019 07:27:35 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] gstreamer-encoder: Include encoding time
 in get_min_playback_delay()
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

PiAKPiBUaGlzIHdheSBhbGwgdGhlIG1pbmltdW0gZGVsYXkgY2FsY3VsYXRpb24gaXMgaW4gb25l
IHBsYWNlIGFuZCB0aGlzCj4gbWFrZXMgZ3N0cmVhbWVyJ3MgaW1wbGVtZW50YXRpb24gY2xvc2Vy
IHRvIHRoZSBtanBlZyBvbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxm
Z291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KCkFja2VkCgo+IC0tLQo+ICBzZXJ2ZXIvZ3N0cmVhbWVy
LWVuY29kZXIuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIu
YyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCj4gaW5kZXggNjEzMDc4MWRhLi4xN2Q5ODIy
YzAgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiArKysgYi9zZXJ2
ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+IEBAIC01MjYsMTMgKzUyNiwxMyBAQCBzdGF0aWMgdWlu
dDMyX3QgZ2V0X21pbl9wbGF5YmFja19kZWxheShTcGljZUdzdEVuY29kZXIKPiAqZW5jb2RlcikK
PiAgICAgIC8qIEFsc28gZmFjdG9yIGluIHRoZSBuZXR3b3JrIGxhdGVuY3kgd2l0aCBhIG1hcmdp
biBmb3Igaml0dGVyLiAqLwo+ICAgICAgdWludDMyX3QgbmV0X2xhdGVuY3kgPSBnZXRfbmV0d29y
a19sYXRlbmN5KGVuY29kZXIpICogKDEuMCArCj4gICAgICBTUElDRV9HU1RfTEFURU5DWV9NQVJH
SU4pOwo+ICAKPiAtICAgIHJldHVybiBzZW5kX3RpbWUgKyBuZXRfbGF0ZW5jeTsKPiArICAgIHJl
dHVybiBzZW5kX3RpbWUgKyBuZXRfbGF0ZW5jeSArIGdldF9hdmVyYWdlX2VuY29kaW5nX3RpbWUo
ZW5jb2RlcikgLwo+IE5TRUNfUEVSX01JTExJU0VDOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCB1
cGRhdGVfY2xpZW50X3BsYXliYWNrX2RlbGF5KFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKPiAg
ewo+ICAgICAgaWYgKGVuY29kZXItPmNicy51cGRhdGVfY2xpZW50X3BsYXliYWNrX2RlbGF5KSB7
Cj4gLSAgICAgICAgdWludDMyX3QgbWluX2RlbGF5ID0gZ2V0X21pbl9wbGF5YmFja19kZWxheShl
bmNvZGVyKSArCj4gZ2V0X2F2ZXJhZ2VfZW5jb2RpbmdfdGltZShlbmNvZGVyKSAvIE5TRUNfUEVS
X01JTExJU0VDOwo+ICsgICAgICAgIHVpbnQzMl90IG1pbl9kZWxheSA9IGdldF9taW5fcGxheWJh
Y2tfZGVsYXkoZW5jb2Rlcik7Cj4gICAgICAgICAgZW5jb2Rlci0+Y2JzLnVwZGF0ZV9jbGllbnRf
cGxheWJhY2tfZGVsYXkoZW5jb2Rlci0+Y2JzLm9wYXF1ZSwKPiAgICAgICAgICBtaW5fZGVsYXkp
Owo+ICAgICAgfQo+ICB9CgpBbHNvIG1ha2UgbXVjaCBzZW5zZSB0aGF0IG1pbl9kZWxheSA9PSBn
ZXRfbWluX3BsYXliYWNrX2RlbGF5KCkKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
