Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E14C8CA10F
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 17:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206D06EA15;
	Thu,  3 Oct 2019 15:19:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C126EA0B
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 15:11:58 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 4a41f523
 for <spice-devel@lists.freedesktop.org>;
 Thu, 3 Oct 2019 14:25:08 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 2272b16f
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <spice-devel@lists.freedesktop.org>;
 Thu, 3 Oct 2019 14:25:08 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id t84so2894129oih.10
 for <spice-devel@lists.freedesktop.org>; Thu, 03 Oct 2019 08:11:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWy1AaJu51q/0p1nELpWjy4ZZvP9PhLmer2PU0n8irV1q9kVDvT
 c4L0bmJ0MVYwd+qTab4YhHLa3G4n6HoKgKKuJw0=
X-Google-Smtp-Source: APXvYqz9tTyjmQLesme/JbVnV5Tp6A8nA5aUGGO8MXPkc8hETcot5eYP0fmeJII3bEIA9Hi75M4uKSJ7rSPKnQRfIno=
X-Received: by 2002:aca:cd58:: with SMTP id d85mr2960761oig.119.1570115514189; 
 Thu, 03 Oct 2019 08:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
 <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
In-Reply-To: <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 3 Oct 2019 17:11:41 +0200
X-Gmail-Original-Message-ID: <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
Message-ID: <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
To: uril@redhat.com
X-Mailman-Approved-At: Thu, 03 Oct 2019 15:19:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com;
 h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=zWp2SLmHsEjIpzkN28C7Vm6vBh0=; b=YvHeEq
 M9x6ig/iGzVN/3Cag/xkgtqrP7b1gByUGXtdxYFkaRtnObO+KvaPqVzgTXYnCrSf
 aQc30hP+fqwxuPyWI+l9HfcQFYwjLc+QIKZzg+9O+AoqSTWOMCRTaZxm5wbTUB9p
 YuK1d0alUbsto8nFkAqnvSk6r7I6J0R8F6MEiCb0b0qp+U17ubnuQIFhIXC7EhJu
 j/FLSaCyFoaSANt7DbHyCFRnysJGxHMSd89HJyX5WnRduJ+Js+88qrn9ud/H4LKC
 woG6WrPH8iq3qtBcf/QewyhbMigH93Fi7b3h6xk5OG2ro/3jgQv/ORnB6OOmW1yk
 9azzfTUjnGG3TKkQ==
Subject: Re: [Spice-devel] regression from 0.14.0 -> 0.14.2 in screen
 resizing
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

T24gVGh1LCBPY3QgMywgMjAxOSBhdCA1OjEwIFBNIFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEkganVzdCB0ZXN0ZWQgdjAuMTQuMCBhbmQgcmVzb2x1dGlv
biBjaGFuZ2Ugd29ya3MgZm9yIG1lIChXaW5kb3dzIDcgeDY0LAo+IHJlbW90ZS12aWV3ZXIpLgoK
VGhpcyBpcyB3aHkgSSBzcGVjaWZpZWQgdGhhdCBpdCBmYWlscyBpbiAwLjE0LjIuCgo+IFdoYXQg
ZHJpdmVyIGlzIGluc3RhbGxlZCBvbiB0aGUgZ3Vlc3QgPwpUaGUgdXN1YWwgb25lcyBmcm9tIHRo
ZSBzcGljZSB3ZWJzaXRlLgoKPiBJcyBzcGljZS12ZGFnZW50IHNlcnZpY2UgcnVubmluZyA/Clll
cy4KCj4gSWYgeW91IGNoYW5nZSByZXNvbHV0aW9uIGZyb20gd2l0aGluIHRoZSBndWVzdCBkb2Vz
IHRoYXQgd29yawo+IChDb250cm9sIFBhbmVsIC0+IERpc3BsYXkgLT4gQWRqdXN0IFJlc29sdXRp
b24sCj4gICBvciBzaW1wbHkgcmlnaHQtY2xpY2sgb24gdGhlIGRlc2t0b3AgLT4gU2NyZWVuIHJl
c29sdXRpb24pPwpXZWlyZCBiZWhhdmlvciBhcyBkZXNjcmliZWQuCgpKYXNvbgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
