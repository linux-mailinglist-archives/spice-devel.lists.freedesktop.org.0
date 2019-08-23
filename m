Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C759AC45
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 11:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E386EC73;
	Fri, 23 Aug 2019 09:58:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0216EC7D
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 09:58:07 +0000 (UTC)
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B2BE885536
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 09:58:06 +0000 (UTC)
Received: by mail-io1-f71.google.com with SMTP id e20so10285301ioe.12
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 02:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=LSg102JC5LUSKXpOJXFN7lsQOV6gRFJYDjTY3UzFzLY=;
 b=QGv2sWBmkoAi0ICt1YnA0vOc+MmOSVbMrLvPuzPCDihya9mcatFAMlZNm6U11SMkFc
 TuIu4YkWMpc0Obl+rrtQamu7K9vUJon1D8veX+ZhcuoFxb8Zt180hSNlplm59V4UqcXd
 F8KW6+opzqAA9kuvm5pCofhKv6caL0k0ElRyMTsYVogPv7lqgtEh353Uf+DASlXKrxvH
 SM6M1bZ6la3KM8CpanyM/EiJPnW0D3IPfxhIsJDD5fK5qQGtqrRJmUhKro+gynSNYXF/
 b6krcgph7qtxKIBPZoBvZWXK/tcasG/3syL2Xn9n8eC5HRRc3xT1Uy+KLPrN7gVKXL1l
 l4KA==
X-Gm-Message-State: APjAAAXQDOndRLH+G83V0Hh5wTSwh+Uq0ckskyueoavJT0LisZFtlzT5
 gLyV0ENX8Vf7q0WKWCsZWeBdeioR/Nnb88YbL3Z2v7+jlVcbSyELZeapcoIgaoeBuxmgGEGq/Kx
 LlbziebyvKkcsNdQprdmB1fQAcGeStf5qiTzSLhbf+2PATmE=
X-Received: by 2002:a5d:9945:: with SMTP id v5mr5474059ios.143.1566554286090; 
 Fri, 23 Aug 2019 02:58:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVmSaxjUiGV/GlN0rumT89exDTvncy+FbGHzo9ba07tUNtrXwOUaE1rlyoQJojy0j7RS++S2g4O0YVs6nGJng=
X-Received: by 2002:a5d:9945:: with SMTP id v5mr5474035ios.143.1566554285824; 
 Fri, 23 Aug 2019 02:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190808090314.28167-1-jjanku@redhat.com>
