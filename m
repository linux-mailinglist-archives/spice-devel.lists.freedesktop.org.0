Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 202712D8C6
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2019 11:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E71189CAD;
	Wed, 29 May 2019 09:16:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC6189CAD
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C916C307D96D
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BEE69171B4
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B50C11806B12
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:16:15 +0000 (UTC)
Date: Wed, 29 May 2019 05:16:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1112673652.20497835.1559121375693.JavaMail.zimbra@redhat.com>
In-Reply-To: <1704233502.18993369.1558342649507.JavaMail.zimbra@redhat.com>
References: <20190513094556.14035-1-fziglio@redhat.com>
 <20190513094556.14035-3-fziglio@redhat.com>
 <1704233502.18993369.1558342649507.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.11]
Thread-Topic: qxl_dev: Move QXLReleaseInfoExt out of start/end-packed.h
Thread-Index: gALPBO8iB8Q2mCOMed+sUMVh+5f5zTDXMnUI
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 29 May 2019 09:16:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol 3/3] qxl_dev: Move
 QXLReleaseInfoExt out of start/end-packed.h
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IFRoaXMgc3RydWN0dXJlIGlzIG5vdCBkZWNsYXJl
cyBhcyBTUElDRV9BVFRSX1BBQ0tFRCByZXN1bHRpbmcgaXQKPiA+IGFzIGFsaWduZWQgYW5kIG5v
IHBhY2tlZCB1c2luZyBHQ0MgKG5vIE1pbmdXKS4KPiA+IFRoaXMgc3RydWN0dXJlIGlzIG9ubHkg
cGFja2VkIHVuZGVyIE1pbmdXIG9yIE1pY3Jvc29mdCBjb21waWxlcnMuCj4gPiBUaGlzIHN0cnVj
dHVyZSBpcyBub3QgdGVjaG5pY2FsbHkgYSBkZWZpbml0aW9uIGZvciBRWEwgZGV2aWNlIGJ1dAo+
ID4gaXMgdXNlZCBvbmx5IGZvciBzcGljZS1zZXJ2ZXIgUVhMIGludGVyZmFjZS4KPiA+IEFzIHNh
aWQgYWJvdmUgdGhpcyBjaGFuZ2UgY291bGQgYWZmZWN0IG9ubHkgTWluZ1cvTWljcm9zb2Z0IHRo
YXQgaXMKPiA+IG9ubHkgV2luZG93cyBBQkkgb2Ygc3BpY2Utc2VydmVyICh2ZXJ5IHJlY2VudGx5
IGFkZGVkKSBzbwo+ID4gZm9sbG93aW5nIGxpbmVzIGFyZSByZWFsbHkgbm90IG11Y2ggaW1wb3J0
YW50Lgo+ID4gTm90ZSB0aGF0IFdpbmRvd3MgZG9lcyBub3Qgc3VwcG9ydCBhcmNoaXRlY3R1cmVz
IHdpdGggQ1BVcyBub3QKPiA+IHN1cHBvcnRpbmcgdW5hbGlnbmVkIGFjY2Vzcy4KPiA+IFVuZGVy
IFdpbjMyIHRoaXMgY2hhbmdlIGRvbid0IGFmZmVjdCBzaXplIHNvIG5vdGhpbmcgbXVjaCBjYW4g
Y2hhbmdlLgo+ID4gVGhpcyBzdHJ1Y3R1cmUgaXMgY3VycmVudGx5IHBhc3NlZCBhcyB2YWx1ZSB0
byByZWxlYXNlX3Jlc291cmNlCj4gPiBjYWxsYmFjay4gVW5kZXIgV2luNjQgdGhpcyBzdHJ1Y3R1
cmUgaXMgcGFzc2VkIGxpa2UgYQo+ID4gImNvbnN0IFFYTFJlbGVhc2VJbmZvRXh0ICoiIHNvIGV2
ZW4gaWYgdGhlIHN0cnVjdHVyZSBpcyAxNiBieXRlcyBpbnN0ZWFkCj4gPiBvZiAxMiB0aGlzIGlz
IHJlYWQgdGhlIHNhbWUgd2F5Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNwaWNlL3F4bF9kZXYuaCB8IDEw
ICsrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3BpY2UvcXhsX2Rldi5oIGIvc3BpY2UvcXhs
X2Rldi5oCj4gPiBpbmRleCA2NTlmOTMwLi5jODQ0ZDdiIDEwMDY0NAo+ID4gLS0tIGEvc3BpY2Uv
cXhsX2Rldi5oCj4gPiArKysgYi9zcGljZS9xeGxfZGV2LmgKPiA+IEBAIC0yODAsMTEgKzI4MCw2
IEBAIHR5cGVkZWYgdW5pb24gU1BJQ0VfQVRUUl9QQUNLRUQgUVhMUmVsZWFzZUluZm8gewo+ID4g
ICAgICB1aW50NjRfdCBuZXh0OyAgICAvLyBvdXQKPiA+ICB9IFFYTFJlbGVhc2VJbmZvOwo+ID4g
IAo+ID4gLXR5cGVkZWYgc3RydWN0IFFYTFJlbGVhc2VJbmZvRXh0IHsKPiA+IC0gICAgUVhMUmVs
ZWFzZUluZm8gKmluZm87Cj4gPiAtICAgIHVpbnQzMl90IGdyb3VwX2lkOwo+ID4gLX0gUVhMUmVs
ZWFzZUluZm9FeHQ7Cj4gPiAtCj4gPiAgdHlwZWRlZiBzdHJ1Y3QgIFNQSUNFX0FUVFJfUEFDS0VE
IFFYTERhdGFDaHVuayB7Cj4gPiAgICAgIHVpbnQzMl90IGRhdGFfc2l6ZTsKPiA+ICAgICAgUVhM
UEhZU0lDQUwgcHJldl9jaHVuazsKPiA+IEBAIC03NzksNCArNzc0LDkgQEAgdHlwZWRlZiBzdHJ1
Y3QgU1BJQ0VfQVRUUl9QQUNLRUQgUVhMTW9uaXRvcnNDb25maWcgewo+ID4gIAo+ID4gICNpbmNs
dWRlIDxzcGljZS9lbmQtcGFja2VkLmg+Cj4gPiAgCj4gPiArdHlwZWRlZiBzdHJ1Y3QgUVhMUmVs
ZWFzZUluZm9FeHQgewo+ID4gKyAgICBRWExSZWxlYXNlSW5mbyAqaW5mbzsKPiA+ICsgICAgdWlu
dDMyX3QgZ3JvdXBfaWQ7Cj4gPiArfSBRWExSZWxlYXNlSW5mb0V4dDsKPiA+ICsKPiA+ICAjZW5k
aWYgLyogX0hfUVhMX0RFViAqLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
