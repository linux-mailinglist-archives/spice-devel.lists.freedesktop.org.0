Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5E6E197F
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 13:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 208A26EA55;
	Wed, 23 Oct 2019 11:59:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418276EA55
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:59:22 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-vn8p-H8qO_S154xIfPxBxw-1; Wed, 23 Oct 2019 07:59:18 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C34C4476
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:59:17 +0000 (UTC)
Received: from [10.34.247.151] (unknown [10.34.247.151])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6C6AA5C1B2
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 11:59:17 +0000 (UTC)
To: spice-devel@lists.freedesktop.org
References: <20191023100632.26265-1-fziglio@redhat.com>
 <20191023100632.26265-5-fziglio@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Organization: Red Hat
Message-ID: <a0de28e3-857a-e677-b494-4b12a50d38e9@redhat.com>
Date: Wed, 23 Oct 2019 13:59:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191023100632.26265-5-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: vn8p-H8qO_S154xIfPxBxw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571831961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KhGzjcSG3ASqyxihAPWVPUVy7yXKXrUlk3TR7XH6DG8=;
 b=bGGUj3rkwrZoKjkohDxKY1qELyf5k/CosnIRhBjT2TXjU6i/GKOisK92xblgSZ2XqbOyDG
 et3I22csz+kC1qGo/Fv6X7fQC/S5x2xX7yQrSkJmN/WkA5fsqwZ8faB/wCf0662IOHDT1n
 aqjnmqT+9LjnmNEKuiMATYVfa8KNiwQ=
Subject: Re: [Spice-devel] [PATCH spice-protocol v4 5/5] build-sys: Requires
 proper pkg-config for MingW
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

T24gMTAvMjMvMTkgMTI6MDYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiAucGMgZmlsZXMg
cmVxdWlyZXMgTWluZ1cgdmVyc2lvbiwgbm90IHN5c3RlbSBvbmUuCj4KCkkgdGhpbmsgaXQgd291
bGQgYmUgYmV0dGVyIGlmIHNxdWFzaGVkIGludG8gcHJldmlvdXMgcGF0Y2g/IFRoaXMgaWRlYSBv
ZiAKYnVpbGRpbmcgdGhlIG1pbmd3IHBhY2thZ2VzIGZyb20gdGhlIHNhbWUgc291cmNlIGlzIG5p
Y2UsIGJ1dCBpdCBuZWVkcyAKc29tZSBtb3JlIGRpc2N1c3Npb24uIExldHMga2VlcCB0aGlzIHBh
dGNoIG9uIGhvbGQgZm9yIGEgd2lobGUgYW5kIApyZXZpc2l0IGl0IGxhdGVyIG9uLgoKUmVnYXJk
cywgRWR1YXJkbwoKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVk
aGF0LmNvbT4KPiAtLS0KPiAgIHNwaWNlLXByb3RvY29sLnNwZWMuaW4gfCAyICstCj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiBiL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KPiBpbmRl
eCA1NGFhY2ZkLi4yZmU5NDBiIDEwMDY0NAo+IC0tLSBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4K
PiArKysgYi9zcGljZS1wcm90b2NvbC5zcGVjLmluCj4gQEAgLTE5LDcgKzE5LDcgQEAgYW5kIHRo
ZSBwYXJhLXZpcnR1YWwgZ3JhcGhpY3MgY2FyZCBRWEwuCj4gICAlZGVmaW5lIG1pbmd3X2ZpbGVz
KCkgXAo+ICAgJXBhY2thZ2UgLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCj4gICBTdW1tYXJ5OiAg
ICAgICAgU3BpY2UgcHJvdG9jb2wgaGVhZGVyIGZpbGVzIFwKPiAtUmVxdWlyZXM6ICAgICAgIHBr
Z2NvbmZpZyBcCj4gK1JlcXVpcmVzOiAgICAgICAlezF9LXBrZy1jb25maWcgXAo+ICAgXAo+ICAg
JWRlc2NyaXB0aW9uIC1uICV7MX0tc3BpY2UtcHJvdG9jb2wgXAo+ICAgSGVhZGVyIGZpbGVzIGRl
c2NyaWJpbmcgdGhlIHNwaWNlIHByb3RvY29sIFwKPiAKCgotLSAKRWR1YXJkbyBkZSBCYXJyb3Mg
TGltYSAoRXRydW5rbykKU29mdHdhcmUgRW5naW5lZXIgLSBSZWQgSGF0CmV0cnVua29AcmVkaGF0
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
