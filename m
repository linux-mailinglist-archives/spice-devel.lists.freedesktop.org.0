Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B8BDED85
	for <lists+spice-devel@lfdr.de>; Mon, 21 Oct 2019 15:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29660891A8;
	Mon, 21 Oct 2019 13:28:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA64D891A8
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 13:28:17 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-tQEllQDkNaSRRCss5amdyw-1; Mon, 21 Oct 2019 09:28:14 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FA791800DC7
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 13:28:13 +0000 (UTC)
Received: from [10.34.247.144] (unknown [10.34.247.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4FC0460C57;
 Mon, 21 Oct 2019 13:28:06 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191011095629.28447-1-fziglio@redhat.com>
 <20191011095629.28447-4-fziglio@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Organization: Red Hat
Message-ID: <5af8a7a6-5852-efab-3e51-6c3c1e8b1ca1@redhat.com>
Date: Mon, 21 Oct 2019 15:28:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191011095629.28447-4-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: tQEllQDkNaSRRCss5amdyw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571664496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2si3XMoRtr74FB5kfZ4Wdsr5FJHOXqIDLuPPStCxYfY=;
 b=H6HzpPNtwrqWsiOnagrcgSJxBOGCfGrs9dr5D2+3JDIGkysjS3YrfGXpXwAiASkaS0MlOv
 SW2EHlSFp4DhATTKP/qZ5epBwV3pZWYylLbYQlprTUwxYtyjuwvYrrCI92e8ebJ5L1Nr8j
 F0kzqp/z08BDlPoZHr7HQBapRmVSlGM=
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMTEvMTkgNjo1NiBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IEFkZCBNaW5nVyBz
dXBwb3J0LiBUaGlzIGFsbG93cyB0byBidWlsZCBNaW5nVyBwYWNrYWdlcyBlYXNpbHkgd2l0aCBh
Cj4gCj4gICAgJCBycG1idWlsZCAtdGEgc3BpY2UtcHJvdG9jb2wtWFhYWC50YXIuYnoyCj4gCj4g
SXQncyBwb3NzaWJsZSB0byBkaXNhYmxlIE1pbmdXIGJ1aWxkIHVzaW5nCj4gCj4gICAgJCBycG1i
dWlsZCAtLXdpdGhvdXQgbWluZ3cgLXRhIHNwaWNlLXByb3RvY29sLVhYWFgudGFyLmJ6Mgo+IAo+
IFRoaXMgaXMgYmFzZSBvbiBzb21lIHdvcmsgYnkgRWR1YXJkbyBMaW1hIGFkZGluZyBNaW5nVyBz
dXBwb3J0IHRvIFNQRUMKPiBmaWxlcy4KPiBQYXJ0IG9mIGRlcGVuZGVuY2llcywgZGVzY3JpcHRp
b24gYW5kIG5hbWVzIGNhbWUgZnJvbSBGZWRvcmEgU1BFQyBmaWxlCj4gZm9yIG1pbmd3LXNwaWNl
LXByb3RvY29sIHBhY2thZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwgNTAg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hh
bmdlZCwgNTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zcGljZS1wcm90b2NvbC5z
cGVjLmluIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+IGluZGV4IGNjMWZhZGMuLmE2YTU3MGQg
MTAwNjQ0Cj4gLS0tIGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+ICsrKyBiL3NwaWNlLXByb3Rv
Y29sLnNwZWMuaW4KPiBAQCAtMSwzICsxLDExIEBACj4gKyViY29uZF93aXRob3V0IG1pbmd3Cj4g
Kwo+ICslaWYgIiV7X2FyY2h9IiA9PSAieDg2XzY0IiAmJiAle3dpdGggbWluZ3d9Cj4gKyVnbG9i
YWwgYnVpbGRfbWluZ3cgMQo+ICslZWxzZQo+ICslZ2xvYmFsIGJ1aWxkX21pbmd3IDAKPiArJWVu
ZGlmCj4gKwoKVGhpcyBnbG9iYWwgZmxhZyBzaG91bGQgbm90IGJlIG5lY2Vzc2FyeSwgYmVjYXVz
ZSB0aGUgc3BpY2UtcHJvdG9jb2wgCnBhY2thZ2UgaXMgYSBub2FyY2gsIHRodXMgbWluZ3ctcGFj
a2FnZXMgc2hvdWxkIGFsd2F5cyBiZSBidWlsdC4KCj4gICBOYW1lOiAgICAgICAgICAgc3BpY2Ut
cHJvdG9jb2wKPiAgIFZlcnNpb246ICAgICAgICBAVkVSU0lPTkAKPiAgIFJlbGVhc2U6ICAgICAg
ICAxJXs/ZGlzdH0KPiBAQCAtOCwyMSArMTYsNjMgQEAgTGljZW5zZTogICAgICAgIEJTRCBhbmQg
TEdQTHYyKwo+ICAgVVJMOiAgICAgICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uub3JnLwo+
ICAgU291cmNlMDogICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL2Rvd25sb2FkL3Jl
bGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoyCj4gICBCdWlsZEFyY2g6ICAgICAgbm9h
cmNoCj4gKyVpZiAle2J1aWxkX21pbmd3fQo+ICtCdWlsZFJlcXVpcmVzOiAgbWluZ3czMi1maWxl
c3lzdGVtID49IDk1Cj4gK0J1aWxkUmVxdWlyZXM6ICBtaW5ndzY0LWZpbGVzeXN0ZW0gPj0gOTUK
PiArJWVuZGlmCj4gICAKPiAgICVkZXNjcmlwdGlvbgo+ICAgSGVhZGVyIGZpbGVzIGRlc2NyaWJp
bmcgdGhlIHNwaWNlIHByb3RvY29sCj4gICBhbmQgdGhlIHBhcmEtdmlydHVhbCBncmFwaGljcyBj
YXJkIFFYTC4KPiAgIAo+ICAgCj4gKyVpZiAle2J1aWxkX21pbmd3fQo+ICsKPiArJWRlZmluZSBt
aW5nd19maWxlcygpIFwKPiArJXBhY2thZ2UgLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCj4gK1N1
bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFkZXIgZmlsZXMgXAo+ICtSZXF1aXJlczog
ICAgICAgcGtnY29uZmlnIFwKPiArXAo+ICslZGVzY3JpcHRpb24gLW4gJXsxfS1zcGljZS1wcm90
b2NvbCBcCj4gK0hlYWRlciBmaWxlcyBkZXNjcmliaW5nIHRoZSBzcGljZSBwcm90b2NvbCBcCj4g
K2FuZCB0aGUgcGFyYS12aXJ0dWFsIGdyYXBoaWNzIGNhcmQgUVhMLiBcCj4gK1wKPiArJWZpbGVz
IC1uICV7MX0tc3BpY2UtcHJvdG9jb2wgXAo+ICslZG9jIENPUFlJTkcgQ0hBTkdFTE9HLm1kIFwK
PiArJXtleHBhbmQ6JSV7JXsxfV9pbmNsdWRlZGlyfX0vc3BpY2UtMSBcCj4gKyV7ZXhwYW5kOiUl
eyV7MX1fZGF0YWRpcn19L3BrZ2NvbmZpZy9zcGljZS1wcm90b2NvbC5wYwo+ICsKPiArJW1pbmd3
X2ZpbGVzIG1pbmd3MzIKPiArJW1pbmd3X2ZpbGVzIG1pbmd3NjQKPiArCj4gKyVlbmRpZgo+ICsK
PiArCj4gICAlcHJlcAo+ICAgJXNldHVwIC1xCj4gICAKPiAgICVidWlsZAo+ICtjcCAtcmwgLiAu
Li9idWlsZF9zcGljZV9wcm90b2NvbF90bXAKPiArbXYgLi4vYnVpbGRfc3BpY2VfcHJvdG9jb2xf
dG1wIGJ1aWxkCj4gK3B1c2hkIGJ1aWxkCj4gICAlY29uZmlndXJlCj4gICBtYWtlICV7P19zbXBf
bWZsYWdzfQo+ICtwb3BkCj4gKwo+ICslaWYgJXtidWlsZF9taW5nd30KPiArJW1pbmd3X2NvbmZp
Z3VyZQo+ICslbWluZ3dfbWFrZSAlez9fc21wX21mbGFnc30gVj0xCj4gKyVlbmRpZgo+ICsKPiAg
IAo+ICAgJWluc3RhbGwKPiArcHVzaGQgYnVpbGQKPiAgIG1ha2UgREVTVERJUj0le2J1aWxkcm9v
dH0gaW5zdGFsbAo+ICtwb3BkCj4gKwo+ICslaWYgJXtidWlsZF9taW5nd30KPiArJW1pbmd3X21h
a2UgaW5zdGFsbCBERVNURElSPSV7YnVpbGRyb290fQo+ICslZW5kaWYKPiAgIAo+ICAgCj4gICAl
ZmlsZXMKPiAKCgotLSAKRWR1YXJkbyBkZSBCYXJyb3MgTGltYSAoRXRydW5rbykKU29mdHdhcmUg
RW5naW5lZXIgLSBSZWQgSGF0CmV0cnVua29AcmVkaGF0LmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
