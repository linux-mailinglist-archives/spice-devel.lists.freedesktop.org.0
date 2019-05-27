Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D76B72BA48
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2019 20:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609D3891BE;
	Mon, 27 May 2019 18:40:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
 [209.85.166.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8326089127
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2019 18:40:30 +0000 (UTC)
Received: by mail-it1-f196.google.com with SMTP id m3so553643itl.1
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2019 11:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=E5T49apG29+6uf8as+EpKHeV+K3kA3NiKews7JZmZSA=;
 b=m9ViqEi4c+Mdawg4xbfoQLp+WLt7I2j4jsHQBD6VQgEQLRGWuHOmvadbFwxfrIt0aY
 HPbbOkWG10uJwqIru6SW1lC8R2ufortSPXi/TDRgZJP0IZV00G1kmO0T9LXYvNW4xwfE
 OM1nnyEYYWYZW+7Qeo4cWYuz6Ct1QPovtmctYc45zAEBs/Whjzz+ixo8Qg9EqbLwm8nU
 eLFdhgLG/fBODxO7t9H7K/Ao4Rxy5uT8gIhxxKumwxpj2oLDWp+CLWfyh+G1o9iTIVDK
 jU4RU6sc3tU9S4fUSqzbMQGQbIHlpPHnJaXkoAUXdLSerk0J5SZU9d1g+QCtnzz9YyBf
 rSDA==
X-Gm-Message-State: APjAAAWKWFYandbg11+vkAAsfP+PqwJoJD5F+VqIlKNL+AfRdiJgI8K9
 j8WAFHPprrZ6zCFmUZz7uTpLIilgArtBHSIRO19vnw==
X-Google-Smtp-Source: APXvYqxXowweh0wFkaxpK4/7RHyRCjTEik4fDVNqHU9fuMZIJo+04atvXZimPTXXTTVD9e61bOQiLCLHn7FK1VVl0oY=
X-Received: by 2002:a02:3ecb:: with SMTP id s194mr79191462jas.29.1558982429774; 
 Mon, 27 May 2019 11:40:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-4-jjanku@redhat.com>
 <CAJ+F1C+PVrYZa=ZcjKvAqF_fdd21FGh_wGOSQcrf_HDFoduk5Q@mail.gmail.com>
 <CAH=CeiAX_ppz=18c90RKZXOg4ahu1WS29FgnJNJqss2S6mODtA@mail.gmail.com>
 <1053966795.20226820.1558972713015.JavaMail.zimbra@redhat.com>
In-Reply-To: <1053966795.20226820.1558972713015.JavaMail.zimbra@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Mon, 27 May 2019 20:40:18 +0200
Message-ID: <CAH=CeiC704jnQtpA4M7U6NY1qAZ83OKMVcQeFk4Rjbc2L2v_RQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH phodav 03/13] spice: handle SIGINT properly
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

