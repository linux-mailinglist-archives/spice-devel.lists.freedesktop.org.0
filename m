Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B980A6D0F2
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51FC6E2EF;
	Thu, 18 Jul 2019 15:21:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4DE6E2EF
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:21:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 67AE28F921;
 Thu, 18 Jul 2019 15:21:44 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C72356103E;
 Thu, 18 Jul 2019 15:21:43 +0000 (UTC)
To: Jeremy White <jwhite@codeweavers.com>, spice-devel@lists.freedesktop.org
References: <20190718143200.16380-1-jwhite@codeweavers.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <86eafa46-3933-1e96-8446-68c96ca0c20b@redhat.com>
Date: Thu, 18 Jul 2019 18:21:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718143200.16380-1-jwhite@codeweavers.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 18 Jul 2019 15:21:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice 1/2] Bug fix: --config=<filename>
 did not work.
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

T24gNy8xOC8xOSA1OjMxIFBNLCBKZXJlbXkgV2hpdGUgd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTog
SmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgoKSGksCgpUaGUgcGF0Y2ggbG9v
a3MgZ29vZCB0byBtZS4KU2VlIGEgY29tbWVudCBiZWxvdy4KCj4gLS0tCj4gICBzcmMvb3B0aW9u
cy5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL29wdGlv
bnMuYyBiL3NyYy9vcHRpb25zLmMKPiBpbmRleCBiN2Y0ODdjNS4uMGQzMTM4ZDAgMTAwNjQ0Cj4g
LS0tIGEvc3JjL29wdGlvbnMuYwo+ICsrKyBiL3NyYy9vcHRpb25zLmMKPiBAQCAtMjEzLDE0ICsy
MTMsMzQgQEAgdm9pZCBvcHRpb25zX2hhbmRsZV9zc2xfZmlsZV9vcHRpb25zKG9wdGlvbnNfdCAq
b3B0aW9ucywKPiAgICAgICBvcHRpb25zLT5zc2wuY2lwaGVyc3VpdGUgPSBzdHJpbmdfb3B0aW9u
KHVzZXJrZXksIHN5c3RlbWtleSwgInNzbCIsICJjaXBoZXJzdWl0ZSIpOwo+ICAgfQo+ICAgCj4g
Ky8qIEluIGdlbmVyYWwsIHdlIHdhbnQgdG8gcGFyc2UgdGhlIGNvbmZpZyBmaWxlIG9wdGlvbnMg
YmVmb3JlIHRoZSBjb21tYW5kIGxpbmUKPiArKiogIGFyZ3VtZW50cy4gIEhvd2V2ZXIsIHRoZSBj
b21tYW5kIGxpbmUgYXJndW1lbnQgdG8gc3BlY2lmeSBhIGNvbmZpZyBmaWxlIGlzCj4gKyoqICB0
aGUgZXhjZXB0aW9uLiAgV2UgbWFudWFsbHkgcGFyc2UgdGhpcyBvdXQgbm93LCBzbyB3ZSBjYW4g
c2ltcGxpZnkgdGhlCj4gKyoqICBmbG93IG9mIGNvbnRyb2wgbGF0ZXIuICovCj4gICB2b2lkIG9w
dGlvbnNfaGFuZGxlX3VzZXJfY29uZmlnKGludCBhcmdjLCBjaGFyICphcmd2W10sIG9wdGlvbnNf
dCAqb3B0aW9ucykKPiAgIHsKPiAgICAgICBpbnQgaTsKPiAtICAgIGZvciAoaSA9IDE7IGkgPCBh
cmdjIC0gMTsgaSsrKQo+IC0gICAgICAgIGlmIChzdHJjbXAoYXJndltpXSwgIi0tY29uZmlnIikg
PT0gMCB8fCBzdHJjbXAoYXJndltpXSwgIi1jb25maWciKSA9PSAwKSB7Cj4gKyAgICBjaGFyICpw
LCAqcTsKPiArCj4gKyAgICAvKiBnZXRvcHQgbG9uZyBpcyBjb21wbGV4OyBpdCBzdXBwb3J0cyBb
LV0tY29uZmlnWz1dZmlsZW5hbWUgKi8KCkkgdG9vIGZpbmQgaXQgY29uZnVzaW5nLgpOb3RlIHRo
YXQgdGhpcyBpcyB0aGUgYmVoYXZpb3Igb2YgZ2V0b3B0X2xvbmdfb25seS4KV2UgY2FuIHN3aXRj
aCB0byB1c2luZyBnZXRvcHRfbG9uZyAoYnV0IHlvdSB3b3VsZCBzdGlsbCBuZWVkIHRvCmxvb2sg
Zm9yICc9JykuCgpVcmkuCgo+ICsgICAgZm9yIChpID0gMTsgaSA8IGFyZ2M7IGkrKykgewo+ICsg
ICAgICAgIHAgPSBzdHJzdHIoYXJndltpXSwgIi0tY29uZmlnIik7Cj4gKyAgICAgICAgaWYgKHAg
IT0gYXJndltpXSkgewo+ICsgICAgICAgICAgICBwID0gc3Ryc3RyKGFyZ3ZbaV0sICItY29uZmln
Iik7Cj4gKyAgICAgICAgfQo+ICsgICAgICAgIGlmIChwICE9IGFyZ3ZbaV0pIHsKPiArICAgICAg
ICAgICAgY29udGludWU7Cj4gKyAgICAgICAgfQo+ICsgICAgICAgIHEgPSBzdHJzdHIocCwgIj0i
KTsKPiArICAgICAgICBpZiAocSkgewo+ICsgICAgICAgICAgICBvcHRpb25zLT51c2VyX2NvbmZp
Z19maWxlID0gc3RyZHVwKHEgKyAxKTsKPiArICAgICAgICAgICAgY29udGludWU7Cj4gKyAgICAg
ICAgfQo+ICsgICAgICAgIGlmIChpIDwgYXJnYyAtIDEpIHsKPiAgICAgICAgICAgICAgIG9wdGlv
bnMtPnVzZXJfY29uZmlnX2ZpbGUgPSBzdHJkdXAoYXJndltpICsgMV0pOwo+ICAgICAgICAgICAg
ICAgaSsrOwo+ICAgICAgICAgICB9Cj4gKyAgICB9Cj4gICB9Cj4gICAKPiAgIGludCBvcHRpb25z
X3BhcnNlX2FyZ3VtZW50cyhpbnQgYXJnYywgY2hhciAqYXJndltdLCBvcHRpb25zX3QgKm9wdGlv
bnMpCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
