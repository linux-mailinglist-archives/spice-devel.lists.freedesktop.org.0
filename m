Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DFA68E57
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 16:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C534A89949;
	Mon, 15 Jul 2019 14:05:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17C089949
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 14:05:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7998F307FBCB;
 Mon, 15 Jul 2019 14:05:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D9595D9DE;
 Mon, 15 Jul 2019 14:05:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 60D5F41F40;
 Mon, 15 Jul 2019 14:05:53 +0000 (UTC)
Date: Mon, 15 Jul 2019 10:05:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <552859868.127933.1563199553351.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190714140741.3274-4-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-4-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.12]
Thread-Topic: usb-redir: pass GError to hotplug registration procedure
Thread-Index: ICOlK449OVjj1d7sMxAoh+4tS7yalA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 15 Jul 2019 14:05:53 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 3/5] usb-redir: pass GError to hotplug
 registration procedure
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBJbiBjYXNlIG9mIHBvc3NpYmxlIGVycm9yIHRoZSBwcm9jZWR1cmUgb2YgaG90cGx1Zwo+
IHJlZ2lzdHJhdGlvbiBkb2VzIG5vdCByZXR1cm4gZXJyb3IgaW5mb3JtYXRpb24sIGp1c3QKPiBp
c3N1ZXMgd2FybmluZyB0byB0aGUgc3RkZXJyLCBzbyB0aGUgcmVhc29uIG9mIHRoZSBwcm9ibGVt
LAo+IGlmIGFueSwgaXMgbm90IHZpc2libGUuIEN1cnJlbnQgY29tbWl0IGFkZHMgR0Vycm9yIHBh
cmFtZXRlcgo+IHRvIHRoZSBwcm9jZWR1cmUgdG8gcmV0dXJuIHRoZSBlcnJvciBkZXRhaWxzIGNv
bnZlbnRpb25hbGx5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2ggPHl1cmku
YmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KPiAtLS0KPiAgc3JjL3VzYi1iYWNrZW5kLmMgICAgICAg
IHwgNSArKysrLQo+ICBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAzICsrLQo+ICBzcmMvdXNi
LWRldmljZS1tYW5hZ2VyLmMgfCAzICsrLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMg
Yi9zcmMvdXNiLWJhY2tlbmQuYwo+IGluZGV4IDk5NjRjNGYuLjgyOWQ4MWQgMTAwNjQ0Cj4gLS0t
IGEvc3JjL3VzYi1iYWNrZW5kLmMKPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuYwo+IEBAIC00NDIs
NyArNDQyLDggQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcoU3Bp
Y2VVc2JCYWNrZW5kCj4gKmJlKQo+ICAKPiAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfcmVn
aXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKnVzZXJfZGF0YSwKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1c2JfaG90X3BsdWdfY2FsbGJhY2sgcHJv
YykKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1c2JfaG90
X3BsdWdfY2FsbGJhY2sgcHJvYywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBHRXJyb3IgKiplcnJvcikKPiAgewo+ICAgICAgaW50IHJjOwo+ICAgICAgY29u
c3QgY2hhciAqZGVzYzsKPiBAQCAtNDU2LDYgKzQ1Nyw4IEBAIGdib29sZWFuCj4gc3BpY2VfdXNi
X2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAo+ICAgICAgaWYg
KHJjICE9IExJQlVTQl9TVUNDRVNTKSB7Cj4gICAgICAgICAgZ193YXJuaW5nKCJFcnJvciBpbml0
aWFsaXppbmcgVVNCIGhvdHBsdWcgc3VwcG9ydDogJXMgWyVpXSIsIGRlc2MsCj4gICAgICAgICAg
cmMpOwo+ICAgICAgICAgIGJlLT5ob3RwbHVnX2NhbGxiYWNrID0gTlVMTDsKPiArICAgICAgICBn
X3NldF9lcnJvcihlcnJvciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLCBTUElDRV9DTElFTlRfRVJST1Jf
RkFJTEVELAo+ICsgICAgICAgICAgICJFcnJvciBvbiBVU0IgaG90cGx1ZyBkZXRlY3Rpb246ICVz
IFslaV0iLCBkZXNjLCByYyk7CgpNaW5vcjogJyJFcnJvcicgc2hvdWxkIGJlIGluZGVudGVkIHVu
ZGVyICdlcnJvciwgJy4KCj4gICAgICAgICAgcmV0dXJuIEZBTFNFOwo+ICAgICAgfQo+ICAgICAg
cmV0dXJuIFRSVUU7Cj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1i
YWNrZW5kLmgKPiBpbmRleCA2ZGEzOTgxLi44MTRkYTQ2IDEwMDY0NAo+IC0tLSBhL3NyYy91c2It
YmFja2VuZC5oCj4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmgKPiBAQCAtNjAsNyArNjAsOCBAQCBn
Ym9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9oYW5kbGVfZXZlbnRzKFNwaWNlVXNiQmFja2VuZAo+
ICpiZSk7Cj4gIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfaW50ZXJydXB0X2V2ZW50X2hhbmRsZXIo
U3BpY2VVc2JCYWNrZW5kICpiZSk7Cj4gIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX3JlZ2lz
dGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB2b2lkICp1c2VyX2RhdGEsCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNiX2hvdF9wbHVnX2NhbGxiYWNrIHByb2Mp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYl9ob3Rf
cGx1Z19jYWxsYmFjayBwcm9jLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEdFcnJvciAqKmVycm9yKTsKPiAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJl
Z2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSk7Cj4gIAo+ICAvKiBTcGljZSBVU0Ig
YmFja2VuZCBkZXZpY2UgQVBJICovCj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFn
ZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IGluZGV4IDkzMDBhZDIuLjg1N2QwNTcg
MTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gKysrIGIvc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jCj4gQEAgLTI1Nyw3ICsyNTcsOCBAQCBzdGF0aWMgZ2Jvb2xlYW4KPiBz
cGljZV91c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJs
ZSwKPiAgCj4gICAgICAvKiBTdGFydCBsaXN0ZW5pbmcgZm9yIHVzYiBkZXZpY2VzIHBsdWcgLyB1
bnBsdWcgKi8KPiAgICAgIGlmICghc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1Zyhw
cml2LT5jb250ZXh0LCBzZWxmLAo+IC0KPiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfaG90cGx1
Z19jYikpCj4gewo+ICsKPiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfaG90cGx1Z19jYiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIpKSB7Cj4gICAg
ICAgICAgcmV0dXJuIEZBTFNFOwo+ICAgICAgfQo+ICAjaWZuZGVmIEdfT1NfV0lOMzIKCk90aGVy
d2lzZSBsb29rcyBnb29kCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
