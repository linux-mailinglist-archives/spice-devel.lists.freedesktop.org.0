Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC5576270
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 11:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6558C6ECCC;
	Fri, 26 Jul 2019 09:37:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8D46ECCC
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:37:24 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id f4so103515088ioh.6
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 02:37:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ipIlcPeONMBy2QCaXtW7/hf+y8SxZdiJtwqTFmqNRzo=;
 b=nAAFHya+CmJ/qSj17uE7cUoNfx8UbA92LshIPKhXhCPq9jeXzLofsKSbJurm6DFFpy
 eNwwVoYG7veZYdYSMxPcR1g3WokmSsNfS0vn9C+eqEPHJP4omcI4UOgJXc0O6vJQl6+t
 GVvgNhzaonjvsX4s3c7v5u2AiPywrO6RpsMbDBdR8y0Mx8uNACiog1zq07rxyvgwom+m
 YdNAq2B6eLQMUuamafOWMASSBjmP503QeBcIQF7UQsh1pxLbENjFlakqMACsgvamTeS9
 6+wVKZrRKkeM5LX0ahjMnFmgsY2yWOrdFmXCSTeg//xty4rjZVt5pLO/J0moLV1joehj
 P+Ig==
X-Gm-Message-State: APjAAAUaLd6whw9PcViWxcx2GMkzI2obp7uwctyXYxgsHkr8wxooNBDM
 riDdx32OYkkzVd+oOi4KxztIoOTULrf5uiL8yVY=
X-Google-Smtp-Source: APXvYqxAfmvsQf7vwU30UvcxyV/gx/mXyH7KZXCeXig73W8usvDtw5lNn0tSiKWTECkp8L9OsmVyI3s5xjelPv9J5AQ=
X-Received: by 2002:a6b:b593:: with SMTP id
 e141mr91208413iof.203.1564133844152; 
 Fri, 26 Jul 2019 02:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-6-yuri.benditovich@daynix.com>
 <1067233620.2956119.1564046235108.JavaMail.zimbra@redhat.com>
 <CAOEp5Oc2yrk5URaDz6mUiYte-kHwY8Z+A=ZdkkxsekN2EVFBig@mail.gmail.com>
 <560299027.3089636.1564130850636.JavaMail.zimbra@redhat.com>
In-Reply-To: <560299027.3089636.1564130850636.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Fri, 26 Jul 2019 12:37:11 +0300
Message-ID: <CAOEp5OeWfKcY+PQPruKO5NMQFGkKkfOkQ6sFQFfPKr0Vd7Ubfw@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ipIlcPeONMBy2QCaXtW7/hf+y8SxZdiJtwqTFmqNRzo=;
 b=gTpVhQZuLh6IHX3iLbHDkEaKRPUJ5huCyenyPUWgxaZywN853V4Gke24JcBSIy01Tt
 WlZYqk8p121f5Cc91UWrQkn3MmKzKE32wLyS4r2OM7QTkpHNubiFC7lnfLpTplJQHiz8
 Byes61lXEZMteVa/nZswyFmPTJhDtFTghwy/DcPeagz0jV9aowR7wLGox2u4CY7zF5/H
 9LTV6kwtGKecg95qeFjlQ78ra07WHA0+LKxOnRxJxX0DmDg6tmZAMzWtV7ddmGs2mBe0
 blVaA7IhgnHnZCMFbrukz1d8L6A/l3ultrsAayACUrAkvMt/vgHRj/RcYtI0dOnTEVb7
 6Okg==
