Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4235BFA3
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 17:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA7D89BA1;
	Mon,  1 Jul 2019 15:19:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B882889A4B
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 15:19:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 39D1B356D3
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 15:19:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C413608C2
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 15:19:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2137454D3C;
 Mon,  1 Jul 2019 15:19:46 +0000 (UTC)
Date: Mon, 1 Jul 2019 11:19:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <883044589.25992687.1561994384685.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190701150513.6735-1-kpouget@redhat.com>
References: <20190701120639.31441-1-kpouget@redhat.com>
 <20190701150513.6735-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.27]
Thread-Topic: gstreamer-encoder: fix compiler warning with Fedora 30
Thread-Index: xqPh8MjCZnFnBl+ekbTsABOcpgxeqQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 01 Jul 2019 15:19:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning
 with Fedora 30
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

PiAKPiBGZWRvcmEgMzAgLyBnY2MgOS4xLjEgMjAxOTA1MDMgKFJlZCBIYXQgOS4xLjEtMSkgZmFp
bHMgdG8gYnVpbGQKPiBiZWNhdXNlIG9mIHRoaXMgZXJyb3Ivd2FybmluZzoKPiAKPiA+IGdzdHJl
YW1lci1lbmNvZGVyLmM6IEluIGZ1bmN0aW9uICdzZXRfdmlkZW9fYml0X3JhdGUnOgo+ID4gZ3N0
cmVhbWVyLWVuY29kZXIuYzo1MTg6MTc6IGVycm9yOiB0YWtpbmcgdGhlIGFic29sdXRlIHZhbHVl
IG9mIHVuc2lnbmVkCj4gPiB0eXBlICd1aW50NjRfdCcge2FrYSAnbG9uZyB1bnNpZ25lZCBpbnQn
fSBoYXMgbm8gZWZmZWN0Cj4gPiBbLVdlcnJvcj1hYnNvbHV0ZS12YWx1ZV0KPiA+ICA1MTggfCAg
ICAgfSBlbHNlICBpZiAoYWJzKGJpdF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpID4K
PiA+ICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01B
UkdJTikgewo+ID4gICAgICB8ICAgICAgICAgICAgICAgICBefn4KPiA+IGdzdHJlYW1lci1lbmNv
ZGVyLmM6NTE4OjE3OiBlcnJvcjogYWJzb2x1dGUgdmFsdWUgZnVuY3Rpb24gJ2FicycgZ2l2ZW4g
YW4KPiA+IGFyZ3VtZW50IG9mIHR5cGUgJ3VpbnQ2NF90JyB7YWthICdsb25nIHVuc2lnbmVkIGlu
dCd9Cj4gCj4gVGhpcyBwYXRjaGVzIHNvbHZlcyB0aGVzZSB0d28gd2FybmluZ3M6Cj4gCj4gMSkg
Y2FzdCB0aGUgc3Vic3RyYWN0aW9uIHRvIGEgc2lnbmVkIHR5cGUgKGludDY0X3QgaW5zdGVhZCBv
Zgo+IHVpbnQ2NF90KSB0byBwcmVzZXJ2ZSB0aGUgb3BlcmF0aW9uIG1lYW5pbmc7Cj4gCj4gMikg
dXNlIHRoZSBsb25nIGludCBsYWJzKCkgaW5zdGVhZCBvZiB0aGUgaW50IHZlcnNpb24gYWJzKCkg
dG8gYXZvaWQKPiBkYXRhIHRydW5jdGlvbi4KCk5vdCB3b3JraW5nIGZvciBhbGwgcGxhdGZvcm0g
d2Ugc3VwcG9ydCwgbWF5YmUgYQoKc3RhdGljIGlubGluZSBpbnQ2NF90IGk2NGFicyhpbnQ2NF90
IHZhbHVlKQp7CiAgICBpZiAoc2l6ZW9mKGludCkgPT0gc2l6ZW9mKHZhbHVlKSkgewogICAgICAg
IHJldHVybiAoaW50NjRfdCkgYWJzKChpbnQpIHZhbHVlKTsKICAgIH0KICAgIGlmIChzaXplb2Yo
bG9uZyBpbnQpID09IHNpemVvZih2YWx1ZSkpIHsKICAgICAgICByZXR1cm4gKGludDY0X3QpIGxh
YnMoKGxvbmcgaW50KSB2YWx1ZSk7CiAgICB9CiAgICByZXR1cm4gKGludDY0X3QpIGxsYWJzKChs
b25nIGxvbmcgaW50KSB2YWx1ZSk7Cn0KCj4gLS0tCj4gCj4gcmVzZW5kaW5nIHRoaXMgcGF0Y2gg
d2l0aCB0aGUgY29tbWVudHMgYWRkcmVzc2VkCj4gCj4gLS0tCj4gIHNlcnZlci9nc3RyZWFtZXIt
ZW5jb2Rlci5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9z
ZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+IGluZGV4IDY0MTZiNjg4Li5kYTczYzVlZSAxMDA2
NDQKPiAtLS0gYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+ICsrKyBiL3NlcnZlci9nc3Ry
ZWFtZXItZW5jb2Rlci5jCj4gQEAgLTUxNSw3ICs1MTUsNyBAQCBzdGF0aWMgdm9pZCBzZXRfdmlk
ZW9fYml0X3JhdGUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyLAo+IHVpbnQ2NF90IGJpdF9yYXRl
KQo+ICAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7Cj4gICAgICAg
ICAgc2V0X2dzdGVuY19iaXRyYXRlKGVuY29kZXIpOwo+IAo+IC0gICAgfSBlbHNlICBpZiAoYWJz
KGJpdF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpID4KPiBlbmNvZGVyLT52aWRlb19i
aXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01BUkdJTikgewo+ICsgICAgfSBlbHNl
ICBpZiAobGFicygoaW50NjRfdCkoYml0X3JhdGUgLSBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSkp
ID4KPiBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01B
UkdJTikgewo+ICAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7Cj4g
ICAgICAgICAgc2V0X3BpcGVsaW5lX2NoYW5nZXMoZW5jb2RlciwgU1BJQ0VfR1NUX1ZJREVPX1BJ
UEVMSU5FX0JJVFJBVEUpOwo+ICAgICAgfQoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