SGksCgpPbiBNb24sIE1heSAyNywgMjAxOSBhdCA1OjU4IFBNIEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPiB3cm90ZToKPgo+ID4KPiA+IEhpLAo+ID4KPiA+IE9uIFRodSwgTWF5
IDIzLCAyMDE5IGF0IDM6MzEgUE0gTWFyYy1BbmRyw6kgTHVyZWF1Cj4gPiA8bWFyY2FuZHJlLmx1
cmVhdUBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaQo+ID4gPgo+ID4gPiBPbiBUaHUs
IE1heSAyMywgMjAxOSBhdCAxMDozNyBBTSBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29t
PiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEFjY29yZGluZyB0byBbMF0sIGdfZGVidWcgc2hvdWxk
IG5vdCBiZSB1c2VkIGluIGEgc2lnbmFsIGhhbmRsZXIuCj4gPiA+ID4gU28sIHRvIGF2b2lkIHJl
ZW50cmFuY3ksIGRvIG5vdCBwcmludCBkZWJ1ZyBtZXNzYWdlIHdoZW4gcXVpdCBpcwo+ID4gPiA+
IGNhbGxlZCB3aXRoIFNJR0lOVC4KPiA+ID4gPgo+ID4gPiA+IFswXQo+ID4gPiA+IGh0dHBzOi8v
ZG9jcy5taWNyb3NvZnQuY29tL2VuLXVzL2NwcC9jLXJ1bnRpbWUtbGlicmFyeS9yZWZlcmVuY2Uv
c2lnbmFsP3ZpZXc9dnMtMjAxOQo+ID4gPiA+Cj4KPiA/Pz8/Cj4KPiBUaGUgcXVpdCBmdW5jdGlv
biBpcyBjYWxsZWQgYnkgc2lnbmFsIGhhbmRsZXIgb3IgIm1hbnVhbGx5Ii4KPiBJZiBjYWxsZWQg
bWFudWFsbHkgaXQncyBub3QgYSBwcm9ibGVtLgo+IFRoZSBvbmx5IHNpZ25hbCByZWdpc3RlcmVk
IGZvciB0aGlzIGZ1bmN0aW9uIGlzIFNJR0lOVCB3aGljaCBpbiBXaW5kb3dzCj4gaXMgbWFuYWdl
ZCBieSBhbm90aGVyIHRocmVhZCAoYXMgd3JpdHRlbiBpbiB0aGUgbGluayB5b3Ugc2VudCwgYW5k
IGJ5IHRoZQo+IHdheSBpcyBoYW5kbGVkIGJ5IFNldENvbnNvbGVDdHJsSGFuZGxlcikgc28gaXQn
cyBub3QgYSBwcm9ibGVtIHRvIGNhbGwKPiBnX2RlYnVnLiBOb3RlIHRoYXQgdGhpcyBmdW5jdGlv
biBpcyBhbHNvIGNhbGxlZCBtYW51YWxseSB3aXRoIFNJR1RFUk0gYnV0Cj4gc3RpbGwgbm90IGEg
cHJvYmxlbSBvbiBXaW5kb3dzIGFzIHNlcnZpY2VfY3RybF9oYW5kbGVyIGlzIHJ1biBpbiBhbm90
aGVyCj4gdGhyZWFkLgoKT2gsIEkgc29tZWhvdyBtaXNzZWQgdGhlIGJpZyBwdXJwbGUgYm94IHRo
YXQgc2F5cyBDdHJsK0MgY3JlYXRlcyBhIG5ldwp0aHJlYWQgYW5kIEkgc3VwcG9zZWQgaXQgYmVo
YXZlcyBsaWtlIG9uIHVuaXgsIHNvcnJ5LCBteSBiYWQuCj4KPiBUaGUgcHJvYmxlbXMgSSBzZWUg
aXMgdGhhdCBxdWl0X3NlcnZpY2Ugc2hvdWxkIGJlIGRlZmluZWQgdm9sYXRpbGUgYW5kCj4gZ19t
YWluX2xvb3BfcXVpdCBzaG91bGQgbm90IGJlIGNhbGxlZCBvbiBVbml4ISBJZiBhIGxvY2sgdXNl
ZCBieQo+IGdfbWFpbl9sb29wX3F1aXQgaXMgcmV0YWluZWQgd2hpbGUgdGhlIHNpZ25hbCBpcyBj
YWxsZWQgeW91J2xsIGhhdmUKPiBhIGRlYWRsb2NrLgo+IE1heWJlIEknbSB3cm9uZyBidXQgSSBk
aWRuJ3QgZmluZCBhIG5vdGUgaWYgZ19tYWluX2xvb3BfcXVpdCBpcyBzaWduYWwKPiBzYWZlIHNv
IGJldHRlciBub3QgdG8gY2FsbCBpdCBmcm9tIGEgc2lnbmFsIGhhbmRsZXIuCj4gZ191bml4X3Np
Z25hbF9hZGQgc2VlbXMgYSBnb29kIHNvbHV0aW9uIGZvciBVbml4LgoKSG9wZWZ1bGx5IGJldHRl
ciB0aGlzIHRpbWU6Cmh0dHBzOi8vZ2l0bGFiLmdub21lLm9yZy9HTk9NRS9waG9kYXYvbWVyZ2Vf
cmVxdWVzdHMvMy8KClRoYW5rcywKSmFrdWIKPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpha3Vi
IEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIHNwaWNlL3Nw
aWNlLXdlYmRhdmQuYyB8IDMgKystCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9zcGljZS9z
cGljZS13ZWJkYXZkLmMgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKPiA+ID4gPiBpbmRleCBlNDk0
NjkyLi5jZGZhNzNkIDEwMDY0NAo+ID4gPiA+IC0tLSBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwo+
ID4gPiA+ICsrKyBiL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwo+ID4gPiA+IEBAIC0yMzcsNyArMjM3
LDggQEAgc3RhdGljIHZvaWQgbWRuc191bnJlZ2lzdGVyX3NlcnZpY2UgKHZvaWQpOwo+ID4gPiA+
ICBzdGF0aWMgdm9pZAo+ID4gPiA+ICBxdWl0IChpbnQgc2lnKQo+ID4gPiA+ICB7Cj4gPiA+ID4g
LSAgZ19kZWJ1ZyAoInF1aXQgJWQiLCBzaWcpOwo+ID4gPiA+ICsgIGlmIChzaWcgIT0gU0lHSU5U
KQo+ID4gPiA+ICsgICAgZ19kZWJ1ZyAoInF1aXQgJWQiLCBzaWcpOwo+ID4gPiA+Cj4gPiA+Cj4g
PiA+IEkgd291bGQgc2ltcGx5IHJlbW92ZSB0aGUgZ19kZWJ1ZygpIGNhbGwgdGhlbi4KPiA+Cj4g
PiBPayB0aGVuLgo+ID4KPiA+IE9uIFVuaXgsIHdlIGNvdWxkIHVzZSBnX3VuaXhfc2lnbmFsX2Fk
ZCwgSSdsbCBjaGFuZ2UgaXQuCj4gPiBCdXQgc2FkbHkgdGhlcmUgZG9lc24ndCBzZWVtIHRvIGJl
IGEgV2luZG93cyBlcXVpdmFsZW50Lgo+ID4KPiA+IENoZWVycywKPiA+IEpha3ViCj4gPiA+Cj4g
PiA+IChtYXliZSB3ZSBzaG91bGQgaGF2ZSBhIGRpZmZlcmVudCBmdW5jdGlvbiBmb3IgdGhlIHNp
Z25hbCBoYW5kbGVyKQo+ID4gPgo+Cj4gSXQgc291bmRzIGEgZ3JlYXQgaWRlYS4KPgo+ID4gPiA+
ICAgIGlmIChzaWcgPT0gU0lHSU5UIHx8IHNpZyA9PSBTSUdURVJNKQo+ID4gPiA+ICAgICAgICBx
dWl0X3NlcnZpY2UgPSBUUlVFOwo+Cj4gRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
