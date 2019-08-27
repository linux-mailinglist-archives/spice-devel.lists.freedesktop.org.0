Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 947F09E606
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC2E89A4A;
	Tue, 27 Aug 2019 10:46:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12BD289A4A
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:46:43 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id l2so2511283wmg.0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 03:46:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=AycL2HI0YXxzbz5I6UL6Duym/ak8TjIki0fVVsnSMWc=;
 b=dIGiRc8hOU6Ohff+6tlXPN3MIlcW2ateyNx/GarX/QM3xyEdmCKfz4CtV82R6htexd
 qIEqD1U5TxnfxUE0eeiQ/nKd4EqUBHAIEXD6Sxdi4D198OmIWE8H5pWzFjYKXTmkFAy4
 dRMfUvOkwch7iNoZWn1yPupdSPOWCvAS4w1PZRdQjCkz9F9BAanV8W+auQoXzR7r8bPy
 tQGn3vEeTUREZUOB4DPXALT3k8arLiV0VaumkFN6DC/UA+ZqJDLyIxZf8BHajtgfnFaN
 kcbE9ojWHiwKXwlcx6BlPeBiviTh59rsBjhg9SarmzUtwASLNPTiS7YYifsDGAcKRggQ
 s5tw==
X-Gm-Message-State: APjAAAWuJTgQyUhngS6gZApFY+4e4c2qP20XdEyoI+r8v4lnRbdGI5LN
 d9O63jfOTNXBB3Lcup//Mks94cuF
X-Google-Smtp-Source: APXvYqyfQ3zFe1OgUsXXYDGI1goZ+dz82cV9zmyxYKFq/nkWeQ7lsljwxzFFE98v8N0SEpYvInwYuQ==
X-Received: by 2002:a1c:a701:: with SMTP id q1mr26666025wme.72.1566902801228; 
 Tue, 27 Aug 2019 03:46:41 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:95:eb51:474b:ae6b])
 by smtp.gmail.com with ESMTPSA id x13sm2498221wmj.12.2019.08.27.03.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:46:40 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-27-fziglio@redhat.com> <m1v9uiex4d.fsf@dinechin.org>
 <1129535874.9359015.1566901095222.JavaMail.zimbra@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: Frediano Ziglio <fziglio@redhat.com>
In-reply-to: <1129535874.9359015.1566901095222.JavaMail.zimbra@redhat.com>
Date: Tue, 27 Aug 2019 12:46:37 +0200
Message-ID: <m1r256evhu.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=AycL2HI0YXxzbz5I6UL6Duym/ak8TjIki0fVVsnSMWc=;
 b=tNba12SJcn0k/9qxBk2XRKgsywsn/t28x+i8Ee8+u6wXdSBh7/gwVUXbYHj/THOYAU
 ZZGQ6hFBifQGfBSam8N5O0iskWUvllRxuJEqwTDcafI3vJR0MC59kswJTIfEBQl4+7aT
 QZcRm01VK6pBmIXwWZd5TDUZLpn/NWzE0ivMfX9WSkoGWpj6ub9uO8uj/yi1gwquWznZ
 Jxuw3JyB8q8GHGpZAKwrLtAgEHhLU6a2KXc0RusBO3Rumm8Lu97X4avYZ3ESDHCpRmMe
 2GZCLffCzcN6NzY4YHyzUYFjIHySz3vMVRAUcIiMwrxYSVDmlX4uumKIMqpxpi+oYNm2
 nI+Q==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 26/29] test-cd-emu: Test
 attach/detach emulated device
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
Cc: spice-devel@lists.freedesktop.org,
 Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+Pgo+PiBGcmVkaWFubyBaaWdsaW8gd3JpdGVzOgo+
