Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E7BDC9CE
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 17:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652A36EB73;
	Fri, 18 Oct 2019 15:52:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B90E6EB73
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 15:52:24 +0000 (UTC)
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-178-nM_99vqQPxyHVrgu5feiVQ-1; Fri, 18 Oct 2019 11:52:20 -0400
Received: by mail-oi1-f198.google.com with SMTP id u64so3435774oie.20
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 08:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=0k/EL3/MXqI2zqE76pcrNd4cmAH0DW9vvlH26sR0ngw=;
 b=Q0zK0dX5HBFAD8zfbXJEAzbt1gaQYF7J/dcPYDDfYUgsk2Ae5tuahqpI4NAuADCWu0
 Yklcj7QYFVesL1QNM6Y6izCiJuQiHizYs+Uj5tBGKdV4RJxWB4zS/Ruk6KXXRspfF6At
 YyAPUZdqCXgbexBwgOMRN1uzZuwu6uHe1dyviPtEGY+lskxfLE3Kmpwhxr/6MlDj1+7D
 UHFEh+2RdECThue2N5z8BeIRVjj/kUT8KizrdwFnC6E8riUIVDZqxVOoQQGtSn/Sh0GZ
 4EKz8XsQqSawvrMtGjtfLYPsmSvFoomHUphm9patVdtW4sY1UliiUFi30gVL3QacBuGk
 Y1gw==
X-Gm-Message-State: APjAAAXyQ6xq6LD/2EtSfQcEGbgsCqCk/AGOGqwDTZXDwCCOUaj1g8Ca
 HfuZl46kRBMLyhZ+MYgdQOyV6+2ORk2QzMWUyTMXf68dBpJNVaPC55Ob5nnbnaO71Q9IDctcPVA
 Q+Q+fsvUHCoyOT7xrRyq0xtygtdUjlfYJFbZcU82UWI4L6xY=
X-Received: by 2002:a05:6830:1f1a:: with SMTP id
 u26mr7989885otg.134.1571413939680; 
 Fri, 18 Oct 2019 08:52:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUV8OVOcwJmmLuTSeRMbX8TARpgSFbkI6jZ9eCjFvylllCquQH052PdiLBdrjL+NAn5kyKBrOgC645Oixy16g=
X-Received: by 2002:a05:6830:1f1a:: with SMTP id
 u26mr7989865otg.134.1571413939313; 
 Fri, 18 Oct 2019 08:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191018113709.18888-1-kpouget@redhat.com>
 <20191018113709.18888-3-kpouget@redhat.com>
In-Reply-To: <20191018113709.18888-3-kpouget@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Fri, 18 Oct 2019 17:52:06 +0200
Message-ID: <CADJ1XR35gRLw_Q8OdZMeyN6n8HRpn9OKoZ-U0yMp7TjM0M2WWw@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
X-MC-Unique: nM_99vqQPxyHVrgu5feiVQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571413942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=53pSYMCg7vmI4kAr1EIhu8APHtVO6zTPA1rt+tLWvCI=;
 b=Uf59NYL3EFbamljqVheRh99LLhDmjz5QfPb3Q8avAF2+SIODloogXn66DZ2VOXfgVr/Kh2
 /oLFHmqGkxagx7hpgpvghOETr4Ftxez9GK30i8Iz7/1Z+LVvtUICIxQ1peLtKrVa3Wco+J
 Nb17/0DNasllW/mbZ43/hOlD8RLnCgY=