Subject: Re: [Spice-devel] [spice-gtk 5/9] usb-redir: do not use
 spice_usb_acl_helper for emulated devices
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

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMTE6NDcgQU0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gPiBPbiBUaHUsIEp1bCAyNSwgMjAxOSBhdCAxMjoxNyBQ
TSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92
aWNoQGRheW5peC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIHNyYy9jaGFubmVsLXVzYnJlZGly
LmMgfCAyOSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYyBiL3NyYy9jaGFubmVsLXVzYnJlZGly
LmMKPiA+ID4gPiBpbmRleCA4ZDRjZDY2Li45NjFhNDY0IDEwMDY0NAo+ID4gPiA+IC0tLSBhL3Ny
Yy9jaGFubmVsLXVzYnJlZGlyLmMKPiA+ID4gPiArKysgYi9zcmMvY2hhbm5lbC11c2JyZWRpci5j
Cj4gPiA+ID4gQEAgLTMwMSw3ICszMDEsNiBAQCBzdGF0aWMgdm9pZCBzcGljZV91c2JyZWRpcl9j
aGFubmVsX29wZW5fYWNsX2NiKAo+ID4gPiA+ICB9Cj4gPiA+ID4gICNlbmRpZgo+ID4gPiA+Cj4g
PiA+ID4gLSNpZm5kZWYgVVNFX1BPTEtJVAo+ID4gPiA+ICBzdGF0aWMgdm9pZAo+ID4gPiA+ICBf
b3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4gPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICBncG9pbnRlciBvYmplY3QsCj4gPiA+ID4gQEAgLTMyOCw3ICszMjcsNiBAQCBfb3Bl
bl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4gPiA+ID4gICAgICAgICAgZ190YXNrX3Jl
dHVybl9ib29sZWFuKHRhc2ssIFRSVUUpOwo+ID4gPiA+ICAgICAgfQo+ID4gPiA+ICB9Cj4gPiA+
ID4gLSNlbmRpZgo+ID4gPiA+Cj4gPiA+ID4gIEdfR05VQ19JTlRFUk5BTAo+ID4gPiA+ICB2b2lk
IHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfY29ubmVjdF9kZXZpY2VfYXN5bmMoCj4gPiA+ID4gQEAg
LTM3MywyMSArMzcxLDIyIEBAIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9jb25uZWN0X2Rl
dmljZV9hc3luYygKPiA+ID4gPiAgICAgIHByaXYtPnNwaWNlX2RldmljZSA9IGdfYm94ZWRfY29w
eShzcGljZV91c2JfZGV2aWNlX2dldF90eXBlKCksCj4gPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3BpY2VfZGV2aWNlKTsKPiA+ID4gPiAgI2lmZGVmIFVTRV9Q
T0xLSVQKPiA+ID4gPiAtICAgIHByaXYtPnRhc2sgPSB0YXNrOwo+ID4gPiA+IC0gICAgcHJpdi0+
c3RhdGUgID0gU1RBVEVfV0FJVElOR19GT1JfQUNMX0hFTFBFUjsKPiA+ID4gPiAtICAgIHByaXYt
PmFjbF9oZWxwZXIgPSBzcGljZV91c2JfYWNsX2hlbHBlcl9uZXcoKTsKPiA+ID4gPiAtICAgIGdf
b2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNFX0NIQU5ORUwoY2hhbm5l
bCkpLAo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICJpbmhpYml0LWtleWJvYXJkLWdyYWIiLCBU
UlVFLCBOVUxMKTsKPiA+ID4gPiAtICAgIHNwaWNlX3VzYl9hY2xfaGVscGVyX29wZW5fYWNsX2Fz
eW5jKHByaXYtPmFjbF9oZWxwZXIsCj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpbmZvLT5idXMsCj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbmZvLT5hZGRyZXNzLAo+ID4gPiA+IC0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY2FuY2VsbGFibGUsCj4gPiA+ID4gLQo+ID4gPiA+IHNw
aWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IsCj4gPiA+ID4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVsKTsKPiA+ID4gPiArICAgIGlmIChpbmZv
LT5kZXZpY2VfdHlwZSA9PSBVU0JfREVWX1RZUEVfTk9ORSkgewo+ID4gPgo+ID4gPiBXaHkgbm90
Cj4gPiA+Cj4gPiA+ICAgIGlmIChpbmZvLT5kZXZpY2VfdHlwZSAhPSBVU0JfREVWX1RZUEVfTk9O
RSkgewo+ID4gPiAgICAgICByZXR1cm47Cj4gPiA+ICAgIH0KPiA+ID4KPiA+Cj4gPiBCZWNhdXNl
IHRoaXMgaXMgbm90ICJyZXR1cm4iLCB0aGlzIHNob3VsZCBwcm9jZWVkIHRvIGdfdGFza19ydW5f
aW5fdGhyZWFkIGV0Ywo+ID4KPgo+IEluIHRoaXMgY2FzZSB5b3UgaGF2ZSB0byByZW1vdmUgdGhl
ICJyZXR1cm4iIGp1c3QgYWZ0ZXIgdGhlIGlmLgo+Cj4gWW91IGVpdGhlciBkaXNhYmxlZCBQT0xL
SVQgb3IgeW91IGRpZG4ndCB0ZXN0IHRoYXQgY29kZS4KCkkgZG8gbm90IGFncmVlLiBQT0xLSVQg
aXMgZW5hYmxlZCAob24gTGludXgpLgpXaXRoIGVtdWxhdGVkIGRldmljZSB0aGUgY29kZSBzaG91
bGQgd29yayBhcyB3aXRob3V0IFBPTEtJVC4KRm9yIHRoYXQgdGhlIGlmZGVmIGFyb3VuZCBfb3Bl
bl9kZXZpY2VfYXN5bmNfY2Igd2FzIHJlbW92ZWQgYW5kIHRoZQpwcm9jZWR1cmUgaXMgaW52b2x2
ZWQgZm9yIGVtdWxhdGVkIGRldmljZS4KCj4KPiA+ID4gd291bGQgbWluaW1pemUgY2hhbmdlcy4K
PiA+ID4gQXMgc3RhdGVkIGluIHByZXZpb3VzIGNvbW1lbnQgKG90aGVyIHBhdGNoKSB0aGUgZW51
bWVyYXRpb24gaXMgbWlzbGVhZGluZy4KPiA+ID4gQXMgImluZm8iIGhvbGQgaW5mb3JtYXRpb24g
Zm9yIGFueSB1c2IgZGV2aWNlIHBlb3BsZSByZWFkaW5nIHRoaXMgd291bGQgc2F5Cj4gPiA+IHRo
YXQgdGhlIGRldmljZSB3YXMgbm90IHZhbGlkLCBzb21ldGhpbmcgbGlrZQo+ID4gPgo+ID4gPiAg
IGlmIChpbmZvLT5lbXVsYXRlZF90eXBlICE9IFVTQl9ERVZfRU1VX1RZUEVfTk9UX0VNVUxBVEVE
KQo+ID4gPgo+ID4gPiBvcgo+ID4gPgo+ID4gPiAgIGlmIChpbmZvLT5lbXVsYXRlZF90eXBlICE9
IFVTQl9ERVZfRU1VX1RZUEVfUkVBTCkKPiA+ID4KPiA+ID4gd291bGQgYmUgbXVjaCBtb3JlIHVu
ZGVyc3RhbmRhYmxlLgo+ID4gPgo+ID4gPiA+ICsgICAgICAgIHByaXYtPnRhc2sgPSB0YXNrOwo+
ID4gPiA+ICsgICAgICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dBSVRJTkdfRk9SX0FDTF9IRUxQ
RVI7Cj4gPiA+ID4gKyAgICAgICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9hY2xfaGVs
cGVyX25ldygpOwo+ID4gPiA+ICsgICAgICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dl
dF9zZXNzaW9uKFNQSUNFX0NIQU5ORUwoY2hhbm5lbCkpLAo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICJpbmhpYml0LWtleWJvYXJkLWdyYWIiLCBUUlVFLCBOVUxMKTsKPiA+ID4gPiArICAg
ICAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9vcGVuX2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVy
LAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
Zm8tPmJ1cywKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbmZvLT5hZGRyZXNzLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNhbmNlbGxhYmxlLAo+ID4gPiA+ICsKPiA+ID4gPiBzcGljZV91c2Jy
ZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNoYW5uZWwpOwo+ID4gPiA+ICsgICAgfQo+ID4gPiA+ICAg
ICAgcmV0dXJuOwo+ID4gPiA+IC0jZWxzZQo+ID4gPiA+IC0gICAgZ190YXNrX3J1bl9pbl90aHJl
YWQodGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKPiA+ID4gPiAgI2VuZGlmCj4gPiA+ID4g
KyAgICBnX3Rhc2tfcnVuX2luX3RocmVhZCh0YXNrLCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IpOwo+
ID4gPiA+Cj4gPiA+ID4gIGRvbmU6Cj4gPiA+ID4gICAgICBnX29iamVjdF91bnJlZih0YXNrKTsK
PiA+ID4KPiA+ID4gRnJlZGlhbm8KPiA+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
