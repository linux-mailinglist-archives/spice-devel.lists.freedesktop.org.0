Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E7026307F
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 17:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F666EC16;
	Wed,  9 Sep 2020 15:27:51 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962866EC16
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 15:27:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D63A805EEE;
 Wed,  9 Sep 2020 15:27:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 06B447E8DA;
 Wed,  9 Sep 2020 15:27:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F36B91826D2A;
 Wed,  9 Sep 2020 15:27:48 +0000 (UTC)
Date: Wed, 9 Sep 2020 11:27:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?Q?Marc-Andr=C3=A9?= Lureau <marcandre.lureau@gmail.com>
Message-ID: <1145253150.663633.1599665268770.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAJ+F1CLVPu1UDBubZinJCMNuY8BX_vbdFOjE8pvWquA-id-27w@mail.gmail.com>
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
 <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
 <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
 <28522181.657126.1599662196864.JavaMail.zimbra@redhat.com>
 <CAH=CeiB+89q6C6fSu-814jaN98_eCGe72qkwZTFp7V7OXnehLw@mail.gmail.com>
 <CAJ+F1CLVPu1UDBubZinJCMNuY8BX_vbdFOjE8pvWquA-id-27w@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.29]
Thread-Topic: 6 commits - meson.build src/map-file src/spice-glib-sym-file
 src/spice-gtk-session.c src/spice-session.c src/spice-session.h
 src/spice-session-priv.h
