Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8E0A07F9
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 19:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E664E8991D;
	Wed, 28 Aug 2019 17:00:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20698991D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 17:00:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5BD52190C01C
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 17:00:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 519DF1001959
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 17:00:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 485C9180B536;
 Wed, 28 Aug 2019 17:00:18 +0000 (UTC)
Date: Wed, 28 Aug 2019 13:00:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Daniel =?utf-8?Q?P=2E_Berrang=C3=A9?= <berrange@redhat.com>
Message-ID: <273007995.9975063.1567011618091.JavaMail.zimbra@redhat.com>
In-Reply-To: <1291295489.9974401.1567011247298.JavaMail.zimbra@redhat.com>
References: <20190828155716.6294-1-ssheribe@redhat.com>
 <629757608.9968633.1567009403052.JavaMail.zimbra@redhat.com>
 <20190828162852.GO2991@redhat.com>
 <1291295489.9974401.1567011247298.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.14]
Thread-Topic: meson: Bump minimum required meson_version to 0.50
Thread-Index: tLth9spJziQbqkleys2M+E3YEG2HL7ep1uba
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Wed, 28 Aug 2019 17:00:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] meson: Bump minimum required
 meson_version to 0.50
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiA+IAo+ID4gT24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMTI6MjM6MjNQTSAtMDQwMCwgRnJlZGlh
bm8gWmlnbGlvIHdyb3RlOgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgd2lsbCBkcm9wIHRoZSBmb2xs
b3dpbmcgd2FybmluZzoKPiA+ID4gPiAiUHJvamVjdCBzcGVjaWZpZXMgYSBtaW5pbXVtIG1lc29u
X3ZlcnNpb24gJz49IDAuNDknIGJ1dCB1c2VzCj4gPiA+ID4gIGZlYXR1cmVzIHdoaWNoIHdlcmUg
YWRkZWQgaW4gbmV3ZXIgdmVyc2lvbnMiCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
U25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiA+ID4gCj4gPiA+IFdoeSBub3Qg
MC41MT8gRnJvbSByZXBvbG9neSBsb29rcyBsaWtlIGFsbCBkaXN0cm9zIGhhdmUgbGVzcyB0aGFu
IDAuNTAgb3IKPiA+ID4gYXQgbGVhc3QgMC41MS4KPiA+ID4gCj4gPiA+IEl0IGxvb2tzIGxpa2Ug
dGhpcyB3YXJuaW5nIGlzIGEgZmFsc2UgcG9zaXRpdmUsIEkgZG9uJ3QgcmVtZW1iZXIgYW55Cj4g
PiA+IHNpZ25pZmljYW50IHVwZGF0ZXMgc2luY2Ugd2UgYnVtcCB0byAwLjQ5Lgo+ID4gCj4gPiBU
aGUgY29tbWl0IG1lc3NhZ2UgaGVyZSBpcyB0cnVuY2F0ZWQgZnJvbSB3aGF0IG1lc29uIGFjdHVh
bGx5IHJlcG9ydHMKPiA+IAo+ID4gICBXQVJOSU5HOiBQcm9qZWN0IHNwZWNpZmllcyBhIG1pbmlt
dW0gbWVzb25fdmVyc2lvbiAnPj0gMC40OScgYnV0IHVzZXMKPiA+ICAgZmVhdHVyZXMgd2hpY2gg
d2VyZSBhZGRlZCBpbiBuZXdlciB2ZXJzaW9uczoKPiA+ICAgICogMC41MC4wOiB7J2luc3RhbGwg
YXJnIGluIGNvbmZpZ3VyZV9maWxlJ30KPiA+IAo+IAo+IExvb2tzIGxpa2UgdGhpcyB3YXJuaW5n
IGlzIGFsc28gcHJlc2VudCBpbiBzcGljZS1jb21tb24gYW5kIHNwaWNlLXNlcnZlci4KPiBTbmly
LCBjYW4geW91IHBvc3QgcGF0Y2hlcyBmb3IgYWxsIHRoZXNlIHRvbz8KPiAKCkkgcmVhZCBiZXR0
ZXIgdGhlIGRvY3VtZW50YXRpb24gKGZvciBjb25maWd1cmVfZmlsZSkuClRoZSAiaW5zdGFsbCIg
YXJndW1lbnQgaXMgZmFsc2UgYnkgZGVmYXVsdCBpZiBpbnN0YWxsX2RpciBpcyBub3QgcHJvdmlk
ZWQKc28gcmVtb3ZpbmcgaW5zdGFsbCBhcmd1bWVudCB3aWxsIGFsc28gcmVtb3ZlIHRoZSB3YXJu
aW5nLgpUaGUgc2FtZSBhcHBseSB0byBzcGljZS1jb21tb24uCnNwaWNlLXNlcnZlciBpbnN0ZWFk
IHVzZXMgImluc3RhbGxfZGlyIiBzbyBNZXNvbiAwLjUwIGlzIHJlcXVpcmVkIGZvciBpdC4KCj4g
PiBUaGUgdG9wIGxldmVsIG1lc29uLmJ1aWxkIGRvZXMgaW5kZWVkIHVzZSB0aGlzICdpbnN0YWxs
JyBhcmcKPiA+IHNvIG5lZWVkcyAwLjUwLjAuCj4gPiAKPiA+IAo+ID4gUmVnYXJkcywKPiA+IERh
bmllbAo+ID4gLS0KPiA+IHw6IGh0dHBzOi8vYmVycmFuZ2UuY29tICAgICAgLW8tICAgIGh0dHBz
Oi8vd3d3LmZsaWNrci5jb20vcGhvdG9zL2RiZXJyYW5nZQo+ID4gfDp8Cj4gPiB8OiBodHRwczov
L2xpYnZpcnQub3JnICAgICAgICAgLW8tICAgICAgICAgICAgaHR0cHM6Ly9mc3RvcDEzOC5iZXJy
YW5nZS5jb20KPiA+IHw6fAo+ID4gfDogaHR0cHM6Ly9lbnRhbmdsZS1waG90by5vcmcgICAgLW8t
ICAgIGh0dHBzOi8vd3d3Lmluc3RhZ3JhbS5jb20vZGJlcnJhbmdlCj4gPiB8OnwKPiA+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
