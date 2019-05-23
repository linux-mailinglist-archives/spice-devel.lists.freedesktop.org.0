Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9FA27E53
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFD289811;
	Thu, 23 May 2019 13:40:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB9689811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:40:44 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id r7so6313164wrr.13
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1AMeDakTtnbuwBORg1ealrHycBWwuoHAVSjuln1rnv8=;
 b=fnXvgjGG13z+V2f3awZxHhWNKBOImV/KP/VjoEyt1GwH5orwOo4Uk1HVHhNZltCe+v
 XIgS1c9zP/PZ5IreWMy2dLxC7Ss1FzhgCXXlBjsIi8mPcUw29jtu7Ev/PsE2Jj74/EGy
 5yMF8QxvY2BzQ+KVR2cI0U8CzQhHPJw3KnOoqUBRSW9IXY8nTy/W5ZjC2WzUu3vPalGx
 pQ4a1Jw+hAnlULJT5/sITjgaOLdP3BwyGrJamZjiTR4Ii6yyxcxi1PjVoygEo4BPd6Eo
 H5BPSuhOBwr97ko0JYH3B2FsrkrHklCxPnxj1ucstDnaI2/C8Z9mcWDA4QkwSTTfIrkn
 upZQ==
X-Gm-Message-State: APjAAAWFJQYH0fi0gHIbMRDR/3d2CMYCLuQgYrF9R17DfsHnr5AJ9e68
 tU3MN7lXxS+6ynwMcpNr9shkCKDl/Sk1je3vqu8=
X-Google-Smtp-Source: APXvYqwA8xF+HeDSuWPiH02f2bI1i852hejb982dX70RxrzNmdcWhVKrIjI6M+wkxJi5bem6aJgBtTwOYY27/Fs2oN8=
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr324540wru.18.1558618843653;
 Thu, 23 May 2019 06:40:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-10-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-10-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:40:32 +0200
Message-ID: <CAJ+F1CKmpEmNOcRuxvDBskY2x4SrDOz5J++V2Cfz+np8Ka9uBw@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1AMeDakTtnbuwBORg1ealrHycBWwuoHAVSjuln1rnv8=;
 b=PYhjnezJ/rXGqvVT/wpvH2EjKNKaUpzK4VCiETXOCKI1Y5W30Wu7dT1e63cpj8xXlv
 dE2cj25agqViwe0w21WfE5FrRJjmYGmXj+WivvM9qUGsfmtiYcp9yZewNefk2SQk50Xd
 DJ79bnbIPT8op7X3lBUgONEm5EMzP21SylIbAqGvFAv85BX6mvlaLILMH7wqG3w6SW6C
 jyBG8rmTvt3I5F3RKgouBkotk4in1DArWexqqOzuwY52JMVAaCDvKWFaWetGc/L9SSMu
 gN27iTLhTYYDVbFteQEc+/oITQLneSke3/TB46Ovh8Ekda8d1c0Zbd0t/BFsXGfrUaiG
 1lfw==
