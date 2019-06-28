Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A15954B
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC826E88B;
	Fri, 28 Jun 2019 07:45:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC826E88B
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 16AE6308A958
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 091F96012D
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id F129554D3C
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:45:25 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:45:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1385934176.25082690.1561707925942.JavaMail.zimbra@redhat.com>
In-Reply-To: <474474113.23631567.1560938707382.JavaMail.zimbra@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
 <2139512998.22408143.1560318907382.JavaMail.zimbra@redhat.com>
 <474474113.23631567.1560938707382.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: Check distribution with CI
Thread-Index: iVFZenijvVdr7GvE8hclyL15UtwpJIQSUYhY/mDDTIsQ+QmkCg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Fri, 28 Jun 2019 07:45:26 +0000 (UTC)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZyA0Cgo+IAo+IHBpbmcgMwo+IAo+ID4gCj4gPiBwaW5nCj4gPiAKPiA+ID4gCj4gPiA+IHBp
bmcgdGhlIHNlcmllcwo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBNYWtlIHN1cmUgd2UgY2FuIGJ1
aWxkIGRpc3RyaWJ1dGlvbi4KPiA+ID4gPiBTb21lIHNtYWxsIHVwZGF0ZXMgYWxzbyB0byBmaXgg
c29tZSBtaW5vciBpc3N1ZXMuCj4gPiA+ID4gCj4gPiA+ID4gQ0kgcmVzdWx0cyBhdAo+ID4gPiA+
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9memlnbGlvL3NwaWNlLWd0ay9waXBlbGlu
ZXMvMzc3NDQKPiA+ID4gPiAKPiA+ID4gPiBGcmVkaWFubyBaaWdsaW8gKDQpOgo+ID4gPiA+ICAg
Y2k6IFRlc3Qgd2UgY2FuIGNyZWF0ZSBhIG5vIGRpcnR5IHBhY2thZ2UKPiA+ID4gPiAgIHNwaWNl
LWNsaWVudC1ndGstbW9kdWxlOiBSZW1vdmUgdW51c2VkIGZpbGUKPiA+ID4gPiAgIGJ1aWxkOiBE
byBhZGRpdGlvbmFsIGNoYW5nZXMgdG8gTWVzb24gZGlzdHJpYnV0aW9uCj4gPiA+ID4gICBjaTog
VHJ5IE1lc29uIGRpc3QKPiA+ID4gPiAKPiA+ID4gPiAgLmdpdGxhYi1jaS55bWwgICAgICAgICAg
ICAgICAgfCAyMCArKysrKysrKysrKysrKysrCj4gPiA+ID4gIE1ha2VmaWxlLmFtICAgICAgICAg
ICAgICAgICAgIHwgIDEgKwo+ID4gPiA+ICBidWlsZC1hdXgvbWVzb24tZGlzdCAgICAgICAgICB8
IDI4ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiAgbWVzb24uYnVpbGQgICAgICAgICAg
ICAgICAgICAgfCAgMiArLQo+ID4gPiA+ICBzcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYyB8
IDQ1IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gIDUgZmlsZXMg
Y2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCj4gPiA+ID4gIGNyZWF0
ZSBtb2RlIDEwMDc1NSBidWlsZC1hdXgvbWVzb24tZGlzdAo+ID4gPiA+ICBkZWxldGUgbW9kZSAx
MDA2NDQgc3JjL3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMKPiA+ID4gPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
