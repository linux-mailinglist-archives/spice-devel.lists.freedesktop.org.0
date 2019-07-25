Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3217474CE8
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 13:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B5C6E708;
	Thu, 25 Jul 2019 11:20:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B8B6E708
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 11:20:57 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id o9so96503655iom.3
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 04:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bMnqVLARvic3iW9K/GR4E1vJUyyf0Ene95oMCbW1fHM=;
 b=R6eLAImqamlPGpGpbfe60u0XIGrm7lXVCML00vGfvcQqiXbLULaZDJ+tfT0iBSTc4d
 i7vIq3kFQDvy5CuI+Hli0P1wDBOkeBrFRcOs3hnEZ0H0PJZyogOywCstTDvotdZ7XZMj
 Kb/mBvuNcDeeB191t/zU1p46zNI8Hg/nYsYIc6cSZCNzWl3qJWwgrosQg6STaS2W79v9
 2XMJTrtzWcKRs9qhnibn6OmU/fwyKdW9/DxMQ2bRtcsWLS+tR1yIUh9Waoe68d4ITjfM
 LVben0doHHHalBUKEviTi2pZ1ZALzCGAXPA+h2uCNXagrX94MkF+5dSz6+Bek50tVMrW
 iqHw==
X-Gm-Message-State: APjAAAUoGq8FRi1nbTOS0+m6mULGCpZowBrHlkc3eYjAA0+zr1hWpjQQ
 0KUtTLxomqpcTVzxJVmKE1bIVtf4n4tqhR1b/0U=
X-Google-Smtp-Source: APXvYqxpvvPbUa+X1FHTF7c2+mcG1d4JJELT056H+7kt0/o8iYDfFo16O6VT3soPuXIdmYdtRqyJ3TFkw2pHqZH2hTE=
X-Received: by 2002:a5d:96cc:: with SMTP id r12mr64429007iol.99.1564053656760; 
 Thu, 25 Jul 2019 04:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-3-yuri.benditovich@daynix.com>
 <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
In-Reply-To: <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 25 Jul 2019 14:20:43 +0300
Message-ID: <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=bMnqVLARvic3iW9K/GR4E1vJUyyf0Ene95oMCbW1fHM=;
 b=zRdZpuEB6Ge2ahx/Sen6lzd05rshrioh4XztCD/6vT53K/ZzeEE26v7phlQhuCsmay
 LV5ZC/eoW5HupStf4OIU/2hMdEmUoPkdv+ixrh6ysWEHzz7DWB2a1c7OZTSIdo4jEbZa
 6bRJx2zsA0W8A7bjfJI0lCrVzx8KGVCuK/vIVzDf2MGIPO8O4t+2NDtOXNXLxRkJbHbM
 ag52B2aOh3VP79SBLkNkfALX4e7Cnd7GGJFg18e/fpSuJM5pO20CCGGsh5oSbVqrICco
 UAD+sLjIHyQYwgGR7RdgcWY/cV8xdi92S9hxbWPOrSUmv2Qte92hFvqxpDcRPz0/yPbw
 XhOg==
