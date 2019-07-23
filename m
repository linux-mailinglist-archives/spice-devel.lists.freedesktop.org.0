Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B34CC7131E
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2877E6E180;
	Tue, 23 Jul 2019 07:41:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD3B6E180
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:41:00 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id z3so79862705iog.0
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:41:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qj2F+nJ5u7HK3AZr17+TT3/b2FPIZmVSSiVSYu+qPds=;
 b=MU0LQCE6vO1Amgldw53Hl7lLOdJ7MKyLPtGQ++PXjKl83m2eZqKmGQWdj/1Byj5jwF
 bSFN7P3zhhLE4cuVh9ZWVpfq+BBT89cijtu418fiusDgK9BBDs+x1Kah5+R1NaY8IHIF
 f941V6erq87PzViAd0pbKOSTqS3EaFEcReYWjq+KqxAjRZHO2jDllAoQ+/AlmFkaIREt
 qgJXe7uF0Qmyst0Pq5oxN5g6g/1uOlX/i39oixmcx3VzOD3kCW5Le+wXh3JqciibQDIw
 KUVXG4Fltt34TyYQNwZIm1n2VEFYVPZ6ywyw+qufSg2bjcoJgeJW0xCelg5dWfp5Buna
 Sk+w==
X-Gm-Message-State: APjAAAXnGBKRlzrLNP3r8FhhYcYAJAgOA6i747GAcnIkXbGVjUDqrMn7
 qplZ4Rkfl9+wTrHGAgQpno4Pj4CNKMjDhppWbd4=
X-Google-Smtp-Source: APXvYqw8AMDvqJjvMuLLpRKLbzYQGV/Wa9KKEKuPi3p12fxEcVG3GV7MUQjvzaWMV9EOMVQet7AypUbFevZWsGw05UQ=
X-Received: by 2002:a6b:b9c2:: with SMTP id
 j185mr67963493iof.148.1563867659951; 
 Tue, 23 Jul 2019 00:40:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
 <20190723072708.2575-6-yuri.benditovich@daynix.com>
 <669362004.2479255.1563867209541.JavaMail.zimbra@redhat.com>
In-Reply-To: <669362004.2479255.1563867209541.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Tue, 23 Jul 2019 10:40:47 +0300
Message-ID: <CAOEp5OfzZKCpzpxEyeDaB4wei0xpu1wAge4uSSmpQt57qCpwtg@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=qj2F+nJ5u7HK3AZr17+TT3/b2FPIZmVSSiVSYu+qPds=;
 b=YcghSQm/N3pk+Pp0jgqSqMugYXSuDbtUuRYqESklKJT5X8XuxPJd0QJu+l/jmfAeED
 5lLbhfPRSTmenn7hx/mfzwv+lSRglaqvNPjwhJmH7699L8c8e6iIN/txF8gYl2zyguhs
 5PKy6BnmGEyn5NhfEK7Nk1OTHxXvr8dRj8Rn1JVR4t1HEOI3iw/qyNP7JYyMXSVH9Lk2
 wKKbe2fkcIi6n/gsU8hHeRQExaUa/ytDXilc16Ma3x9BJn6lKxY48XDfPqepPgqRoG8R
 G3wtTrJ2OFvvZLadvTnlLW0CldK8tSKJvcoj7u/mgOWgKpj1bdowbuTlqYKUkOg76/ZC
 2Tkg==
Subject: Re: [Spice-devel] [spice-gtk v2 5/9] usb-redir: cosmetic changes in
 hotplug_callback
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

