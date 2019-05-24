Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D1E29CF3
	for <lists+spice-devel@lfdr.de>; Fri, 24 May 2019 19:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36076E12F;
	Fri, 24 May 2019 17:25:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
 [209.85.166.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF866E12F
 for <spice-devel@lists.freedesktop.org>; Fri, 24 May 2019 17:25:47 +0000 (UTC)
Received: by mail-it1-f195.google.com with SMTP id g23so11511763iti.1
 for <spice-devel@lists.freedesktop.org>; Fri, 24 May 2019 10:25:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2XInISC9HfoY1jZnuG59B07sjU7pljkoW0Hy8nT5kp4=;
 b=jbXyWNC7IHrFnBu3d9hXn2xPwgCjMgbufZ3w5UzYNS0b+uWNhwnzN7pJPRJN+ao/Rh
 6V4nlEjk1DgjRXDJtXE85TIUR08DOMXbyZD9nmUkx5kZ4Tc3nhhne+Vav5/wEyteFYN3
 Ht1EKbZJ1xHo/PKBnfm4VE49zN5/U4qRUjeugYJdbp8ksU1L4H/l014unMO52BkGN1Fg
 E+xCgy8YjzNoUs+6E5E1gq2M3b5VnZbpRcwWvPi2DRuK/cHOm/TD+VqWzJx+wMAnh08I
 UtTHw2OH44a4ygKntjBSjVyaFe5aTlMD7XO5FhplO6NjuuepNv7fIVAf9WJsLBmFzZB/
 InOA==
X-Gm-Message-State: APjAAAXTOOg6MCnY2Coia4r6WGuF/D8S94okSsywMYKv9Ye6IMa5idTx
 pnugNEkIRnjfkTmPl/QQb4bc6y/jUCZDRZ58/EgZ8w==
X-Google-Smtp-Source: APXvYqz9/I4fke++dGIxU2w444LXeZAsDXD7EPawFvbByaejCYasQXbdTx86EkROxkfVtrFk1G2+QCrvHvIEjy53ayE=
X-Received: by 2002:a05:660c:8a:: with SMTP id
 t10mr18577788itj.152.1558718746344; 
 Fri, 24 May 2019 10:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-4-jjanku@redhat.com>
 <CAJ+F1C+PVrYZa=ZcjKvAqF_fdd21FGh_wGOSQcrf_HDFoduk5Q@mail.gmail.com>
In-Reply-To: <CAJ+F1C+PVrYZa=ZcjKvAqF_fdd21FGh_wGOSQcrf_HDFoduk5Q@mail.gmail.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Fri, 24 May 2019 19:25:34 +0200
Message-ID: <CAH=CeiAX_ppz=18c90RKZXOg4ahu1WS29FgnJNJqss2S6mODtA@mail.gmail.com>
To: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Subject: Re: [Spice-devel] [PATCH phodav 03/13] spice: handle SIGINT properly
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiBUaHUsIE1heSAyMywgMjAxOSBhdCAzOjMxIFBNIE1hcmMtQW5kcsOpIEx1cmVhdQo8
bWFyY2FuZHJlLmx1cmVhdUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkKPgo+IE9uIFRodSwgTWF5
IDIzLCAyMDE5IGF0IDEwOjM3IEFNIEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4KPiA+IEFjY29yZGluZyB0byBbMF0sIGdfZGVidWcgc2hvdWxkIG5vdCBiZSB1c2Vk
IGluIGEgc2lnbmFsIGhhbmRsZXIuCj4gPiBTbywgdG8gYXZvaWQgcmVlbnRyYW5jeSwgZG8gbm90
IHByaW50IGRlYnVnIG1lc3NhZ2Ugd2hlbiBxdWl0IGlzCj4gPiBjYWxsZWQgd2l0aCBTSUdJTlQu
Cj4gPgo+ID4gWzBdIGh0dHBzOi8vZG9jcy5taWNyb3NvZnQuY29tL2VuLXVzL2NwcC9jLXJ1bnRp
bWUtbGlicmFyeS9yZWZlcmVuY2Uvc2lnbmFsP3ZpZXc9dnMtMjAxOQo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Cj4gPiAtLS0KPiA+ICBzcGlj
ZS9zcGljZS13ZWJkYXZkLmMgfCAzICsrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc3BpY2Uvc3BpY2Utd2Vi
ZGF2ZC5jIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gPiBpbmRleCBlNDk0NjkyLi5jZGZhNzNk
IDEwMDY0NAo+ID4gLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gPiArKysgYi9zcGljZS9z
cGljZS13ZWJkYXZkLmMKPiA+IEBAIC0yMzcsNyArMjM3LDggQEAgc3RhdGljIHZvaWQgbWRuc191
bnJlZ2lzdGVyX3NlcnZpY2UgKHZvaWQpOwo+ID4gIHN0YXRpYyB2b2lkCj4gPiAgcXVpdCAoaW50
IHNpZykKPiA+ICB7Cj4gPiAtICBnX2RlYnVnICgicXVpdCAlZCIsIHNpZyk7Cj4gPiArICBpZiAo
c2lnICE9IFNJR0lOVCkKPiA+ICsgICAgZ19kZWJ1ZyAoInF1aXQgJWQiLCBzaWcpOwo+ID4KPgo+
IEkgd291bGQgc2ltcGx5IHJlbW92ZSB0aGUgZ19kZWJ1ZygpIGNhbGwgdGhlbi4KCk9rIHRoZW4u
CgpPbiBVbml4LCB3ZSBjb3VsZCB1c2UgZ191bml4X3NpZ25hbF9hZGQsIEknbGwgY2hhbmdlIGl0
LgpCdXQgc2FkbHkgdGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGEgV2luZG93cyBlcXVpdmFsZW50
LgoKQ2hlZXJzLApKYWt1Ygo+Cj4gKG1heWJlIHdlIHNob3VsZCBoYXZlIGEgZGlmZmVyZW50IGZ1
bmN0aW9uIGZvciB0aGUgc2lnbmFsIGhhbmRsZXIpCj4KPiA+ICAgIGlmIChzaWcgPT0gU0lHSU5U
IHx8IHNpZyA9PSBTSUdURVJNKQo+ID4gICAgICAgIHF1aXRfc2VydmljZSA9IFRSVUU7Cj4gPiAt
LQo+ID4gMi4yMS4wCj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4KPgo+Cj4gLS0KPiBNYXJjLUFuZHLDqSBMdXJl
YXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
