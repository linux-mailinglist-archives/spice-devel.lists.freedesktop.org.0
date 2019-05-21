Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD922249C0
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 10:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA4689227;
	Tue, 21 May 2019 08:07:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0158E89227
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 08:07:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7CB2F10C94;
 Tue, 21 May 2019 08:06:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ED50600D1;
 Tue, 21 May 2019 08:06:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 64C0F1806B0E;
 Tue, 21 May 2019 08:06:59 +0000 (UTC)
Date: Tue, 21 May 2019 04:06:58 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <135002567.19353896.1558426018075.JavaMail.zimbra@redhat.com>
In-Reply-To: <192908139e07ebe728a606fea2a1be7e681b2a90.1558399323.git.fgouget@free.fr>
References: <fa469fc745c2d114ea93a1ba58842a6820d94761.1558399323.git.fgouget@free.fr>
 <192908139e07ebe728a606fea2a1be7e681b2a90.1558399323.git.fgouget@free.fr>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.15]
Thread-Topic: mjpeg: Pull more code in get_min_required_playback_delay()
Thread-Index: YejYL3PnDFi+ClKRpzWRmptJ+qFo4g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 21 May 2019 08:06:59 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v2 2/2] mjpeg: Pull more code in
 get_min_required_playback_delay()
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

PiAKPiBUaGlzIHJlZHVjZXMgY29kZSBkdXBsaWNhdGlvbiBhbmQgcGFzc2luZyB0aGUgTUpwZWdF
bmNvZGVyIG9iamVjdAo+IG1ha2VzIGl0IHBvc3NpYmxlIHRvIG1vZGlmeSB0aGUgcGxheWJhY2sg
Y2FsY3VsYXRpb24gd2l0aG91dCBhZGRpbmcKPiBtb3JlIGFyZ3VtZW50cy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgoKQWNrZWQg
dGhlIHNlcmllcwoKPiAtLS0KPiAKPiB2MjogUmVkdWNlZCB0aGUgZGlmZiBhbmQgY29uc3RpZmll
ZCB0aGUgTUpwZWdFbmNvZGVyKiBwYXJhbWV0ZXIuCj4gCj4gCj4gIHNlcnZlci9tanBlZy1lbmNv
ZGVyLmMgfCAyMCArKysrKysrKy0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL21qcGVn
LWVuY29kZXIuYyBiL3NlcnZlci9tanBlZy1lbmNvZGVyLmMKPiBpbmRleCBiMDNmZmZlMTQuLjRh
MDJlN2M4YiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCj4gKysrIGIvc2Vy
dmVyL21qcGVnLWVuY29kZXIuYwo+IEBAIC0xODEsOSArMTgxLDggQEAgdHlwZWRlZiBzdHJ1Y3Qg
TUpwZWdFbmNvZGVyIHsKPiAgfSBNSnBlZ0VuY29kZXI7Cj4gIAo+ICBzdGF0aWMgdm9pZCBtanBl
Z19lbmNvZGVyX3Byb2Nlc3Nfc2VydmVyX2Ryb3BzKE1KcGVnRW5jb2RlciAqZW5jb2Rlcik7Cj4g
LXN0YXRpYyB1aW50MzJfdCBnZXRfbWluX3JlcXVpcmVkX3BsYXliYWNrX2RlbGF5KHVpbnQ2NF90
IGZyYW1lX2VuY19zaXplLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1aW50NjRfdCBieXRlX3JhdGUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IGxhdGVuY3kpOwo+ICtzdGF0aWMgdWlu
dDMyX3QgZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19kZWxheShjb25zdCBNSnBlZ0VuY29kZXIg
KmVuY29kZXIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHVpbnQ2NF90IGZyYW1lX2VuY19zaXplKTsKPiAgCj4gIHN0YXRpYyB2b2lkIG1qcGVnX3Zp
ZGVvX2J1ZmZlcl9mcmVlKFZpZGVvQnVmZmVyICp2aWRlb19idWZmZXIpCj4gIHsKPiBAQCAtNTM0
LDEwICs1MzMsNyBAQCBjb21wbGV0ZV9zYW1wbGU6Cj4gICAgICBzcGljZV9kZWJ1ZygiTUpwZWcg
cXVhbGl0eSBzYW1wbGUgZW5kICVwOiBxdWFsaXR5ICVkIGZwcyAlZCIsCj4gICAgICAgICAgICAg
ICAgICBlbmNvZGVyLCBtanBlZ19xdWFsaXR5X3NhbXBsZXNbcmF0ZV9jb250cm9sLT5xdWFsaXR5
X2lkXSwKPiAgICAgICAgICAgICAgICAgIHJhdGVfY29udHJvbC0+ZnBzKTsKPiAgICAgIGlmIChl
bmNvZGVyLT5jYnMudXBkYXRlX2NsaWVudF9wbGF5YmFja19kZWxheSkgewo+IC0gICAgICAgIHVp
bnQzMl90IGxhdGVuY3kgPSBtanBlZ19lbmNvZGVyX2dldF9sYXRlbmN5KGVuY29kZXIpOwo+IC0g
ICAgICAgIHVpbnQzMl90IG1pbl9kZWxheSA9Cj4gZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19k
ZWxheShmaW5hbF9xdWFsaXR5X2VuY19zaXplLAo+IC0KPiByYXRlX2NvbnRyb2wtPmJ5dGVfcmF0
ZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGxhdGVuY3kpOwo+ICsgICAgICAgIHVpbnQzMl90IG1pbl9kZWxheSA9IGdldF9t
aW5fcmVxdWlyZWRfcGxheWJhY2tfZGVsYXkoZW5jb2RlciwKPiBmaW5hbF9xdWFsaXR5X2VuY19z
aXplKTsKPiAgCj4gICAgICAgICAgZW5jb2Rlci0+Y2JzLnVwZGF0ZV9jbGllbnRfcGxheWJhY2tf
ZGVsYXkoZW5jb2Rlci0+Y2JzLm9wYXF1ZSwKPiAgICAgICAgICBtaW5fZGVsYXkpOwo+ICAgICAg
fQo+IEBAIC0xMTY2LDEwICsxMTYyLDExIEBAIHN0YXRpYyB2b2lkCj4gbWpwZWdfZW5jb2Rlcl9o
YW5kbGVfcG9zaXRpdmVfY2xpZW50X3N0cmVhbV9yZXBvcnQoTUpwZWdFbmNvZGVyICplbmMKPiAg
ICogdGhlIHZpZGVvIHBsYXliYWNrIGppdHRlciBidWZmZXIgc2hvdWxkIGJlIGF0IGxlYXN0IChz
ZW5kX3RpbWUqMiArCj4gICBuZXRfbGF0ZW5jeSkgZm9yCj4gICAqIHByZXZlbnRpbmcgdW5kZXJm
bG93Cj4gICAqLwo+IC1zdGF0aWMgdWludDMyX3QgZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19k
ZWxheSh1aW50NjRfdCBmcmFtZV9lbmNfc2l6ZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdWludDY0X3QgYnl0ZV9yYXRlLAo+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCBsYXRlbmN5KQo+
ICtzdGF0aWMgdWludDMyX3QgZ2V0X21pbl9yZXF1aXJlZF9wbGF5YmFja19kZWxheShjb25zdCBN
SnBlZ0VuY29kZXIgKmVuY29kZXIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHVpbnQ2NF90IGZyYW1lX2VuY19zaXplKQo+ICB7Cj4gKyAgICB1aW50
NjRfdCBieXRlX3JhdGUgPSBlbmNvZGVyLT5yYXRlX2NvbnRyb2wuYnl0ZV9yYXRlOwo+ICsgICAg
dWludDMyX3QgbGF0ZW5jeSA9IG1qcGVnX2VuY29kZXJfZ2V0X2xhdGVuY3koZW5jb2Rlcik7Cj4g
ICAgICB1aW50MzJfdCBvbmVfZnJhbWVfdGltZTsKPiAgICAgIHVpbnQzMl90IG1pbl9kZWxheTsK
PiAgCj4gQEAgLTEyMTksOCArMTIxNiw3IEBAIHN0YXRpYyB2b2lkCj4gbWpwZWdfZW5jb2Rlcl9j
bGllbnRfc3RyZWFtX3JlcG9ydChWaWRlb0VuY29kZXIgKnZpZGVvX2VuY29kZXIsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgcmF0ZV9jb250cm9sLT5udW1fcmVjZW50X2VuY19mcmFtZXM7Cj4g
ICAgICB9Cj4gICAgICBzcGljZV9kZWJ1ZygicmVjZW50IHNpemUgYXZnICUuMmYgKEtCKSIsIGF2
Z19lbmNfc2l6ZSAvIDEwMjQuMCk7Cj4gLSAgICBtaW5fcGxheWJhY2tfZGVsYXkgPSBnZXRfbWlu
X3JlcXVpcmVkX3BsYXliYWNrX2RlbGF5KGF2Z19lbmNfc2l6ZSwKPiByYXRlX2NvbnRyb2wtPmJ5
dGVfcmF0ZSwKPiAtCj4gbWpwZWdfZW5jb2Rlcl9nZXRfbGF0ZW5jeShlbmNvZGVyKSk7Cj4gKyAg
ICBtaW5fcGxheWJhY2tfZGVsYXkgPSBnZXRfbWluX3JlcXVpcmVkX3BsYXliYWNrX2RlbGF5KGVu
Y29kZXIsCj4gYXZnX2VuY19zaXplKTsKPiAgICAgIHNwaWNlX2RlYnVnKCJtaW4tZGVsYXkgJXUg
Y2xpZW50LWRlbGF5ICVkIiwgbWluX3BsYXliYWNrX2RlbGF5LAo+ICAgICAgZW5kX2ZyYW1lX2Rl
bGF5KTsKPiAgCj4gICAgICBpZiAobWluX3BsYXliYWNrX2RlbGF5ID4gZW5kX2ZyYW1lX2RlbGF5
KSB7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