U29ycnksIHRoaXMgaXMgYSB0eXBvIGluIHRoZSBjb21tZW50IC0gc2hvdWxkIGJlIHVuZXhwZWN0
ZWQgY29uZGl0aW9uLAppLmUuIGV4YWN0bHkgdGhlIGJ1ZyBpbiB0aGUgY29kZQoKT24gVHVlLCBK
dWwgMjMsIDIwMTkgYXQgMTA6MzMgQU0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+IHdyb3RlOgo+Cj4gPgo+ID4gVW5pZnkgcGFyYW1ldGVyIG5hbWUgZm9yIGxpYnVzYl9kZXZp
Y2UuCj4gPiBVc2UgZ19yZXR1cm5fdmFsX2lmX2ZhaWwgZm9yIGV4cGVjdGVkIGNvbmRpdGlvbi4K
Pgo+IFNlZSBodHRwczovL2RldmVsb3Blci5nbm9tZS5vcmcvZ2xpYi9zdGFibGUvZ2xpYi1XYXJu
aW5ncy1hbmQtQXNzZXJ0aW9ucy5odG1sI2ctcmV0dXJuLXZhbC1pZi1mYWlsCj4gZ19yZXR1cm5f
dmFsX2lmX2ZhaWwgcmVwcmVzZW50cyBhIGJ1ZyBpbiB0aGUgY29kZSwgbm90IGFuICJleHBlY3Rl
ZCBjb25kaXRpb24iLgo+Cj4gPiBSZW1vdmUgcmVkdW5kYW50IGNhc3RpbmcuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29t
Pgo+ID4gLS0tCj4gPiAgc3JjL3VzYi1iYWNrZW5kLmMgfCAyNSArKysrKysrKysrKysrLS0tLS0t
LS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFj
a2VuZC5jCj4gPiBpbmRleCA1M2FjNDMwLi5lODM3NTc5IDEwMDY0NAo+ID4gLS0tIGEvc3JjL3Vz
Yi1iYWNrZW5kLmMKPiA+ICsrKyBiL3NyYy91c2ItYmFja2VuZC5jCj4gPiBAQCAtMTA4LDIxICsx
MDgsMjIgQEAgc3RhdGljIFNwaWNlVXNiQmFja2VuZERldmljZQo+ID4gKmFsbG9jYXRlX2JhY2tl
bmRfZGV2aWNlKGxpYnVzYl9kZXZpY2UgKmxpYmRldikKPiA+ICB9Cj4gPgo+ID4gIHN0YXRpYyBp
bnQgTElCVVNCX0NBTEwgaG90cGx1Z19jYWxsYmFjayhsaWJ1c2JfY29udGV4dCAqY3R4LAo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsaWJ1c2JfZGV2aWNlICpk
ZXZpY2UsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxpYnVz
Yl9kZXZpY2UgKmxpYmRldiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbGlidXNiX2hvdHBsdWdfZXZlbnQgZXZlbnQsCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKnVzZXJfZGF0YSkKPiA+ICB7Cj4gPiAtICAgIFNw
aWNlVXNiQmFja2VuZCAqYmUgPSAoU3BpY2VVc2JCYWNrZW5kICopdXNlcl9kYXRhOwo+ID4gLSAg
ICBpZiAoYmUtPmhvdHBsdWdfY2FsbGJhY2spIHsKPiA+IC0gICAgICAgIFNwaWNlVXNiQmFja2Vu
ZERldmljZSAqZGV2Owo+ID4gLSAgICAgICAgZ2Jvb2xlYW4gdmFsID0gZXZlbnQgPT0gTElCVVNC
X0hPVFBMVUdfRVZFTlRfREVWSUNFX0FSUklWRUQ7Cj4gPiAtICAgICAgICBkZXYgPSBhbGxvY2F0
ZV9iYWNrZW5kX2RldmljZShkZXZpY2UpOwo+ID4gLSAgICAgICAgaWYgKGRldikgewo+ID4gLSAg
ICAgICAgICAgIFNQSUNFX0RFQlVHKCJjcmVhdGVkIGRldiAlcCwgdXNibGliIGRldiAlcCIsIGRl
diwgZGV2aWNlKTsKPiA+IC0gICAgICAgICAgICBsaWJ1c2JfcmVmX2RldmljZShkZXZpY2UpOwo+
ID4gLSAgICAgICAgICAgIGJlLT5ob3RwbHVnX2NhbGxiYWNrKGJlLT5ob3RwbHVnX3VzZXJfZGF0
YSwgZGV2LCB2YWwpOwo+ID4gLSAgICAgICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91
bnJlZihkZXYpOwo+ID4gLSAgICAgICAgfQo+ID4gKyAgICBTcGljZVVzYkJhY2tlbmQgKmJlID0g
dXNlcl9kYXRhOwo+ID4gKyAgICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldjsKPiA+ICsgICAg
Z2Jvb2xlYW4gYXJyaXZlZCA9IGV2ZW50ID09IExJQlVTQl9IT1RQTFVHX0VWRU5UX0RFVklDRV9B
UlJJVkVEOwo+ID4gKwo+ID4gKyAgICBnX3JldHVybl92YWxfaWZfZmFpbChiZS0+aG90cGx1Z19j
YWxsYmFjayAhPSBOVUxMLCAwKTsKPiA+ICsKPiA+ICsgICAgZGV2ID0gYWxsb2NhdGVfYmFja2Vu
ZF9kZXZpY2UobGliZGV2KTsKPiA+ICsgICAgaWYgKGRldikgewo+ID4gKyAgICAgICAgU1BJQ0Vf
REVCVUcoImNyZWF0ZWQgZGV2ICVwLCB1c2JsaWIgZGV2ICVwIiwgZGV2LCBsaWJkZXYpOwo+ID4g
KyAgICAgICAgbGlidXNiX3JlZl9kZXZpY2UobGliZGV2KTsKPiA+ICsgICAgICAgIGJlLT5ob3Rw
bHVnX2NhbGxiYWNrKGJlLT5ob3RwbHVnX3VzZXJfZGF0YSwgZGV2LCBhcnJpdmVkKTsKPiA+ICsg
ICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihkZXYpOwo+ID4gICAgICB9Cj4g
PiAgICAgIHJldHVybiAwOwo+ID4gIH0KPgo+IEZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
