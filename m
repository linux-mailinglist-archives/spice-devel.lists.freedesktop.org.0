Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B97185AB5
	for <lists+spice-devel@lfdr.de>; Sun, 15 Mar 2020 06:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615F96E122;
	Sun, 15 Mar 2020 05:54:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621256EBC3
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 11:17:26 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id 19so10043530ljj.7
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 04:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ghIpRGiQVwJbhKxwoqlN1gAo19Cr4ajPPSiWPX3Momc=;
 b=M5rpR3t9vw3aAFdk8Rj95LtJ5sdgab5t7hG3QQY1cQx8F6TpGcySH69iNNDmyOFJwn
 bjAjxQP4Jb4pmlP2X6mySwbIFdvBHNLEavP/vaUjs8YuL5NkNiaY/p6l1oCma3UFzgr6
 LAWZAn3XL4+z1UW4dkwxcHsNmUphcTi0sQa9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ghIpRGiQVwJbhKxwoqlN1gAo19Cr4ajPPSiWPX3Momc=;
 b=bnfzBRqjLlzBCDCC99LpiObkOMlhb8+NF6se3hErjo2wLCWwpZFtZWZvsyjZymeVca
 gZzlxrlEgwjggt4Hz/Qh9/ly0H8QTMCbgydLycvXmSA/jA3Nh/gNJ6mguW040a0/TBgE
 GgV5QeSiwKQqqBWJgwVnBLTmOIDsmePWWL3kX9pOIDtK224L1jFioWwzglI4mI0nTmyZ
 EcjI+pJMhyaX3EcvblfhTCLqL+41peVlsb80lV22eAD51HzQOoIgcXO3XEPuAJ1O/tdI
 FKYlrt0UQfMbAE01tYRx76rrAhLiKcXe/2PBu/803s4XOgtt0D5AWMOsvpx/5sLQa8wt
 29Sg==
X-Gm-Message-State: ANhLgQ1nBqhk3BlRvWWCBAkxGOrCX/HZJNpWAMYXeE8PxlLbXpdMFE8e
 RKT8FdYfxhhAXYNweuvK3RPVrBzATmb3kA==
X-Google-Smtp-Source: ADFU+vtaZvaNuzKl6mb+WTq7wgVC4QV1osNi9jbxH1gzK3+YUNBfd62c7jwUtdWbagItN61RCQ/M4Q==
X-Received: by 2002:a2e:3a11:: with SMTP id h17mr608105lja.110.1584098243434; 
 Fri, 13 Mar 2020 04:17:23 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id r21sm13482298ljp.29.2020.03.13.04.17.23
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 04:17:23 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id a10so10031361ljp.11
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 04:17:23 -0700 (PDT)
X-Received: by 2002:adf:f545:: with SMTP id j5mr17149866wrp.295.1584097923138; 
 Fri, 13 Mar 2020 04:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <12620787.dW097sEU6C@os-lin-dmo>
 <CAAFQd5BdS2oT+vgM3Qg64wPqWdPRi1uE6ZmOPwXwudv==3JQVA@mail.gmail.com>
 <6194402.K2JlShyGXD@os-lin-dmo>
In-Reply-To: <6194402.K2JlShyGXD@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 13 Mar 2020 12:11:51 +0100
X-Gmail-Original-Message-ID: <CAAFQd5A-ZaTkx8YEdq=Q_KpbmzZ4kGxJ1ju8shXMot9WMytd=w@mail.gmail.com>
Message-ID: <CAAFQd5A-ZaTkx8YEdq=Q_KpbmzZ4kGxJ1ju8shXMot9WMytd=w@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Sun, 15 Mar 2020 05:54:05 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] video_video: Add the Virtio Video
 V4L2 driver
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: David Stevens <stevensd@chromium.org>, virtio-dev@lists.oasis-open.org,
 Alex Lau <alexlau@chromium.org>, kiran.pawar@opensynergy.com,
 Alexandre Courbot <acourbot@chromium.org>, samiullah.khawaja@opensynergy.com,
 dstaessens@chromium.org, Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXIgMTMsIDIwMjAgYXQgMTE6MjcgQU0gRG1pdHJ5IFNlcHAKPGRtaXRyeS5zZXBw
