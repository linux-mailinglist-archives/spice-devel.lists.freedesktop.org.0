Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF6065685
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 14:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 234616E147;
	Thu, 11 Jul 2019 12:15:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D072D6E147
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 12:15:27 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id z3so12072101iog.0
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 05:15:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iHYbE7G2ZumFp7uIMZL6b0yzBD6Nt+9rnWP0OGsWRyk=;
 b=CbsGE98mre7zfsbeuWOx9WO1e6SUrHRCifa1OjX+ZyBCzmXlORqe7bv+MY9sKFmoL8
 swEQyCxbQpslRcXOkOCO0yj7Aq7rBe83sOa3DNOl6L4pkk3a5GzMMf/C4d8KEIIVuA9J
 UsmXc5xRiBkspOJ0ewaSeyT9cqZo+FWGZQhBsppooIJ78MAIlGRaBHVsqSrcztsoQk0R
 6aOZH7BBzfaUVFerOcPZgrtcdOgoiK+f1MRVMcdBrexkvs7euIe9dSxNo37gm2hr5fq1
 T2x8ILAjyRok/gtJaav8kvW/p5HldrMDfwGhg0ZWGiALh8G59HdVuziTzmX1qpQ7OBnU
 +ImA==
X-Gm-Message-State: APjAAAVHrlvffF/4Ob5ktWRBT40VpAKAOqGL/5GOnqSr3ZtW7AgRo6LR
 N0XcuP9zm16dL8lBRoFvYmc53/Lsn5+r7pALyeA=
X-Google-Smtp-Source: APXvYqxM1xlFYPE6QqpEeExep2xZVl0jujqWVmoBwFdIFSPqijqBxnvMBE7LyfS6C++ZvJb8OVAlydYsE5BtzbMeYWU=
X-Received: by 2002:a6b:b497:: with SMTP id d145mr4025854iof.17.1562847326347; 
 Thu, 11 Jul 2019 05:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190710094924.17350-1-fziglio@redhat.com>
 <20190710132238.vpwom7kkrknuynp4@wingsuit>
 <20190711114555.jsjgwr4mcihqxa6r@wingsuit>
In-Reply-To: <20190711114555.jsjgwr4mcihqxa6r@wingsuit>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 11 Jul 2019 15:15:12 +0300
Message-ID: <CAOEp5OfPn1E00i-N5wXLsOnsw9MmkPxh+LVnNmF49odTm1tmTw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=iHYbE7G2ZumFp7uIMZL6b0yzBD6Nt+9rnWP0OGsWRyk=;
 b=pqyvcpafAbYve9wY0FOBDfXbJZ9YGTJ+uIitpkiXLnJusDgHGma21Vx+b7rOKBj6e8
 Bg6drFLwbcsSpKmqN4uxs9bBh0aIFdrxDEZPVlXQKhx9jMqR4eIGL/Q7b8c9mtIVj1zY
 Cur6myPWnosFE2Fq+mrJ464nnBlcKvLfP/+it1nq+Ds2uK+E6LfeZHDVrb9EhwyR5Tzh
 bGnTaWFzZF8KoQUHgj98hmbivu8WMYdPMQh+OGZZkEdmCjAfRRDtr8I1wzwjhfp4Sgwl
 +XD/LztrIQzDox4CBEeylsFCtbMnaKPUi1k9ySQmUIcoNxVaTg1hzSsZKC0TVeSLM7GM
 9tBw==
