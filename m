Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A357FB7
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285EF6E121;
	Thu, 27 Jun 2019 09:53:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51B16E121
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:53:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 622B2308427C
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:53:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5701F60856
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:53:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DD2B1806B18;
 Thu, 27 Jun 2019 09:53:32 +0000 (UTC)
Date: Thu, 27 Jun 2019 05:53:32 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1753688150.24959702.1561629212263.JavaMail.zimbra@redhat.com>
In-Reply-To: <CADJ1XR2-hojg9oFDbMuqY_swJ6vkYSmnfapZurMMZj2QEy86MA@mail.gmail.com>
References: <CADJ1XR2-hojg9oFDbMuqY_swJ6vkYSmnfapZurMMZj2QEy86MA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.3]
Thread-Topic: Spice, GStreamer and seccomp issue
Thread-Index: Y3ybZGgNcqe61SRaLh4P+/UTSpgaAw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 27 Jun 2019 09:53:32 +0000 (UTC)
Subject: Re: [Spice-devel] Spice, GStreamer and seccomp issue
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

PiAKPiBIZWxsbywKPiAKPiBJIHNoYXJlIGZvciBpbmZvcm1hdGlvbiB0aGUgcHJvYmxlbSBhbmQg
c29sdXRpb24gSSBlbmNvdW50ZXJlZCB3aHkKPiB0cnlpbmcgdG8gcnVuIHNwaWNlLXNlcnZlciBn
c3RyZWFtZXIgZW5jb2Rpbmcgb24gRmVkb3JhMzA6Cj4gCj4gPiB3YXJuaW5nOiBHU3RyZWFtZXI6
IEV4dGVybmFsIHBsdWdpbiBsb2FkZXIgZmFpbGVkLiBUaGlzIG1vc3QgbGlrZWx5IG1lYW5zCj4g
PiB0aGF0IHRoZSBwbHVnaW4gbG9hZGVyIGhlbHBlciBiaW5hcnkgd2FzIG5vdCBmb3VuZCBvciBj
b3VsZCBub3QgYmUgcnVuLgo+ID4gWW91IG1pZ2h0IG5lZWQgdG8gc2V0IHRoZSBHU1RfUExVR0lO
X1NDQU5ORVIgZW52aXJvbm1lbnQgdmFyaWFibGUgaWYgeW91cgo+ID4gc2V0dXAgaXMgdW51c3Vh
bC4gVGhpcyBzaG91bGQgbm9ybWFsbHkgbm90IGJlIHJlcXVpcmVkIHRob3VnaC4KPiAKPiB0aGlz
IHdhcyBkdWUgdG8gc2VjY29tcCBzeXNjYWxsIGZpbHRlcmluZywgYXMgbXkgKHZpcnNoKSBWTSB3
YXMKPiBydW5uaW5nIHdpdGggdGhpcyBvcHRpb246Cj4gCj4gPiAtc2FuZGJveAo+ID4gb24sb2Jz
b2xldGU9ZGVueSxlbGV2YXRlcHJpdmlsZWdlcz1kZW55LHNwYXduPWRlbnkscmVzb3VyY2Vjb250
cm9sPWRlbnkKPiAKPiBJIGRvbid0IGtub3cgd2hhdCBpcyB0aGUgY2xlYW4gd2F5IHRvIHNvbHZl
IGl0LCBidXQgcGF0Y2hpbmcgcWVtdSB0bwo+IGZvcmNlICItc2FuZGJveCBvZmYiIGdldHMgcmlk
IG9mIHRoZSBjb2RlYyBpc3N1ZQo+IAo+IAo+IHJlZ2FyZHMsCj4gCj4gS2V2aW4KClNvLCBGZWRv
cmEgMzAgYWRkZWQgc29tZSBzZWN1cml0eSBmZWF0dXJlIHRvIGRpc2FibGUgbG9hZGluZyBwbHVn
aW5zIGZyb20KUWVtdSBleGVjdXRhYmxlLgpUaGUgcmVhc29uIGlzIHRoYXQgcG90ZW50aWFsbHkg
UWVtdSBjb3VsZCBiZSBleHBsb2l0ZWQgdXNpbmcgdGhlIFZNIGNvZGUKd2hpY2ggaXMgYnkgZGVm
aW5pdGlvbiBpbnNlY3VyZSBhbmQgc28gZGlmZmVyZW50IHNlY3VyaXR5IGNoZWNrcyBhcmUgZW5h
YmxlZC4KRXZlbiBpZiB5b3UgZGlzYWJsZSB0aGUgbmV3IHNhbmQgYm94aW5nIGZlYXR1cmUgR1N0
cmVhbWVyIHdvbid0IHdvcmsgYXMKZXhlY21lbSAodGhhdCBpcyBhbGxvd2luZyB0byBjcmFmdCBj
b2RlIGR5bmFtaWNhbGx5KSwgdXNlZCBieSBsaWJvcmMsIGEgYmFzZQpsaWJyYXJ5IG9mIG1hbnkg
R1N0cmVhbWVyIHBsdWdpbnMsIGlzIGRpc2FibGVkIHRvby4KCkFzIG1hbnkgb2YgdGhlc2UgZmVh
dHVyZSBhcmUgcGVyLXByb2Nlc3MgdGhlICJzb2x1dGlvbiIgc2VlbXMgdG8gZG8gdGhlc2UKc3R1
ZmYgKGVuY29kaW5nIGluIHRoaXMgY2FzZSkgaW4gYW5vdGhlciBwcm9jZXNzLgpTZXBhcmF0aW5n
IGp1c3QgdGhlIGVuY29kaW5nIGluc3RlYWQgb2YgYWxsIFNQSUNFIHNlZW1zIHRvIG1lIG11Y2gg
ZWFzaWVyCihzb21lIGZlYXR1cmVzIGFyZSBzdHJvbmdseSBkZXBlbmRlbnQgb24gc2hhcmluZyBw
b2ludGVycyBhbmQgYnVmZmVycykuCkkgc2VlIDIgcG9zc2libGUgY2hvaWNlczoKLSBlbmNvZGlu
ZyBwcm9jZXNzIGFzIGEgY2hpbGQgb2YgU1BJQ0Ugc2VydmVyICh0aGF0IGlzIFFlbXUgcHJvY2Vz
cyk7Ci0gZW5jb2RpbmcgcHJvY2VzcyBhcyBub3QgYSBjaGlsZCBvZiBTUElDRSBzZXJ2ZXIuIFRo
aXMgcmVxdWlyZXMgc29tZQogIHNvcnQgb2YgZGFlbW9uIGxhdW5jaGVkIGJlZm9yZSBhbnkgUWVt
dSBwcm9jZXNzLgpCb3RoIGhhdmUgc2VjdXJpdHkgY29uY2VybnM7IFFlbXUgd2lsbCBiZSBhYmxl
IHRvIGFjY2VzcyBzb21lIGZlYXR1cmVzCndoaWNoIGFyZSwgZm9yIHNlY3VyaXR5IHJlYXNvbnMs
IGRpc2FibGVkLiBJbiB0aGUgZmlyc3QgY2FzZSB0aGUgY2hpbGQKcHJvY2VzcyB3aWxsIGhhdmUg
dG8gZWxldmF0ZSBpdCdzIHByaXZpbGVnZXMgbWFraW5nIGl0IHBvc3NpYmxlIHRvIHVzZQp0aGUg
cmVxdWlyZWQgZmVhdHVyZXMgKGV4ZWNtZW0gcmVxdWlyZXMgdG8gY2hhbmdlIFNFTGludXggY29u
dGV4dCB3aGljaApyZXF1aXJlcyBhbiBleGVjdmUgY2FsbCwgZm9yayBpcyBub3QgZW5vdWdoKS4g
SW4gdGhlIHNlY29uZCBjYXNlIHlvdQphbGxvd3MgYW55IHByb2Nlc3MgdG8gYXNrIGZvciB0aGVz
ZSBzZXJ2aWNlcy4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
