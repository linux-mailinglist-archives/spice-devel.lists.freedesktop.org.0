Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD749E561
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B50899B5;
	Tue, 27 Aug 2019 10:08:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58DA899B5
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:08:51 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id s18so18202014wrn.1
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 03:08:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=QhyKD4edP3jN8wfqhaJK7BUeNO87iokZYrnJIreOUOs=;
 b=BzPsC3SB7BZULqJ72rXf6qWCEd1H87v0Gr5wvXy82YvnfJDRB1IITY0PV0EdVOGIHW
 nJ16y/NwqJyYXOAlJPpwmXJj8iPFM7OUEETZA9JZ9hgO038gdz3Rmzfz93t8tedR6kHs
 Y/SmWm7ayC61qt7uWMjTFWSCK3FQeFydWCKTv8VPqj2k8C2xaT7XcrEih8jyCHFUcQoZ
 uE3hzb2fED53bs5cABAp8z26GC5s0VAiNoZhSZ76ZjB9A6LjgJ8Hb/TNzIBLsYGs+OSo
 qxJd/bx/uigBrOxsn5hDpDzL2gKahY0JNmyJ1Ec2cky4INrFDbz6BMT3Wl054jn1jDCZ
 XHiA==
X-Gm-Message-State: APjAAAUMENjnWcR940kNae/HdLN+n6UT8euVzu2F058shvX/HfNNUiMf
 lMvXG5xRlyYH8R6Hyl4S0tK0qzRF
