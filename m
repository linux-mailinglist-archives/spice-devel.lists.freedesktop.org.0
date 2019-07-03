Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9A75E43E
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 14:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4175A88EA7;
	Wed,  3 Jul 2019 12:47:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BAD88EA7
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 12:47:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 17782307D853
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 12:47:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DEF563623
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 12:47:14 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02B6D206D1;
 Wed,  3 Jul 2019 12:47:14 +0000 (UTC)
Date: Wed, 3 Jul 2019 08:47:12 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1889450166.26287138.1562158032512.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190703122750.17735-1-kpouget@redhat.com>
References: <20190703122750.17735-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.8]
Thread-Topic: gstreamer-encoder: fix compiler warning with Fedora 30
Thread-Index: kIklXkTJlgg7/VLqLzjPWeZdDpn0Yw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 03 Jul 2019 12:47:14 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-server] gstreamer-encoder: fix
 compiler warning with Fedora 30
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
IG9mCj4gPiB1bnNpZ25lZCB0eXBlICd1aW50NjRfdCcge2FrYSAnbG9uZyB1bnNpZ25lZCBpbnQn
fSBoYXMgbm8gZWZmZWN0Cj4gPiBbLVdlcnJvcj1hYnNvbHV0ZS12YWx1ZV0KPiA+ICA1MTggfCAg
ICAgfSBlbHNlICBpZiAoYWJzKGJpdF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpID4K
PiA+ICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01B
UkdJTikgewo+ID4gICAgICB8ICAgICAgICAgICAgICAgICBefn4KPiA+IGdzdHJlYW1lci1lbmNv
ZGVyLmM6NTE4OjE3OiBlcnJvcjogYWJzb2x1dGUgdmFsdWUgZnVuY3Rpb24gJ2FicycKPiA+IGdp
dmVuIGFuIGFyZ3VtZW50IG9mIHR5cGUgJ3VpbnQ2NF90JyB7YWthICdsb25nIHVuc2lnbmVkIGlu
dCd9Cj4gCj4gVGhpcyBwYXRjaGVzIHNvbHZlcyB0aGVzZSB0d28gd2FybmluZ3M6Cj4gCj4gMSkg
Y2FzdCB0aGUgc3Vic3RyYWN0aW9uIHRvIGEgc2lnbmVkIHR5cGUgKGludDY0X3QgaW5zdGVhZCBv
Zgo+IHVpbnQ2NF90KSB0byBwcmVzZXJ2ZSB0aGUgb3BlcmF0aW9uIG1lYW5pbmc7Cj4gCj4gMikg
dXNlIGEgY3VzdG9tIHZlcnNpb24gb2YgYWJzKCkgdG8gYXZvaWQgZGF0YSB0cnVuY2F0aW9uIGFu
ZC9vcgo+IHBsYXRmb3JtLWRlcGVuZGVudCB0eXBlIGxlbmd0aHMgKGFicy9sYWJzL2xsYWJzKQo+
IC0tLQo+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDIgKy0KPiAgc2VydmVyL3V0aWxz
LmggICAgICAgICAgICAgfCA1ICsrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9nc3RyZWFtZXItZW5j
b2Rlci5jIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBpbmRleCA2NDE2YjY4OC4uNTRh
YTE5NjMgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiArKysgYi9z
ZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+IEBAIC01MTUsNyArNTE1LDcgQEAgc3RhdGljIHZv
aWQgc2V0X3ZpZGVvX2JpdF9yYXRlKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlciwKPiB1aW50NjRf
dCBiaXRfcmF0ZSkKPiAgICAgICAgICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSA9IGJpdF9yYXRl
Owo+ICAgICAgICAgIHNldF9nc3RlbmNfYml0cmF0ZShlbmNvZGVyKTsKPiAKPiAtICAgIH0gZWxz
ZSAgaWYgKGFicyhiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSA+Cj4gZW5jb2Rl
ci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKPiAr
ICAgIH0gZWxzZSAgaWYgKGk2NGFicygoaW50NjRfdCkoYml0X3JhdGUgLSBlbmNvZGVyLT52aWRl
b19iaXRfcmF0ZSkpID4KPiBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURF
T19CSVRSQVRFX01BUkdJTikgewoKSXMgaXQgZmluZSBmb3IgeW91IGlmIEkgc3BsaXQgdGhlIGxp
bmUgYXQgMTAwIGNoYXJhY3RlcnMgKGFmdGVyICIgPiIpID8KCj4gICAgICAgICAgZW5jb2Rlci0+
dmlkZW9fYml0X3JhdGUgPSBiaXRfcmF0ZTsKPiAgICAgICAgICBzZXRfcGlwZWxpbmVfY2hhbmdl
cyhlbmNvZGVyLCBTUElDRV9HU1RfVklERU9fUElQRUxJTkVfQklUUkFURSk7Cj4gICAgICB9Cj4g
ZGlmZiAtLWdpdCBhL3NlcnZlci91dGlscy5oIGIvc2VydmVyL3V0aWxzLmgKPiBpbmRleCA1NGJj
OWQ0OS4uYTU0ZDU0MzMgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3V0aWxzLmgKPiArKysgYi9zZXJ2
ZXIvdXRpbHMuaAo+IEBAIC03NSw0ICs3NSw5IEBAIGludCByZWRfY2hhbm5lbF9uYW1lX3RvX3R5
cGUoY29uc3QgY2hhciAqbmFtZSk7Cj4gCj4gIHZvaWQgcmVkX2R1bXBfb3BlbnNzbF9lcnJvcnMo
dm9pZCk7Cj4gCj4gK3N0YXRpYyBpbmxpbmUgaW50NjRfdCBpNjRhYnMoaW50NjRfdCB2YWx1ZSkK
PiArewo+ICsgICAgcmV0dXJuICh2YWx1ZSA+PSAwKSA/IHZhbHVlIDogLXZhbHVlOwo+ICt9Cj4g
Kwo+ICAjZW5kaWYgLyogVVRJTFNfSF8gKi8KCk90aGVyd2lzZSBwYXRjaCBpcyBmaW5lIGZvciBt
ZS4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
