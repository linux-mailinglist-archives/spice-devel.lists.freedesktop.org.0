Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A441DA6112
	for <lists+spice-devel@lfdr.de>; Tue,  3 Sep 2019 08:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7D88967A;
	Tue,  3 Sep 2019 06:12:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724C58967A
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 06:12:02 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A1E8A85362
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Sep 2019 06:12:01 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id o5so9832213wrg.15
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Sep 2019 23:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=q5bD31A8aPlK8dN3zBk23X7m5JxJjNq2G2l2B7GAL50=;
 b=AAvBHXnBAfU0M1gernCt8QuDQRNqnaIXW23NZGBWuyNMqZV0S4/0Naw/LpBgdbfhOD
 cDV8XyYOJT5ZPDE0cdenXkL+X2pK9dUg6nCxb554yl2SGXdVQn4F45KDzX3SZMP6cqD7
 cYtiSaXM+ArxPAytMhHJe018t42Uvv/Up5hZk0y1LB2v0mZm0GXcdK/5V6cvtXaFN0wx
 x49ZuZKxTZz+bKLNsvGUe5q2Vx9Zb4nTjXx3uXcArHEQ18yEEx0+p8FUR+wGRZyeElOQ
 eftKnfbGvqemB43SNT2sGons0lERMNdVWGdUmlw+wbaoZHgALVFqSl5NaRJ2DpNSAFId
 Oqzg==
X-Gm-Message-State: APjAAAUJIhTAbSrud+TJx2jnXtowFcZuQ/hgxUQ3dXo9zzoi9R4OThZ0
 IobFCm6Jbu0etB0z67vhmcdX2AEF3Fh3QWxovQiyrjUakYheT9OO43jzf4mmj/0iLXONIBPd+xJ
 Y8Oc0PAJhVwp/AxT8Glm5+gN0Qui57QQ=
X-Received: by 2002:a05:6000:1002:: with SMTP id
 a2mr28888785wrx.28.1567491120098; 
 Mon, 02 Sep 2019 23:12:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyY0g1JCK3n3CX/xY2GDoe84gQCtBY6LCQW0NGX6zM3jkyayFU6Qm75HvRv/ELKRvyU0K4twQ==
X-Received: by 2002:a05:6000:1002:: with SMTP id
 a2mr28888754wrx.28.1567491119741; 
 Mon, 02 Sep 2019 23:11:59 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.220])
 by smtp.gmail.com with ESMTPSA id c6sm25674697wrb.60.2019.09.02.23.11.58
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Sep 2019 23:11:58 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <683621ff-a450-c516-f619-a32bf46ad9fb@redhat.com>
 <20190902155002.18766-1-kpouget@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <5ea5fa65-9d47-4f64-eed6-f76c39888a55@redhat.com>
