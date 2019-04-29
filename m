Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCFEE513
	for <lists+spice-devel@lfdr.de>; Mon, 29 Apr 2019 16:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98B889259;
	Mon, 29 Apr 2019 14:44:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-it1-x143.google.com (mail-it1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE1389259
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 14:44:53 +0000 (UTC)
Received: by mail-it1-x143.google.com with SMTP id a190so16534051ite.4
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 07:44:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1XMGdoAytJZYLIEjS5YuwMYRgJWQI6ikHtyLu0eBdrg=;
 b=TmJID3CewaHxyZDIQpaumCWRSuR8DMzbrT26NSBTKSXeDdOeinwiYn3sfB8wcy6aPE
 HkOZ++suf/23EpF6ohR8fnNm6DHyrE6vNGY/0igZTHkxqjypHvjG7RghrPFk45RJ2bEc
 7CBe5SGE9t6/mWoh+5B2IvinOQHnQKR+Fx4cQbPKXDL4OJ+7Lhx3f47xXyU5sh2ixKKd
 S982dVj2tuFBlbxr5YwWBJ4ZRjBaX+cIm4SY22OZZsFOb4/bTOp+DHj36wyFK1+nVNKd
 6aptsov+tlpSpwscMiKFJKut3xrFAmxbazpHBay6ng+gOaLcsgT4Ae/ZQcis9vLtE3bL
 EVYQ==
X-Gm-Message-State: APjAAAXEEPhhMP6S9JBo8/FBf/agl+2VaEptx7vzWsWD2l8vrDQ5iv8o
 wIDjGxptSLiKdH4/nhG23DEkebuJcydrl95mewSmyhU8
X-Google-Smtp-Source: APXvYqyC+k0ZQbGHt6LZUZL+iV+YTOgPi+kmdEsi7UKxu3MuNzurrBR7OzXmdy7mQ47RnHA3m349CFEdQv66aJzM/2c=
X-Received: by 2002:a24:6f48:: with SMTP id x69mr5454748itb.117.1556549092746; 
 Mon, 29 Apr 2019 07:44:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190426053324.26443-1-kraxel@redhat.com>
 <CAKMK7uG+vMU0hqqiKAswu=LqpkcXtLPqbYLRWgoAPpsQQV4qzA@mail.gmail.com>
 <20190429075413.smcocftjd2viznhv@sirius.home.kraxel.org>
 <CAKMK7uFB8deXDMP9cT634p_dK5LsM37R1v_vGhAEY1ZLZ+WBVA@mail.gmail.com>
 <20190429143757.yljjfsgobhi23xnb@sirius.home.kraxel.org>
In-Reply-To: <20190429143757.yljjfsgobhi23xnb@sirius.home.kraxel.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 29 Apr 2019 16:44:40 +0200
Message-ID: <CAKMK7uE_+-pFuVrqznj9ZbRxwyNM9mRhoY-y4xCBjjY9Z-sNDg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=1XMGdoAytJZYLIEjS5YuwMYRgJWQI6ikHtyLu0eBdrg=;
 b=ebLoXPCvsVtjVKlYnuDaoE/vTcZEjFgtCNZy/GJ9RM7CqdGpbdNpyJ/MGlHiTn8mwU
 cNsqm35xFbA0XbkywCTWXXW+87WMdZDdAr99EbknWBCCfipowQkXrsgbO/O6/TKeHRKm
 YCZ4hxNICRW4XSQ9d5gCdAf72YEQsAM9IZEJc=
Subject: Re: [Spice-devel] [PATCH] Revert "drm/qxl: drop prime import/export
 callbacks"
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 David Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgNDozOCBQTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiAgIEhpLAo+Cj4gPiA+IE1vcmUgdXNlZnVsIHdvdWxkIGJlIHNv
bWUgd2F5IHRvIHNpZ25hbCB0aGlzIHNlbGYtcmVpbXBvcnQgY2FwYWJpbGl0eQo+ID4gPiB0byB1
c2Vyc3BhY2Ugc29tZWhvdy4gIFNlZSBEUk1fUFJJTUVfQ0FQX0xPQ0FMIHBhdGNoLgo+ID4KPiA+
IFVzZXJzcGFjZSBpcyBzdXBwb3NlZCB0byB0ZXN0IHdoZXRoZXIgaW1wb3J0L2V4cG9ydCB3b3Jr
cyBmb3IgYQo+ID4gc3BlY2lmaWMgY29tYm8sIG5vdCBibGluZGx5IGFzc3VtZSBpdCBkb2VzIGFu
ZCB0aGVuIGtlZWwgb3Zlci4gSSB0aGluawo+ID4gd2UgbmVlZCB0byBmaXggdGhhdCwgbm90IGFk
ZCBtb3JlIGZsYWdzIC0gdGhlcmUncyBsb3RzIG9mIHJlYXNvbnMgd2h5Cj4gPiBhIGdpdmVuIHBh
aXIgb2YgZGV2aWNlcyBjYW4ndCBzaGFyZSBidWZmZXJzIChlLmcuIGFsbCB0aGUgY29udGlndW91
cwo+ID4gYWxsb2NhdGlvbnMgc3R1ZmYgb24gc29jcykuCj4KPiBPay4gIExldHMgc2NyYXRjaCB0
aGUgRFJNX1BSSU1FX0NBUF9MT0NBTCBpZGVhIHRoZW4gYW5kIGJsYW1lIHVzZXJzcGFjZQo+IGlu
c3RlYWQuCj4KPiA+ID4gUmlnaHQgbm93IEkgaGF2ZSB0aGUgY2hvaWNlIHRvIHNldCBEUk1fUFJJ
TUVfQ0FQX3tJTVBPUlQsRVhQT1JUfSwgaW4KPiA+ID4gd2hpY2ggY2FzZSBzb21lIHVzZXJzcGFj
ZSBhc3N1bWVzIGl0IGNhbiBkbyBjcm9zcy1kcml2ZXIgZXhwb3J0L2ltcG9ydAo+ID4gPiBhbmQg
dHJpcHMgb3ZlciB0aGF0IG5vdCB3b3JraW5nLiAgT3IgSSBkbyBub3Qgc2V0Cj4gPiA+IERSTV9Q
UklNRV9DQVBfe0lNUE9SVCxFWFBPUlR9LCB3aGljaCBicmVha3MgRFJJMyAuLi4KPiA+Cj4gPiBZ
ZWFoIHRoYXQncyBub3QgYW4gb3B0aW9uLgo+Cj4gR29vZC4gIENhbiBJIGdldCBhbiBhY2sgZm9y
IHRoaXMgcGF0Y2ggdGhlbiwgYXMgaXQgdW5icmVha3MgRFJJMyB3aXRoIHF4bD8KCk9oIHN1cmUs
IGFja2VkLWJ5OiBtZS4gU29ycnkgZm9yZ290IHRvIHN1cHBseSB0aGF0IC4uLgotRGFuaWVsCi0t
IApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEg
KDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
