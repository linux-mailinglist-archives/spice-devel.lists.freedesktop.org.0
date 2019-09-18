Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DB9B620B
	for <lists+spice-devel@lfdr.de>; Wed, 18 Sep 2019 13:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6276EED4;
	Wed, 18 Sep 2019 11:06:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D8576EED4
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 11:06:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ABECE3086228;
 Wed, 18 Sep 2019 11:06:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A24C360C18;
 Wed, 18 Sep 2019 11:06:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 970D64EA64;
 Wed, 18 Sep 2019 11:06:23 +0000 (UTC)
Date: Wed, 18 Sep 2019 07:06:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?Q?Niccol=C3=B2?= Belli <darkbasic@linuxsystems.it>
Message-ID: <19874737.458036.1568804783224.JavaMail.zimbra@redhat.com>
In-Reply-To: <6be70c3dce8a4beaa49e88f6f35a20d0@linuxsystems.it>
References: <3f6e9905c9111b49b559b2c73cf0b8b4@linuxsystems.it>
 <539543765.76418.1568620402733.JavaMail.zimbra@redhat.com>
 <6be70c3dce8a4beaa49e88f6f35a20d0@linuxsystems.it>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.10]
Thread-Topic: Running SPICE on ppc64le
Thread-Index: MEeqHy/3aNi9vSU9ybN1n/NuZQnPzg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 18 Sep 2019 11:06:24 +0000 (UTC)
Subject: Re: [Spice-devel] Running SPICE on ppc64le
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

PiAKPiBUaGUgZnVubnkgcGFydCBpcyB0aGF0IEknbSAqbm90KiBvbiBCaWcgRW5kaWFuLCBteSBw
cGM2NCBydW5zIExpdHRsZQo+IEVuZGlhbiBGZWRvcmEuCj4gRm9yIHNvbWUgcmVhc29uIHNwaWNl
IChhbmQgUVhMIGFwcGFyZW50bHkpIGRvbid0IGdldCBjb21waWxlZCBvbgo+IHBwYzY0bGU6IGFy
ZSB5b3Ugc3VnZ2VzdGluZyB0aGF0IGlmIEkgc29tZWhvdyBlbmFibGUgaXQgYXQgY29tcGlsYXRp
b24KPiB0aW1lIHRoZW4gaXQgc2hvdWxkIHdvcmsgb3V0IG9mIHRoZSBib3g/Cj4gSWYgc28sIHdo
eSBkaWQgRmVkb3JhIGRpc2FibGUgaXQ/Cj4gCj4gTmljY29sbycKPiAKCkkgc3VwcG9zZSBmb3Ig
aGlzdG9yaWMgcmVhc29ucyBhbmQgYXMgbm90IG11Y2ggdGVzdGVkIHRvIGxpbWl0IHRoZQpidWdz
IGluIGNhc2UgdGhlcmUgYXJlIGlzc3VlcyA6LSkKSSByZW1lbWJlciBRWEwgd2FzIGRpc2FibGVk
IGZvciBubyBJbnRlbCBtYWNoaW5lcyBidXQgSSBjYW5ub3QgZmluZAp0aGF0IGxpbWl0YXRpb24g
YW55IG1vcmUgKEkgdGhpbmsgd2FzIGluIGRlZmF1bHQtY29uZmlncyBkaXJlY3RvcnkKb2YgUWVt
dSkuCgpJbiB0aGUgUlBNIHNwZWMgZmlsZSB0aGVyZSBhcmUgdGhlc2UgbGluZXM6CgogICMgTWF0
Y2hlcyBzcGljZSBFeGNsdXNpdmVBcmNoCiAgJWlmYXJjaCAle2l4ODZ9IHg4Nl82NCAle2FybX0g
YWFyY2g2NAogICVnbG9iYWwgaGF2ZV9zcGljZSAgIDEKICAlZW5kaWYKCnNvIEkgc3VwcG9zZSB5
b3Ugc2hvdWxkIGZvcmNlIGhhdmVfc3BpY2UgaWYgeW91IHdhbnQgdG8gcmVjb21waWxlIHRoZSBS
UE0sCmxpa2UgYWRkaW5nICItRCAnaGF2ZV9zcGljZSAxJyIgdG8gbW9jayBjb21tYW5kLgoKRnJl
ZGlhbm8KCj4gSWwgMjAxOS0wOS0xNiAwOTo1MyBGcmVkaWFubyBaaWdsaW8gaGEgc2NyaXR0bzoK
PiA+PiBIaSwKPiA+PiBJcyB0aGVyZSBhbnkgcmVhc29uIHdoeSBTcGljZSBpcyBub3QgYXZhaWxh
YmxlIG9uIHBwYzY0bGU/Cj4gPj4gSSd2ZSByZWFkIHRoZXJlIGFyZSBzdGlsbCBzb21lIGlzc3Vl
cyB3aXRoIGJpZyBlbmRpYW4sIGJ1dCB3aGF0J3MKPiA+PiB3cm9uZwo+ID4+IHdpdGggbGl0dGxl
IGVuZGlhbj8KPiA+PiBJIHdvdWxkIHJlYWxseSBsb3ZlIHRvIGJlIGFibGUgdG8gdXNlIFFYTCBh
bmQgZXNwZWNpYWxseSBVU0IKPiA+PiByZWRpcmVjdGlvbgo+ID4+IG9uIG15IFJhcHRvciBCbGFj
a2JpcmQgKFBvd2VyIDkpLgo+ID4+IAo+ID4+IEJlc3RzLAo+ID4+IE5pY2NvbG8nCj4gPiAKPiA+
IFNQSUNFIGRvZXMgbm90IG1lYW4gUVhMLCB5b3UgY2FuIHVzZSBTUElDRSB3aXRob3V0IFFYTC4K
PiA+IFdoeSBRWEwgaXMgbm90IGNvbXBpbGVkIGZvciBQUEMgSSBoYXZlIG5vIGlkZWEuCj4gPiBS
ZWNlbnRseSB0aGVyZSB3ZXJlIHF1aXRlIHNvbWUgY29tcGF0aWJpbGl0eSBwYXRjaGVzIGZvciBi
aWcgZW5kaWFuCj4gPiBtYWNoaW5lcywKPiA+IHNob3VsZCB3b3JrIG1vc3RseSBvdXQgb2YgdGhl
IGJveCAoSSBoYXZlIG9ubHkgc29tZSBtaW5vciBwYXRjaGVzIGZvcgo+ID4gdGhlIGFnZW50KS4K
PiA+IE9mZmljaWFsbHkgb25seSB4NjQgYW5kIHg4NiBhcmUgc3VwcG9ydGVkLgo+ID4gCj4gPiBG
cmVkaWFubwo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
