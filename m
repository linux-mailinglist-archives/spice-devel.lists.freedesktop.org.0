Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B01DEDA1
	for <lists+spice-devel@lfdr.de>; Mon, 21 Oct 2019 15:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7E06E0CE;
	Mon, 21 Oct 2019 13:33:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915DA6E0CF
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 13:33:36 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290--z3ToZWRN2K7CKi8Cxn05w-1; Mon, 21 Oct 2019 09:33:31 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEE451800DC7
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 13:33:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E6E8410027A9
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 13:33:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D6C3118037CD;
 Mon, 21 Oct 2019 13:33:30 +0000 (UTC)
Date: Mon, 21 Oct 2019 09:33:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Message-ID: <641167060.7813898.1571664810612.JavaMail.zimbra@redhat.com>
In-Reply-To: <5af8a7a6-5852-efab-3e51-6c3c1e8b1ca1@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
 <20191011095629.28447-4-fziglio@redhat.com>
 <5af8a7a6-5852-efab-3e51-6c3c1e8b1ca1@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.34.247.51, 10.4.195.18]
Thread-Topic: build-sys: Allows spec file to build MingW packages
Thread-Index: unQS2RIdDAszsrE35jX5R/JVVoz3cg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: -z3ToZWRN2K7CKi8Cxn05w-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571664815;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ytT2fxGgJcyQM+xxXV2heOwVKDZpZ3JmnA2BDifp6U0=;
 b=KEwUMZoZssIUuWRDZ/ACyBUr0sRtWAVzFETtnIhXyEjBrdgpm9FgdJXb9A95eZ6m87SFW7
 owmN9kgWUwXQ/JfJFYFUQrnH9jwU2XdCfpkCfkrfhikEnQDJsnAL2RrLJSNGNkEDIui1fc
 V5WMTN+pMF/PL5RmkKFdAk4/oQA76GQ=
Subject: Re: [Spice-devel] [PATCH spice-protocol 3/5] build-sys: Allows spec
 file to build MingW packages
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