Pgo+PiA+IE1vY2sgc29tZSB1c2ItYmFja2VuZCBmdW5jdGlvbnMgdG8gYmUgYWJsZSB0byBzaW11
bGF0ZSBkZXZpY2UKPj4gPiBhdHRhY2htZW50IGFuZCBkZXRhY2htZW50Lgo+PiA+ICsKPj4gPiAr
ICAgIC8vIHRoaXMgaXQncyB0aGUgY29ycmVjdCBzZXF1ZW5jZSB0byBmcmVlIHNlc3Npb24hCj4+
ID4gKyAgICAvLyBnX29iamVjdF91bnJlZiBpcyBub3QgZW5vdWdoLCBjYXVzaW5nIHdyb25nIHJl
ZmVyZW5jZSBjb3VudGluZ3MKPj4gPiArICAgIHNwaWNlX3Nlc3Npb25fZGlzY29ubmVjdChzZXNz
aW9uKTsKPj4gPiArICAgIGdfb2JqZWN0X3VucmVmKHNlc3Npb24pOwo+PiA+ICsgICAgd2hpbGUg
KGdfbWFpbl9jb250ZXh0X2l0ZXJhdGlvbihOVUxMLCBGQUxTRSkpIHsKPj4gPiArICAgICAgICBj
b250aW51ZTsKPj4gPiArICAgIH0KPj4KPj4gVGhpcyBsb29rcyBzbyBwZWN1bGlhciB0aGF0IGl0
IG1pZ2h0IGJlIHdvcnRoIHB1dHRpbmcgaW4gaXRzCj4+IG93biBmdW5jdGlvbiwgaW4gb3JkZXIg
dG8gZmFjaWxpdGF0ZSByZXVzZS4KPj4KPgo+IEkgd2FzIHRoaW5raW5nIGFib3V0IGEgRG9FdmVu
dHMgZnVuY3Rpb24gaW4gbWVtb3J5IG9mIHRoZSBnb29kIG9sZCBWQiEKPiAod2VsbCwgZG9fZXZl
bnRzIGluIEMpLgo+IEdldHRpbmcgdGhlc2UgbGluZXMgcmlnaHQgd2FzIG5vdCByZWFsbHkgZWFz
eSEgQ2FsbGluZyBnX29iamVjdF91bnJlZgo+IGRpcmVjdGx5IGNhdXNlcyBtdWx0aXBsZSBjcmFz
aGVzLiBUaGUgZGVhbGxvY2F0aW9ucyBhcmUgcXVldWVkIGluIEdMaWIuCgpJcyB0aGUgcHJvYmxl
bSBzcGVjaWZpYyB0byB0aGlzIHRlc3Q/IElmIHNvLCBtaWdodCBiZSB3b3J0aCBleHBsYWluaW5n
CndoeSwgb3RoZXJ3aXNlIHNvbWVvbmUgbWlnaHQgYnJlYWsgaXQgaW4gdGhlIGZ1dHVyZS4KCj4K
Pj4gPiArCj4+ID4gKyAgICBnX2Fzc2VydF9jbXBpbnQoZ29iamVjdHNfYWxsb2NhdGVkLCA9PSwg
MCk7Cj4+ID4gK30KPj4gPiArCj4+ID4gIHN0YXRpYyB2b2lkCj4+ID4gIHdyaXRlX3Rlc3RfaXNv
KHZvaWQpCj4+ID4gIHsKPj4gPiBAQCAtODcsNiArMjM0LDggQEAgaW50IG1haW4oaW50IGFyZ2Ms
IGNoYXIqIGFyZ3ZbXSkKPj4gPgo+PiA+ICAgICAgZ190ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1l
bXUvc2ltcGxlIiwgR1VJTlRfVE9fUE9JTlRFUigxKSwgbXVsdGlwbGUpOwo+PiA+ICAgICAgZ190
ZXN0X2FkZF9kYXRhX2Z1bmMoIi9jZC1lbXUvbXVsdGlwbGUiLCBHVUlOVF9UT19QT0lOVEVSKDEy
OCksCj4+ID4gICAgICBtdWx0aXBsZSk7Cj4+ID4gKyAgICBnX3Rlc3RfYWRkX2RhdGFfZnVuYygi
L2NkLWVtdS9hdHRhY2hfbm9fYXV0byIsIEdVSU5UX1RPX1BPSU5URVIoMCksCj4+ID4gYXR0YWNo
KTsKPj4gPiArICAgIGdfdGVzdF9hZGRfZGF0YV9mdW5jKCIvY2QtZW11L2F0dGFjaF9hdXRvIiwg
R1VJTlRfVE9fUE9JTlRFUigxKSwKPj4gPiBhdHRhY2gpOwo+PiA+Cj4+ID4gICAgICByZXR1cm4g
Z190ZXN0X3J1bigpOwo+PiA+ICB9Cj4+Cj4KPiBGcmVkaWFubwoKCi0tCkNoZWVycywKQ2hyaXN0
b3BoZSBkZSBEaW5lY2hpbiAoSVJDIGMzZCkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
