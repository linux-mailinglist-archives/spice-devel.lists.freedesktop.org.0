Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7E322F24
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 10:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED8089359;
	Mon, 20 May 2019 08:44:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9692489359
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 08:44:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x64so12327449wmb.5
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 01:44:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ex/+DZGRkrvuj5LWpmL+rdlGrR+GJZ5tDqwb+oFCD7I=;
 b=DJu/keyvITK1q6gKxthdaqpavb8O61mFi3t/mstzrfy0icx5uDe58ukhRIfeQJvVIR
 ZYFrjLJc/HqsmFmjlRGnl6F4PNnmo2JZeHDT4/XTbjaN+IDSheRS0dNq3kiHg51iBAj7
 G+SCJUJNPcvhAURELa0Qqw48+SlTBfNaX71GL1tZ3SuYXjaLnAwLKAdD6wJMhyOxUniJ
 T2Z3NBKB0ZJRE/wV681k6IwCHhYkUqoPFka0+zj8cJAdioTaVBXIyHwfcrJY71d6bDyg
 Hb0c46VJ5M2jzc8mIyhrj99CK7D/oHTWezEiqmlmUmCZ8qWPmi8TRKQZiTnXYprhjJGH
 0AQQ==
X-Gm-Message-State: APjAAAVNTuP1K3c/mcKRKUV7sIduSBFVJXVAB6UiKL6XaqCIJJ06KmoT
 Sn/O2fgM/EuOYg3nX1RkfK6X+6J0UeU=
X-Google-Smtp-Source: APXvYqyYm3hpWDSmcuB12X6H3n66G7gjlpJqLj89Sn6o3DSEZMqwtTzRivWbiR2udxEnkFj3bZ6hqA==
X-Received: by 2002:a7b:c549:: with SMTP id j9mr17272542wmk.114.1558341891818; 
 Mon, 20 May 2019 01:44:51 -0700 (PDT)
Received: from dhcp-4-103.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id y1sm14465261wma.14.2019.05.20.01.44.50
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:44:51 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190517104129.7838-1-fziglio@redhat.com>
 <03fdf3c7-a973-4b13-26ef-53bb1b95492f@redhat.com>
 <213460040.18981565.1558336398136.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <026e5aed-0eb1-df0b-b685-25c69e1016dd@redhat.com>
