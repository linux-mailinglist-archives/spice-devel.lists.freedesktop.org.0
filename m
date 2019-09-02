Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED417A5B87
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7F3899DE;
	Mon,  2 Sep 2019 16:48:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32401899DE
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:48:15 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t16so14672089wra.6
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Sep 2019 09:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=jMnYSsi5Dda4cl1cbDRkSPi3xHYwyBDweQSFKFocTmo=;
 b=LQz9n9hhyJzr+GL1dbp0DRvUDRfOGnIZK7lVfUCQhSumjW1bBrd2hTlkoZ+crN3Rsj
 cCmH4qn4y025qd653G2H6xL5IOBswdNEQWHFqyERr+WSa6w4rEpLAspUAFdOxa6a7wyi
 FOQnnkFCTTimhXsqts3VlKBdrlUsQjJ6OhdCVbMrVkTRs6NAZknCQsnmtOkeGRaqSKQi
 ZoTBGE+aCsdr/Kg/6U/EYEVeyl0qaa2FQy1RURLdmgt1IkbRGS2Ah2PlhiYw/Z/WXdUv
 nxqlAfBLXqpUh3+3fKQx1Sqqqr0QE9HkYQ4oQ4Ph3ZOdk24jW5OGEKo0qbG5EsBkzUMd
 PTyA==
X-Gm-Message-State: APjAAAUHA42iYFrZKwXeiDleripAWvwoNH362hjM6NLUYh0C91Ug4suH
 99vWIgC1ZCkPWMYRdGryhhrZAYPL
X-Google-Smtp-Source: APXvYqwtjhtcl07MvrbZZbJa23XsFKZt1Tr1q1BhSYEmLruVYEa3c715b/fnmq4geRoQOX66sKjNgA==
X-Received: by 2002:a5d:460e:: with SMTP id t14mr39363166wrq.171.1567442893407; 
 Mon, 02 Sep 2019 09:48:13 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:f923:6659:6fb5:b8])
 by smtp.gmail.com with ESMTPSA id j26sm6791940wrd.2.2019.09.02.09.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 09:48:12 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-13-fziglio@redhat.com> <m1r254do9g.fsf@dinechin.org>
 <661488671.10116392.1567095402596.JavaMail.zimbra@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: Frediano Ziglio <fziglio@redhat.com>
In-reply-to: <661488671.10116392.1567095402596.JavaMail.zimbra@redhat.com>
Date: Mon, 02 Sep 2019 18:48:11 +0200
Message-ID: <m1imqa1w6s.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=jMnYSsi5Dda4cl1cbDRkSPi3xHYwyBDweQSFKFocTmo=;
 b=hU8pnuqylQaP+xbIpjDNkjMIV4/8kGv691lmE67a35oq44dQPZEt/FzrdEN20L/Kdm
 ozqQyyd2LvvFJKQ/3UEpnWKN9QDzT084oI3az+biL2r5ZoHSXBKlD/dgyIDNVcw6c8Ps
 wq0TLU1byN2ZLUxnCTll+bxG0es1rP23iUBeakCQhZDIuyTs39IGZ7d1MVH3WB+CJguM
 lZ6yZvlIRlriPfmOWBB4Xbt+szqNPbLVCI5UBrz7gbHn4M55dGWvpTKuweYw7LULMf/k
 XyC9nxmZf7nhbVd2tdgaVGcEjfOIHEk3tOnDLAUqxVx1LQE+L1yB0RIcxHWrQJ4i/EpR
 bbgA==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 12/29] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+PiBGcmVkaWFubyBaaWdsaW8gd3JpdGVzOgo+Pgo+
