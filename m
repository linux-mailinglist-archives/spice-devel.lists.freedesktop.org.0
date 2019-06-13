Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DAA433EB
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669A38901E;
	Thu, 13 Jun 2019 07:58:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C79D8901E
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:58:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 393AFC1EB20B
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:58:43 +0000 (UTC)
Received: from lub.tlv (dhcp-4-88.tlv.redhat.com [10.35.4.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9AA5D17C41;
 Thu, 13 Jun 2019 07:58:42 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190611184341.16697-1-fziglio@redhat.com>
 <20190611184341.16697-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <50c72f23-f25c-106b-0211-14d109ee4f18@redhat.com>
Date: Thu, 13 Jun 2019 10:58:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611184341.16697-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 13 Jun 2019 07:58:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/2] ci: Add test for 32 bit
 CentOS 7
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

T24gNi8xMS8xOSA5OjQzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gTWFrZSBzdXJlIHRo
ZSBwcm9qZWN0IGNvbXBpbGUgYW5kIHBhc3MgdGVzdHMgd2l0aG91dCBwcm9ibGVtcwo+IG9uIGEg
MzIgYml0IGFyY2hpdGVjdHVyZS4KCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2suCgpVcmkKCj4gLS0tCj4gICAuZ2l0bGFiLWNpLnlt
bCB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55
bWwKPiBpbmRleCA5MWVlNDdlZGMuLjdlYzVjZTBmMCAxMDA2NDQKPiAtLS0gYS8uZ2l0bGFiLWNp
LnltbAo+ICsrKyBiLy5naXRsYWItY2kueW1sCj4gQEAgLTk0LDYgKzk0LDI4IEBAIG1ha2VjaGVj
ay1jZW50b3M6Cj4gICAgIC0gbWFrZQo+ICAgICAtIG1ha2UgLUMgc2VydmVyIGNoZWNrIHx8IChj
YXQgc2VydmVyL3Rlc3RzL3Rlc3Qtc3VpdGUubG9nICYmIGV4aXQgMSkKPiAgIAo+ICsjIFNhbWUg
YXMgbWFrZWNoZWNrIGpvYiBidXQgdXNlIGEgQ2VudG9zIGltYWdlCj4gK21ha2VjaGVjay1jZW50
b3MzMjoKPiArICBiZWZvcmVfc2NyaXB0Ogo+ICsgICAgLSA+Cj4gKyAgICAgIHl1bSBpbnN0YWxs
IGdpdCBsaWJ0b29sIG1ha2UgbGliYXNhbiBvcmMtZGV2ZWwgZ2xpYi1uZXR3b3JraW5nCj4gKyAg
ICAgIHl1bS11dGlscyBnY2MgZ2xpYjItZGV2ZWwgc3BpY2UtcHJvdG9jb2wgY2VsdDA1MS1kZXZl
bAo+ICsgICAgICBvcHVzLWRldmVsIHBpeG1hbi1kZXZlbCBvcGVuc3NsLWRldmVsIGxpYmpwZWct
ZGV2ZWwKPiArICAgICAgbGliY2FjYXJkLWRldmVsIGN5cnVzLXNhc2wtZGV2ZWwgbHo0LWRldmVs
Cj4gKyAgICAgIGdzdHJlYW1lcjEtZGV2ZWwgZ3N0cmVhbWVyMS1wbHVnaW5zLWJhc2UtZGV2ZWwK
PiArICAgICAgZ2l0LWNvcmUgcHlwYXJzaW5nIHB5dGhvbi1zaXgKPiArICAgICAgLXkKPiArICAg
IC0gZ2l0IGNsb25lICR7Q0lfUkVQT1NJVE9SWV9VUkwvc3BpY2UuZ2l0L3NwaWNlLXByb3RvY29s
LmdpdH0KPiArICAgIC0gKGNkIHNwaWNlLXByb3RvY29sICYmIC4vYXV0b2dlbi5zaCAtLXByZWZp
eD0vdXNyICYmIG1ha2UgaW5zdGFsbCkKPiArICBpbWFnZTogaTM4Ni9jZW50b3M6bGF0ZXN0Cj4g
KyAgc2NyaXB0Ogo+ICsgIC0gPgo+ICsgICAgQ0ZMQUdTPSctTzIgLXBpcGUgLWcgLWZzYW5pdGl6
ZT1hZGRyZXNzIC1mbm8tb21pdC1mcmFtZS1wb2ludGVyIC1XZnJhbWUtbGFyZ2VyLXRoYW49NDA5
MjAnCj4gKyAgICBMREZMQUdTPSctZnNhbml0aXplPWFkZHJlc3MgLWxhc2FuJwo+ICsgICAgLi9h
dXRvZ2VuLnNoIC0tZW5hYmxlLWNlbHQwNTEKPiArICAtIG1ha2UKPiArICAtIG1ha2UgLUMgc2Vy
dmVyIGNoZWNrIHx8IChjYXQgc2VydmVyL3Rlc3RzL3Rlc3Qtc3VpdGUubG9nICYmIGV4aXQgMSkK
PiArCj4gICAjIFNhbWUgYXMgbWFrZWNoZWNrIGpvYiBidXQgdXNlIFdpbmRvd3MgYnVpbGQKPiAg
IG1ha2VjaGVjay13aW5kb3dzOgo+ICAgICBzY3JpcHQ6Cj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
