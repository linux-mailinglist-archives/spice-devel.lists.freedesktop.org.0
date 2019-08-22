Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBB991B3
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 13:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D649B6E390;
	Thu, 22 Aug 2019 11:09:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 340A26E390
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 11:09:49 +0000 (UTC)
Received: by mail-io1-xd2b.google.com with SMTP id j4so2656372iog.11
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 04:09:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hCC/fiKUBV8lhBQeHtx6G5rX18BgWRFJ6ofQ2dey/4M=;
 b=o4jmaP1H5YSnTrlYgI7eyJarilalrrE/zsVfpqlFbre7Y8eTTexNcjUCu2HDUxbFxa
 0N885TCIbHoJn7vJ9Z2cnSa+wBMx7GBen/+rHpLVIaM82JFlepjMWb3fDC4hdds1116k
 Eudg3gWVGv9sCFpK8C0YqIj+cnLXWVepN0X5gAo8orci8WyjafXHUN+3+vyByuBxYHvv
 OHzZOwu20qeHTvs0iOvA56ZjtTUd/PZZ1EmU6OQnVq+N0hx8ynuNK5Rpm3y3e+0VjizL
 IdiRuy88hp86jeTwa8OHWwdZi6zmI+twZGhBBaIWMsXph09eMXRpGhM4ppOnOF+vfg5i
 BHvA==
X-Gm-Message-State: APjAAAW3BWCHWysNomlTBiKPq0e5MzbenZlBUl5K0FNZ+VLGRQOMhCQW
 +CeE3F2IRGupmbI0mjpBPIC0lps61OskMM+XA070Lg==
X-Google-Smtp-Source: APXvYqwNTYCNDe/v8nPEZG0NbnJdUcxTvfOaIKG9g/sDhpNEdag5QyndgRSB6hv40Kw1n/SbUes9oKLMjGN9+d6c9n4=
X-Received: by 2002:a02:c550:: with SMTP id g16mr15822100jaj.49.1566472188404; 
 Thu, 22 Aug 2019 04:09:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190822102010.t6gj2lziakbdysme@wingsuit>
 <CAOEp5Oesz8nW3KtXXbBUH0PHYjATnOL6G+p-MhLGKCLxXbgqog@mail.gmail.com>
 <2040683497.8221474.1566470443901.JavaMail.zimbra@redhat.com>
In-Reply-To: <2040683497.8221474.1566470443901.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 22 Aug 2019 14:09:35 +0300
Message-ID: <CAOEp5OehcAata_psv_Y7FBTdik8gUPnEk2XZftfM4b1hpiHQVA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=hCC/fiKUBV8lhBQeHtx6G5rX18BgWRFJ6ofQ2dey/4M=;
 b=NbxNvFPVIaPUOiKGPYph2Rcq3k4onEj/zvMVX8zSvMj2xMxny+yfo9Hdmep85s0x9U
 zPFiZjY/a/wytfv0UhHRVR/gNfwS6H45UZ+i7/bssPffM+HqjqwkTI6rouaBNKOFKuEU
 tmCWB9lo2tblWUaSGxP2gWhW1hKCpYtkr1572ffiNtE4i+SrjvqSOD8L26utaJraGIoP
 Uehy/xfXQwQ6z6RMIkPbr683On2eCBbYOJXhfTvxixHy5t1G2GcdO3pHJb0FAWo3X3fj
 Hw6sQoYcv4PtdfJMPibYVPNxGv5kH9QjZQZ16MoH7oWBrDdxj627nZjEhhEa+BxhbwFF
 YkYw==