Date: Mon, 20 May 2019 11:44:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <213460040.18981565.1558336398136.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-client-gtk-module: Remove
 unused file
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIDUvMjAvMTkgMTA6MTMgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4gSGksCj4+Cj4+
IE1heWJlIHdvcnRoIG1lbnRpb25pbmcgaXQncyBsZWZ0b3ZlciBmcm9tIHB5Z3RrL3B5dGhvbiBi
aW5kaW5ncwo+PiBub3QgcmVhbGx5IGNyaXRpY2FsLCBhbnl3YXksIGZpbmUgd2l0aCBtZS4KPj4K
PiBEbyB5b3UgaGF2ZSB0aGUgY29tbWl0IG9yIHNvbWUgaGludCBvbiB3aGF0IHRvIHdyaXRlPwo+
IEknbSBub3QgYXdhcmUgb2YgdGhpcyBmZWF0dXJlLgoKCkkgdGhpbmsgaXQgc2hvdWxkIGhhdmUg
YmVlbiByZW1vdmVkIGluIDk2ZWQ2YjdhIGFuZCBtaXNzZWQuClNvIGkgZ3Vlc3Mgc2FtZSBzdWJq
ZWN0IHdvdWxkIHdvcmsgInB5Z3RrOiByZW1vdmUgYmluZGluZ3MgbGVmdG92ZXIiCgpTbmlyLgoK
Cj4KPj4gQWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+Cj4+Cj4+
IE9uIDUvMTcvMTkgMTo0MSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pj4gU2lnbmVkLW9m
Zi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4+ICAg
IHNyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVsZS5jIHwgNDUgLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA0NSBkZWxldGlvbnMoLSkKPj4+
ICAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYwo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYyBiL3NyYy9zcGlj
ZS1jbGllbnQtZ3RrLW1vZHVsZS5jCj4+PiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKPj4+IGlu
ZGV4IGI4MmYxZTM0Li4wMDAwMDAwMAo+Pj4gLS0tIGEvc3JjL3NwaWNlLWNsaWVudC1ndGstbW9k
dWxlLmMKPj4+ICsrKyAvZGV2L251bGwKPj4+IEBAIC0xLDQ1ICswLDAgQEAKPj4+IC0vKiAtKi0g
TW9kZTogQzsgYy1iYXNpYy1vZmZzZXQ6IDQ7IGluZGVudC10YWJzLW1vZGU6IG5pbCAtKi0gKi8K
Pj4+IC0vKgo+Pj4gLSAgIENvcHlyaWdodCAoQykgMjAxMCBSZWQgSGF0LCBJbmMuCj4+PiAtCj4+
PiAtICAgVGhpcyBsaWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRl
IGl0IGFuZC9vcgo+Pj4gLSAgIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBM
ZXNzZXIgR2VuZXJhbCBQdWJsaWMKPj4+IC0gICBMaWNlbnNlIGFzIHB1Ymxpc2hlZCBieSB0aGUg
RnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIKPj4+IC0gICB2ZXJzaW9uIDIuMSBvZiB0
aGUgTGljZW5zZSwgb3IgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KPj4+IC0K
Pj4+IC0gICBUaGlzIGxpYnJhcnkgaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBpdCB3
aWxsIGJlIHVzZWZ1bCwKPj4+IC0gICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQg
ZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgo+Pj4gLSAgIE1FUkNIQU5UQUJJTElUWSBvciBG
SVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUgR05VCj4+PiAtICAgTGVz
c2VyIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KPj4+IC0KPj4+IC0g
ICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVy
YWwgUHVibGljCj4+PiAtICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90
LCBzZWUKPj4+IDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPj4+IC0qLwo+Pj4gLSNp
bmNsdWRlICJjb25maWcuaCIKPj4+IC0jaW5jbHVkZSA8cHlnb2JqZWN0Lmg+Cj4+PiAtCj4+PiAt
dm9pZCBzcGljZV9yZWdpc3Rlcl9jbGFzc2VzIChQeU9iamVjdCAqZCk7Cj4+PiAtdm9pZCBzcGlj
ZV9hZGRfY29uc3RhbnRzKFB5T2JqZWN0ICptb2R1bGUsIGNvbnN0IGdjaGFyICpzdHJpcF9wcmVm
aXgpOwo+Pj4gLWV4dGVybiBQeU1ldGhvZERlZiBzcGljZV9mdW5jdGlvbnNbXTsKPj4+IC0KPj4+
IC1ETF9FWFBPUlQodm9pZCkgaW5pdFNwaWNlQ2xpZW50R3RrKHZvaWQpCj4+PiAtewo+Pj4gLSAg
ICBQeU9iamVjdCAqbSwgKmQ7Cj4+PiAtCj4+PiAtICAgIGluaXRfcHlnb2JqZWN0KCk7Cj4+PiAt
Cj4+PiAtICAgIG0gPSBQeV9Jbml0TW9kdWxlKCJTcGljZUNsaWVudEd0ayIsIHNwaWNlX2Z1bmN0
aW9ucyk7Cj4+PiAtICAgIGlmIChQeUVycl9PY2N1cnJlZCgpKQo+Pj4gLSAgICAgICAgUHlfRmF0
YWxFcnJvcigiY2FuJ3QgaW5pdCBtb2R1bGUiKTsKPj4+IC0KPj4+IC0gICAgZCA9IFB5TW9kdWxl
X0dldERpY3QobSk7Cj4+PiAtICAgIGlmIChQeUVycl9PY2N1cnJlZCgpKQo+Pj4gLSAgICAgICAg
UHlfRmF0YWxFcnJvcigiY2FuJ3QgZ2V0IGRpY3QiKTsKPj4+IC0KPj4+IC0gICAgc3BpY2VfcmVn
aXN0ZXJfY2xhc3NlcyhkKTsKPj4+IC0gICAgc3BpY2VfYWRkX2NvbnN0YW50cyhtLCAiU1BJQ0Vf
Iik7Cj4+PiAtCj4+PiAtICAgIGlmIChQeUVycl9PY2N1cnJlZCgpKSB7Cj4+PiAtICAgICAgICBQ
eV9GYXRhbEVycm9yKCJjYW4ndCBpbml0aWFsaXNlIG1vZHVsZSBTcGljZUNsaWVudEd0ayIpOwo+
Pj4gLSAgICB9Cj4+PiAtfQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
