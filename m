Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DD08E8C6
	for <lists+spice-devel@lfdr.de>; Thu, 15 Aug 2019 12:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EE46E975;
	Thu, 15 Aug 2019 10:06:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802156E975
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 10:06:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F0F663090FF4
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 10:06:04 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F472608AB;
 Thu, 15 Aug 2019 10:06:04 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190815083055.13634-1-fziglio@redhat.com>
 <20190815083055.13634-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <60e365fc-5363-ce50-9aa8-7b0925d5d17f@redhat.com>
Date: Thu, 15 Aug 2019 13:06:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815083055.13634-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 15 Aug 2019 10:06:05 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] Remove reference to removed
 ABI
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

T24gOC8xNS8xOSAxMTozMCBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IHNwaWNlX3NlcnZl
cl9taWdyYXRlX2NsaWVudF9zdGF0ZSB3YXMgcmVtb3ZlZCBieQo+IAo+ICAgIGNvbW1pdCAzYzZi
NGU0MTVmYTFlMmNlMjEyZDA5YmExNWM5MGNkNThiNGVjNGI0Cj4gICAgQXV0aG9yOiBNYXJjLUFu
ZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAZ21haWwuY29tPgo+ICAgIERhdGU6ICAgRnJp
IE9jdCAyNCAxNzoxNjozNSAyMDE0ICswMjAwCj4gCj4gICAgICBSZW1vdmUgc3BpY2UtZXhwZXJp
bWVudGFsCj4gCj4gICAgICBSZW1vdmUgdW5uZWRlZCBzeW1ib2xzIHRoYXQgbm9ib2R5IHNob3Vs
ZCBiZSB1c2luZyBhbnl3YXkuCj4gICAgICBBQkkgaXMgbW9kaWZpZWQgd2l0aCB0aGlzIHBhdGNo
LCBidXQgdGhlIGxpYnJhcnkgdmVyc2lvbiBpcyBub3QgYnVtcGVkLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKQWNrLgoKVXJpLgoKPiAt
LS0KPiAgIHNlcnZlci9zcGljZS1zZXJ2ZXIuc3ltcyB8IDEgLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3NwaWNlLXNlcnZlci5zeW1z
IGIvc2VydmVyL3NwaWNlLXNlcnZlci5zeW1zCj4gaW5kZXggZTMzNTI2ZjMxLi44ZGE0NmMyMGMg
MTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3NwaWNlLXNlcnZlci5zeW1zCj4gKysrIGIvc2VydmVyL3Nw
aWNlLXNlcnZlci5zeW1zCj4gQEAgLTEwLDcgKzEwLDYgQEAgZ2xvYmFsOgo+ICAgICAgIHNwaWNl
X3NlcnZlcl9nZXRfc29ja19pbmZvOwo+ICAgICAgIHNwaWNlX3NlcnZlcl9pbml0Owo+ICAgICAg
IHNwaWNlX3NlcnZlcl9rYmRfbGVkczsKPiAtICAgIHNwaWNlX3NlcnZlcl9taWdyYXRlX2NsaWVu
dF9zdGF0ZTsKPiAgICAgICBzcGljZV9zZXJ2ZXJfbWlncmF0ZV9lbmQ7Cj4gICAgICAgc3BpY2Vf
c2VydmVyX21pZ3JhdGVfaW5mbzsKPiAgICAgICBzcGljZV9zZXJ2ZXJfbWlncmF0ZV9zdGFydDsK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