In-Reply-To: <20190808090314.28167-1-jjanku@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Fri, 23 Aug 2019 11:57:55 +0200
Message-ID: <CAH=CeiDFnMYX7BFUycejr575LWnw8A-puWoqBrq7_QLEd1f=kQ@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Subject: Re: [Spice-devel] [PATCH spice-gtk] webdav: fix usecase with
 multiple concurrent connections
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKQWxzbyBmb3Jnb3QgdG8gbWVudGlvbiB0aGF0IHRoaXMgZml4ZXMgYSByZWdyZXNzaW9u
IGludHJvZHVjZWQgYnkgbWUKaW4gOWY1YWVlMDUuCgpPbiBUaHUsIEF1ZyA4LCAyMDE5IGF0IDEx
OjAzIEFNIEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gR091dHB1
dFN0cmVhbSBkb2VzIG5vdCBhbGxvdyBzaW11bHRhbmVvdXMgdGFza3Mgb24gYSBzaW5nbGUKPiBz
dHJlYW0uIEFuIGF0dGVtcHQgdG8gdHJhbnNmZXIgdHdvIGZpbGVzIHRoZXJlZm9yZQo+IHJlc3Vs
dHMgaW50byBvbmUgb2YgdGhlIGNsaWVudHMgYmVpbmcgcmVtb3ZlZCBpbgo+IG11eF9tc2dfZmx1
c2hlZF9jYigpIHdpdGggdGhlIGVycm9yCj4gIlN0cmVhbSBoYXMgb3V0c3RhbmRpbmcgb3BlcmF0
aW9uIi4KPgo+IFRvIGZpeCB0aGlzLCB1c2Ugc3BpY2Vfdm1jX3dyaXRlX2FzeW5jKCkgZGlyZWN0
bHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgo+
IC0tLQo+ICBzcmMvY2hhbm5lbC13ZWJkYXYuYyB8IDE3ICsrKysrKystLS0tLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiBpbmRl
eCAxNGQ0ZTA1Li4wOWVmOWY3IDEwMDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLXdlYmRhdi5jCj4g
KysrIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiBAQCAtMjM1LDcgKzIzNSw3IEBAIG11eF9tc2df
Zmx1c2hlZF9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAo+ICB7Cj4gICAgICBDbGllbnQgKmNs
aWVudCA9IHVzZXJfZGF0YTsKPgo+IC0gICAgaWYgKCFnX291dHB1dF9zdHJlYW1fd3JpdGVfYWxs
X2ZpbmlzaChHX09VVFBVVF9TVFJFQU0oc291cmNlX29iamVjdCksIHJlc3VsdCwgTlVMTCwgTlVM
TCkgfHwKPiArICAgIGlmIChzcGljZV92bWNfd3JpdGVfZmluaXNoKFNQSUNFX0NIQU5ORUwoc291
cmNlX29iamVjdCksIHJlc3VsdCwgTlVMTCkgPT0gLTEgfHwKPiAgICAgICAgICBjbGllbnQtPm11
eC5zaXplID09IDAgfHwKPiAgICAgICAgICAhY2xpZW50X3N0YXJ0X3JlYWQoY2xpZW50KSkgewo+
ICAgICAgICAgIHJlbW92ZV9jbGllbnQoY2xpZW50KTsKPiBAQCAtMjQ5LDggKzI0OSw2IEBAIHN0
YXRpYyB2b2lkIHNlcnZlcl9yZXBseV9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZ3BvaW50ZXIgdXNlcl9kYXRhKQo+ICB7Cj4gICAgICBD
bGllbnQgKmNsaWVudCA9IHVzZXJfZGF0YTsKPiAtICAgIFNwaWNlV2ViZGF2Q2hhbm5lbFByaXZh
dGUgKmMgPSBjbGllbnQtPnNlbGYtPnByaXY7Cj4gLSAgICBHT3V0cHV0U3RyZWFtICptdXhfb3V0
Owo+ICAgICAgR0Vycm9yICplcnIgPSBOVUxMOwo+ICAgICAgZ3NzaXplIHNpemU7Cj4KPiBAQCAt
MjYyLDEzICsyNjAsMTIgQEAgc3RhdGljIHZvaWQgc2VydmVyX3JlcGx5X2NiKEdPYmplY3QgKnNv
dXJjZV9vYmplY3QsCj4gICAgICBnX3JldHVybl9pZl9mYWlsKHNpemUgPj0gMCk7Cj4gICAgICBj
bGllbnQtPm11eC5zaXplID0gR1VJTlQxNl9UT19MRShzaXplKTsKPgo+IC0gICAgbXV4X291dCA9
IGdfaW9fc3RyZWFtX2dldF9vdXRwdXRfc3RyZWFtKEdfSU9fU1RSRUFNKGMtPnN0cmVhbSkpOwo+
IC0KPiAtICAgIC8qIHRoaXMgaW50ZXJuYWxseSB1c2VzIHNwaWNlX3ZtY193cml0ZV9hc3luYygp
LCBwcmlvcml0eSBpcyBpZ25vcmVkOwo+IC0gICAgICogdGhlIGNhbGxiYWNrIGlzIGludm9rZWQg
b25jZSB0aGUgbXNnIGlzIHdyaXR0ZW4gb3V0IHRvIHRoZSBzb2NrZXQgKi8KPiAtICAgIGdfb3V0
cHV0X3N0cmVhbV93cml0ZV9hbGxfYXN5bmMobXV4X291dCwgKGd1aW50OCAqKSZjbGllbnQtPm11
eCwgc2l6ZW9mKGdpbnQ2NCkgKyBzaXplb2YoZ3VpbnQxNikgKyBzaXplLAo+IC0gICAgICAgIEdf
UFJJT1JJVFlfREVGQVVMVCwgY2xpZW50LT5jYW5jZWxsYWJsZSwgbXV4X21zZ19mbHVzaGVkX2Ni
LCBjbGllbnQpOwo+IC0KPiArICAgIHNwaWNlX3ZtY193cml0ZV9hc3luYyhTUElDRV9DSEFOTkVM
KGNsaWVudC0+c2VsZiksCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgJmNsaWVudC0+bXV4
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihnaW50NjQpICsgc2l6ZW9mKGd1
aW50MTYpICsgc2l6ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICBjbGllbnQtPmNhbmNl
bGxhYmxlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIG11eF9tc2dfZmx1c2hlZF9jYiwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICBjbGllbnQpOwo+ICAgICAgcmV0dXJuOwo+Cj4g
IGVuZDoKPiAtLQo+IDIuMjEuMAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
