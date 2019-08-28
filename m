Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C073A07E1
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C83089131;
	Wed, 28 Aug 2019 16:54:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB9489131
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:54:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D71980038D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:54:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 832D8194BE
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:54:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 79F302551B;
 Wed, 28 Aug 2019 16:54:07 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:54:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Daniel =?utf-8?Q?P=2E_Berrang=C3=A9?= <berrange@redhat.com>
Message-ID: <1291295489.9974401.1567011247298.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190828162852.GO2991@redhat.com>
References: <20190828155716.6294-1-ssheribe@redhat.com>
 <629757608.9968633.1567009403052.JavaMail.zimbra@redhat.com>
 <20190828162852.GO2991@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.12]
Thread-Topic: meson: Bump minimum required meson_version to 0.50
Thread-Index: tLth9spJziQbqkleys2M+E3YEG2HLw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Wed, 28 Aug 2019 16:54:07 +0000 (UTC)
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

PiAKPiBPbiBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAxMjoyMzoyM1BNIC0wNDAwLCBGcmVkaWFubyBa
aWdsaW8gd3JvdGU6Cj4gPiA+IAo+ID4gPiBUaGlzIHdpbGwgZHJvcCB0aGUgZm9sbG93aW5nIHdh
cm5pbmc6Cj4gPiA+ICJQcm9qZWN0IHNwZWNpZmllcyBhIG1pbmltdW0gbWVzb25fdmVyc2lvbiAn
Pj0gMC40OScgYnV0IHVzZXMKPiA+ID4gIGZlYXR1cmVzIHdoaWNoIHdlcmUgYWRkZWQgaW4gbmV3
ZXIgdmVyc2lvbnMiCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTbmlyIFNoZXJpYmVyIDxz
c2hlcmliZUByZWRoYXQuY29tPgo+ID4gCj4gPiBXaHkgbm90IDAuNTE/IEZyb20gcmVwb2xvZ3kg
bG9va3MgbGlrZSBhbGwgZGlzdHJvcyBoYXZlIGxlc3MgdGhhbiAwLjUwIG9yCj4gPiBhdCBsZWFz
dCAwLjUxLgo+ID4gCj4gPiBJdCBsb29rcyBsaWtlIHRoaXMgd2FybmluZyBpcyBhIGZhbHNlIHBv
c2l0aXZlLCBJIGRvbid0IHJlbWVtYmVyIGFueQo+ID4gc2lnbmlmaWNhbnQgdXBkYXRlcyBzaW5j
ZSB3ZSBidW1wIHRvIDAuNDkuCj4gCj4gVGhlIGNvbW1pdCBtZXNzYWdlIGhlcmUgaXMgdHJ1bmNh
dGVkIGZyb20gd2hhdCBtZXNvbiBhY3R1YWxseSByZXBvcnRzCj4gCj4gICBXQVJOSU5HOiBQcm9q
ZWN0IHNwZWNpZmllcyBhIG1pbmltdW0gbWVzb25fdmVyc2lvbiAnPj0gMC40OScgYnV0IHVzZXMK
PiAgIGZlYXR1cmVzIHdoaWNoIHdlcmUgYWRkZWQgaW4gbmV3ZXIgdmVyc2lvbnM6Cj4gICAgKiAw
LjUwLjA6IHsnaW5zdGFsbCBhcmcgaW4gY29uZmlndXJlX2ZpbGUnfQo+IAoKTG9va3MgbGlrZSB0
aGlzIHdhcm5pbmcgaXMgYWxzbyBwcmVzZW50IGluIHNwaWNlLWNvbW1vbiBhbmQgc3BpY2Utc2Vy
dmVyLgpTbmlyLCBjYW4geW91IHBvc3QgcGF0Y2hlcyBmb3IgYWxsIHRoZXNlIHRvbz8KCj4gVGhl
IHRvcCBsZXZlbCBtZXNvbi5idWlsZCBkb2VzIGluZGVlZCB1c2UgdGhpcyAnaW5zdGFsbCcgYXJn
Cj4gc28gbmVlZWRzIDAuNTAuMC4KPiAKPiAKPiBSZWdhcmRzLAo+IERhbmllbAo+IC0tCj4gfDog
aHR0cHM6Ly9iZXJyYW5nZS5jb20gICAgICAtby0gICAgaHR0cHM6Ly93d3cuZmxpY2tyLmNvbS9w
aG90b3MvZGJlcnJhbmdlCj4gfDp8Cj4gfDogaHR0cHM6Ly9saWJ2aXJ0Lm9yZyAgICAgICAgIC1v
LSAgICAgICAgICAgIGh0dHBzOi8vZnN0b3AxMzguYmVycmFuZ2UuY29tCj4gfDp8Cj4gfDogaHR0
cHM6Ly9lbnRhbmdsZS1waG90by5vcmcgICAgLW8tICAgIGh0dHBzOi8vd3d3Lmluc3RhZ3JhbS5j
b20vZGJlcnJhbmdlCj4gfDp8Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
