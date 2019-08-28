Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BF79FA84
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 08:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C494389A5E;
	Wed, 28 Aug 2019 06:28:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A7989A5E
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 06:28:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5734F18C8930
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 06:28:02 +0000 (UTC)
Received: from lub.tlv (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4572010016EB;
 Wed, 28 Aug 2019 06:27:59 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <16bd5118-b320-6a51-5c28-dd339514fc63@redhat.com>
 <20190827151659.548-1-victortoso@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <eddb3e75-e9b6-8b57-5ce6-273882c01e28@redhat.com>
Date: Wed, 28 Aug 2019 09:27:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827151659.548-1-victortoso@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Wed, 28 Aug 2019 06:28:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] covscan: add comment on false-positive on
 g_memdup()
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

T24gOC8yNy8xOSA2OjE2IFBNLCBWaWN0b3IgVG9zbyB3cm90ZToKPiBGcm9tOiBWaWN0b3IgVG9z
byA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gUHJldmlvdXMgY29tbWl0IHNldCBsYXN0IGVsZW1l
bnQgb2Ygb3JpZ19hcmd2IGFycmF5IHRvIE5VTEwuCj4gVGhhdCdzIHJlZHVuZGFudCBhcyBnX21l
bWR1cCgpIHVzZXMgbWVtY3B5KCkgYW5kIGl0IHdvdWxkIGRvCj4ganVzdCB0aGF0LiBBZGQgYSBj
b21tZW50IHRoYXQgdGhlIHJlYXNvbiBmb3IgdGhpcyBjaGFuZ2UgaXMKPiB0byB3b3JrYXJvdW5k
IGNsYW5nJ3Mgd2FybmluZy4KPiAKPiBTdWdnZXN0ZWQgYnkgVXJpLgo+IFNpZ25lZC1vZmYtYnk6
IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+CgpBY2tlZC1ieTogVXJpIEx1Ymxp
biA8dXJpbEByZWRoYXQuY29tPgoKVGhhbmtzLAogICBVcmkuCgo+IC0tLQo+ICAgc3JjL3ZkYWdl
bnQvdmRhZ2VudC5jIHwgNiArKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50L3ZkYWdlbnQu
YyBiL3NyYy92ZGFnZW50L3ZkYWdlbnQuYwo+IGluZGV4IDViMTQ2ZGIuLmE5NDQyMTQgMTAwNjQ0
Cj4gLS0tIGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCj4gKysrIGIvc3JjL3ZkYWdlbnQvdmRhZ2Vu
dC5jCj4gQEAgLTQxOCwxMCArNDE4LDggQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3Zb
XSkKPiAgICAgICBHT3B0aW9uQ29udGV4dCAqY29udGV4dDsKPiAgICAgICBHRXJyb3IgKmVycm9y
ID0gTlVMTDsKPiAgICAgICBWREFnZW50ICphZ2VudDsKPiAtICAgIGNoYXIgKipvcmlnX2FyZ3Y7
Cj4gLQo+IC0gICAgb3JpZ19hcmd2ID0gZ19tZW1kdXAoYXJndiwgc2l6ZW9mKGNoYXIqKSAqIChh
cmdjKzEpKTsKPiAtICAgIG9yaWdfYXJndlthcmdjXSA9IE5VTEw7Cj4gKyAgICBjaGFyICoqb3Jp
Z19hcmd2ID0gZ19tZW1kdXAoYXJndiwgc2l6ZW9mKGNoYXIqKSAqIChhcmdjKzEpKTsKPiArICAg
IG9yaWdfYXJndlthcmdjXSA9IE5VTEw7IC8qIFRvIGF2b2lkIGNsYW5nIGFuYWx5emVyIGZhbHNl
LXBvc2l0aXZlICovCj4gICAKPiAgICAgICBjb250ZXh0ID0gZ19vcHRpb25fY29udGV4dF9uZXco
TlVMTCk7Cj4gICAgICAgZ19vcHRpb25fY29udGV4dF9hZGRfbWFpbl9lbnRyaWVzKGNvbnRleHQs
IGVudHJpZXMsIE5VTEwpOwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
