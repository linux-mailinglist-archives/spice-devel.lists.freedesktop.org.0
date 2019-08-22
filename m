Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A623990DE
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 12:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D03F8986D;
	Thu, 22 Aug 2019 10:32:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5B28986D
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 10:32:26 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id t3so10710939ioj.12
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 03:32:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thiCzRjzhA2dAG0lNFTJA5yBoRArDanFF24jW8w/Ozw=;
 b=JX+px5YjLxIuweeAuLsBZ8TZsq6e8riR1F8d0VLrRiQ0jTEA5cTOYxUuSIPjY9asdv
 j6+SIAyCkccB/78NiAhF6iWtSxcSgho1Ov85x843GHT6jfcKT2tNp3WgWgbz/ynfV3Kl
 4BYYmNNBiaVz0J35iqMWIFTQPhZmBKlEOhCAyvjtu20IrzEXiC7iFJHrepR/W+biazTj
 SwtlG7l7qOjrq0B0hgZdwq6vcojlfO4POxUlmhfKNlquziCkiy2HvyG6J1iLXFdhTVxn
 P31pE4vym4N3Kq74D2oNSI5ttM1BomN6rwKyFlpaw8gGqaDgRPrsLpuX4++yN387AYIZ
 eZnw==
X-Gm-Message-State: APjAAAWvQErfREmCDIwbK+4UdX1auhn/vJsEXoQAaA+HW6Rax1iyK9QH
 8lEXzoKU1s6S/RQpHbYNpAPgJPrtpO/eimtG1V8gDQKMxpg=
X-Google-Smtp-Source: APXvYqwi05xYf60zADRCdDPbQazaX7vnXc2F7SyeEMUj3mPHEf9NzPQGwgyYhzcfEk1t5y6u9MOMu7PaAqVV05wbmQE=
X-Received: by 2002:a6b:5901:: with SMTP id n1mr19193432iob.179.1566469945376; 
 Thu, 22 Aug 2019 03:32:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190822102010.t6gj2lziakbdysme@wingsuit>