Subject: Re: [Spice-devel] [PATCH spice-gtk v3 0/3] Implementation of USB
 backend layer
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SSBoYXZlIHNvbWUgcGF0Y2hlcyByZWFkeSB3aXRoIHNpZ25pZmljYW50IHNpbXBsaWZpY2F0aW9u
IG9mCnVzYi1kZXZpY2UtbWFuYWdlciBhbmQgdGhlcmUgYXJlIGV2ZW4gbW9yZSBwb3NzaWJpbGl0
aWVzLCBpZiB3ZSBjYW4KbW92ZSB0byBsaWJ1c2IgPj0gMS4yMS4gRG8gd2UgaGF2ZSBzb21lIG9i
amVjdGlvbnMgYWdhaW5zdCAxLjIxCihjdXJyZW50bHkgbWluLiB2ZXJzaW9uIGlzIDEuMTYpPwoK
VGhhbmtzLApZdXJpCgoKCk9uIFRodSwgSnVsIDExLCAyMDE5IGF0IDI6NDUgUE0gVmljdG9yIFRv
c28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFdlZCwgSnVs
IDEwLCAyMDE5IGF0IDAzOjIyOjM4UE0gKzAyMDAsIFZpY3RvciBUb3NvIHdyb3RlOgo+ID4gSGks
Cj4gPgo+ID4gT24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMTA6NDk6MjFBTSArMDEwMCwgRnJlZGlh
bm8gWmlnbGlvIHdyb3RlOgo+ID4gPiBUaGlzIGxheWVyIGNvbW11bmljYXRlcyB3aXRoIGxpYnVz
YiBhbmQgbGlidXNicmVkaXIgYW5kCj4gPiA+IHByb3ZpZGVzIHRoZSBBUEkgZm9yIGFsbCB0aGUg
b3BlcmF0aW9ucyByZWxhdGVkIHRvIFVTQgo+ID4gPiByZWRpcmVjdGlvbi4gQWxsIG90aGVyIG1v
ZHVsZXMgb2Ygc3BpY2UtZ3RrIGNvbW11bmljYXRlCj4gPiA+IG9ubHkgd2l0aCB1c2IgYmFja2Vu
ZCBpbnN0ZWFkIG9mIGNhbGxpbmcgbGlidXNiIGFuZAo+ID4gPiB1c2JyZWRpcmhvc3QgZGlyZWN0
bHkuCj4gPiA+IFRoaXMgaXMgcHJlcmVxdWlzaXRlIG9mIGZ1cnRoZXIgaW1wbGVtZW50YXRpb24g
b2YKPiA+ID4gY2Qtc2hhcmluZyB2aWEgVVNCIHJlZGlyZWN0aW9uCj4gPgo+ID4gTG9va3MgZ29v
ZC4gSSBwbGFuIHRvIGRvIGZ1cnRoZXIgdGVzdCB0b21vcnJvdyBtb3JuaW5nIGFuZCBwdXNoLAo+
ID4gaWYgbm8gb25lIGVsc2UgY29tcGxhaW5zLgo+ID4KPiA+IFRoYW5rcyBhbmQgc29ycnkgZm9y
IHRha2luZyBxdWl0ZSBsb25nIHRpbWUgdG8gbWVyZ2UgdGhpcy4KPgo+IFRlc3RlZCB3aXRoIHdp
bmRvd3MgMTAgYW5kIEZlZG9yYSAyOSBndWVzdHMuIFNlZW1zIHRvIHdvcmsgZmluZS4KPiBEZWJ1
ZyBpcyBhIGJpdCB2ZXJib3NlIGJ1dCBzaG91bGQgYmUgZmluZSB0aWxsIHdlIGdldCBDRC1ST00K
PiByZWRpcmVjdGlvbiBwYXRjaGVzIGluLiBJIHBsYW4gdG8gd29yayBvbiBzb21lIGNsZWFudXAg
b24KPiB1c2JyZWRpciBzdGFjayBhcyBkaXNjdXNzZWQgZWFybGllciBidXQgSSBkb24ndCB3YW50
IHRoYXQgb3IKPiBtaW5vciBjaGFuZ2VzIHRvIHByZXZlbnQgZnVydGhlciB3b3JrIG9uIENELVJP
TSByZWRpciBmZWF0dXJlLgo+Cj4gSSdsbCBiZSBwdXNoaW5nIHRoaXMgbm93Lgo+Cj4gQ2hlZXJz
LAo+IFZpY3Rvcgo+Cj4gPgo+ID4gQ2hlZXJzLAo+ID4gVmljdG9yCj4gPgo+ID4gPgo+ID4gPiBD
aGFuZ2VzIGZyb20gdjI6IHJlYmFzZWQgb24gbWFzdGVyCj4gPiA+Cj4gPiA+IENoYW5nZXMgZnJv
bSB2MTogY29zbWV0aWMgY2hhbmdlcyBwZXIgdjEgcmV2aWV3Cj4gPiA+IEFkZGVkIGEgcmViYXNl
ZCBwYXRjaCAoMykgZnJvbSBGcmVkaWFubyBaaWdsaW8KPiA+ID4gRm9yIHRoZSBpbmNyZW1lbnQg
c2VlCj4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy95dXJpX2JlbmRpdG92aWNo
L3NwaWNlLWd0ay9jb21taXRzL2JhY2tlbmQyLWluY3JlbWVudAo+ID4gPgo+ID4gPiBZdXJpIEJl
bmRpdG92aWNoICgzKToKPiA+ID4gICB1c2ItcmVkaXI6IGlzb2xhdGUgdXNhZ2Ugb2YgbGlidXNi
IGFuZCB1c2JyZWRpcmhvc3QKPiA+ID4gICB1c2ItcmVkaXJlY3Rpb246IGRvIG5vdCBkdXBsaWNh
dGUgVVNCIGRldmljZSBwcm9wZXJ0aWVzCj4gPiA+ICAgdXNiLWRldmljZS1tYW5hZ2VyOiBEZWZp
bmUgX1NwaWNlVXNiRGV2aWNlIGluc3RlYWQgb2YKPiA+ID4gICAgIFNwaWNlVXNiRGV2aWNlSW5m
bwo+ID4gPgo+ID4gPiAgc3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5oICAgfCAgMTIgKy0KPiA+
ID4gIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgICAgICAgIHwgMjM2ICsrLS0tLS0tLS0tLQo+ID4g
PiAgc3JjL21lc29uLmJ1aWxkICAgICAgICAgICAgICAgfCAgIDIgKwo+ID4gPiAgc3JjL3VzYi1i
YWNrZW5kLmMgICAgICAgICAgICAgfCA2NTcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ID4gPiAgc3JjL3VzYi1iYWNrZW5kLmggICAgICAgICAgICAgfCAxMDIgKysrKysrCj4g
PiA+ICBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLXByaXYuaCB8ICAgMSAtCj4gPiA+ICBzcmMvdXNi
LWRldmljZS1tYW5hZ2VyLmMgICAgICB8IDM5NyArKysrKysrLS0tLS0tLS0tLS0tLQo+ID4gPiAg
c3JjL3dpbi11c2ItZGV2LmMgICAgICAgICAgICAgfCAxMDMgKystLS0tCj4gPiA+ICBzcmMvd2lu
LXVzYi1kZXYuaCAgICAgICAgICAgICB8ICAgNSArLQo+ID4gPiAgOSBmaWxlcyBjaGFuZ2VkLCA5
NjcgaW5zZXJ0aW9ucygrKSwgNTQ4IGRlbGV0aW9ucygtKQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IHNyYy91c2ItYmFja2VuZC5jCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1i
YWNrZW5kLmgKPiA+ID4KPiA+ID4gLS0KPiA+ID4gMi4yMC4xCj4gPiA+Cj4gPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IFNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdAo+ID4gPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbAo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
