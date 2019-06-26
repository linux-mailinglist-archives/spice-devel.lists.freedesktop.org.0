Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365255625E
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 08:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7686E286;
	Wed, 26 Jun 2019 06:33:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221BF6E286
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 06:33:04 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id k8so91671iot.1
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 23:33:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RcK8gPIcq4Ygs2V8HkRfGSBjU8zI6kv2tP2n1zTdSWg=;
 b=sPnEx//It+5xmni2BHLyUR3NDWBe2x1QsK9c2kBirsCrBVsXcPJdQ3bMUevZFsKrIP
 C7fAiYab/mrdiPB0EigsyL8B7a3o+Bylmc70uRmse9Mpe6JULTQ2+bg7tgImzzskH/6U
 NgJNeKrgk8ghPWsJTze/LvK2/GBK1JyXJFuIvxNtvXdOblCGMhFkFXOjVPYdJs3fQ+LJ
 oaftw/cTDOhqRt6QajUndV7K8GuixIZYQvUbstTi1+winUZEMYiqN7adAfM9hL/BlMtd
 70PY3dIqIXJ7v6fDODKY1ocgn3yN4TGSaWBWQISP7AKURDcgP6TJh6dTQ9peoZ/lw8lS
 no6g==
X-Gm-Message-State: APjAAAWOrWLwg4xvRnok+Sb2YSLzZhcmF4EhAHrU71TdqoHZKlGrpbwb
 sJybdxzXAgX9GBtDp+BmKIuR2BfpWl1CXPP5Rhvu7w==
X-Google-Smtp-Source: APXvYqxtKuzhqi8lcD+q+fxA1VSxJvsBrWeysdHekgEv/bVmgDwFXTQfcqXCM06fHLavwUXpk+VqlJ75dM4f4SZKbC0=
X-Received: by 2002:a6b:fb10:: with SMTP id h16mr3096164iog.195.1561530783503; 
 Tue, 25 Jun 2019 23:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190625101217.13470-1-fziglio@redhat.com>
 <20190625101217.13470-2-fziglio@redhat.com>
In-Reply-To: <20190625101217.13470-2-fziglio@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 26 Jun 2019 08:32:52 +0200
Message-ID: <CAH=CeiCX_kDUcUXzwMveJQ07aJ8T37Z6oFJC875aSKWa5z1MYg@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH spice-gtk] channel-main: Fix typo in
 comment
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

U3VyZSwKCkFja2VkLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgoKT24gVHVl
LCBKdW4gMjUsIDIwMTkgYXQgMTI6MTMgUE0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+IHdyb3RlOgo+Cj4gZXhwbGljaXRlbHkgLT4gZXhwbGljaXRseQo+Cj4gU2lnbmVkLW9m
Zi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy9j
aGFubmVsLW1haW4uYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtbWFpbi5jIGIvc3JjL2No
YW5uZWwtbWFpbi5jCj4gaW5kZXggMTBjMzFhYzQuLmFmZGMxY2VmIDEwMDY0NAo+IC0tLSBhL3Ny
Yy9jaGFubmVsLW1haW4uYwo+ICsrKyBiL3NyYy9jaGFubmVsLW1haW4uYwo+IEBAIC0xNzU1LDcg
KzE3NTUsNyBAQCBzdGF0aWMgdm9pZCBtYWluX2hhbmRsZV9jaGFubmVsc19saXN0KFNwaWNlQ2hh
bm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaW4pCj4gICAgICAgICAgYy0+c2Vzc2lvbiA9IGdf
b2JqZWN0X3JlZihzZXNzaW9uKTsKPiAgICAgICAgICBjLT50eXBlID0gbXNnLT5jaGFubmVsc1tp
XS50eXBlOwo+ICAgICAgICAgIGMtPmlkID0gbXNnLT5jaGFubmVsc1tpXS5pZDsKPiAtICAgICAg
ICAvKiBubyBuZWVkIHRvIGV4cGxpY2l0ZWx5IHN3aXRjaCB0byBtYWluIGNvbnRleHQsIHNpbmNl
Cj4gKyAgICAgICAgLyogbm8gbmVlZCB0byBleHBsaWNpdGx5IHN3aXRjaCB0byBtYWluIGNvbnRl
eHQsIHNpbmNlCj4gICAgICAgICAgICAgc3luY2hyb25vdXMgY2FsbCBpcyBub3QgbmVlZGVkLiAq
Lwo+ICAgICAgICAgIC8qIG5vIG5lZWQgdG8gdHJhY2sgaWRsZSwgc2Vzc2lvbiBpcyByZWZlZCAq
Lwo+ICAgICAgICAgIGdfaWRsZV9hZGQoKEdTb3VyY2VGdW5jKV9jaGFubmVsX25ldywgYyk7Cj4g
LS0KPiAyLjIwLjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