In-Reply-To: <20190822102010.t6gj2lziakbdysme@wingsuit>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 22 Aug 2019 13:32:12 +0300
Message-ID: <CAOEp5Oesz8nW3KtXXbBUH0PHYjATnOL6G+p-MhLGKCLxXbgqog@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=thiCzRjzhA2dAG0lNFTJA5yBoRArDanFF24jW8w/Ozw=;
 b=LjnsfYQ7k1O54UZiH3krCZXu+LT1ryHR0PhE321t2TF4CsnRkVj2kJOHHAQ6JIPmnU
 RauCv3XRee8NXTxDimqwqaDUbwiU3eM7XJ5vjAgSv1WCl02tKo7MtzthLhGtrji7omXx
 Urka8EU3hCnllnN4XGWZAzM58kFTi8UEpQKvusx6J7VrYmYQjtahAjJ/bs+bYkcDYbvf
 KBZdYEanQUZNOvWEZY1K6ImOvy0gYbK4HoNxSpcUUxAwT4LrNkAJ2JhoL91CaDK8O/Fl
 53zY+A7KSuHrw2niV5e9VDb9eELgHnFqHZ+nx8DsmgZaolrbaBTDBY1uiLud/wN46kup
 QxbA==
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

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMToyMCBQTSBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTI6
NTc6MjBQTSArMDMwMCwgWXVyaSBCZW5kaXRvdmljaCB3cm90ZToKPiA+IFRoaXMgc2VyaWVzIG9m
IHBhdGNoZXMgYWRkcyBmZWF0dXJlIG9mIHNoYXJpbmcgQ0QgaW1hZ2UgdmlhCj4gPiByZWRpcmVj
dGlvbiBvZiBlbXVsYXRlZCBDRCBkZXZpY2UuIEN1cnJlbnRseSB0aGUgdHJpZ2dlciB0bwo+ID4g
Y3JlYXRlIHRoZSBkZXZpY2UgaXMgY29tbWFuZC1saW5lIG9wdGlvbjoKPiA+ICctLXNwaWNlLXNo
YXJlLWNkIDxJU08gZmlsZSBuYW1lPgo+ID4KPiA+IENoYW5nZXMgZnJvbSB2MjogZml4ZXMgcmVz
dWx0ZWQgYnkgcmV2aWV3cyAoYmFzZWQgb24gZml4dXBzCj4gPiBvZiBGcmVkaWFubyBaaWdsaW8p
Cj4gPgo+ID4gQ2hhbmdlcyBmcm9tIHYxOiBmaXhlcyByZXN1bHRlZCBieSByZXZpZXdzIChtYWlu
bHkgYmFzZWQgb24gZml4dXBzCj4gPiBvZiBGcmVkaWFubyBaaWdsaW8pCj4gPgo+ID4gRnJlZGlh
bm8gWmlnbGlvICgxKToKPiA+ICAgdXNiLXJlZGlyOiBjb3NtZXRpYyBzdHlsZSBmaXhlcwo+ID4K
PiA+IFl1cmkgQmVuZGl0b3ZpY2ggKDgpOgo+ID4gICB1c2ItcmVkaXI6IGRlZmluZSBpbnRlcmZh
Y2VzIHRvIHN1cHBvcnQgZW11bGF0ZWQgZGV2aWNlcwo+ID4gICB1c2ItcmVkaXI6IG1vdmUgaW1w
bGVtZW50YXRpb24gb2YgZGV2aWNlIGRlc2NyaXB0aW9uIHRvIFVTQiBiYWNrZW5kCj4gPiAgIHVz
Yi1yZWRpcjogZG8gbm90IHVzZSBzcGljZV91c2JfYWNsX2hlbHBlciBmb3IgZW11bGF0ZWQgZGV2
aWNlcwo+ID4gICB1c2ItcmVkaXI6IGV4dGVuZCBVU0IgYmFja2VuZCB0byBzdXBwb3J0IGVtdWxh
dGVkIGRldmljZXMKPiA+ICAgdXNiLXJlZGlyOiBhZGQgZmlsZXMgZm9yIFNDU0kgYW5kIFVTQiBN
U0MgaW1wbGVtZW50YXRpb24KPiA+ICAgdXNiLXJlZGlyOiBhZGQgaW1wbGVtZW50YXRpb24gb2Yg
ZW11bGF0ZWQgQ0QgZGV2aWNlCj4gPiAgIHVzYi1yZWRpcjogZW5hYmxlIHJlZGlyZWN0aW9uIG9m
IGVtdWxhdGVkIENEIGRyaXZlCj4gPiAgIHVzYi1yZWRpcjogY29tbWFuZC1saW5lIG9wdGlvbiB0
byBjcmVhdGUgZW11bGF0ZWQgQ0QgZHJpdmUKPiA+Cj4gPiAgc3JjL2NkLXNjc2ktZGV2LXBhcmFt
cy5oIHwgICA0OSArCj4gPiAgc3JjL2NkLXNjc2kuYyAgICAgICAgICAgIHwgMjc0MCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIHNyYy9jZC1zY3NpLmggICAgICAg
ICAgICB8ICAxMjAgKysKPiA+ICBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgICAgfCAgNTQ0ICsrKysr
KysrCj4gPiAgc3JjL2NkLXVzYi1idWxrLW1zZC5oICAgIHwgIDEzNCArKwo+ID4gIHNyYy9jaGFu
bmVsLXVzYnJlZGlyLmMgICB8ICAgMzEgKy0KPiA+ICBzcmMvbWVzb24uYnVpbGQgICAgICAgICAg
fCAgICA4ICsKPiA+ICBzcmMvc2NzaS1jb25zdGFudHMuaCAgICAgfCAgMzI0ICsrKysrCj4gPiAg
c3JjL3NwaWNlLW9wdGlvbi5jICAgICAgIHwgICAxNyArCj4gPiAgc3JjL3VzYi1iYWNrZW5kLmMg
ICAgICAgIHwgIDc3NyArKysrKysrKysrLQo+ID4gIHNyYy91c2ItYmFja2VuZC5oICAgICAgICB8
ICAgIDQgKwo+ID4gIHNyYy91c2ItZGV2aWNlLWNkLmMgICAgICB8ICA3ODMgKysrKysrKysrKysK
PiA+ICBzcmMvdXNiLWRldmljZS1jZC5oICAgICAgfCAgIDM0ICsKPiA+ICBzcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLmMgfCAgIDYzICstCj4gPiAgc3JjL3VzYi1lbXVsYXRpb24uaCAgICAgIHwgICA4
OCArKwo+Cj4gSXQgaXMgYSBzaGFtZSB0aGF0IG5vIHVuaXQgdGVzdHMgd2VyZSBhZGRlZC4gRG8g
eW91IHBsYW4gdG8gZG8gaXQKPiBpbiBmdXR1cmUgcGF0Y2hzZXRzPwoKSG93IG1hbnkgZmVhdHVy
ZXMgaW4gc3BpY2UtZ3RrIGRvIGhhdmUgdW5pdCB0ZXN0cyBhbmQgaG93IG1hbnkgZG8gbm90PwoK
Pgo+ID4gIDE1IGZpbGVzIGNoYW5nZWQsIDU2MjggaW5zZXJ0aW9ucygrKSwgODggZGVsZXRpb25z
KC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaAo+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5jCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IHNyYy9jZC1zY3NpLmgKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVzYi1idWxrLW1z
ZC5jCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC11c2ItYnVsay1tc2QuaAo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBzcmMvc2NzaS1jb25zdGFudHMuaAo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBzcmMvdXNiLWRldmljZS1jZC5jCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy91c2It
ZGV2aWNlLWNkLmgKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1lbXVsYXRpb24uaAo+
ID4KPiA+IC0tCj4gPiAyLjE3LjEKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