Subject: Re: [Spice-devel] [PATCH spice-common v2 3/3] build: Introduce
 'agent' as an alternative instrumentation library
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

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMTozNyBQTSBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGUgJ2FnZW50JyBpbnRlcmZhY2UgaXMgYW4gZXhwZXJpbWVu
dGFsIGluc3RydW1lbnRhdGlvbiBsaWJyYXJ5IGZvcgo+IGNhcHR1cmluZyBhbmQgc2hhcmluZyBT
cGljZSBwZXJmb3JtYW5jZSBpbmRpY2F0b3JzIHdpdGggYW4gZXh0ZXJuYWwKPiBhZ2VudC4KPgo+
ICAgICAtLWVuYWJsZS1pbnN0cnVtZW50YXRpb249W2MzZC1yZWMvYWdlbnQvbm9dCj4gICAgICAg
ICAgICAgIEVuYWJsZSBpbnN0cnVtZW50YXRpb24gW2RlZmF1bHQ9bm9dCj4KPiBGb3JtZXIgY29u
ZmlndXJhdGlvbiBvcHRpb24gJy0tZW5hYmxlLXJlY29yZGVyPWMzZCcgaXMgdHJhbnNmb3JtZWQg
aW50bwo+ICctLWVuYWJsZS1pbnN0cnVtZW50YXRpb249YzNkLXJlYycuCgp0aGVyZSBpcyBubyBy
ZWFzb24gYW55bW9yZSB0byBoYXZlIHRoZSByZWNvcmRlciBpbnN0cnVtZW50YXRpb24gbmFtZWQg
J2MzZC1yZWMnLApJIGNoYW5nZSBpdCB0byAnLS1lbmFibGUtaW5zdHJ1bWVudGF0aW9uPXJlY29y
ZGVyJyBhbmQgcmVzZW5kIHRoZSBzZXJpZXMgYXMgdjMKCj4gU2lnbmVkLW9mZi1ieTogS2V2aW4g
UG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+Cj4gLS0tCj4gdjEtPnYyOiBjaGFuZ2VkICdvZmYn
IHRvICdubycgZm9yIG1lc29uIGJ1aWxkIHdpdGhvdXQgaW5zdHJ1bWVudGF0aW9uCj4gbGlicmFy
eQo+IC0tLQo+ICBjb21tb24vTWFrZWZpbGUuYW0gfCAgOSArKysrKysrKy0KPiAgY29tbW9uL21l
c29uLmJ1aWxkIHwgIDggKysrKysrKy0KPiAgY29tbW9uL3JlY29yZGVyLmggIHwgMTIgKysrKysr
KystLS0tCj4gIGNvbmZpZ3VyZS5hYyAgICAgICB8ICAyICstCj4gIG00L3NwaWNlLWRlcHMubTQg
ICB8IDIzICsrKysrKysrKysrKystLS0tLS0tLS0tCj4gIG1lc29uLmJ1aWxkICAgICAgICB8ICA3
ICsrKysrLS0KPiAgbWVzb25fb3B0aW9ucy50eHQgIHwgMTAgKysrKystLS0tLQo+ICA3IGZpbGVz
IGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2NvbW1vbi9NYWtlZmlsZS5hbSBiL2NvbW1vbi9NYWtlZmlsZS5hbQo+IGluZGV4IDk2Mzg2
MzUuLmZjNDY2YmQgMTAwNjQ0Cj4gLS0tIGEvY29tbW9uL01ha2VmaWxlLmFtCj4gKysrIGIvY29t
bW9uL01ha2VmaWxlLmFtCj4gQEAgLTU2LDcgKzU2LDcgQEAgbGlic3BpY2VfY29tbW9uX2xhX1NP
VVJDRVMgPSAgICAgICAgICBcCj4gICAgICAgICByZWNvcmRlci5oICAgICAgICAgICAgICAgICAg
ICAgIFwKPiAgICAgICAgICQoTlVMTCkKPgo+IC1pZiBFTkFCTEVfUkVDT1JERVIKPiAraWYgRU5B
QkxFX0MzRF9SRUNPUkRFUgo+ICBsaWJzcGljZV9jb21tb25fbGFfU09VUkNFUyArPSBcCj4gICAg
ICAgICByZWNvcmRlci9yZWNvcmRlci5jICAgICAgICAgICAgIFwKPiAgICAgICAgIHJlY29yZGVy
L3JlY29yZGVyLmggICAgICAgICAgICAgXAo+IEBAIC02NSw2ICs2NSwxMyBAQCBsaWJzcGljZV9j
b21tb25fbGFfU09VUkNFUyArPSBcCj4gICAgICAgICAkKE5VTEwpCj4gIGVuZGlmCj4KPiAraWYg
RU5BQkxFX0FHRU5UX0lOVEVSRkFDRQo+ICtsaWJzcGljZV9jb21tb25fbGFfU09VUkNFUyArPSBc
Cj4gKyAgICAgICBhZ2VudF9pbnRlcmZhY2UuYyAgICAgICAgICAgICAgIFwKPiArICAgICAgIGFn
ZW50X2ludGVyZmFjZS5oICAgICAgICAgICAgICAgXAo+ICsgICAgICAgJChOVUxMKQo+ICtlbmRp
Zgo+ICsKPiAgIyBUaGVzZSAyIGZpbGVzIGFyZSBub3QgYnVpbGQgYXMgcGFydCBvZiBzcGljZS1j
b21tb24KPiAgIyBidWlsZCBzeXN0ZW0sIGJ1dCBtb2R1bGVzIHVzaW5nIHNwaWNlLWNvbW1vbiB3
aWxsIGJ1aWxkCj4gICMgdGhlbSB3aXRoIHRoZSBhcHByb3ByaWF0ZSBvcHRpb25zLiBXZSBuZWVk
IHRvIGxldCBhdXRvbWFrZQo+IGRpZmYgLS1naXQgYS9jb21tb24vbWVzb24uYnVpbGQgYi9jb21t
b24vbWVzb24uYnVpbGQKPiBpbmRleCA5YTI3MjVmLi40MTg1OTNlIDEwMDY0NAo+IC0tLSBhL2Nv
bW1vbi9tZXNvbi5idWlsZAo+ICsrKyBiL2NvbW1vbi9tZXNvbi5idWlsZAo+IEBAIC00MSw3ICs0
MSw3IEBAIHNwaWNlX2NvbW1vbl9zb3VyY2VzID0gWwo+ICAgICdyZWNvcmRlci5oJwo+ICBdCj4K
PiAtaWYgZ2V0X29wdGlvbigncmVjb3JkZXInKQo+ICtpZiBnZXRfb3B0aW9uKCdpbnN0cnVtZW50
YXRpb24nKSA9PSAnYzNkLXJlYycKPiAgICBzcGljZV9jb21tb25fc291cmNlcyArPSBbCj4gICAg
ICAncmVjb3JkZXIvcmVjb3JkZXIuYycsCj4gICAgICAncmVjb3JkZXIvcmVjb3JkZXIuaCcsCj4g
QEAgLTQ5LDYgKzQ5LDEyIEBAIGlmIGdldF9vcHRpb24oJ3JlY29yZGVyJykKPiAgICAgICdyZWNv
cmRlci9yZWNvcmRlcl9yaW5nLmgnCj4gICAgXQo+ICBlbmRpZgo+ICtpZiBnZXRfb3B0aW9uKCdp
bnN0cnVtZW50YXRpb24nKSA9PSAnYWdlbnQnCj4gKyAgc3BpY2VfY29tbW9uX3NvdXJjZXMgKz0g
Wwo+ICsgICAgJ2FnZW50X2ludGVyZmFjZS5jJywKPiArICAgICdhZ2VudF9pbnRlcmZhY2UuaCcK
PiArICBdCj4gK2VuZGlmCj4KPiAgc3BpY2VfY29tbW9uX2xpYiA9IHN0YXRpY19saWJyYXJ5KCdz
cGljZS1jb21tb24nLCBzcGljZV9jb21tb25fc291cmNlcywKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGluc3RhbGwgOiBmYWxzZSwKPiBkaWZmIC0tZ2l0IGEvY29tbW9uL3Jl
Y29yZGVyLmggYi9jb21tb24vcmVjb3JkZXIuaAo+IGluZGV4IDcxOTRhYjUuLmY3NzZmZDMgMTAw
NjQ0Cj4gLS0tIGEvY29tbW9uL3JlY29yZGVyLmgKPiArKysgYi9jb21tb24vcmVjb3JkZXIuaAo+
IEBAIC0xNiw3ICsxNiwxNCBAQAo+ICAqLwo+ICAvKiBUaGlzIGZpbGUgaW5jbHVkZSByZWNvcmRl
ciBsaWJyYXJ5IGhlYWRlcnMgb3IgaWYgZGlzYWJsZWQgcHJvdmlkZQo+ICAgKiByZXBsYWNlbWVu
dCBkZWNsYXJhdGlvbnMgKi8KPiAtI2lmbmRlZiBFTkFCTEVfUkVDT1JERVIKPiArCj4gKyNpZmRl
ZiBFTkFCTEVfQzNEX1JFQ09SREVSCj4gKyNpbmNsdWRlIDxjb21tb24vcmVjb3JkZXIvcmVjb3Jk
ZXIuaD4KPiArCj4gKyNlbGlmIGRlZmluZWQoRU5BQkxFX0FHRU5UX0lOVEVSRkFDRSkKPiArI2lu
Y2x1ZGUgPGNvbW1vbi9hZ2VudF9pbnRlcmZhY2UuaD4KPiArCj4gKyNlbHNlCj4KPiAgI2luY2x1
ZGUgPHN0ZGlvLmg+Cj4gICNpbmNsdWRlIDxzdGRpbnQuaD4KPiBAQCAtNjksOSArNzYsNiBAQCBz
dGF0aWMgaW5saW5lIHZvaWQKPiAgcmVjb3JkZXJfZHVtcF9vbl9jb21tb25fc2lnbmFscyh1bnNp
Z25lZCBhZGQsIHVuc2lnbmVkIHJlbW92ZSkKPiAgewo+ICB9Cj4gLQo+IC0jZWxzZQo+IC0jaW5j
bHVkZSA8Y29tbW9uL3JlY29yZGVyL3JlY29yZGVyLmg+Cj4gICNlbmRpZgo+Cj4gICNpZiAhZGVm
aW5lZChFTkFCTEVfQUdFTlRfSU5URVJGQUNFKQo+IGRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMg
Yi9jb25maWd1cmUuYWMKPiBpbmRleCBkYTBhNjg3Li45ZDEwMjg3IDEwMDY0NAo+IC0tLSBhL2Nv
bmZpZ3VyZS5hYwo+ICsrKyBiL2NvbmZpZ3VyZS5hYwo+IEBAIC00MSw3ICs0MSw3IEBAIEFDX0FS
R19FTkFCTEUoW2FsaWdubWVudC1jaGVja3NdLAo+ICBBU19JRihbdGVzdCAieCRlbmFibGVfYWxp
Z25tZW50X2NoZWNrcyIgPSAieHllcyJdLAo+ICAgICAgICBbQUNfREVGSU5FKFtTUElDRV9ERUJV
R19BTElHTk1FTlRdLCAxLCBbRW5hYmxlIHJ1bnRpbWUgY2hlY2tzIGZvciBjYXN0IGFsaWdubWVu
dF0pXSkKPgo+IC1TUElDRV9DSEVDS19SRUNPUkRFUgo+ICtTUElDRV9DSEVDS19JTlNUUlVNRU5U
QVRJT04KPgo+ICAjIENoZWNrcyBmb3IgbGlicmFyaWVzCj4gIFBLR19DSEVDS19NT0RVTEVTKFtQ
Uk9UT0NPTF0sIFtzcGljZS1wcm90b2NvbCA+PSAwLjEyLjEyXSkKPiBkaWZmIC0tZ2l0IGEvbTQv
c3BpY2UtZGVwcy5tNCBiL200L3NwaWNlLWRlcHMubTQKPiBpbmRleCAxMjE0MzQxLi4zNGY3M2U2
IDEwMDY0NAo+IC0tLSBhL200L3NwaWNlLWRlcHMubTQKPiArKysgYi9tNC9zcGljZS1kZXBzLm00
Cj4gQEAgLTM0MSwxNyArMzQxLDIwIEBAIEFDX0RFRlVOKFtTUElDRV9DSEVDS19PUEVOU1NMXSwg
Wwo+ICAgICAgUEtHX0NIRUNLX01PRFVMRVMoT1BFTlNTTCwgb3BlbnNzbCkKPiAgXSkKPgo+IC0j
IFNQSUNFX0NIRUNLX1JFQ09SREVSCj4gKyMgU1BJQ0VfQ0hFQ0tfSU5TVFJVTUVOVEFUSU9OCj4g
ICMgLS0tLS0tLS0tLS0tLS0tLS0KPiAtIyBDaGVjayBmb3IgdGhlIGF2YWlsYWJpbGl0eSBvZiBy
ZWNvcmRlciBsaWJyYXJ5Lgo+ICsjIENoZWNrIGZvciB0aGUgYXZhaWxhYmlsaXR5IG9mIGFuIGlu
c3RydW1lbnRhdGlvbiBsaWJyYXJ5Lgo+ICAjLS0tLS0tLS0tLS0tLS0tLS0tCj4gLUFDX0RFRlVO
KFtTUElDRV9DSEVDS19SRUNPUkRFUl0sIFsKPiAtICAgIEFDX0FSR19FTkFCTEUoW3JlY29yZGVy
XSwKPiAtICAgICAgQVNfSEVMUF9TVFJJTkcoWy0tZW5hYmxlLXJlY29yZGVyXSwKPiAtICAgICAg
ICAgICAgICAgICAgICAgW0VuYWJsZSByZWNvcmRlciBpbnN0cnVtZW50YXRpb24gQDw6QGRlZmF1
bHQ9bm9AOj5AXSksCj4gK0FDX0RFRlVOKFtTUElDRV9DSEVDS19JTlNUUlVNRU5UQVRJT05dLCBb
Cj4gKyAgICBBQ19BUkdfRU5BQkxFKFtpbnN0cnVtZW50YXRpb25dLAo+ICsgICAgICBBU19IRUxQ
X1NUUklORyhbLS1lbmFibGUtaW5zdHJ1bWVudGF0aW9uPUA8OkBjM2QtcmVjL2FnZW50L25vQDo+
QF0sCj4gKyAgICAgICAgICAgICAgICAgICAgIFtFbmFibGUgaW5zdHJ1bWVudGF0aW9uIEA8OkBk
ZWZhdWx0PW5vQDo+QF0pLAo+ICAgICAgICBbXSwKPiAtICAgICAgZW5hYmxlX3JlY29yZGVyPSJu
byIpCj4gLSAgICBBU19JRihbdGVzdCAiJGVuYWJsZV9yZWNvcmRlciIgPSAieWVzIl0sCj4gLSAg
ICAgICAgICAgQUNfREVGSU5FKFtFTkFCTEVfUkVDT1JERVJdLCBbMV0sIFtEZWZpbmUgaWYgcmVj
b3JkZXIgaW5zdHJ1bWVudGF0aW9uIGlzIGVuYWJsZWRdKSkKPiAtICAgIEFNX0NPTkRJVElPTkFM
KFtFTkFCTEVfUkVDT1JERVJdLFt0ZXN0ICIkZW5hYmxlX3JlY29yZGVyIiA9ICJ5ZXMiXSkKPiAr
ICAgICAgZW5hYmxlX2luc3RydW1lbnRhdGlvbj0ibm8iKQo+ICsgICAgQVNfSUYoW3Rlc3QgIiRl
bmFibGVfaW5zdHJ1bWVudGF0aW9uIiA9ICJjM2QtcmVjIl0sCj4gKyAgICAgICAgICAgQUNfREVG
SU5FKFtFTkFCTEVfQzNEX1JFQ09SREVSXSwgWzFdLCBbRGVmaW5lIGlmIGMzZCByZWNvcmRlciBp
bnN0cnVtZW50YXRpb24gaXMgZW5hYmxlZF0pKQo+ICsgICAgQVNfSUYoW3Rlc3QgIiRlbmFibGVf
aW5zdHJ1bWVudGF0aW9uIiA9ICJhZ2VudCJdLAo+ICsgICAgICAgICAgIEFDX0RFRklORShbRU5B
QkxFX0FHRU5UX0lOVEVSRkFDRV0sIFsxXSwgW0RlZmluZSBpZiB0aGUgYWdlbnQtaW50ZXJmYWNl
IGluc3RydW1lbnRhdGlvbiBpcyBlbmFibGVkXSkpCj4gKyAgICBBTV9DT05ESVRJT05BTChbRU5B
QkxFX0MzRF9SRUNPUkRFUl0sW3Rlc3QgIiRlbmFibGVfaW5zdHJ1bWVudGF0aW9uIiA9ICJjM2Qt
cmVjIl0pCj4gKyAgICBBTV9DT05ESVRJT05BTChbRU5BQkxFX0FHRU5UX0lOVEVSRkFDRV0sW3Rl
c3QgIiRlbmFibGVfaW5zdHJ1bWVudGF0aW9uIiA9ICJhZ2VudCJdKQo+ICBdKQo+IGRpZmYgLS1n
aXQgYS9tZXNvbi5idWlsZCBiL21lc29uLmJ1aWxkCj4gaW5kZXggNjk0MTE5ZC4uMDY0YzU2ZSAx
MDA2NDQKPiAtLS0gYS9tZXNvbi5idWlsZAo+ICsrKyBiL21lc29uLmJ1aWxkCj4gQEAgLTM2LDgg
KzM2LDExIEBAIGlmIGhvc3RfbWFjaGluZS5lbmRpYW4oKSA9PSAnYmlnJwo+ICAgIHNwaWNlX2Nv
bW1vbl9jb25maWdfZGF0YS5zZXQoJ1dPUkRTX0JJR0VORElBTicsICcxJykKPiAgZW5kaWYKPgo+
IC1pZiBnZXRfb3B0aW9uKCdyZWNvcmRlcicpCj4gLSAgc3BpY2VfY29tbW9uX2NvbmZpZ19kYXRh
LnNldCgnRU5BQkxFX1JFQ09SREVSJywgJzEnKQo+ICtpZiBnZXRfb3B0aW9uKCdpbnN0cnVtZW50
YXRpb24nKSA9PSAnYzNkLXJlYycKPiArICBzcGljZV9jb21tb25fY29uZmlnX2RhdGEuc2V0KCdF
TkFCTEVfQzNEX1JFQ09SREVSJywgJzEnKQo+ICtlbmRpZgo+ICtpZiBnZXRfb3B0aW9uKCdpbnN0
cnVtZW50YXRpb24nKSA9PSAnYWdlbnQnCj4gKyAgc3BpY2VfY29tbW9uX2NvbmZpZ19kYXRhLnNl
dCgnRU5BQkxFX0FHRU5UX0lOVEVSRkFDRScsICcxJykKPiAgZW5kaWYKPgo+ICBzcGljZV9jb21t
b25fZ2VuZXJhdGVfY29kZSA9IGdldF9vcHRpb24oJ2dlbmVyYXRlLWNvZGUnKQo+IGRpZmYgLS1n
aXQgYS9tZXNvbl9vcHRpb25zLnR4dCBiL21lc29uX29wdGlvbnMudHh0Cj4gaW5kZXggYzk4Mjcz
Ni4uNTA2NzYwMCAxMDA2NDQKPiAtLS0gYS9tZXNvbl9vcHRpb25zLnR4dAo+ICsrKyBiL21lc29u
X29wdGlvbnMudHh0Cj4gQEAgLTIxLDExICsyMSwxMSBAQCBvcHRpb24oJ29wdXMnLAo+ICAgICAg
eWllbGQgOiB0cnVlLAo+ICAgICAgZGVzY3JpcHRpb246ICdFbmFibGUgT3B1cyBhdWRpbyBjb2Rl
YycpCj4KPiAtb3B0aW9uKCdyZWNvcmRlcicsCj4gLSAgICB0eXBlIDogJ2Jvb2xlYW4nLAo+IC0g
ICAgdmFsdWUgOiBmYWxzZSwKPiAtICAgIHlpZWxkIDogdHJ1ZSwKPiAtICAgIGRlc2NyaXB0aW9u
OiAnRW5hYmxlIHJlY29yZGVyIGluc3RydW1lbnRhdGlvbicpCj4gK29wdGlvbignaW5zdHJ1bWVu
dGF0aW9uJywKPiArICAgIHR5cGUgOiAnY29tYm8nLAo+ICsgICAgdmFsdWUgOiAnbm8nLAo+ICsg
ICAgY2hvaWNlcyA6IFsnYzNkLXJlYycsICdhZ2VudCcsICdubyddLAo+ICsgICAgZGVzY3JpcHRp
b246ICdFbmFibGUgaW5zdHJ1bWVudGF0aW9uJykKPgo+ICBvcHRpb24oJ3NtYXJ0Y2FyZCcsCj4g
ICAgICB0eXBlIDogJ2ZlYXR1cmUnLAo+IC0tCj4gMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