X-Google-Smtp-Source: APXvYqz7Y5L9yYUvDHlVaRnzCB38keF0X8NWjCH8bmCN6u9qa9OY0r4O0FqNY+7UeR+LGsrEcXMZ9Q==
X-Received: by 2002:a5d:4083:: with SMTP id o3mr28506886wrp.150.1566900529827; 
 Tue, 27 Aug 2019 03:08:49 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:95:eb51:474b:ae6b])
 by smtp.gmail.com with ESMTPSA id 6sm2462422wmf.23.2019.08.27.03.08.48
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:08:49 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-30-fziglio@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: spice-devel@lists.freedesktop.org
In-reply-to: <20190827092246.10276-30-fziglio@redhat.com>
Date: Tue, 27 Aug 2019 12:08:46 +0200
Message-ID: <m1woeyex8x.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:subject:in-reply-to:date:message-id
 :mime-version;
 bh=QhyKD4edP3jN8wfqhaJK7BUeNO87iokZYrnJIreOUOs=;
 b=rPkCdefjEGKexXx8C7ARbr4f1+Ni01kMpu3xqd+rEsu12uRTDGKXETDJV8OlDV1m+j
 YxwDmonAd3JpCZH7DcNgxddKccGiSeqX1TfZD2c3Ds3S0H2dtUdsw/oCzKVnUS0m2I+r
 mQgOyWG5Agbt7BXFTHa8+YZSjE86flOhZhSlJDskWlZm+3GrINm3dCCKhGm3ZCCgCust
 LaRMdUg3u8d0WDE32vVA2+i4boPvmmCol/BIcPXnkWfJ9CsUW5f/B1qDpeNIcsMIMuYl
 1VbtCJg6WeKlR68Dt6Q1tqX66E3+snNW9pki/iabzSifsXHchNGFkJu4HvhQfR55zZgi
 SiYA==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 29/29] test-cd-emu: Test no
 libusb context support
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

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+IEFsdGhvdWdoIGN1cnJlbnRseSBub3Qgc3VwcG9y
dGVkIHRoZSBjb2RlIHRyeSB0byBzdXBwb3J0IGl0Cgoibm90IHN1cHBvcnRlZCBpbiB0aGUgY29k
ZSwgdHJ5IHRvIHN1cHBvcnQgaXQiID8KCihOb3QgcmVhbGx5IHN1cmUgd2hhdCB5b3UgcmVhbGx5
IG1lYW4pCgo+IGluIG9yZGVyIHRvIGJlIGFibGUgdG8gaGF2ZSBvbmx5IGVtdWxhdGVkIGRldmlj
ZXMgaWYgdGhlCj4gbGlidXNiIGxheWVyIGlzIGZhaWxpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgdGVzdHMvY2QtZW11
LmMgfCAxNiArKysrKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NkLWVtdS5jIGIvdGVz
dHMvY2QtZW11LmMKPiBpbmRleCBkYTZlM2MzZi4uY2M1Y2Y4ZmQgMTAwNjQ0Cj4gLS0tIGEvdGVz
dHMvY2QtZW11LmMKPiArKysgYi90ZXN0cy9jZC1lbXUuYwo+IEBAIC0xODAsNyArMTgwLDggQEAg
cHJpbnRmKCJMT09QICVkXG4iLCBsb29wKTsKPgo+ICBzdGF0aWMgdm9pZCBhdHRhY2goY29uc3Qg
dm9pZCAqcGFyYW0pCj4gIHsKPiAtICAgIGNvbnN0IGJvb2wgYXR0YWNoX29uX2Nvbm5lY3QgPSAh
IUdQT0lOVEVSX1RPX1VJTlQocGFyYW0pOwo+ICsgICAgY29uc3QgYm9vbCBhdHRhY2hfb25fY29u
bmVjdCA9ICEhKEdQT0lOVEVSX1RPX1VJTlQocGFyYW0pICYgMSk7Cj4gKyAgICBjb25zdCBib29s
IGxpYnVzYl9lbmFibGVkID0gISEoR1BPSU5URVJfVE9fVUlOVChwYXJhbSkgJiAyKTsKPgo+ICAg
ICAgaGVsbG9zX3NlbnQgPSAwOwo+ICAgICAgbWVzc2FnZXNfc2VudCA9IDA7Cj4gQEAgLTIyMyw3
ICsyMjQsMTIgQEAgc3RhdGljIHZvaWQgYXR0YWNoKGNvbnN0IHZvaWQgKnBhcmFtKQo+ICAgICAg
Z19hc3NlcnRfbm9ubnVsbChkZXZpY2UpOwo+ICAgICAgZ19hc3NlcnRfZmFsc2UoZGV2aWNlLT5l
ZGV2X2NvbmZpZ3VyZWQpOwo+Cj4gKyAgICB2b2lkICpsaWJ1c2JfY29udGV4dF9zYXZlZCA9IGJl
LT5saWJ1c2JfY29udGV4dDsKPiArICAgIGlmICghbGlidXNiX2VuYWJsZWQpIHsKPiArICAgICAg
ICBiZS0+bGlidXNiX2NvbnRleHQgPSBOVUxMOwo+ICsgICAgfQo+ICAgICAgdXNiX2NoID0gc3Bp
Y2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9uZXcoYmUsIFNQSUNFX1VTQlJFRElSX0NIQU5ORUwoY2gp
KTsKPiArICAgIGJlLT5saWJ1c2JfY29udGV4dCA9IGxpYnVzYl9jb250ZXh0X3NhdmVkOwo+ICAg
ICAgZ19hc3NlcnRfbm9ubnVsbCh1c2JfY2gpOwo+Cj4gICAgICBmb3IgKGludCBsb29wID0gMDsg
bG9vcCA8IDI7ICsrbG9vcCkgewo+IEBAIC0yODUsOCArMjkxLDEyIEBAIGludCBtYWluKGludCBh
cmdjLCBjaGFyKiBhcmd2W10pCj4KPiAgICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11
L3NpbXBsZSIsIEdVSU5UX1RPX1BPSU5URVIoMSksIG11bHRpcGxlKTsKPiAgICAgIGdfdGVzdF9h
ZGRfZGF0YV9mdW5jKCIvY2QtZW11L211bHRpcGxlIiwgR1VJTlRfVE9fUE9JTlRFUigxMjgpLCBt
dWx0aXBsZSk7Cj4gLSAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfbm9f
YXV0byIsIEdVSU5UX1RPX1BPSU5URVIoMCksIGF0dGFjaCk7Cj4gLSAgICBnX3Rlc3RfYWRkX2Rh
dGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfYXV0byIsIEdVSU5UX1RPX1BPSU5URVIoMSksIGF0dGFj
aCk7Cj4gKyNkZWZpbmUgQVRUQUNIX1BBUkFNKGF1dG9fYXR0YWNoLCBsaWJ1c2IpIFwKPiArICAg
IEdVSU5UX1RPX1BPSU5URVIoISEoYXV0b19hdHRhY2gpICsgMiAqICEhKGxpYnVzYikpCj4gKyAg
ICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygiL2NkLWVtdS9hdHRhY2hfbm9fYXV0byIsIEFUVEFDSF9Q
QVJBTSgwLCAxKSwgYXR0YWNoKTsKPiArICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11
L2F0dGFjaF9hdXRvIiwgQVRUQUNIX1BBUkFNKDEsIDEpLCBhdHRhY2gpOwo+ICsgICAgZ190ZXN0
X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvYXR0YWNoX25vX2F1dG9fbm9fbGlidXNiIiwgQVRUQUNI
X1BBUkFNKDAsIDApLCBhdHRhY2gpOwo+ICsgICAgZ190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1l
bXUvYXR0YWNoX2F1dG9fbm9fbGlidXNiIiwgQVRUQUNIX1BBUkFNKDEsIDApLCBhdHRhY2gpOwo+
Cj4gICAgICByZXR1cm4gZ190ZXN0X3J1bigpOwo+ICB9CgoKLS0KQ2hlZXJzLApDaHJpc3RvcGhl
IGRlIERpbmVjaGluIChJUkMgYzNkKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
