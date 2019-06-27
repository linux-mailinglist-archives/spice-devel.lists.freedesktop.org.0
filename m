Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C73A57EE9
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E536E558;
	Thu, 27 Jun 2019 09:04:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093656E558
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:04:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9CB3620260
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:04:44 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CE3045D9C6;
 Thu, 27 Jun 2019 09:04:43 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, Kevin Pouget <kpouget@redhat.com>
References: <20190627083149.23283-1-kpouget@redhat.com>
 <20190627083149.23283-2-kpouget@redhat.com>
 <1778342961.24949689.1561624831035.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <7ca551b0-09bc-c942-799a-17fc257a1480@redhat.com>
Date: Thu, 27 Jun 2019 12:04:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1778342961.24949689.1561624831035.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 27 Jun 2019 09:04:44 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-server 1/2] streaming: Restart streams
 on video-codec changes
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

T24gNi8yNy8xOSAxMTo0MCBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pgo+PiBJbnRlcnJ1
cHQvcmVzdGFydCB0aGUgdmlkZW8gc3RyZWFtcyB3aGVuIHRoZSB1c2VyIGNoYW5nZXMgdGhlCj4+
IHByZWZlcnJlZCB2aWRlby1jb2RlY3MgKGRjY19oYW5kbGVfcHJlZmVycmVkX3ZpZGVvX2NvZGVj
X3R5cGUpIG9yIHdoZW4KPj4gdGhlIGhvc3QgYWRtaW4gdXBkYXRlcyB0aGUgbGlzdCBvZiB2aWRl
by1jb2RlY3MgYWxsb3dlZAo+PiAoZGlzcGxheV9jaGFubmVsX3NldF92aWRlb19jb2RlY3MpCgpI
aSwKClRoaXMgcGF0Y2ggb25seSBzdG9wcyB0aGUgdmlkZW8gc3RyZWFtLgpBIG5ldyBzdHJlYW0g
d2lsbCBiZSBzdGFydGVkIGF1dG9tYXRpY2FsbHkgYWNjb3JkaW5nIHRvIHNwaWNlIHJ1bGVzCih2
aWRlby1zdHJlYW0gZGV0ZWN0aW9uKS4KCj4+IC0tLQo+PiAgIHNlcnZlci9kY2MuYyAgICAgICAg
ICAgICB8IDIgKysKPj4gICBzZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMgfCAyICsrCj4+ICAgc2Vy
dmVyL3ZpZGVvLXN0cmVhbS5jICAgIHwgNSArKysrKwo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLmMgYi9zZXJ2ZXIvZGNj
LmMKPj4gaW5kZXggYTk0ZTI3ZTguLjBkZWVlZDg4IDEwMDY0NAo+PiAtLS0gYS9zZXJ2ZXIvZGNj
LmMKPj4gKysrIGIvc2VydmVyL2RjYy5jCj4+IEBAIC0xMjAxLDYgKzEyMDEsOCBAQCBzdGF0aWMg
aW50Cj4+IGRjY19oYW5kbGVfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUoRGlzcGxheUNoYW5u
ZWxDbGllbnQgKmRjYywKPj4KPj4gICAgICAgLyogTmV3IGNsaWVudCBwcmVmZXJlbmNlICovCj4+
ICAgICAgIGRjY191cGRhdGVfcHJlZmVycmVkX3ZpZGVvX2NvZGVjcyhkY2MpOwo+PiArICAgIHZp
ZGVvX3N0cmVhbV9kZXRhY2hfYW5kX3N0b3AoRENDX1RPX0RDKGRjYykpOwo+PiArCj4+ICAgICAg
IHJldHVybiBUUlVFOwo+PiAgIH0KPj4KPj4gZGlmZiAtLWdpdCBhL3NlcnZlci9kaXNwbGF5LWNo
YW5uZWwuYyBiL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwo+PiBpbmRleCAwNzFjMDE0MC4uNGI4
ZTZlOTAgMTAwNjQ0Cj4+IC0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwo+PiArKysgYi9z
ZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPj4gQEAgLTI1NSw2ICsyNTUsOCBAQCB2b2lkIGRpc3Bs
YXlfY2hhbm5lbF9zZXRfdmlkZW9fY29kZWNzKERpc3BsYXlDaGFubmVsCj4+ICpkaXNwbGF5LCBH
QXJyYXkgKnZpZGVvX2NvZAo+PiAgICAgICBnX2NsZWFyX3BvaW50ZXIoJmRpc3BsYXktPnByaXYt
PnZpZGVvX2NvZGVjcywgZ19hcnJheV91bnJlZik7Cj4+ICAgICAgIGRpc3BsYXktPnByaXYtPnZp
ZGVvX2NvZGVjcyA9IGdfYXJyYXlfcmVmKHZpZGVvX2NvZGVjcyk7Cj4+ICAgICAgIGdfb2JqZWN0
X25vdGlmeShHX09CSkVDVChkaXNwbGF5KSwgInZpZGVvLWNvZGVjcyIpOwo+PiArCj4+ICsgICAg
dmlkZW9fc3RyZWFtX2RldGFjaF9hbmRfc3RvcChkaXNwbGF5KTsKPj4gICB9Cj4+Cj4+ICAgR0Fy
cmF5ICpkaXNwbGF5X2NoYW5uZWxfZ2V0X3ZpZGVvX2NvZGVjcyhEaXNwbGF5Q2hhbm5lbCAqZGlz
cGxheSkKPj4gZGlmZiAtLWdpdCBhL3NlcnZlci92aWRlby1zdHJlYW0uYyBiL3NlcnZlci92aWRl
by1zdHJlYW0uYwo+PiBpbmRleCA0YWMyNWFmOC4uZjIyNzcxM2IgMTAwNjQ0Cj4+IC0tLSBhL3Nl
cnZlci92aWRlby1zdHJlYW0uYwo+PiArKysgYi9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMKPj4gQEAg
LTkyNSw2ICs5MjUsMTEgQEAgdm9pZCB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKERpc3Bs
YXlDaGFubmVsCj4+ICpkaXNwbGF5KQo+PiAgICAgICBSaW5nSXRlbSAqc3RyZWFtX2l0ZW07Cj4+
Cj4+ICAgICAgIHNwaWNlX2RlYnVnKCJ0cmFjZSIpOwo+PiArCj4+ICsgICAgaWYgKCFyaW5nX2lz
X2luaXRpYWxpemVkKCZkaXNwbGF5LT5wcml2LT5zdHJlYW1zKSkgewo+PiArICAgICAgICByZXR1
cm47Cj4+ICsgICAgfQo+PiArCj4gCj4gSWYgdGhpcyBoYXBwZW5zIEkgd291bGQgY29uc2lkZXIg
YSBwcm9ncmFtIGVycm9yIGFuZCBJIHdvdWxkIGFib3J0KCkuCj4gCj4+ICAgICAgIHdoaWxlICgo
c3RyZWFtX2l0ZW0gPSByaW5nX2dldF9oZWFkKCZkaXNwbGF5LT5wcml2LT5zdHJlYW1zKSkpIHsK
CldoZW4gdGhlIHJpbmcgaXMgZW1wdHksIHJpbmdfZ2V0X2hlYWQgcmV0dXJucyBOVUxMLCBhbmQg
dGhlCndoaWxlIGxvb3AgZXhpdHMgaW1tZWRpYXRlbHkuIFNvIHRoaXMgY2FzZSBpcyBhbHJlYWR5
IGNvdmVyZWQuCihJdCBhbHNvIGFib3J0cyAoc3BpY2VfYXNzZXJ0KSBpZiB0aGUgdGhlIHJpbmcg
aXMgIm5vdCBpbml0aWFsaXplZCIpCgpVcmkuCgo+PiAgICAgICAgICAgVmlkZW9TdHJlYW0gKnN0
cmVhbSA9IFNQSUNFX0NPTlRBSU5FUk9GKHN0cmVhbV9pdGVtLCBWaWRlb1N0cmVhbSwKPj4gICAg
ICAgICAgIGxpbmspOwo+Pgo+IAo+IEZyZWRpYW5vCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
