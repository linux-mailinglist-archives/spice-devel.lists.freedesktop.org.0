Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6158E262FBD
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 16:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45FC6EB83;
	Wed,  9 Sep 2020 14:26:23 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
X-Greylist: delayed 572 seconds by postgrey-1.36 at gabe;
 Wed, 09 Sep 2020 14:26:22 UTC
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE246EB83
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:26:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06E6B10051C4;
 Wed,  9 Sep 2020 14:16:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F3EAD60BEC;
 Wed,  9 Sep 2020 14:16:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0941972E4;
 Wed,  9 Sep 2020 14:16:49 +0000 (UTC)
Date: Wed, 9 Sep 2020 10:16:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?Q?Marc-Andr=C3=A9?= Lureau <marcandre.lureau@gmail.com>
Message-ID: <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.26]
Thread-Topic: 6 commits - meson.build src/map-file src/spice-glib-sym-file
 src/spice-gtk-session.c src/spice-session.c src/spice-session.h
 src/spice-session-priv.h
Thread-Index: jBSVcf3CCGupWKVoYpI9DcdZX8rRUQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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

PiA+IGNvbW1pdCA0YjkwOTJiOTZiOGRhOTQ2ZmYzZDE3OTIyYjBmY2YyMjVjNWRjODFmCj4gCj4g
PiBBdXRob3I6IEpha3ViIEphbmvFryA8IGpqYW5rdUByZWRoYXQuY29tID4KPiAKPiA+IERhdGU6
IFNhdCBNYXkgMjMgMTY6Mjg6NTIgMjAyMCArMDIwMAo+IAoKPiA+IHNlc3Npb246IG1ha2Ugc3Bp
Y2Vfc2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcigpIHB1YmxpYwo+IAoKPiA+IEl0IHdpbGwgYmUg
bmVjZXNzYXJ5IHRvIGFjY2VzcyB0aGUgd2ViZGF2IHNlcnZlciBmcm9tIHNwaWNlLWd0ay1zZXNz
aW9uLmMKPiAKPiA+IHdoaWNoIGlzbid0IGNvbXBpbGVkIHdpdGggc3BpY2Utc2Vzc2lvbi1wcml2
LmgsIHNvIG1ha2UKPiAKPiA+IHNwaWNlX3Nlc3Npb25fZ2V0X3dlYmRhdl9zZXJ2ZXIoKSBwdWJs
aWMuCj4gCgo+IEkgaGF2ZW4ndCBsb29rZWQgYXQgdGhlIHdob2xlIHNlcmllcy4gV291bGRuJ3Qg
aXQgbWFrZSBzZW5zZSB0byBtYWtlIGl0IGEKPiByZWFkLW9ubHkgcHJvcGVydHkgaW5zdGVhZD8K
Ckl0IHNvdW5kcyByZWFzb25hYmxlIGZvciBtZS4gCkpha3ViID8gCgpGcmVkaWFubyAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
