Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66704262FDC
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 16:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EC26E2B6;
	Wed,  9 Sep 2020 14:36:38 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30DE6E2B6
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:36:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 269498015AA;
 Wed,  9 Sep 2020 14:36:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EBAE1002382;
 Wed,  9 Sep 2020 14:36:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1638C7A016;
 Wed,  9 Sep 2020 14:36:37 +0000 (UTC)
Date: Wed, 9 Sep 2020 10:36:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub Janku <jjanku@redhat.com>
Message-ID: <28522181.657126.1599662196864.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
 <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
 <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.24]
Thread-Topic: 6 commits - meson.build src/map-file src/spice-glib-sym-file
 src/spice-gtk-session.c src/spice-session.c src/spice-session.h
 src/spice-session-priv.h
Thread-Index: R183vJQkW0Pdyk5D+U2NRrWZznTd3Q==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Spice-devel] [Spice-commits] 6 commits - meson.build
 src/map-file src/spice-glib-sym-file src/spice-gtk-session.c
 src/spice-session.c src/spice-session.h src/spice-session-priv.h
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
Cc: spice-commits@lists.freedesktop.org, spice-devel@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBPbiBXZWQsIFNlcCA5LCAyMDIwIGF0IDQ6MTYgUE0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+ID4gPiBjb21taXQgNGI5MDkyYjk2YjhkYTk0NmZm
M2QxNzkyMmIwZmNmMjI1YzVkYzgxZgo+ID4gPgo+ID4gPiA+IEF1dGhvcjogSmFrdWIgSmFua8Wv
IDwgamphbmt1QHJlZGhhdC5jb20gPgo+ID4gPgo+ID4gPiA+IERhdGU6IFNhdCBNYXkgMjMgMTY6
Mjg6NTIgMjAyMCArMDIwMAo+ID4gPgo+ID4KPiA+ID4gPiBzZXNzaW9uOiBtYWtlIHNwaWNlX3Nl
c3Npb25fZ2V0X3dlYmRhdl9zZXJ2ZXIoKSBwdWJsaWMKPiA+ID4KPiA+Cj4gPiA+ID4gSXQgd2ls
bCBiZSBuZWNlc3NhcnkgdG8gYWNjZXNzIHRoZSB3ZWJkYXYgc2VydmVyIGZyb20KPiA+ID4gPiBz
cGljZS1ndGstc2Vzc2lvbi5jCj4gPiA+Cj4gPiA+ID4gd2hpY2ggaXNuJ3QgY29tcGlsZWQgd2l0
aCBzcGljZS1zZXNzaW9uLXByaXYuaCwgc28gbWFrZQo+ID4gPgo+ID4gPiA+IHNwaWNlX3Nlc3Np
b25fZ2V0X3dlYmRhdl9zZXJ2ZXIoKSBwdWJsaWMuCj4gPiA+Cj4gPgo+ID4gPiBJIGhhdmVuJ3Qg
bG9va2VkIGF0IHRoZSB3aG9sZSBzZXJpZXMuIFdvdWxkbid0IGl0IG1ha2Ugc2Vuc2UgdG8gbWFr
ZSBpdCBhCj4gPiA+IHJlYWQtb25seSBwcm9wZXJ0eSBpbnN0ZWFkPwo+ID4KPiA+IEl0IHNvdW5k
cyByZWFzb25hYmxlIGZvciBtZS4KPiA+IEpha3ViID8KPiA+Cj4gCj4gSSBhZ3JlZS4KPiAKPiBS
ZXZlcnQgdGhlIGNvbW1pdHMgcGxlYXNlLiBJJ2xsIHJlb3BlbiB0aGUgbWVyZ2UgcmVxdWVzdCBv
bmNlIEkgaGF2ZSBpdAo+IHJlYWR5Lgo+IAo+IENoZWVycywKPiBKYWt1Ygo+IAoKVG8gYmUgaG9u
ZXN0IEkgZG9uJ3Qgc2VlIHRoZSBuZWVkIHRvIHJldmVydCBjb21taXRzLCBpdCdzIGp1c3QgYSBj
aGFuZ2UKZnJvbSBwdWJsaWMgdG8gcHJpdmF0ZS4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
