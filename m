Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A79257EF0
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA12D6E558;
	Thu, 27 Jun 2019 09:07:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D3C6E558
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:07:25 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id s4so558188uad.7
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 02:07:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kT4mQSg54c+OjSsx9gI8r0dRhhDCYkXLsr5ROOGytnY=;
 b=bkU6D/hlaJjMDwwuMgM8qGIxvD3JIh69UkSqY4iaBkbIb13S8VodpwFmFpdoUC14/c
 Tkj1bG2F7KcjCrZttrAS0AcNEsrYfwDJycBiwuVFj+jGdLRB71acY5w7FyW26OObixFE
 7hLldML5sHkKtmFbiYXgyjTq6FzpGVC+GXUH+dtu9YveLj/5V3LIsLcmkbDPXOjhbLFk
 1pk6QcARBJt3lkvY6/HS56stmIvw1nM9+AVkSwINaw7da9dIWAxEWZWY52EozmVsHlVl
 JKdirIPAPfKcuXQkhLFQyl9/eRSuiieGaJ7y1tM0oOYSTEvClnpLTczSOUvYi6hwVwjU
 mrcQ==
X-Gm-Message-State: APjAAAXvXGVUtLaiJWRYUlXH2qa1wtVP/QbkgQo8SvUDwApwVub3x1gB
 N1gL2owmP/F+73ex7bAqEkNHtvMGmE+h6uM0i7QF+g==
X-Google-Smtp-Source: APXvYqyr+hVO95H7vY7lpTarlapuuWG5Wr7MtET04rs8iQ+3ApBURrGyQvtj1HDDkdxDUvrD7yJYJ/DPo8vDf5SkUGk=
X-Received: by 2002:a9f:242e:: with SMTP id 43mr1728364uaq.100.1561626444786; 
 Thu, 27 Jun 2019 02:07:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190627083149.23283-1-kpouget@redhat.com>
 <20190627083149.23283-3-kpouget@redhat.com>
 <939129759.24949617.1561624756866.JavaMail.zimbra@redhat.com>
In-Reply-To: <939129759.24949617.1561624756866.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Thu, 27 Jun 2019 11:07:13 +0200
Message-ID: <CADJ1XR1t-RmWsC3600YZbifybENibt4tCypimftSxDjytacX6w@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [RFC spice-common 2/2] ring: allow testing if a
 ring is initialized or not
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMTA6MzkgQU0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gPgo+ID4gLS0tCj4gPiAgY29tbW9uL3JpbmcuaCB8IDUg
KysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2NvbW1vbi9yaW5nLmggYi9jb21tb24vcmluZy5oCj4gPiBpbmRleCA1MDU0MTkzLi5k
NWVhZGVhIDEwMDY0NAo+ID4gLS0tIGEvY29tbW9uL3JpbmcuaAo+ID4gKysrIGIvY29tbW9uL3Jp
bmcuaAo+ID4gQEAgLTUwLDYgKzUwLDExIEBAIHN0YXRpYyBpbmxpbmUgaW50IHJpbmdfaXNfZW1w
dHkoUmluZyAqcmluZykKPiA+ICAgICAgcmV0dXJuIHJpbmcgPT0gcmluZy0+bmV4dDsKPiA+ICB9
Cj4gPgo+ID4gK3N0YXRpYyBpbmxpbmUgaW50IHJpbmdfaXNfaW5pdGlhbGl6ZWQoUmluZyAqcmlu
ZykKPiA+ICt7Cj4gPiArICAgIHJldHVybiByaW5nLT5uZXh0ICE9IE5VTEwgJiYgcmluZy0+cHJl
diAhPSBOVUxMOwo+ID4gK30KPiA+ICsKPiA+ICBzdGF0aWMgaW5saW5lIHZvaWQgcmluZ19hZGQo
UmluZyAqcmluZywgUmluZ0l0ZW0gKml0ZW0pCj4gPiAgewo+ID4gICAgICBzcGljZV9hc3NlcnQo
cmluZy0+bmV4dCAhPSBOVUxMICYmIHJpbmctPnByZXYgIT0gTlVMTCk7Cj4KPiBIaSwKPiAgIGFs
bCB2YXJpYWJsZXMgc2hvdWxkIGJlIGluaXRpYWxpemVkLCBpZiBub3QgSSB3b3VsZAo+IGFib3J0
KCkuCj4gSWYgeW91IHdhbnQgaW5zdGVhZCB0byBjaGVjayBpZiB0aGUgUmluZyBjb250YWlucyBl
bGVtZW50Cj4geW91IGNhbiB1c2UgcmluZ19pc19lbXB0eS4KCkhlbGxvLAoKYXMgZGlzY3Vzc2Vk
IGluIElSQywgdGhlcmUgaXMgYSBidWcgaW4gc3BpY2Utc2VydmVyIHRoYXQgZXhwb3Nlcwp1bmlu
aXRpYWxpemVkIHJpbmcgc3RydWN0dXJlcyB0byBkaXNwbGF5X2NoYW5uZWxfc2V0XyogZnVuY3Rp
b25zLApzbyB0aGlzIHBhdGNoIGJlY29tZXMgdW5uZWNlc3Nhcnkgd2hlbiB0aGUgYnVnIGlzIHNv
bHZlZAoKCktldmluCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
