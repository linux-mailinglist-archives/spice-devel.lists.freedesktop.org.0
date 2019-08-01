Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 816617DD6B
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 16:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC546E63C;
	Thu,  1 Aug 2019 14:07:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7A06E63B
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 14:07:55 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id k20so144564953ios.10
 for <spice-devel@lists.freedesktop.org>; Thu, 01 Aug 2019 07:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XBlgdQmvo7Mm4GpMwtYEE8ZYxeMOFvxBysarj9B2gjE=;
 b=VqXn6oKu1k6a80sAim3S58iFmqBJkaatHp90MjU707G1jonroCAST6bfRkN2fiFJ1c
 G4ethaO1Dww4tLvv4s3cuS67xDBjq4TrlH3eXOnbPCM1HZriUzDML5XTJMO2SFPFbUYp
 ZzfCSevwjYV3JWlSWB9s3W/vfPkXeuTxgmdygJl6CWMpsOS0Qx5BWXgZIoI27bZmrDoD
 GMeHavTk0Wv/I7pt/iibcKB32Nn/5INKcB0M0+nkizRKjB4Gvoki6V+BxvmTuMuwpnnV
 yXGQOl7a5eDX9tLr/gE05EdokrexmZR5QIbHjIxg68DqW8XQfV7wMuWrRofdma7b/m7v
 BOsg==
X-Gm-Message-State: APjAAAVP0T8HBs3xeZeYmS+kUjFOOshN9AINFBELtqtF5qJ7sMDqw6wR
 hrRkpSTa2QV6yCtB/DUxliT/LErbGmcnDq2xTeA=
X-Google-Smtp-Source: APXvYqxkPe6wJlun//fczkt/oqbyGPV63SvnPV5+OEmEaX703WwVjKjJxiAMvnGehp9UHt67flqHzoMZ05oHh6D7oVQ=
X-Received: by 2002:a6b:b593:: with SMTP id
 e141mr125092146iof.203.1564668474603; 
 Thu, 01 Aug 2019 07:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-2-yuri.benditovich@daynix.com>
 <204769724.2953329.1564045041460.JavaMail.zimbra@redhat.com>
 <CAOEp5Oc5GC+BhK=HL+WS5DTCBfCsVr6H3YDbYgvO4YQZJurL2A@mail.gmail.com>
 <777209713.3089366.1564130635969.JavaMail.zimbra@redhat.com>
 <CAOEp5OcBD366t2PHc8qeYV=QkKvt65zzDc4ab56zmUGtJtZWfA@mail.gmail.com>
 <433757118.3144474.1564149287411.JavaMail.zimbra@redhat.com>
 <CAOEp5Od-KEvT-0sMBk-bjOrMZrZPOmxZyQeuRC5q8gOGJZbPnQ@mail.gmail.com>
 <1146698358.3277497.1564387410643.JavaMail.zimbra@redhat.com>
 <CAOEp5OcsjL=phuv8mR1yd=Mh07gun+mu3bdnSf_JXf=J6L+kyg@mail.gmail.com>
 <20190801122620.vxkl6edc5viwmb7v@wingsuit>
In-Reply-To: <20190801122620.vxkl6edc5viwmb7v@wingsuit>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 1 Aug 2019 17:07:41 +0300
Message-ID: <CAOEp5OcQsiOn75WEJfaYn4BNYSBh2oDsQ2mh615uNpaVEjGYjw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=XBlgdQmvo7Mm4GpMwtYEE8ZYxeMOFvxBysarj9B2gjE=;
 b=AM7csk2nLkNqqa1Dg6Mk+vOgBZFwZ2sSEMihKWcrTfzQpzr4vBifX0loDGQQaP1N4N
 E8rFNl3My/jcPLe1L9YZklxBAFJI/q5WDcNKm8yFbCkgAj7ygIzqT0Qf8ZemFr3Ft3IN
 R4Mjr8lNPyX1UAraPfw9ugBg+mWQ1JVTCebw/kAcKfoPjPAVMpchRcz8a+p87ar3LrWa
 P7zl3zow5p5DO8PxdMO8opXeeNPp5SwdsCypGDCCdNdvfYdQnmptSLq/EKhIxzMZ7EkF
 bNhAxVxZJGQUiF50Matj8Tc5r1vEHg/lzVpd3vBT4AO73zkhoqK67cljmcfcrA0p3t2H
 4FMw==
Subject: Re: [Spice-devel] [spice-gtk 1/9] usb-redir: define interfaces to
 support emulated devices
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMSwgMjAxOSBhdCAzOjI2IFBNIFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBNb24sIEp1bCAyOSwgMjAxOSBhdCAxMjoy
NjoxMVBNICswMzAwLCBZdXJpIEJlbmRpdG92aWNoIHdyb3RlOgo+ID4gT24gTW9uLCBKdWwgMjks
IDIwMTkgYXQgMTE6MDMgQU0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4gPiBXaGF0IGRvZXMgaXQgbWVhbnM/IFRoZSBjb2RlIGNhbm5vdCBiZSBpbXByb3Zl
ZCBiZWZvcmUgYmVpbmcKPiA+ID4gbWVyZ2VkPyAgSXQgZG9lcyBub3Qgc2VlbSBzbyBjcmF6eSBj
aGFuZ2UgdG8gbWFrZSB0byBtZS4gIEFzCj4gPiA+IEkgc2FpZCBtdWx0aXBsZSB0aW1lIEkgY2Fu
IGRvIHRoYXQgY2hhbmdlIGFuZCBzZW5kIGFzIGZvbGxvdwo+ID4gPiB1cC4KPiA+Cj4gPiBJZiB0
aGlzIGhlbHAgdXMgbW92aW5nIGZvcndhcmQsIHBsZWFzZSBkbyB0aGF0Lgo+Cj4gT2theSwgSSdt
IHN0aWxsIHJlYWRpbmcgdGhlIGJhY2tsb2cgZnJvbSB0aGUgcGFzdCBmZXcgZGF5cy4gV291bGQK
PiBiZSBnb29kIHRvIGhhdmUgYSBmcmVzaCBwYXRjaCBzZXJpZXMgd2l0aCBhbGwgdGhlIGZpeHVw
L2ZvbGxvdy11cAo+IHBhdGNoZXMgaW5jbHVkZWQgdG8gcmV2aWV3IHdpdGggYWdyZWVkIGNoYW5n
ZXMgb3IgZGlmZmVyZW50Cj4gYXBwcm9hY2ggaW5jbHVkZWQuCgpJJ2xsIHNlbmQKCj4KPiA+IE15
IGludGVyZXN0IGlzIGp1c3QgaGF2ZSBpdCBtZXJnZWQgZmFzdGVyLgo+Cj4gV2UgYWxsIHdhbnQg
dGhpcyBtZXJnZWQgYW5kIG1vdmUgb24sIG5vIG5lZWQgdG8ga2VlcCByZXBlYXRpbmcKPiB0aGF0
LiBJIGtub3cgaXQgdG9vayBxdWl0ZSBzb21lIHRpbWUgdG8gc3RhcnQgYnV0IGl0IGhhcyBiZWVu
Cj4gcXVpdGUgYWN0aXZlIGRpc2N1c3Npb24sIGRvZXNuJ3QgbWVhbiB0aGF0IHdlIHNob3VsZCBq
dXN0IG1lcmdlCj4gaXQgYXMgaXMgYmVjYXVzZSB3ZSB3YW50IHRvIG1vdmUgb24uLi4KPgo+IENo
ZWVycywKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
