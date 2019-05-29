Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B49522DD57
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2019 14:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD7B6E0E3;
	Wed, 29 May 2019 12:41:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AD26E2EE
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 12:41:09 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id q186so1911285oia.0
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 05:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xG6tgOgUIA5IUDIYZkqGkpkGYl1kFpgDQZFpR4nq5Ds=;
 b=iCrD4meqnUXlSchx19IPf78DLyK1nn684uPqcZLwgftP8wOeoY7/c2MoHYzIOS7QeY
 GhK9hs2neb6hZ1S+K3eEThajmoicIYOAJj6131kCoFtB7CLDppebu4shPL4zOpw8tvEs
 vdlkhLFvxzDyx9E3OCpF3XSnKg+eYFAd+tnRBPtvVEuxf/Qd5iKRfBNUJXCwpv/lJfBB
 /gS9YW81WXHUZ+OxFrZHzBS7H4enAQfiZXwt5QKJuQObUXSykVNOuGqIqCcnhmjIxfze
 /iIALuaCAkYQz9Cvgi4sjmUNID44xBcKyGvpYA+/95GkzbSEiHC2ObBBeCR7/pnmStLx
 JkGA==
X-Gm-Message-State: APjAAAWR0i1wtoSLqBvPDMC3ikqPgffXr1uLe8UiIjxZlt9Bgac1XH6T
 IIaQlesFQqQGetH3QKZAfeLxa1sCHHUnTZl8IyE=
X-Google-Smtp-Source: APXvYqz/69Ipeo37J9IBpX5/f5rQ4YferLtyH93Fwpn0yDiXTJxMXuLgk2rJnZ98vIvgK8G44KLmuuKTULm/07Cai5o=
X-Received: by 2002:aca:330b:: with SMTP id z11mr411259oiz.148.1559133668970; 
 Wed, 29 May 2019 05:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190529100536.6848-1-fziglio@redhat.com>
In-Reply-To: <20190529100536.6848-1-fziglio@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Wed, 29 May 2019 14:40:57 +0200
Message-ID: <CAJ+F1C+ptaxG8ARSCE6PgSV5YbnSrkJztRQ9PxDrrA9tEPkvFg@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xG6tgOgUIA5IUDIYZkqGkpkGYl1kFpgDQZFpR4nq5Ds=;
 b=qtCPdiievR9mE59pDe+JKF2GPuove8zUDhCw7qMZCQRnWIzQuya4U8ee7LRixUbgT3
 nk2DtqkJtBCRQ5ITI+Ya6QjfTaUtHIgzcJiEPVhvlU8b6KCas2hQ2TYV4TB2ySTiL8lY
 XvGWXJhXxc0cQzhrMe3Uk3p4FXZIoEFG5xmdDyAaVjHQnHti/cOYItUeHo5MS85M5EjE
 U13rLx9Imar34I0Ya4KBRC999bPIxaBmNkx5osO5Po0ll8Kv+D4STP8QB0fApLcFJYEq
 B8qDQl/uXbR2etdcDI8fv4bJrKgJlHiGFex2NDdWckS2xkvlcCGPVg/RUIh34agYcb1y
 0Tvg==
Subject: Re: [Spice-devel] [PATCH spice-gtk] meson: Workaround gtk+ exposing
 Objective C in headers on macOS
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

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMTI6MDUgUE0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gQXBwbHkgdGhlIHNhbWUgd29ya2Fyb3VuZCBpbiAzYzli
MzdiZmM3Yzg4OTY5ZGZlMTZiOGJmZDg3NDc0NWUwZmNlYjhhCj4gZm9yIE1lc29uLgo+Cj4gU2ln
bmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgphY2sKCj4g
LS0tCj4gIG1lc29uLmJ1aWxkIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5idWlsZAo+IGluZGV4
IDhjNjI4OGYzLi40YzA2NWE0MyAxMDA2NDQKPiAtLS0gYS9tZXNvbi5idWlsZAo+ICsrKyBiL21l
c29uLmJ1aWxkCj4gQEAgLTM0MSw2ICszNDEsMTEgQEAgaWYgc3BpY2VfZ3RrX2hhc19ndGsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1ER0RLX1ZFUlNJT05fTUFYX0FMTE9XRUQ9
QDBAJy5mb3JtYXQoZ3RrX2VuY29kZWRfdmVyc2lvbildCj4gIGVuZGlmCj4KPiArIyBXb3JrYXJv
dW5kIGd0aysgZXhwb3NpbmcgT2JqZWN0aXZlIEM6IGh0dHBzOi8vZ2l0bGFiLmdub21lLm9yZy9H
Tk9NRS9ndGsvaXNzdWVzLzE3MzcKPiAraWYgaG9zdF9tYWNoaW5lLnN5c3RlbSgpID09ICdkYXJ3
aW4nCj4gKyAgc3BpY2VfZ3RrX2dsb2JhbF9jZmxhZ3MgKz0gWyctT2JqQyddCj4gK2VuZGlmCj4g
Kwo+ICBhZGRfcHJvamVjdF9hcmd1bWVudHMoY29tcGlsZXIuZ2V0X3N1cHBvcnRlZF9hcmd1bWVu
dHMoc3BpY2VfZ3RrX2dsb2JhbF9jZmxhZ3MpLAo+ICAgICAgICAgICAgICAgICAgICAgICAgbGFu
Z3VhZ2UgOiAnYycpCj4KPiAtLQo+IDIuMjAuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgoKCi0tIApNYXJjLUFuZHLDqSBMdXJl
YXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