QG9wZW5zeW5lcmd5LmNvbT4gd3JvdGU6Cj4KPiBIaSBUb21hc3osCj4KPiBPbiBGcmVpdGFnLCAx
My4gTcOkcnogMjAyMCAxMTowNTozNSBDRVQgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gPiBPbiBUaHUs
IE1hciAxMiwgMjAyMCBhdCAxMjo0OCBQTSBEbWl0cnkgU2VwcAo+ID4KPiA+IDxkbWl0cnkuc2Vw
cEBvcGVuc3luZXJneS5jb20+IHdyb3RlOgo+ID4gPiBIaSBIYW5zLAo+ID4gPgo+ID4gPiBPbmUg
bW9yZSB0aGluZzoKPiA+ID4gPiBHRlBfRE1BPyBUaGF0J3MgdW51c3VhbC4gSSdkIGV4cGVjdCBH
RlBfRE1BMzIuIEFsbCBWNEwyIGRyaXZlcnMgdXNlCj4gPiA+ID4gdGhhdC4KPiA+ID4KPiA+ID4g
R0ZQX0RNQTMyIGhhZCBubyBlZmZlY3QgZm9yIG1lIG9uIGFybTY0LiBQcm9iYWJseSBJIG5lZWQg
dG8gcmVjaGVjay4KPiA+Cj4gPiBXaGF0J3MgdGhlIHJlYXNvbiB0byB1c2UgYW55IHNwZWNpZmlj
IEdGUCBmbGFncyBhdCBhbGw/IEdGUF9ETUEoMzIpCj4gPiBtZW1vcnkgaW4gdGhlIGd1ZXN0IHdv
dWxkIHR5cGljYWxseSBjb3JyZXNwb25kIHRvIGhvc3QgcGFnZXMgd2l0aG91dAo+ID4gYW55IHNw
ZWNpZmljIGxvY2F0aW9uIGd1YXJhbnRlZS4KPiA+Cj4KPiBUeXBpY2FsbHksIGJ1dCBub3QgYWx3
YXlzLCBlc3BlY2lhbGx5IGZvciBub24geDg2LiBTYXksIHNvbWUgcGxhdGZvcm1zIGRvbid0Cj4g
aGF2ZSBJT01NVXMgZm9yIGNvZGVjIGRldmljZXMgYW5kIHRob3NlIGRldmljZXMgcmVxdWlyZSBw
aHlzaWNhbGx5IGNvbnRpZyBsb3cKPiBtZW1vcnkuIFdlIGhhZCB0byBmaW5kIGEgd2F5IHRvIGhh
bmRsZSB0aGF0LgoKU28gYmFzaWNhbGx5IHlvdXIgaHlwZXJ2aXNvciBndWFyYW50ZWVzIHRoYXQg
dGhlIGd1ZXN0IHBhZ2VzIGluc2lkZQp0aGUgR0ZQX0RNQSB6b25lIGFyZSBjb250aWd1b3VzIGFu
ZCBETUEtYWJsZSBvbiB0aGUgaG9zdCBhcyB3ZWxsPwpHaXZlbiB0aGUgTGludXgtc3BlY2lmaWMg
YXNwZWN0IG9mIEdGUCBmbGFncyBhbmQgZGlmZmVyZW5jZXMgaW4gdGhlCmltcGxlbWVudGF0aW9u
IGFjcm9zcyBhcmNoaXRlY3R1cmVzLCBwZXJoYXBzIGl0IHdvdWxkIGJlIGEgYmV0dGVyIGlkZWEK
dG8gdXNlIHRoZSBETUEgbWFzayBpbnN0ZWFkPyBUaGF0IHdvdWxkbid0IGN1cnJlbnRseSBhZmZl
Y3QgdmIyX2RtYV9zZwphbGxvY2F0aW9ucywgYnV0IGluIHRoYXQgY2FzZSB0aGUgaG9zdCBkZWNv
ZGVyIHdvdWxkIGhhdmUgc29tZSBJT01NVQphbnl3YXksIHJpZ2h0PwoKPgo+IEJlc3QgcmVnYXJk
cywKPiBEbWl0cnkuCj4KPiA+IEJlc3QgcmVnYXJkcywKPiA+IFRvbWFzego+ID4KPiA+ID4gQmVz
dCByZWdhcmRzLAo+ID4gPiBEbWl0cnkuCj4gPiA+Cj4gPiA+IE9uIERvbm5lcnN0YWcsIDEyLiBN
w6RyeiAyMDIwIDExOjE4OjI2IENFVCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiA+ID4gT24gMy8x
Mi8yMCAxMToxNSBBTSwgRG1pdHJ5IFNlcHAgd3JvdGU6Cj4gPiA+ID4gPiBIaSBIYW5zLAo+ID4g
PiA+ID4KPiA+ID4gPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBncmVhdCBkZXRhaWxlZCByZXZpZXch
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSSB3b24ndCBwcm92aWRlIGlubGluZSBhbnN3ZXJzIGFzIHlv
dXIgY29tbWVudHMgdG90YWxseSBtYWtlIHNlbnNlLgo+ID4gPiA+ID4gVGhlcmUKPiA+ID4gPiA+
IGlzPgo+ID4gPiA+ID4KPiA+ID4gPiA+IG9ubHkgb25lIHRoaW5nIEkgd2FudCB0byBtZW50aW9u
Ogo+ID4gPiA+ID4+PiArIHN0cnVjdCB2aWRlb19wbGFuZV9mb3JtYXQgcGxhbmVfZm9ybWF0W1ZJ
UlRJT19WSURFT19NQVhfUExBTkVTXTsKPiA+ID4gPiA+Pgo+ID4gPiA+ID4+IFdoeSBpcyB0aGlz
IHZpcnRpbyBzcGVjaWZpYz8gQW55IHJlYXNvbiBmb3Igbm90IHVzaW5nCj4gPiA+ID4gPj4gVklE
RU9fTUFYX1BMQU5FUz8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJJ2Qgc2F5IHRoaXMgaXMgYmVjYXVz
ZSBWSURFT19NQVhfUExBTkVTIGRvZXMgbm90IGV4aXN0IG91dHNpZGUgb2YgdGhlCj4gPiA+ID4g
PiBMaW51eCBPUywgc28gZm9yIHdoYXRldmVyIG90aGVyIHN5c3RlbSB3ZSBuZWVkIGEgdmlydGlv
IHNwZWNpZmljCj4gPiA+ID4gPiBkZWZpbml0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gT0ssIGdvb2Qg
cmVhc29uIDotKQo+ID4gPiA+Cj4gPiA+ID4gSXQncyBwcm9iYWJseSBhIGdvb2QgdGhpbmcgdG8g
YWRkIGEgY29tbWVudCB3aGVyZQo+ID4gPiA+IFZJUlRJT19WSURFT19NQVhfUExBTkVTIGlzIGRl
ZmluZWQgdGhhdCBleHBsYWlucyB0aGlzLgo+ID4gPiA+Cj4gPiA+ID4gUmVnYXJkcywKPiA+ID4g
Pgo+ID4gPiA+ICAgICAgIEhhbnMKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbAo=