Date: Tue, 3 Sep 2019 09:11:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902155002.18766-1-kpouget@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk v3] streaming: make draw-area
 visible on MJPEG encoder creation
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiA5LzIvMTkgNjo1MCBQTSwgS2V2aW4gUG91Z2V0IHdyb3RlOgo+IFRoaXMgcGF0Y2gg
YWxsb3dzIHRoZSBNSlBFRyBlbmNvZGVyIHRvIGluZm9ybSB0aGUgc3BpY2Utd2lkZ2V0IHRoYXQK
PiBpdHMgdmlkZW8gZHJhd2luZyBhcmVhIChkcmF3LWFyZWEpIHNob3VsZCBiZSBtYWRlIHZpc2li
bGUgb24gc2NyZWVuLgo+Cj4gVGhpcyBpcyByZXF1aXJlZCB0byBzd2l0Y2ggZnJvbSBHU1Qgdmlk
ZW8gZGVjb2RpbmcgdG8gbmF0aXZlIE1KUEVHCj4gZGVjb2RpbmcsIG90aGVyd2lzZSB0aGUgZ3N0
LWFyZWEgcmVtYWluZWQgb24gdG9wIGFuZCB0aGUgTUpQRUcgdmlkZW8KPiBzdHJlYW0gd2FzIG5l
dmVyIHNob3duLgo+Cj4gU2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhh
dC5jb20+Cj4gLS0tCj4gdjIgLT4gdjM6IGFkZHJlc3MgU25pciBjb21tZW50czoKPgo+IC0gY29t
bWVudCBhYm91dCBOVUxMIGluIHRoZSBzaWduYWwgZGVzY3JpcHRpb24KPiAtIG1vdmUgJ2lmIChw
aXBlbGluZV9wdHIgPT0gTlVMTCkgLi4uJyBvdXRzaWRlICBvZiAnaWYgZGVmaW5lZChHREtfV0lO
RE9XSU5HX1gxMSknCj4KPiByZWdhcmRpbmcgRUdMIG5vdGUsIGl0IG1pZ2h0IGJlIHNvbWV0aGlu
ZyBsaWtlIHRoaXM6Cj4KPj4gZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3Rh
Y2ssIGVnbF9lbmFibGVkKGQpID8KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiZ2wtYXJlYSIgOiAiZHJhdy1hcmVhIik7CgoKWWVzLCBidXQgQUZBSVUgdGhp
cyBzaG91bGQgbmV2ZXIgaGFwcGVuCgpTbyBJJ2xsIGFjayBhbHNvIHdpdGhvdXQgaXQuCgpTbmly
LgoKPiBidXQgaXQncyBqdXN0IGEgd2lsZCBndWVzcyEKPgo+IC0tLQo+ICAgc3JjL2NoYW5uZWwt
ZGlzcGxheS1tanBlZy5jIHwgIDMgKysrCj4gICBzcmMvY2hhbm5lbC1kaXNwbGF5LmMgICAgICAg
fCAgNCArKystCj4gICBzcmMvc3BpY2Utd2lkZ2V0LmMgICAgICAgICAgfCAxMSArKysrKysrKyst
LQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYyBiL3NyYy9jaGFubmVs
LWRpc3BsYXktbWpwZWcuYwo+IGluZGV4IDY0N2QzMWIuLjYzNmE5OGIgMTAwNjQ0Cj4gLS0tIGEv
c3JjL2NoYW5uZWwtZGlzcGxheS1tanBlZy5jCj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1t
anBlZy5jCj4gQEAgLTMwMCw1ICszMDAsOCBAQCBWaWRlb0RlY29kZXIqIGNyZWF0ZV9tanBlZ19k
ZWNvZGVyKGludCBjb2RlY190eXBlLCBkaXNwbGF5X3N0cmVhbSAqc3RyZWFtKQo+Cj4gICAgICAg
LyogQWxsIHRoZSBvdGhlciBmaWVsZHMgYXJlIGluaXRpYWxpemVkIHRvIHplcm8gYnkgZ19uZXcw
KCkuICovCj4KPiArICAgIC8qIG1ha2VzIHRoZSBkcmF3LWFyZWEgdmlzaWJsZSAqLwo+ICsgICAg
aGFuZF9waXBlbGluZV90b193aWRnZXQoc3RyZWFtLCBOVUxMKTsKPiArCj4gICAgICAgcmV0dXJu
IChWaWRlb0RlY29kZXIqKWRlY29kZXI7Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVs
LWRpc3BsYXkuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXkuYwo+IGluZGV4IDU5YzgwOWQuLmNkODdj
N2MgMTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS5jCj4gKysrIGIvc3JjL2NoYW5u
ZWwtZGlzcGxheS5jCj4gQEAgLTQ4NSw3ICs0ODUsOSBAQCBzdGF0aWMgdm9pZCBzcGljZV9kaXNw
bGF5X2NoYW5uZWxfY2xhc3NfaW5pdChTcGljZURpc3BsYXlDaGFubmVsQ2xhc3MgKmtsYXNzKQo+
ICAgICAgICAqCj4gICAgICAgICogVGhlICNTcGljZURpc3BsYXlDaGFubmVsOjpnc3QtdmlkZW8t
b3ZlcmxheSBzaWduYWwgaXMgZW1pdHRlZCB3aGVuCj4gICAgICAgICogcGlwZWxpbmUgaXMgcmVh
ZHkgYW5kIGNhbiBiZSBwYXNzZWQgdG8gd2lkZ2V0IHRvIHJlZ2lzdGVyIEdTdHJlYW1lcgo+IC0g
ICAgICogb3ZlcmxheSBpbnRlcmZhY2UgYW5kIG90aGVyIEdTdHJlYW1lciBjYWxsYmFja3MuCj4g
KyAgICAgKiBvdmVybGF5IGludGVyZmFjZSBhbmQgb3RoZXIgR1N0cmVhbWVyIGNhbGxiYWNrcy4g
SWYgdGhlIHBpcGVsaW5lCj4gKyAgICAgKiBwb2ludGVyIGlzIE5VTEwsIHRoZSBkcmF3aW5nIGFy
ZWEgb2YgdGhlIG5hdGl2ZSByZW5kZXJlciBpcyBzZXQKPiArICAgICAqIHZpc2libGUuCj4gICAg
ICAgICoKPiAgICAgICAgKiBSZXR1cm5zOiAlVFJVRSBpZiB0aGUgb3ZlcmxheSBpcyBiZWluZyBz
ZXQKPiAgICAgICAgKgo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Utd2lkZ2V0LmMgYi9zcmMvc3Bp
Y2Utd2lkZ2V0LmMKPiBpbmRleCBhOWJhMWYxLi5kNzNlMDJmIDEwMDY0NAo+IC0tLSBhL3NyYy9z
cGljZS13aWRnZXQuYwo+ICsrKyBiL3NyYy9zcGljZS13aWRnZXQuYwo+IEBAIC0yNzgwLDE0ICsy
NzgwLDIwIEBAIHN0YXRpYyB2b2lkIGdzdF9zaXplX2FsbG9jYXRlKEd0a1dpZGdldCAqd2lkZ2V0
LCBHZGtSZWN0YW5nbGUgKmEsIGdwb2ludGVyIGRhdGEpCj4gICB9Cj4KPiAgIC8qIFRoaXMgY2Fs
bGJhY2sgc2hvdWxkIHBhc3MgdG8gdGhlIHdpZGdldCBhIHBvaW50ZXIgb2YgdGhlIHBpcGVsaW5l
Cj4gLSAqIHNvIHRoYXQgd2UgY2FuIHNldCBwaXBlbGluZSBhbmQgb3ZlcmxheSByZWxhdGVkIGNh
bGxzIGZyb20gaGVyZS4KPiArICogc28gdGhhdCB3ZSBjYW4gdGhlIHNldCBHU1QgcGlwZWxpbmUg
YW5kIG92ZXJsYXkgcmVsYXRlZCBjYWxscyBmcm9tCj4gKyAqIGhlcmUuICBJZiB0aGUgcGlwZWxp
bmUgcG9pbnRlciBpcyBOVUxMLCB0aGUgZHJhd2luZyBhcmVhIG9mIHRoZQo+ICsgKiBuYXRpdmUg
cmVuZGVyZXIgaXMgc2V0IHZpc2libGUuCj4gICAgKi8KPiAgIHN0YXRpYyBnYm9vbGVhbiBzZXRf
b3ZlcmxheShTcGljZUNoYW5uZWwgKmNoYW5uZWwsIHZvaWQqIHBpcGVsaW5lX3B0ciwgU3BpY2VE
aXNwbGF5ICpkaXNwbGF5KQo+ICAgewo+IC0jaWYgZGVmaW5lZChHREtfV0lORE9XSU5HX1gxMSkK
PiAgICAgICBTcGljZURpc3BsYXlQcml2YXRlICpkID0gZGlzcGxheS0+cHJpdjsKPgo+ICsgICAg
aWYgKHBpcGVsaW5lX3B0ciA9PSBOVUxMZzApIHsKPiArICAgICAgICBndGtfc3RhY2tfc2V0X3Zp
c2libGVfY2hpbGRfbmFtZShkLT5zdGFjaywgImRyYXctYXJlYSIpOwo+ICsgICAgICAgIHJldHVy
biB0cnVlOwo+ICsgICAgfQo+ICsKPiArI2lmIGRlZmluZWQoR0RLX1dJTkRPV0lOR19YMTEpCj4g
ICAgICAgLyogR3N0VmlkZW9PdmVybGF5IGlzIGN1cnJlbnRseSB1c2VkIG9ubHkgdW5kZXIgeCAq
Lwo+ICAgICAgIGlmICghZ19nZXRlbnYoIkRJU0FCTEVfR1NUVklERU9PVkVSTEFZIikgJiYKPiAg
ICAgICAgICAgR0RLX0lTX1gxMV9ESVNQTEFZKGdka19kaXNwbGF5X2dldF9kZWZhdWx0KCkpKSB7
Cj4gLS0KPiAyLjIxLjAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