Subject: Re: [Spice-devel] [spice-gtk 2/9] usb-redir: device error signal
 without device object
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

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTI6MDEgUE0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gPgo+ID4gQWRkIGFiaWxpdHkgdG8gaW5kaWNhdGUgZXJy
b3IgdG8gZXh0ZXJuYWwgbW9kdWxlcyB2aWEKPiA+ICdkZXZpY2UgZXJyb3InIHNpZ25hbCB3aGVu
IHJlYWwgU3BpY2VVc2JEZXZpY2UgaXMgbm90IHBhc3NlZC4KPiA+IFRoaXMgaXMgbmVlZGVkIHRv
IGluZGljYXRlIGVycm9yIGR1cmluZyBjcmVhdGlvbiBvZiBlbXVsYXRlZAo+ID4gZGV2aWNlLCB3
aGVuIHRoZSBkZXZpY2UgaXMgbm90IGNyZWF0ZWQgeWV0LiBGb3IgdGhhdCB3ZQo+ID4gYWxsb2Nh
dGUgdGVtcG9yYXJ5IFNwaWNlVXNiRGV2aWNlIHN0cnVjdHVyZSB3aXRoIGJhY2tlbmQKPiA+IGRl
dmljZSBmaWVsZHMgc2V0IHRvIE5VTEwgYW5kIHVzZSBpdCBmb3IgaW5kaWNhdGlvbi4gRGV2aWNl
Cj4gPiBkZXNjcmlwdGlvbiBmb3Igc3VjaCBkZXZpY2Ugd2lsbCBiZSAnVVNCIFJlZGlyZWN0aW9u
Jy4KPiA+IFVucmVmZXJlbmNpbmcgb2Ygc3VjaCBkZXZpY2Ugd2lsbCBiZSAnbm8gb3BlcmF0aW9u
Jy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92
aWNoQGRheW5peC5jb20+Cj4gPiAtLS0KPiA+ICBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCAg
MyArKysKPiA+ICBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAxNCArKysrKysrKysrKystLQo+
ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwo+
ID4gaW5kZXggMGJmMmVjYy4uYzE3OTE4OCAxMDA2NDQKPiA+IC0tLSBhL3NyYy91c2ItYmFja2Vu
ZC5jCj4gPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gQEAgLTUyOCw2ICs1MjgsOSBAQCBT
cGljZVVzYkJhY2tlbmREZXZpY2UKPiA+ICpzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVmKFNw
aWNlVXNiQmFja2VuZERldmljZSAqZGV2KQo+ID4KPiA+ICB2b2lkIHNwaWNlX3VzYl9iYWNrZW5k
X2RldmljZV91bnJlZihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKPiA+ICB7Cj4gPiArICAg
IGlmICghZGV2KSB7Cj4gPiArICAgICAgICByZXR1cm47Cj4gPiArICAgIH0KPiA+ICAgICAgTE9V
RF9ERUJVRygiJXMgPj4gJXAoJWQpIiwgX19GVU5DVElPTl9fLCBkZXYsIGRldi0+cmVmX2NvdW50
KTsKPiA+ICAgICAgaWYgKGdfYXRvbWljX2ludF9kZWNfYW5kX3Rlc3QoJmRldi0+cmVmX2NvdW50
KSkgewo+ID4gICAgICAgICAgaWYgKGRldi0+bGlidXNiX2RldmljZSkgewo+ID4gZGlmZiAtLWdp
dCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+
ID4gaW5kZXggYTUzMGJlOS4uMDk2MWQxNiAxMDA2NDQKPiA+IC0tLSBhL3NyYy91c2ItZGV2aWNl
LW1hbmFnZXIuYwo+ID4gKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gPiBAQCAtOTM1
LDEwICs5MzUsMTYgQEAgc3RhdGljIHZvaWQKPiA+IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9j
aGVja19yZWRpcl9vbl9jb25uZWN0KAo+ID4gIHZvaWQgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2Vy
X2RldmljZV9lcnJvcigKPiA+ICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmLCBTcGlj
ZVVzYkRldmljZSAqZGV2aWNlLCBHRXJyb3IgKmVycikKPiA+ICB7Cj4gPiArICAgIFNwaWNlVXNi
RGV2aWNlICpkZXYgPSBkZXZpY2U7Cj4KPiAiZGV2IiBhbmQgImRldmljZSIgZG8gbm90IHNvdW5k
IGdyZWF0LiBNYXliZSAidGVtcF9kZXYiIG9yICJmYWtlX2RldiIgPwo+Cj4gPiAgICAgIGdfcmV0
dXJuX2lmX2ZhaWwoU1BJQ0VfSVNfVVNCX0RFVklDRV9NQU5BR0VSKHNlbGYpKTsKPiA+IC0gICAg
Z19yZXR1cm5faWZfZmFpbChkZXZpY2UgIT0gTlVMTCk7Cj4gPiAtCj4gPiArICAgIGlmIChkZXZp
Y2UgPT0gTlVMTCkgewo+ID4gKyAgICAgICAgZGV2ID0gZ19uZXcwKFNwaWNlVXNiRGV2aWNlLCAx
KTsKPiA+ICsgICAgICAgIGRldi0+cmVmID0gMTsKPiA+ICsgICAgfQo+ID4gICAgICBnX3NpZ25h
bF9lbWl0KHNlbGYsIHNpZ25hbHNbREVWSUNFX0VSUk9SXSwgMCwgZGV2aWNlLCBlcnIpOwo+Cj4g
SWYgZGV2aWNlIHdhcyBpbml0aWFsbHkgTlVMTCBhdCBmdW5jdGlvbiBjYWxsIHRoaXMgaXMgc3Rp
bGwgTlVMTC4KClNvcnJ5LCB0eXBvLgoKPgo+ID4gKyAgICBpZiAoZGV2aWNlID09IE5VTEwpIHsK
PiA+ICsgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfdW5yZWYoZGV2KTsKPgo+IElmIGRldmljZSB3
YXMgTlVMTCB5b3UgYWxsb2NhdGUgYSBuZXcgZW1wdHkgU3BpY2VVc2JEZXZpY2UgYW5kCj4gdGhl
biBmcmVlIGl0LiBOb3Qgc3VyZSBpcyB3aGF0IHlvdSB3YW50IHRvIGRvLgo+Cj4gPiArICAgIH0K
PiA+ICB9Cj4gPiAgI2VuZGlmCj4gPgo+ID4gQEAgLTE0NDAsNiArMTQ0NiwxMCBAQCBnY2hhciAq
c3BpY2VfdXNiX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JEZXZpY2UKPiA+ICpkZXZp
Y2UsIGNvbnN0IGdjaGFyICpmb3IKPiA+Cj4gPiAgICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGRl
dmljZSAhPSBOVUxMLCBOVUxMKTsKPiA+Cj4gPiArICAgIGlmICghZGV2aWNlLT5iZGV2KSB7Cj4g
PiArICAgICAgICByZXR1cm4gZ19zdHJkdXAoXygiVVNCIHJlZGlyZWN0aW9uIikpOwo+ID4gKyAg
ICB9Cj4gPiArCj4gPiAgICAgIGJ1cyAgICAgPSBzcGljZV91c2JfZGV2aWNlX2dldF9idXNudW0o
ZGV2aWNlKTsKPiA+ICAgICAgYWRkcmVzcyA9IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X2RldmFkZHIo
ZGV2aWNlKTsKPiA+ICAgICAgdmlkICAgICA9IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3ZpZChkZXZp
Y2UpOwo+Cj4gRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