Subject: Re: [Spice-devel] [spice-gtk v3 0/9] added feature of sharing CD
 image
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTo0MCBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPgo+ID4gT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMToyMCBQ
TSBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4g
SGksCj4gPiA+Cj4gPiA+IE9uIE1vbiwgQXVnIDEyLCAyMDE5IGF0IDEyOjU3OjIwUE0gKzAzMDAs
IFl1cmkgQmVuZGl0b3ZpY2ggd3JvdGU6Cj4gPiA+ID4gVGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBh
ZGRzIGZlYXR1cmUgb2Ygc2hhcmluZyBDRCBpbWFnZSB2aWEKPiA+ID4gPiByZWRpcmVjdGlvbiBv
ZiBlbXVsYXRlZCBDRCBkZXZpY2UuIEN1cnJlbnRseSB0aGUgdHJpZ2dlciB0bwo+ID4gPiA+IGNy
ZWF0ZSB0aGUgZGV2aWNlIGlzIGNvbW1hbmQtbGluZSBvcHRpb246Cj4gPiA+ID4gJy0tc3BpY2Ut
c2hhcmUtY2QgPElTTyBmaWxlIG5hbWU+Cj4gPiA+ID4KPiA+ID4gPiBDaGFuZ2VzIGZyb20gdjI6
IGZpeGVzIHJlc3VsdGVkIGJ5IHJldmlld3MgKGJhc2VkIG9uIGZpeHVwcwo+ID4gPiA+IG9mIEZy
ZWRpYW5vIFppZ2xpbykKPiA+ID4gPgo+ID4gPiA+IENoYW5nZXMgZnJvbSB2MTogZml4ZXMgcmVz
dWx0ZWQgYnkgcmV2aWV3cyAobWFpbmx5IGJhc2VkIG9uIGZpeHVwcwo+ID4gPiA+IG9mIEZyZWRp
YW5vIFppZ2xpbykKPiA+ID4gPgo+ID4gPiA+IEZyZWRpYW5vIFppZ2xpbyAoMSk6Cj4gPiA+ID4g
ICB1c2ItcmVkaXI6IGNvc21ldGljIHN0eWxlIGZpeGVzCj4gPiA+ID4KPiA+ID4gPiBZdXJpIEJl
bmRpdG92aWNoICg4KToKPiA+ID4gPiAgIHVzYi1yZWRpcjogZGVmaW5lIGludGVyZmFjZXMgdG8g
c3VwcG9ydCBlbXVsYXRlZCBkZXZpY2VzCj4gPiA+ID4gICB1c2ItcmVkaXI6IG1vdmUgaW1wbGVt
ZW50YXRpb24gb2YgZGV2aWNlIGRlc2NyaXB0aW9uIHRvIFVTQiBiYWNrZW5kCj4gPiA+ID4gICB1
c2ItcmVkaXI6IGRvIG5vdCB1c2Ugc3BpY2VfdXNiX2FjbF9oZWxwZXIgZm9yIGVtdWxhdGVkIGRl
dmljZXMKPiA+ID4gPiAgIHVzYi1yZWRpcjogZXh0ZW5kIFVTQiBiYWNrZW5kIHRvIHN1cHBvcnQg
ZW11bGF0ZWQgZGV2aWNlcwo+ID4gPiA+ICAgdXNiLXJlZGlyOiBhZGQgZmlsZXMgZm9yIFNDU0kg
YW5kIFVTQiBNU0MgaW1wbGVtZW50YXRpb24KPiA+ID4gPiAgIHVzYi1yZWRpcjogYWRkIGltcGxl
bWVudGF0aW9uIG9mIGVtdWxhdGVkIENEIGRldmljZQo+ID4gPiA+ICAgdXNiLXJlZGlyOiBlbmFi
bGUgcmVkaXJlY3Rpb24gb2YgZW11bGF0ZWQgQ0QgZHJpdmUKPiA+ID4gPiAgIHVzYi1yZWRpcjog
Y29tbWFuZC1saW5lIG9wdGlvbiB0byBjcmVhdGUgZW11bGF0ZWQgQ0QgZHJpdmUKPiA+ID4gPgo+
ID4gPiA+ICBzcmMvY2Qtc2NzaS1kZXYtcGFyYW1zLmggfCAgIDQ5ICsKPiA+ID4gPiAgc3JjL2Nk
LXNjc2kuYyAgICAgICAgICAgIHwgMjc0MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ID4gPiA+ICBzcmMvY2Qtc2NzaS5oICAgICAgICAgICAgfCAgMTIwICsrCj4gPiA+
ID4gIHNyYy9jZC11c2ItYnVsay1tc2QuYyAgICB8ICA1NDQgKysrKysrKysKPiA+ID4gPiAgc3Jj
L2NkLXVzYi1idWxrLW1zZC5oICAgIHwgIDEzNCArKwo+ID4gPiA+ICBzcmMvY2hhbm5lbC11c2Jy
ZWRpci5jICAgfCAgIDMxICstCj4gPiA+ID4gIHNyYy9tZXNvbi5idWlsZCAgICAgICAgICB8ICAg
IDggKwo+ID4gPiA+ICBzcmMvc2NzaS1jb25zdGFudHMuaCAgICAgfCAgMzI0ICsrKysrCj4gPiA+
ID4gIHNyYy9zcGljZS1vcHRpb24uYyAgICAgICB8ICAgMTcgKwo+ID4gPiA+ICBzcmMvdXNiLWJh
Y2tlbmQuYyAgICAgICAgfCAgNzc3ICsrKysrKysrKystCj4gPiA+ID4gIHNyYy91c2ItYmFja2Vu
ZC5oICAgICAgICB8ICAgIDQgKwo+ID4gPiA+ICBzcmMvdXNiLWRldmljZS1jZC5jICAgICAgfCAg
NzgzICsrKysrKysrKysrCj4gPiA+ID4gIHNyYy91c2ItZGV2aWNlLWNkLmggICAgICB8ICAgMzQg
Kwo+ID4gPiA+ICBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAgIDYzICstCj4gPiA+ID4gIHNy
Yy91c2ItZW11bGF0aW9uLmggICAgICB8ICAgODggKysKPiA+ID4KPiA+ID4gSXQgaXMgYSBzaGFt
ZSB0aGF0IG5vIHVuaXQgdGVzdHMgd2VyZSBhZGRlZC4gRG8geW91IHBsYW4gdG8gZG8gaXQKPiA+
ID4gaW4gZnV0dXJlIHBhdGNoc2V0cz8KPiA+Cj4gPiBIb3cgbWFueSBmZWF0dXJlcyBpbiBzcGlj
ZS1ndGsgZG8gaGF2ZSB1bml0IHRlc3RzIGFuZCBob3cgbWFueSBkbyBub3Q/Cj4gPgo+Cj4gVGhp
cyBpcyBub3QgYW5zd2VyaW5nIHdoYXQgVmljdG9yIGFza2VkLgo+IEhlIGFza2VkIGlmIHlvdSBw
bGFuIHRvIGFkZCBzb21lIG5ldyB0ZXN0cy4KCkZpcnN0IG9mIGFsbCwgdGhlcmUgaXMgYSBjbGFp
bTogIml0IGlzIGEgc2hhbWUuLi4iClNvIEkndmUgdHJpZWQgdG8gZXZhbHVhdGUgdGhlIG1lYXN1
cmUgb2YgdGhlIHByb2JsZW0uCgpNeSBwbGFucyBhcmUgZGVyaXZlZCBmcm9tIHByaW9yaXRpZXMg
YW5kIHRoZSBwcmlvcml0aWVzIGF0IHRoZSBtb21lbnQKYXJlOiB0byBkZWxpdmVyIHRoZSBmZWF0
dXJlIGFuZCBpdHMgR1VJLgpBZnRlciB0aGF0IEkgY2FuIHJlZXZhbHVhdGUgdGhlIHBsYW5zCgo+
IEFzIEkgc2FpZCBpbiBhIHByZXZpb3VzIHJlcGx5IHRoZSBjb21wYW55IGlzIGFza2luZyB1cyB0
byBpbXByb3ZlIHRlc3RpbmcgaW4gdGhlIGNvZGUuCgpJTU8sIHVuaXQgdGVzdHMgYXJlIG1haW5s
eSBpbmRlbmRlZCB0byBoZWxwIHVzIHByZXZlbnRpbmcgcmVncmVzc2lvbgp3aGVuIHRoZSBjb2Rl
IGlzIGNoYW5nZWQuClNvLCBkZXZlbG9wbWVudCBvZiB0ZXN0cyBzaG91bGQgYmUgcGxhbm5lZCBh
bmQgcHJpb3JpdGl6ZWQuCgo+Cj4gRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