PiA+IERvIG5vdCB1c2UgR19HVUlOVDMyX0ZPUk1BVC4KPj4gPiBXZSBzdXBwb3J0IGEgbWluaW11
bSBvZiAzMiBiaXQgYXJjaGl0ZWN0dXJlcy4KPj4KPj4gV2hhdCB3YXMgd3Jvbmcgd2l0aCB0aGUg
b2xkIGNvZGU/Cj4+Cj4KPiBTaG9ydGVyIGFuZCBlYXNpZXIgdG8gcmVhZC4gSSBtZWFuICcldScg
YW5kICclIiBHX0dVSU5UMzJfRk9STUFUICInLAo+IGlmIHlvdSBoYXZlIGFuIGlzc3VlIGlzIGhh
cmRlciB0byBnZXQgaXQuCj4gRm9yIGluc3RhbmNlIGl0IHdhcyBoYXJkIHRvIHNwb3QgdGhlIG1p
c2xlYWRpbmcgJzB4JSIgR19HVUlOVDMyX0ZPUk1BVCAiJwo+IHdoaWNoIGdvdCAnMHgldScgc28g
MTAwIHdvdWxkIGJlIGZvcm1hdHRlZCBhcyAweDEwMCB3aGljaCBJIHdvdWxkIHJlYWQKPiBhcyAy
NTYsIG5vdCAxMDAuCgpBaCwgSSBjYW4gdW5kZXJzdGFuZCBob3cgdGhpcyBjb3VsZCBoYXZlIGJl
ZW4gaGFyZCB0byBmaW5kLgoKU3RpbGwsIGV2ZW4gaWYgSSBub3cgdW5kZXJzdGFuZCB3aGVyZSB5
b3UgY29tZSBmcm9tLCBhbmQgZXZlbiBpZiBJIGtub3cKdGhhdCB5b3VyIHBhdGNoIGRvZXMgbm90
IHJlYWxseSBodXJ0IGluIHByYWN0aWNlIGdpdmVuIHdoYXQgaXMgY3VycmVudGx5Cmtub3duIG9m
IHRoZSBzdXBwb3J0IHBsYXRmb3JtcywgSSBzdGlsbCBzZWUgdGhhdCBwYXRjaCBhcyBnb2luZyBz
b21ld2hhdAppbiB0aGUgd3JvbmcgZGlyZWN0aW9uIGFzIGZhciBhcyBwb3J0YWJpbGl0eSBiZXN0
IHByYWN0aWNlcyBhcmUgY29uY2VybmVkLgoKUmV2aWV3ZWQtYnV0LW5vdC1lbnRpcmVseS1hcHBy
b3ZlZC1ieTogQ2hyaXN0b3BoZSBkZSBEaW5lY2hpbiA8ZGluZWNoaW5AcmVkaGF0LmNvbT4KCj4K
Pj4gSWYgeW91IHdhbnQgdG8gZ2V0IHJpZCBvZiBHXyBtYWNybyBkZXBlbmRlbmNpZXMsIHdoeSBu
b3QgdXNlIFBSSXUzMj8KPj4KPgo+IE5vLCBHXyBtYWNyb3MgYXJlIGZpbmUsIGFsc28gdGFraW5n
IGludG8gYWNjb3VudCB0aGF0IFBSSXU2NCBhbmQgR19HVUlOVDY0X0ZPUk1BVAo+IGNvdWxkIGJl
IGRpZmZlcmVudCAoZm9yIGluc3RhbmNlIGluIFdpbmRvd3MpIGFuZCB0aGF0IHRoZSByZWNlaXZp
bmcgZm9ybWF0dGluZwo+IGZ1bmN0aW9uIGFjY2VwdHMgYmV0dGVyIHRoZSBHXyB2ZXJzaW9uICh0
aGV5IGFyZSBHTGliKS4KClRoaXMgY29tbWVudCwgd2hpbGUgaXQgcmVpbmZvcmNlcyB5b3VyIHJh
dGlvbmFsZSwgbWFkZSBtZSBleHRyZW1lbHkgc2FkCjstKQoKCi0tCkNoZWVycywKQ2hyaXN0b3Bo
ZSBkZSBEaW5lY2hpbiAoSVJDIGMzZCkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