Subject: Re: [Spice-devel] [PATCH phodav 09/13] spice-win: remove
 MapDriveEnum
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGUgZW51bSBkb2Vzbid0IGFkZCBtdWNoIHZhbHVlLCBsZXQn
cyByZW1vdmUgaXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRo
YXQuY29tPgoKYWNrCgo+IC0tLQo+ICBzcGljZS9zcGljZS13ZWJkYXZkLmMgfCAxOSArKysrKysr
LS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBiL3NwaWNlL3Nw
aWNlLXdlYmRhdmQuYwo+IGluZGV4IGM3N2M4NzAuLjI5MDU4ZTcgMTAwNjQ0Cj4gLS0tIGEvc3Bp
Y2Uvc3BpY2Utd2ViZGF2ZC5jCj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gQEAgLTcz
OCwxMiArNzM4LDYgQEAgb3Blbl9tdXhfcGF0aCAoY29uc3QgY2hhciAqcGF0aCkKPiAgI2lmZGVm
IEdfT1NfV0lOMzIKPiAgI2RlZmluZSBNQVhfU0hBUkVEX0ZPTERFUl9OQU1FX1NJWkUgNjQKPiAg
I2RlZmluZSBNQVhfRFJJVkVfTEVUVEVSX1NJWkUgMwo+IC10eXBlZGVmIGVudW0gX01hcERyaXZl
RW51bQo+IC17Cj4gLSAgTUFQX0RSSVZFX09LLAo+IC0gIE1BUF9EUklWRV9UUllfQUdBSU4sCj4g
LSAgTUFQX0RSSVZFX0VSUk9SCj4gLX0gTWFwRHJpdmVFbnVtOwo+Cj4gIHR5cGVkZWYgc3RydWN0
IF9NYXBEcml2ZURhdGEKPiAgewo+IEBAIC04MjgsNyArODIyLDcgQEAgbmV0cmVzb3VyY2VfZnJl
ZShORVRSRVNPVVJDRSAqbmV0X3Jlc291cmNlKQo+ICAgIGdfZnJlZShuZXRfcmVzb3VyY2UtPmxw
UmVtb3RlTmFtZSk7Cj4gIH0KPgo+IC1zdGF0aWMgTWFwRHJpdmVFbnVtCj4gK3N0YXRpYyBndWlu
dDMyCj4gIG1hcF9kcml2ZShjb25zdCBnY2hhciBkcml2ZV9sZXR0ZXIpCj4gIHsKPiAgICBORVRS
RVNPVVJDRSBuZXRfcmVzb3VyY2U7Cj4gQEAgLTg0MSwxNiArODM1LDE3IEBAIG1hcF9kcml2ZShj
b25zdCBnY2hhciBkcml2ZV9sZXR0ZXIpCj4gICAgaWYgKGVycm4gPT0gTk9fRVJST1IpCj4gICAg
ICB7Cj4gICAgICAgIGdfZGVidWcgKCJTaGFyZWQgZm9sZGVyIG1hcHBlZCB0byAlYyBzdWNjZXNm
dWxseSIsIGRyaXZlX2xldHRlcik7Cj4gLSAgICAgIHJldHVybiBNQVBfRFJJVkVfT0s7Cj4gICAg
ICB9Cj4gICAgZWxzZSBpZiAoZXJybiA9PSBFUlJPUl9BTFJFQURZX0FTU0lHTkVEKQo+ICAgICAg
ewo+ICAgICAgICBnX2RlYnVnICgiRHJpdmUgbGV0dGVyICVjIGlzIGFscmVhZHkgYXNzaWduZWQi
LCBkcml2ZV9sZXR0ZXIpOwo+IC0gICAgICByZXR1cm4gTUFQX0RSSVZFX1RSWV9BR0FJTjsKPiAr
ICAgIH0KPiArICBlbHNlCj4gKyAgICB7Cj4gKyAgICAgIGdfd2FybmluZyAoIm1hcF9kcml2ZSBl
cnJvciAlZCIsIGVycm4pOwo+ICAgICAgfQo+Cj4gLSAgZ193YXJuaW5nICgibWFwX2RyaXZlIGVy
cm9yICVkIiwgZXJybik7Cj4gLSAgcmV0dXJuIE1BUF9EUklWRV9FUlJPUjsKPiArICByZXR1cm4g
ZXJybjsKPiAgfQo+Cj4gIHN0YXRpYyB2b2lkCj4gQEAgLTkxNSw3ICs5MTAsNyBAQCBtYXBfZHJp
dmVfY2IoR1Rhc2sgKnRhc2ssCj4gICAgICAgICAgICBicmVhazsKPiAgICAgICAgICB9Cj4KPiAt
ICAgICAgaWYgKG1hcF9kcml2ZSAoZHJpdmVfbGV0dGVyKSAhPSBNQVBfRFJJVkVfVFJZX0FHQUlO
KQo+ICsgICAgICBpZiAobWFwX2RyaXZlIChkcml2ZV9sZXR0ZXIpICE9IEVSUk9SX0FMUkVBRFlf
QVNTSUdORUQpCj4gICAgICAgICAgewo+ICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICAgfQo+
IC0tCj4gMi4yMS4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWwKCgoKLS0gCk1hcmMtQW5kcsOpIEx1cmVhdQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
