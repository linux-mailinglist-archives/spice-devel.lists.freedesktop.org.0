Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C96C55BC4C
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 15:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A19C89A88;
	Mon,  1 Jul 2019 13:01:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01E389A88
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 13:01:02 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id j19so13391594otq.2
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Jul 2019 06:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eEzSdl5QCA/l1hIusSnJCS96WWY9vw3MINRsuPwSLu0=;
 b=mItwSOZw7JmMrF4Nr6CHa8lQgH1gq+oMAR9Lvh62an+xPyRX5dfcdf+qEVC56sooOF
 wcBW4YW2kk61QcqXDUx6BltAA/4REtXAMtFE00OLNhO0mtzf5ZNUm68F+tXqG5SArBqA
 POy3Uf1EDzFmvwrYuddhu6PzWgcUW7Qe+E+XVuF8GpaENsIeQ0R3x6nzIAqzHM92aXhk
 5HOxX8b8mjfvzO3ibeHNvIFvaAeaTDr2btvCcUs6biLOcUXTxp68yLNpRHDQVT4JbKp4
 ZKy9cjYTjJP7yFWrA87uef339e4GKqE14pFHcDbFjbHJZjVDMxdvCS4gV38Q3N2+KnvR
 kIlA==
X-Gm-Message-State: APjAAAXMIL9q5/yL/bTtU461ELIV+yCFt7VhvF4qy/cJ97i3Zx0gkpoL
 f5JsmVX9MAU4Vp9Oklg/a0X/lzHq/xwbddb5B7qDDQ==
X-Google-Smtp-Source: APXvYqxp9KzwVilGwzCL4Va9iSTf537nHEI7Ku6AvfUnB84oyrGdSix7fSfQh0hZOf4qDyyWQ6gNA2CUh+OGkx59Y0o=
X-Received: by 2002:a9d:12e5:: with SMTP id g92mr14403217otg.202.1561986062283; 
 Mon, 01 Jul 2019 06:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190701120639.31441-1-kpouget@redhat.com>
 <1633464297.25958150.1561984142617.JavaMail.zimbra@redhat.com>
In-Reply-To: <1633464297.25958150.1561984142617.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 1 Jul 2019 15:00:51 +0200
Message-ID: <CADJ1XR10qbg2GpYwiA2RZP+1tOpR92aK1UtN=NgF-JgL-1-UHQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMSwgMjAxOSBhdCAyOjI5IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4KPiA+IHRoaXMgd2FybmluZyBpcyBmYWlsaW5nIG15IGJ1
aWxkLCBJIGFzc3VtZSBpdCBjb21lcyBmcm9tIGEgbmV3IHZlcnNpb24KPiA+IG9mIHRoZSBjb21w
aWxlciBjYXRjaGluZyB0aGUgdXNlbGVzcyBjYWxsIHRvIGFicygpLgo+ID4KPgo+IFllcywgZ2V0
dGluZyB0b28gd2l0aCBGZWRvcmEgMzAuCj4KPiBJbnN0ZWFkIG9mICJpcyBmYWlsaW5nIG15IGJ1
aWxkIiBjb3VsZCB5b3UgZGVzY3JpYmUgeW91ciBlbnZpcm9ubWVudD8KPiBMaWtlICJDb21waWxp
bmcgd2l0aCBnY2MgMTMuNCB1bmRlciBGZWRvcmEgMzQgIi4uLgo+Cj4gPiAtLS0KPiA+Cj4gPiA+
IGVycm9yOiB0YWtpbmcgdGhlIGFic29sdXRlIHZhbHVlIG9mIHVuc2lnbmVkIHR5cGUgJ3VpbnQ2
NF90Jwo+ID4gPiB7YWthICdsb25nIHVuc2lnbmVkIGludCd9IGhhcyBubyBlZmZlY3QgWy1XZXJy
b3I9YWJzb2x1dGUtdmFsdWVdCj4KPiBXaHkgbm90IHB1dHRpbmcgdGhpcyBhbHNvIGluIHRoZSBj
b21taXQgbWVzc2FnZT8KCnllcywgdGhpcyBwYXJ0IHdhcyBhY3R1YWxseSBteSBjb21taXQgbWVz
c2FnZQpJIGRpZG4ndCBrbm93IHRoYXQgdGhlIG9yZGVyIG1hdHRlcnMsIGJ1dCBpdCBtYWtlcyBz
ZW5zZQoKSSB3aWxsIGFkZCB0aGF0IGl0J3MgRmVkb3JhIDMwIC8gZ2NjIDkuMS4xIDIwMTkwNTAz
IChSZWQgSGF0IDkuMS4xLTEpCgoKPiBMb29raW5nIHRoZSBsb2cgZm9yICJGZWRvcmEiIEkgZm91
bmQgZm9yIGluc3RhbmNlCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNlL3Nw
aWNlL2NvbW1pdC9mOTBmNzVlNDFjMGNkYjMzYjZiNTVjZDQwODlkYjAyMjU0MDkzN2UzCj4KPiA+
IC0tLQo+ID4gIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgMiArLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5j
Cj4gPiBpbmRleCA2NDE2YjY4OC4uZGJkNGIxMWQgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvZ3N0
cmVhbWVyLWVuY29kZXIuYwo+ID4gKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiA+
IEBAIC01MTUsNyArNTE1LDcgQEAgc3RhdGljIHZvaWQgc2V0X3ZpZGVvX2JpdF9yYXRlKFNwaWNl
R3N0RW5jb2RlciAqZW5jb2RlciwKPiA+IHVpbnQ2NF90IGJpdF9yYXRlKQo+ID4gICAgICAgICAg
ZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgPSBiaXRfcmF0ZTsKPiA+ICAgICAgICAgIHNldF9nc3Rl
bmNfYml0cmF0ZShlbmNvZGVyKTsKPiA+Cj4gPiAtICAgIH0gZWxzZSAgaWYgKGFicyhiaXRfcmF0
ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSA+Cj4gPiBlbmNvZGVyLT52aWRlb19iaXRfcmF0
ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01BUkdJTikgewo+ID4gKyAgICB9IGVsc2UgIGlm
ICgoYml0X3JhdGUgLSBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSkgPgo+ID4gZW5jb2Rlci0+dmlk
ZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKPiA+ICAgICAg
ICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7Cj4gPiAgICAgICAgICBzZXRf
cGlwZWxpbmVfY2hhbmdlcyhlbmNvZGVyLCBTUElDRV9HU1RfVklERU9fUElQRUxJTkVfQklUUkFU
RSk7Cj4gPiAgICAgIH0KPgo+IENvZGUgaXMgZ29vZAo+Cj4gRnJlZGlhbm8KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
