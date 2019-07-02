Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 169045CC5F
	for <lists+spice-devel@lfdr.de>; Tue,  2 Jul 2019 11:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63E589A1E;
	Tue,  2 Jul 2019 09:07:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB3D89A1E
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Jul 2019 09:07:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AB36583F51
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Jul 2019 09:07:08 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DFD9E1972C;
 Tue,  2 Jul 2019 09:07:07 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, Kevin Pouget <kpouget@redhat.com>
References: <20190701120639.31441-1-kpouget@redhat.com>
 <20190701150513.6735-1-kpouget@redhat.com>
 <883044589.25992687.1561994384685.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <0105f089-80bd-b455-5405-0fa96971678c@redhat.com>
Date: Tue, 2 Jul 2019 12:07:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <883044589.25992687.1561994384685.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 02 Jul 2019 09:07:08 +0000 (UTC)
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
Reply-To: uril@redhat.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8xLzE5IDY6MTkgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gRmVkb3JhIDMw
IC8gZ2NjIDkuMS4xIDIwMTkwNTAzIChSZWQgSGF0IDkuMS4xLTEpIGZhaWxzIHRvIGJ1aWxkCj4+
IGJlY2F1c2Ugb2YgdGhpcyBlcnJvci93YXJuaW5nOgo+Pgo+Pj4gZ3N0cmVhbWVyLWVuY29kZXIu
YzogSW4gZnVuY3Rpb24gJ3NldF92aWRlb19iaXRfcmF0ZSc6Cj4+PiBnc3RyZWFtZXItZW5jb2Rl
ci5jOjUxODoxNzogZXJyb3I6IHRha2luZyB0aGUgYWJzb2x1dGUgdmFsdWUgb2YgdW5zaWduZWQK
Pj4+IHR5cGUgJ3VpbnQ2NF90JyB7YWthICdsb25nIHVuc2lnbmVkIGludCd9IGhhcyBubyBlZmZl
Y3QKPj4+IFstV2Vycm9yPWFic29sdXRlLXZhbHVlXQo+Pj4gICA1MTggfCAgICAgfSBlbHNlICBp
ZiAoYWJzKGJpdF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpID4KPj4+ICAgZW5jb2Rl
ci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKPj4+
ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fgo+Pj4gZ3N0cmVhbWVyLWVuY29kZXIuYzo1MTg6
MTc6IGVycm9yOiBhYnNvbHV0ZSB2YWx1ZSBmdW5jdGlvbiAnYWJzJyBnaXZlbiBhbgo+Pj4gYXJn
dW1lbnQgb2YgdHlwZSAndWludDY0X3QnIHtha2EgJ2xvbmcgdW5zaWduZWQgaW50J30KPj4KPj4g
VGhpcyBwYXRjaGVzIHNvbHZlcyB0aGVzZSB0d28gd2FybmluZ3M6Cj4+Cj4+IDEpIGNhc3QgdGhl
IHN1YnN0cmFjdGlvbiB0byBhIHNpZ25lZCB0eXBlIChpbnQ2NF90IGluc3RlYWQgb2YKPj4gdWlu
dDY0X3QpIHRvIHByZXNlcnZlIHRoZSBvcGVyYXRpb24gbWVhbmluZzsKPj4KPj4gMikgdXNlIHRo
ZSBsb25nIGludCBsYWJzKCkgaW5zdGVhZCBvZiB0aGUgaW50IHZlcnNpb24gYWJzKCkgdG8gYXZv
aWQKPj4gZGF0YSB0cnVuY3Rpb24uCj4gCj4gTm90IHdvcmtpbmcgZm9yIGFsbCBwbGF0Zm9ybSB3
ZSBzdXBwb3J0LCBtYXliZSBhCj4gCj4gc3RhdGljIGlubGluZSBpbnQ2NF90IGk2NGFicyhpbnQ2
NF90IHZhbHVlKQo+IHsKPiAgICAgIGlmIChzaXplb2YoaW50KSA9PSBzaXplb2YodmFsdWUpKSB7
Cj4gICAgICAgICAgcmV0dXJuIChpbnQ2NF90KSBhYnMoKGludCkgdmFsdWUpOwo+ICAgICAgfQo+
ICAgICAgaWYgKHNpemVvZihsb25nIGludCkgPT0gc2l6ZW9mKHZhbHVlKSkgewo+ICAgICAgICAg
IHJldHVybiAoaW50NjRfdCkgbGFicygobG9uZyBpbnQpIHZhbHVlKTsKPiAgICAgIH0KPiAgICAg
IHJldHVybiAoaW50NjRfdCkgbGxhYnMoKGxvbmcgbG9uZyBpbnQpIHZhbHVlKTsKPiB9CgpPciBh
IHNpbXBsZXIKICAgICByZXR1cm4gKHZhbHVlID49IDApID8gdmFsdWUgOiAtdmFsdWU7CgpVcmku
Cgo+IAo+PiAtLS0KPj4KPj4gcmVzZW5kaW5nIHRoaXMgcGF0Y2ggd2l0aCB0aGUgY29tbWVudHMg
YWRkcmVzc2VkCj4+Cj4+IC0tLQo+PiAgIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgMiAr
LQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVh
bWVyLWVuY29kZXIuYwo+PiBpbmRleCA2NDE2YjY4OC4uZGE3M2M1ZWUgMTAwNjQ0Cj4+IC0tLSBh
L3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCj4+ICsrKyBiL3NlcnZlci9nc3RyZWFtZXItZW5j
b2Rlci5jCj4+IEBAIC01MTUsNyArNTE1LDcgQEAgc3RhdGljIHZvaWQgc2V0X3ZpZGVvX2JpdF9y
YXRlKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlciwKPj4gdWludDY0X3QgYml0X3JhdGUpCj4+ICAg
ICAgICAgICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSA9IGJpdF9yYXRlOwo+PiAgICAgICAgICAg
c2V0X2dzdGVuY19iaXRyYXRlKGVuY29kZXIpOwo+Pgo+PiAtICAgIH0gZWxzZSAgaWYgKGFicyhi
aXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSA+Cj4+IGVuY29kZXItPnZpZGVvX2Jp
dF9yYXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJBVEVfTUFSR0lOKSB7Cj4+ICsgICAgfSBlbHNl
ICBpZiAobGFicygoaW50NjRfdCkoYml0X3JhdGUgLSBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSkp
ID4KPj4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFURV9N
QVJHSU4pIHsKPj4gICAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7
Cj4+ICAgICAgICAgICBzZXRfcGlwZWxpbmVfY2hhbmdlcyhlbmNvZGVyLCBTUElDRV9HU1RfVklE
RU9fUElQRUxJTkVfQklUUkFURSk7Cj4+ICAgICAgIH0KPiAKPiBGcmVkaWFubwo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
