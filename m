Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB18433C5
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144C089786;
	Thu, 13 Jun 2019 07:40:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30DD89786
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:40:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 60815309B153
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:40:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5769D60FA3
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:40:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4D1681806B0E;
 Thu, 13 Jun 2019 07:40:17 +0000 (UTC)
Date: Thu, 13 Jun 2019 03:40:17 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1608797395.22540794.1560411617210.JavaMail.zimbra@redhat.com>
In-Reply-To: <a306c8ca-a3e5-4385-6d27-14c9978b4809@redhat.com>
References: <20190612120659.10083-1-fziglio@redhat.com>
 <a306c8ca-a3e5-4385-6d27-14c9978b4809@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.51, 10.4.195.6]
Thread-Topic: build: Disable Celt support by default
Thread-Index: yB8dKJ3SKYZSXPM07b2mjTKnTKIOvg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 13 Jun 2019 07:40:17 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] build: Disable Celt support
 by default
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
Cc: spice-devel@lists.freedesktop.org, Christophe Fergeau <cfergeau@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiBGaW5lIHdpdGggbWUuCj4KClRoaXMgaXMgYWxzbyByZWxhdGVkIHRvIGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS9tZXJnZV9yZXF1ZXN0cy8y
LApJIHRhbGtlZCB3aXRoIENocmlzdG9waGUgYW5kIGhlIGFncmVlZCB3b3VsZCBiZSBzZW5zaWJs
ZSB0byBkaXNhYmxlIGJ5IGRlZmF1bHQuCiAKPiBPbiA2LzEyLzE5IDM6MDYgUE0sIEZyZWRpYW5v
IFppZ2xpbyB3cm90ZToKPiA+IFdlIHN0YXJ0ZWQgZGlzYWJsaW5nIENlbHQgc3VwcG9ydCBtYWtp
bmcgdGhlIG9wdGlvbiByZXF1aXJlZC4KPiA+IEFmdGVyIDIgcmVsZWFzZXMgc3RhcnQgbWFraW5n
IGl0IGRpc2FibGVkIHVubGVzcyBleHBsaWNpdGx5Cj4gPiBlbmFibGVkLgo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4g
PiAgIG00L3NwaWNlLWRlcHMubTQgIHwgMTQgKystLS0tLS0tLS0tLS0KPiA+ICAgbWVzb25fb3B0
aW9ucy50eHQgfCAgMSArCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvbTQvc3BpY2UtZGVwcy5tNCBiL200
L3NwaWNlLWRlcHMubTQKPiA+IGluZGV4IDAyMjMwZGQuLjEyMTQzNDEgMTAwNjQ0Cj4gPiAtLS0g
YS9tNC9zcGljZS1kZXBzLm00Cj4gPiArKysgYi9tNC9zcGljZS1kZXBzLm00Cj4gPiBAQCAtMTAx
LDIxICsxMDEsMTEgQEAgQUNfREVGVU4oW1NQSUNFX0NIRUNLX1NNQVJUQ0FSRF0sIFsKPiA+ICAg
QUNfREVGVU4oW1NQSUNFX0NIRUNLX0NFTFQwNTFdLCBbCj4gPiAgICAgICBBQ19BUkdfRU5BQkxF
KFtjZWx0MDUxXSwKPiA+ICAgICAgICAgICBBU19IRUxQX1NUUklORyhbLS1lbmFibGUtY2VsdDA1
MV0sCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBbRW5hYmxlIGNlbHQwNTEgYXVkaW8gY29k
ZWMKPiA+IEA8OkBkZWZhdWx0PWF1dG9AOj5AXSksLAo+ID4gLSAgICAgICAgW2VuYWJsZV9jZWx0
MDUxPSJhdXRvIl0pCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBbRW5hYmxlIGNlbHQwNTEg
YXVkaW8gY29kZWMgQDw6QGRlZmF1bHQ9bm9AOj5AXSksLAo+ID4gKyAgICAgICAgW2VuYWJsZV9j
ZWx0MDUxPSJubyJdKQo+ID4gICAKPiA+ICAgICAgIGlmIHRlc3QgIngkZW5hYmxlX2NlbHQwNTEi
ICE9ICJ4bm8iOyB0aGVuCj4gPiAgICAgICAgICAgUEtHX0NIRUNLX01PRFVMRVMoW0NFTFQwNTFd
LCBbY2VsdDA1MSA+PSAwLjUuMS4xXSwKPiA+ICAgICAgICAgICBbaGF2ZV9jZWx0MDUxPXllc10s
IFtoYXZlX2NlbHQwNTE9bm9dKQo+ID4gLSAgICAgICAgaWYgdGVzdCAieCRlbmFibGVfY2VsdDA1
MSIgPSAieGF1dG8iOyB0aGVuCj4gPiAtICAgICAgICAgICAgaWYgdGVzdCAieCRoYXZlX2NlbHQw
NTEiID0gInh5ZXMiOyB0aGVuCj4gPiAtICAgICAgICAgICAgICAgIEFDX01TR19FUlJPUihtNF9u
b3JtYWxpemUoWwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ0VMVCAwLjUu
MS54IGhhcyBiZWVuIGRldGVjdGVkLCBcCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBidXQgQ0VMVCBzdXBwb3J0IGlzIG5vIGxvbmdlcgo+ID4gYXV0b21hdGljYWxseSBlbmFi
bGVkIGJ5IGRlZmF1bHQuIFwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBs
ZWFzZSBleHBsaWNpdGx5IHVzZSAtLWVuYWJsZS1jZWx0MDUxIG9yCj4gPiAtLWRpc2FibGUtY2Vs
dDA1MQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXSkpCj4gPiAtICAgICAgICAg
ICAgZmkKPiA+IC0gICAgICAgICAgICAjIGhhdmVfY2VsdDA1MSBpcyAibm8iIGhlcmUsIHNvIGNl
bHQgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdAo+ID4gLSAgICAgICAgZmkKPiA+ICAgICAgICAgICBp
ZiB0ZXN0ICJ4JGVuYWJsZV9jZWx0MDUxIiA9ICJ4eWVzIiAmJiB0ZXN0ICJ4JGhhdmVfY2VsdDA1
MSIgIT0KPiA+ICAgICAgICAgICAieHllcyI7IHRoZW4KPiA+ICAgICAgICAgICAgICAgQUNfTVNH
X0VSUk9SKFsiLS1lbmFibGUtY2VsdDA1MSBoYXMgYmVlbiBzcGVjaWZpZWQsIGJ1dCBDRUxUCj4g
PiAgICAgICAgICAgICAgIDAuNS4xIGlzIG1pc3NpbmciXSkKPiA+ICAgICAgICAgICBmaQo+ID4g
ZGlmZiAtLWdpdCBhL21lc29uX29wdGlvbnMudHh0IGIvbWVzb25fb3B0aW9ucy50eHQKPiA+IGlu
ZGV4IDdlOWU3MDQuLmM5ODI3MzYgMTAwNjQ0Cj4gPiAtLS0gYS9tZXNvbl9vcHRpb25zLnR4dAo+
ID4gKysrIGIvbWVzb25fb3B0aW9ucy50eHQKPiA+IEBAIC0xMiw2ICsxMiw3IEBAIG9wdGlvbign
ZXh0cmEtY2hlY2tzJywKPiA+ICAgCj4gPiAgIG9wdGlvbignY2VsdDA1MScsCj4gPiAgICAgICB0
eXBlIDogJ2ZlYXR1cmUnLAo+ID4gKyAgICB2YWx1ZSA6ICdkaXNhYmxlZCcsCj4gPiAgICAgICB5
aWVsZCA6IHRydWUsCj4gPiAgICAgICBkZXNjcmlwdGlvbjogJ0VuYWJsZSBjZWx0MDUxIGF1ZGlv
IGNvZGVjJykKPiA+ICAgCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