Thread-Index: 53FN9cIXER4H1fTnbWYencHh3hLCKw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Cc: spice-devel@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBIaQoKPiBPbiBXZWQsIFNlcCA5LCAyMDIwIGF0IDY6NDUgUE0gSmFrdWIgSmFua3UgPCBqamFu
a3VAcmVkaGF0LmNvbSA+IHdyb3RlOgoKPiA+IE9uIFdlZCwgU2VwIDksIDIwMjAgYXQgNDozNiBQ
TSBGcmVkaWFubyBaaWdsaW8gPCBmemlnbGlvQHJlZGhhdC5jb20gPgo+ID4gd3JvdGU6Cj4gCj4g
PiA+Cj4gCj4gPiA+ID4gT24gV2VkLCBTZXAgOSwgMjAyMCBhdCA0OjE2IFBNIEZyZWRpYW5vIFpp
Z2xpbyA8IGZ6aWdsaW9AcmVkaGF0LmNvbSA+Cj4gPiA+ID4gd3JvdGU6Cj4gCj4gPiA+ID4gPgo+
IAo+ID4gPiA+ID4gPiA+IGNvbW1pdCA0YjkwOTJiOTZiOGRhOTQ2ZmYzZDE3OTIyYjBmY2YyMjVj
NWRjODFmCj4gCj4gPiA+ID4gPiA+Cj4gCj4gPiA+ID4gPiA+ID4gQXV0aG9yOiBKYWt1YiBKYW5r
xa8gPCBqamFua3VAcmVkaGF0LmNvbSA+Cj4gCj4gPiA+ID4gPiA+Cj4gCj4gPiA+ID4gPiA+ID4g
RGF0ZTogU2F0IE1heSAyMyAxNjoyODo1MiAyMDIwICswMjAwCj4gCj4gPiA+ID4gPiA+Cj4gCj4g
PiA+ID4gPgo+IAo+ID4gPiA+ID4gPiA+IHNlc3Npb246IG1ha2Ugc3BpY2Vfc2Vzc2lvbl9nZXRf
d2ViZGF2X3NlcnZlcigpIHB1YmxpYwo+IAo+ID4gPiA+ID4gPgo+IAo+ID4gPiA+ID4KPiAKPiA+
ID4gPiA+ID4gPiBJdCB3aWxsIGJlIG5lY2Vzc2FyeSB0byBhY2Nlc3MgdGhlIHdlYmRhdiBzZXJ2
ZXIgZnJvbQo+IAo+ID4gPiA+ID4gPiA+IHNwaWNlLWd0ay1zZXNzaW9uLmMKPiAKPiA+ID4gPiA+
ID4KPiAKPiA+ID4gPiA+ID4gPiB3aGljaCBpc24ndCBjb21waWxlZCB3aXRoIHNwaWNlLXNlc3Np
b24tcHJpdi5oLCBzbyBtYWtlCj4gCj4gPiA+ID4gPiA+Cj4gCj4gPiA+ID4gPiA+ID4gc3BpY2Vf
c2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcigpIHB1YmxpYy4KPiAKPiA+ID4gPiA+ID4KPiAKPiA+
ID4gPiA+Cj4gCj4gPiA+ID4gPiA+IEkgaGF2ZW4ndCBsb29rZWQgYXQgdGhlIHdob2xlIHNlcmll
cy4gV291bGRuJ3QgaXQgbWFrZSBzZW5zZSB0bwo+ID4gPiA+ID4gPiBtYWtlCj4gPiA+ID4gPiA+
IGl0IGEKPiAKPiA+ID4gPiA+ID4gcmVhZC1vbmx5IHByb3BlcnR5IGluc3RlYWQ/Cj4gCj4gPiA+
ID4gPgo+IAo+ID4gPiA+ID4gSXQgc291bmRzIHJlYXNvbmFibGUgZm9yIG1lLgo+IAo+ID4gPiA+
ID4gSmFrdWIgPwo+IAo+ID4gPiA+ID4KPiAKPiA+ID4gPgo+IAo+ID4gPiA+IEkgYWdyZWUuCj4g
Cj4gPiA+ID4KPiAKPiA+ID4gPiBSZXZlcnQgdGhlIGNvbW1pdHMgcGxlYXNlLiBJJ2xsIHJlb3Bl
biB0aGUgbWVyZ2UgcmVxdWVzdCBvbmNlIEkgaGF2ZSBpdAo+IAo+ID4gPiA+IHJlYWR5Lgo+IAo+
ID4gPiA+Cj4gCj4gPiA+ID4gQ2hlZXJzLAo+IAo+ID4gPiA+IEpha3ViCj4gCj4gPiA+ID4KPiAK
PiA+ID4KPiAKPiA+ID4gVG8gYmUgaG9uZXN0IEkgZG9uJ3Qgc2VlIHRoZSBuZWVkIHRvIHJldmVy
dCBjb21taXRzLCBpdCdzIGp1c3QgYSBjaGFuZ2UKPiAKPiA+ID4gZnJvbSBwdWJsaWMgdG8gcHJp
dmF0ZS4KPiAKCj4gPiBPaywgc28gc2hvdWxkIEkgb3BlbiBhIHNlcGFyYXRlIE1SPwo+IAoKPiA+
IFRvIG1ha2Ugc3VyZSB0aGF0IEkgZGlkbid0IG1pc3VuZGVyc3RhbmQgaXQ6IHRoZSBzdWdnZXN0
aW9uIGlzIHRvIGtlZXAKPiAKPiA+IHNwaWNlX3Nlc3Npb25fZ2V0X3dlYmRhdl9zZXJ2ZXIoKSBw
cml2YXRlIGFuZCBpbnN0YWxsIGEgbmV3Cj4gCj4gPiBTcGljZVNlc3Npb24gcmVhZC1vbmx5IHBy
b3BlcnR5ICJ3ZWJkYXYiLCBjb3JyZWN0Pwo+IAoKPiB5ZXMgKHRoZSBtYWluIG1vdGl2YXRpb24g
aXMgdG8gYXZvaWQgYWRkaW5nIG5ldyBsaWJyYXJ5IHN5bWJvbHMsIGFuZAo+IHByb3BlcnRpZXMg
Y2FuIGJlIGxvb2tlZCB1cCBhdCBydW50aW1lLCB3aGljaCBtYXkgYXZvaWQgYnVtcGluZyBkZXBl
bmRlbmNpZXMKPiBpbiBzb21lIGNhc2VzKQoKT2gsIEkgdGhvdWdoIHRoZSBpZGVhIHdhcyBtYWtp
bmcgdGhlIG5ldyBwcm9wZXJ0eSBwcml2YXRlIHRvIGluIHRoZSBmdXR1cmUgaXQgY291bGQgYmUg
cmVtb3ZlZCBpZiBub3QgbmVlZGVkIGFueW1vcmUuIApZb3UgY2FuIGFjaGlldmUgdGhlIGR5bmFt
aWMgcmVzb2x1dGlvbiB1c2luZyBkbHN5bSBpZiBuZWVkZWQgdXNpbmcgbGlicmFyeSBzeW1ib2xz
LiAKSXQncyBub3QgdGhhdCBlYXN5IHRvIGxvb2sgdGhlIHByb3BlcnR5IGR5bmFtaWNhbGx5LCB0
byBhdm9pZCB3YXJuaW5ncyB5b3UgaGF2ZSB0byB1c2UgZ19vYmplY3RfY2xhc3NfZmluZF9wcm9w
ZXJ0eSBmaXJzdC4gCkZvciBhICJnZXQiIGJldHdlZW4gc3BpY2UtZ3RrIGFuZCBzcGljZS1nbGli
IHRoZSBjdXJyZW50IHNvbHV0aW9uIGlzIGVhc2llciBhbmQgY29uc2lzdGVudCwgdGhlcmUgYXJl
IGFscmVhZHkgbXVsdGlwbGUgc3BpY2Vfc2Vzc2lvbl9nZXRfKiBmdW5jdGlvbnMuIAoKRnJlZGlh
bm8gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
