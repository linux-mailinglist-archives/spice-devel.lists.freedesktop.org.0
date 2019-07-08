Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC34C61F44
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 15:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B4589D77;
	Mon,  8 Jul 2019 13:06:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CA9F89D77
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:06:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D22A330860BE
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:06:25 +0000 (UTC)
Received: from lub.tlv (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B6865C239;
 Mon,  8 Jul 2019 13:06:25 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190520073947.5382-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <d6d6ff96-dec6-1bbb-109b-483f5bd4b03a@redhat.com>
Date: Mon, 8 Jul 2019 16:06:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190520073947.5382-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 08 Jul 2019 13:06:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/4] Check distribution with CI
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS8yMC8xOSAxMDozOSBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IE1ha2Ugc3VyZSB3
ZSBjYW4gYnVpbGQgZGlzdHJpYnV0aW9uLgo+IFNvbWUgc21hbGwgdXBkYXRlcyBhbHNvIHRvIGZp
eCBzb21lIG1pbm9yIGlzc3Vlcy4KPiAKPiBDSSByZXN1bHRzIGF0IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9memlnbGlvL3NwaWNlLWd0ay9waXBlbGluZXMvMzc3NDQKCkFjayBzZXJp
ZXMgd2l0aCBzb21lIGNvbW1lbnRzIGluIDMvNCBhbmQgNC80Cgo+IAo+IEZyZWRpYW5vIFppZ2xp
byAoNCk6Cj4gICAgY2k6IFRlc3Qgd2UgY2FuIGNyZWF0ZSBhIG5vIGRpcnR5IHBhY2thZ2UKPiAg
ICBzcGljZS1jbGllbnQtZ3RrLW1vZHVsZTogUmVtb3ZlIHVudXNlZCBmaWxlCj4gICAgYnVpbGQ6
IERvIGFkZGl0aW9uYWwgY2hhbmdlcyB0byBNZXNvbiBkaXN0cmlidXRpb24KPiAgICBjaTogVHJ5
IE1lc29uIGRpc3QKPiAKPiAgIC5naXRsYWItY2kueW1sICAgICAgICAgICAgICAgIHwgMjAgKysr
KysrKysrKysrKysrKwo+ICAgTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAgfCAgMSArCj4g
ICBidWlsZC1hdXgvbWVzb24tZGlzdCAgICAgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysr
KysKPiAgIG1lc29uLmJ1aWxkICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIHNyYy9zcGlj
ZS1jbGllbnQtZ3RrLW1vZHVsZS5jIHwgNDUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAgIDUgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25z
KC0pCj4gICBjcmVhdGUgbW9kZSAxMDA3NTUgYnVpbGQtYXV4L21lc29uLWRpc3QKPiAgIGRlbGV0
ZSBtb2RlIDEwMDY0NCBzcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYwo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