PiAKPiBPbiAxMC8xMS8xOSA2OjU2IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBBZGQg
TWluZ1cgc3VwcG9ydC4gVGhpcyBhbGxvd3MgdG8gYnVpbGQgTWluZ1cgcGFja2FnZXMgZWFzaWx5
IHdpdGggYQo+ID4gCj4gPiAgICAkIHJwbWJ1aWxkIC10YSBzcGljZS1wcm90b2NvbC1YWFhYLnRh
ci5iejIKPiA+IAo+ID4gSXQncyBwb3NzaWJsZSB0byBkaXNhYmxlIE1pbmdXIGJ1aWxkIHVzaW5n
Cj4gPiAKPiA+ICAgICQgcnBtYnVpbGQgLS13aXRob3V0IG1pbmd3IC10YSBzcGljZS1wcm90b2Nv
bC1YWFhYLnRhci5iejIKPiA+IAo+ID4gVGhpcyBpcyBiYXNlIG9uIHNvbWUgd29yayBieSBFZHVh
cmRvIExpbWEgYWRkaW5nIE1pbmdXIHN1cHBvcnQgdG8gU1BFQwo+ID4gZmlsZXMuCj4gPiBQYXJ0
IG9mIGRlcGVuZGVuY2llcywgZGVzY3JpcHRpb24gYW5kIG5hbWVzIGNhbWUgZnJvbSBGZWRvcmEg
U1BFQyBmaWxlCj4gPiBmb3IgbWluZ3ctc3BpY2UtcHJvdG9jb2wgcGFja2FnZS4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAt
LS0KPiA+ICAgc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiB8IDUwICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9u
cygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiBiL3NwaWNl
LXByb3RvY29sLnNwZWMuaW4KPiA+IGluZGV4IGNjMWZhZGMuLmE2YTU3MGQgMTAwNjQ0Cj4gPiAt
LS0gYS9zcGljZS1wcm90b2NvbC5zcGVjLmluCj4gPiArKysgYi9zcGljZS1wcm90b2NvbC5zcGVj
LmluCj4gPiBAQCAtMSwzICsxLDExIEBACj4gPiArJWJjb25kX3dpdGhvdXQgbWluZ3cKPiA+ICsK
PiA+ICslaWYgIiV7X2FyY2h9IiA9PSAieDg2XzY0IiAmJiAle3dpdGggbWluZ3d9Cj4gPiArJWds
b2JhbCBidWlsZF9taW5ndyAxCj4gPiArJWVsc2UKPiA+ICslZ2xvYmFsIGJ1aWxkX21pbmd3IDAK
PiA+ICslZW5kaWYKPiA+ICsKPiAKPiBUaGlzIGdsb2JhbCBmbGFnIHNob3VsZCBub3QgYmUgbmVj
ZXNzYXJ5LCBiZWNhdXNlIHRoZSBzcGljZS1wcm90b2NvbAo+IHBhY2thZ2UgaXMgYSBub2FyY2gs
IHRodXMgbWluZ3ctcGFja2FnZXMgc2hvdWxkIGFsd2F5cyBiZSBidWlsdC4KPiAKCk5vdCBzdXJl
IGlmIE1pbmd3IHBhY2thZ2VzIGNhbiBiZSBidWlsZCBvbiBhcm0gKGZvciBpbnN0YW5jZSkuCkRp
ZCB5b3UgdHJ5PwoKPiA+ICAgTmFtZTogICAgICAgICAgIHNwaWNlLXByb3RvY29sCj4gPiAgIFZl
cnNpb246ICAgICAgICBAVkVSU0lPTkAKPiA+ICAgUmVsZWFzZTogICAgICAgIDElez9kaXN0fQo+
ID4gQEAgLTgsMjEgKzE2LDYzIEBAIExpY2Vuc2U6ICAgICAgICBCU0QgYW5kIExHUEx2MisKPiA+
ICAgVVJMOiAgICAgICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uub3JnLwo+ID4gICBTb3Vy
Y2UwOgo+ID4gICBodHRwOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9kb3dubG9hZC9yZWxlYXNlcy8l
e25hbWV9LSV7dmVyc2lvbn0udGFyLmJ6Mgo+ID4gICBCdWlsZEFyY2g6ICAgICAgbm9hcmNoCj4g
PiArJWlmICV7YnVpbGRfbWluZ3d9Cj4gPiArQnVpbGRSZXF1aXJlczogIG1pbmd3MzItZmlsZXN5
c3RlbSA+PSA5NQo+ID4gK0J1aWxkUmVxdWlyZXM6ICBtaW5ndzY0LWZpbGVzeXN0ZW0gPj0gOTUK
PiA+ICslZW5kaWYKPiA+ICAgCj4gPiAgICVkZXNjcmlwdGlvbgo+ID4gICBIZWFkZXIgZmlsZXMg
ZGVzY3JpYmluZyB0aGUgc3BpY2UgcHJvdG9jb2wKPiA+ICAgYW5kIHRoZSBwYXJhLXZpcnR1YWwg
Z3JhcGhpY3MgY2FyZCBRWEwuCj4gPiAgIAo+ID4gICAKPiA+ICslaWYgJXtidWlsZF9taW5nd30K
PiA+ICsKPiA+ICslZGVmaW5lIG1pbmd3X2ZpbGVzKCkgXAo+ID4gKyVwYWNrYWdlIC1uICV7MX0t
c3BpY2UtcHJvdG9jb2wgXAo+ID4gK1N1bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFk
ZXIgZmlsZXMgXAo+ID4gK1JlcXVpcmVzOiAgICAgICBwa2djb25maWcgXAo+ID4gK1wKPiA+ICsl
ZGVzY3JpcHRpb24gLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCj4gPiArSGVhZGVyIGZpbGVzIGRl
c2NyaWJpbmcgdGhlIHNwaWNlIHByb3RvY29sIFwKPiA+ICthbmQgdGhlIHBhcmEtdmlydHVhbCBn
cmFwaGljcyBjYXJkIFFYTC4gXAo+ID4gK1wKPiA+ICslZmlsZXMgLW4gJXsxfS1zcGljZS1wcm90
b2NvbCBcCj4gPiArJWRvYyBDT1BZSU5HIENIQU5HRUxPRy5tZCBcCj4gPiArJXtleHBhbmQ6JSV7
JXsxfV9pbmNsdWRlZGlyfX0vc3BpY2UtMSBcCj4gPiArJXtleHBhbmQ6JSV7JXsxfV9kYXRhZGly
fX0vcGtnY29uZmlnL3NwaWNlLXByb3RvY29sLnBjCj4gPiArCj4gPiArJW1pbmd3X2ZpbGVzIG1p
bmd3MzIKPiA+ICslbWluZ3dfZmlsZXMgbWluZ3c2NAo+ID4gKwo+ID4gKyVlbmRpZgo+ID4gKwo+
ID4gKwo+ID4gICAlcHJlcAo+ID4gICAlc2V0dXAgLXEKPiA+ICAgCj4gPiAgICVidWlsZAo+ID4g
K2NwIC1ybCAuIC4uL2J1aWxkX3NwaWNlX3Byb3RvY29sX3RtcAo+ID4gK212IC4uL2J1aWxkX3Nw
aWNlX3Byb3RvY29sX3RtcCBidWlsZAo+ID4gK3B1c2hkIGJ1aWxkCj4gPiAgICVjb25maWd1cmUK
PiA+ICAgbWFrZSAlez9fc21wX21mbGFnc30KPiA+ICtwb3BkCj4gPiArCj4gPiArJWlmICV7YnVp
bGRfbWluZ3d9Cj4gPiArJW1pbmd3X2NvbmZpZ3VyZQo+ID4gKyVtaW5nd19tYWtlICV7P19zbXBf
bWZsYWdzfSBWPTEKPiA+ICslZW5kaWYKPiA+ICsKPiA+ICAgCj4gPiAgICVpbnN0YWxsCj4gPiAr
cHVzaGQgYnVpbGQKPiA+ICAgbWFrZSBERVNURElSPSV7YnVpbGRyb290fSBpbnN0YWxsCj4gPiAr
cG9wZAo+ID4gKwo+ID4gKyVpZiAle2J1aWxkX21pbmd3fQo+ID4gKyVtaW5nd19tYWtlIGluc3Rh
bGwgREVTVERJUj0le2J1aWxkcm9vdH0KPiA+ICslZW5kaWYKPiA+ICAgCj4gPiAgIAo+ID4gICAl
ZmlsZXMKPiA+IAoKRnJlZGlhbm8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
