Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3995DD48
	for <lists+spice-devel@lfdr.de>; Mon, 29 Apr 2019 09:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C6589292;
	Mon, 29 Apr 2019 07:58:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-it1-x142.google.com (mail-it1-x142.google.com
 [IPv6:2607:f8b0:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA1F89292
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 07:58:27 +0000 (UTC)
Received: by mail-it1-x142.google.com with SMTP id x132so14901104itf.2
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Apr 2019 00:58:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UeOi90RYK8x7ozYD+9mGxr1il4jAoIstt7bREKCu3cA=;
 b=ePncUDiRAH/hHU0rRHgSNni8kaC6Ff4+VqB8YQjcgZ1IqJFpXIpZK/DDKolGk1P34d
 d8dGb7kxhDbUihcOY2MT8sljdN8sSB1m7/jqjNzpqdnqc4DzDgUMuKcwXv0s/87+Fo2u
 +7Jg+Ww0w5tYLnhHfHuiQUf4ua9DTKijjP0BTizhLC0545+jot4aHZxhBJD6lXUUZf0Z
 1YFW/XHQuiDykCYyEf62XhNbrjG4ZcqR9ObCTid/02skpIWJaMiZ0EqsBrGgY3kG5Eyt
 nWvNrvXenVkBDwRwFu8aIwtD8X7p2SW1sdsDZUeErb80/bY9N663CdgLDtSdQ2mXWq64
 Hxkg==
X-Gm-Message-State: APjAAAXLp/YLVaXnZ7+FkIwqMPG51WPjn2fWST20CIf2o6I3t+UemK8H
 xlOll3WgQv15Z2F+N6MVyLNkvIzis+MSXT5hH5GxE+59
X-Google-Smtp-Source: APXvYqzsp6G7y3NwOVHRY09+SdwkQewuFMAtJSUys7eWw4XEfjH4ln4GMV5tBZs2ifQs0xWG/14owrutG4AoiC3M114=
X-Received: by 2002:a02:a394:: with SMTP id y20mr19482883jak.96.1556524706956; 
 Mon, 29 Apr 2019 00:58:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190426053324.26443-1-kraxel@redhat.com>
 <CAKMK7uG+vMU0hqqiKAswu=LqpkcXtLPqbYLRWgoAPpsQQV4qzA@mail.gmail.com>
 <20190429075413.smcocftjd2viznhv@sirius.home.kraxel.org>
In-Reply-To: <20190429075413.smcocftjd2viznhv@sirius.home.kraxel.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 29 Apr 2019 09:58:14 +0200
Message-ID: <CAKMK7uFB8deXDMP9cT634p_dK5LsM37R1v_vGhAEY1ZLZ+WBVA@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=UeOi90RYK8x7ozYD+9mGxr1il4jAoIstt7bREKCu3cA=;
 b=D8ZGXuNPj9TpGPOtq1s2SfKPo8/hGGiu/RdCPTwWh9MfYk3OL8KyrOZNnRvCz92Rb2
 d0PMJUqsi8lwo6mK4r6I+8T+rcP2qoGPi52PcZkxlJ3J4OwpJ9igf36ba1TNmUPvpj5b
 QhnTTh0tqGm70lA32HYjSGl8FLFMHP2IhsoxU=
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
 <virtualization@lists.linux-foundation.org>, David Airlie <airlied@redhat.com>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgOTo1NCBBTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEFwciAyNiwgMjAxOSBhdCAwNDoyMTozN1BNICsw
MjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gRnJpLCBBcHIgMjYsIDIwMTkgYXQgNzoz
MyBBTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IFRoaXMgcmV2ZXJ0cyBjb21taXQgZjRjMzRiMWUyYTM3ZDU2NzYxODA5MDFmYTZmZjE4OGJjYjYz
NzFmOC4KPiA+ID4KPiA+ID4gU2ltbGlhciB0byBjb21taXQgYTBjZWNjMjNjZmNiIFJldmVydCAi
ZHJtL3ZpcnRpbzogZHJvcCBwcmltZQo+ID4gPiBpbXBvcnQvZXhwb3J0IGNhbGxiYWNrcyIuICBX
ZSBoYXZlIHRvIGRvIHRoZSBzYW1lIHdpdGggcXhsLAo+ID4gPiBmb3IgdGhlIHNhbWUgcmVhc29u
cyAoaXQgYnJlYWtzIERSSTMpLgo+ID4gPgo+ID4gPiBEcm9wIHRoZSBXQVJOX09OX09OQ0UoKS4K
PiA+ID4KPiA+ID4gRml4ZXM6IGY0YzM0YjFlMmEzN2Q1Njc2MTgwOTAxZmE2ZmYxODhiY2I2Mzcx
ZjgKPiA+ID4gU2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+
Cj4gPgo+ID4gTWF5YmUgd2UgbmVlZCBzb21lIGhlbHBlcnMgZm9yIHZpcnR1YWwgZHJpdmVycyB3
aGljaCBvbmx5IGFsbG93Cj4gPiBzZWxmLXJlaW1wb3J0IGFuZCBub3RoaW5nIGVsc2UgYXQgYWxs
Pwo+Cj4gVGhlIGN1cnJlbnQgZ2VtIHByaW1lIGhlbHBlcnMgaGFuZGxlIHRoaXMgcmVhc29uYWJs
ZSB3ZWxsLAo+IEkgZG9uJ3Qgc2VlIGEgbmVlZCBmb3IgdGhhdC4KPgo+IE1vcmUgdXNlZnVsIHdv
dWxkIGJlIHNvbWUgd2F5IHRvIHNpZ25hbCB0aGlzIHNlbGYtcmVpbXBvcnQgY2FwYWJpbGl0eQo+
IHRvIHVzZXJzcGFjZSBzb21laG93LiAgU2VlIERSTV9QUklNRV9DQVBfTE9DQUwgcGF0Y2guCgpV
c2Vyc3BhY2UgaXMgc3VwcG9zZWQgdG8gdGVzdCB3aGV0aGVyIGltcG9ydC9leHBvcnQgd29ya3Mg
Zm9yIGEKc3BlY2lmaWMgY29tYm8sIG5vdCBibGluZGx5IGFzc3VtZSBpdCBkb2VzIGFuZCB0aGVu
IGtlZWwgb3Zlci4gSSB0aGluawp3ZSBuZWVkIHRvIGZpeCB0aGF0LCBub3QgYWRkIG1vcmUgZmxh
Z3MgLSB0aGVyZSdzIGxvdHMgb2YgcmVhc29ucyB3aHkKYSBnaXZlbiBwYWlyIG9mIGRldmljZXMg
Y2FuJ3Qgc2hhcmUgYnVmZmVycyAoZS5nLiBhbGwgdGhlIGNvbnRpZ3VvdXMKYWxsb2NhdGlvbnMg
c3R1ZmYgb24gc29jcykuCgo+IFJpZ2h0IG5vdyBJIGhhdmUgdGhlIGNob2ljZSB0byBzZXQgRFJN
X1BSSU1FX0NBUF97SU1QT1JULEVYUE9SVH0sIGluCj4gd2hpY2ggY2FzZSBzb21lIHVzZXJzcGFj
ZSBhc3N1bWVzIGl0IGNhbiBkbyBjcm9zcy1kcml2ZXIgZXhwb3J0L2ltcG9ydAo+IGFuZCB0cmlw
cyBvdmVyIHRoYXQgbm90IHdvcmtpbmcuICBPciBJIGRvIG5vdCBzZXQKPiBEUk1fUFJJTUVfQ0FQ
X3tJTVBPUlQsRVhQT1JUfSwgd2hpY2ggYnJlYWtzIERSSTMgLi4uCgpZZWFoIHRoYXQncyBub3Qg
YW4gb3B0aW9uLgotRGFuaWVsCgo+ID4gSSB0aGluayB0aGVyZSdzIHF4bCwgdmlyZ2wsCj4KPiBl
eHBvcnQgaXMgaW1wbGVtZW50ZWQgZm9yIHZpcmdsLCBhbmQgaW1wb3J0IHNob3VsZCBiZSBwb3Nz
aWJsZSB0b28uCj4KPiBxeGwvYm9jaHMgaXMgc2ltbGlhciB0byB2bWdmeCwgaXQgY291bGQgYmUg
ZG9uZSBidXQgZG1hLWJ1ZnMgd291bGQKPiBiYXNpY2FsbHkgYmUgYm91bmNlIGJ1ZmZlcnMgKG5l
ZWQgY29weSBmcm9tL3RvIHZyYW0pIHNvIHByb2JhYmx5IG5vdAo+IHdvcnRoIHRoZSBlZmZvcnQu
Cj4KPiBjaGVlcnMsCj4gICBHZXJkCj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxv
Zy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
