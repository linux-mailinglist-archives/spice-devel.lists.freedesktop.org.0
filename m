Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278D118316C
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 14:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A9F895B6;
	Thu, 12 Mar 2020 13:31:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2178895B6
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 13:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584019866;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qnQdmr0I/j/LdsZNUMTC7uLXEeOv32hCO+d+mGYvcoA=;
 b=HF1Agp3RHe/4EnMt38o4fpBPJNJOOTLY8VFVS8Vewxb28D8WedkXf9uMas7IURPmRBUma9
 yQYjgQuFVWZ1q+bC30JTbyU8hEqA0ohBQ66t3BI1UOPOlJTlxNhfCWzsI5Csz4yo5k+1wi
 v8I9pehzCQTxHUvNJRZEsH+XUVWOn+g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-6bERcZJgPmqm0diJuaErFw-1; Thu, 12 Mar 2020 09:31:04 -0400
X-MC-Unique: 6bERcZJgPmqm0diJuaErFw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FC40800D5B;
 Thu, 12 Mar 2020 13:31:03 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 01CEB8FBE5;
 Thu, 12 Mar 2020 13:31:02 +0000 (UTC)
To: Jeremy White <jwhite@codeweavers.com>, spice-devel@lists.freedesktop.org
References: <20190917162300.21667-1-jwhite@codeweavers.com>
 <ec986562-b8ca-6af0-986d-bde0c4699f27@redhat.com>
 <4382f121-7241-e62d-3f73-9ba8d8d6621f@codeweavers.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <38a431c8-d3a1-1b06-4e8d-94edef08495d@redhat.com>
Date: Thu, 12 Mar 2020 15:31:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <4382f121-7241-e62d-3f73-9ba8d8d6621f@codeweavers.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH x11spice] Fix compliation on gcc 4.X.
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gMy8xMS8yMCA5OjEwIFBNLCBKZXJlbXkgV2hpdGUgd3JvdGU6Cj4gSGksCj4gCj4gSSdtIGFm
cmFpZCB0aGF0IGRvZXMgbm90IGhlbHAgb24gdGhlIGdjYyA0LjguNSBvbiBSSEVMIDcuWCwgcGFy
dGljdWxhcmx5IAo+IHdpdGggc3RydWN0dXJlcyB0aGF0IGNvbnRhaW4gb3RoZXIgc3RydWN0dXJl
cy4KPiAKPiBnY2MgLVdhbGwgLURUSFJFRSAtbyAvZGV2L251bGwgLWMgdGVzdC5jCj4gdGVzdC5j
OiBJbiBmdW5jdGlvbiDigJhoYW5kbGVfc2lndGVybeKAmToKPiB0ZXN0LmM6MTI6MTI6IHdhcm5p
bmc6IG1pc3NpbmcgYnJhY2VzIGFyb3VuZCBpbml0aWFsaXplciBbLVdtaXNzaW5nLWJyYWNlc10K
PiAgwqDCoMKgwqAgc3RydWN0IHNpZ2FjdGlvbiBhY3QgPSB7IDAgfTsKCm1pc3NpbmctYnJhY2Vz
IC0tPiBpdCB3b3JrcyB3aXRoIHsgezB9IH07CgpJIGd1ZXNzIHdoZW4gdXNpbmcgYSBSSEVMLTcg
Z2NjICh2ZXJzaW9uIDQueCkgdGhlcmUgaXMgYSBkaWZmZXJlbmNlCmJldHdlZW4gc3RydWN0IGFu
ZCB1bmlvbiAob3Igb3RoZXIgbm9uLXNpbXBsZSBzdHJ1Y3R1cmVzKS4KCldpdGggbXkgdGVzdCBw
cm9ncmFtIHRoZXJlIGlzIG5vIHByb2JsZW0gd2l0aCBSSEVMLTcgZ2NjIHdpdGggZWl0aGVyIHsw
fSAKYW5kIHswLH0KCkkgc2VlIHRoZXJlIGFscmVhZHkgZXhpc3RzIHsgfSBpbml0aWFsaXphdGlv
biBmb3IgYSBzdHJ1Y3Qgc2lnYWN0aW9uIGluIAp0aGUgY29kZS4KCkFsc28gdGhlIGNvZGUgaW4g
c3JjLmMgYmVsb3cgZmFpbHMgdG8gY29tcGlsZSBmb3IgbWUgd2l0aCBtaXNzaW5nLWJyYWNlcyAK
dG9vICh3aGljaCBtYXkgc29sdmVkIGJ5IHt7MH19KS4KClRvIHN1bW1hcml6ZSwgSSdtIE9LIHdp
dGggdGhpcyBwYXRjaC4KClVyaS4KCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXgo+IHRlc3Qu
YzoxMjoxMjogd2FybmluZzogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yIAo+IOKAmGFjdC5fX3Np
Z2FjdGlvbl9oYW5kbGVy4oCZKSBbLVdtaXNzaW5nLWJyYWNlc10KPiAKPiBBdHRhY2hlZCBpcyB0
aGUgdGVzdCBwcm9ncmFtLgo+IAo+IENoZWVycywKPiAKPiBKZXJlbXkKPiAKPiBPbiAzLzExLzIw
IDE6MjcgUE0sIFVyaSBMdWJsaW4gd3JvdGU6Cj4+IEhpLAo+Pgo+PiBUaGFua3MgZm9yIHRoZSBw
aW5nIG9uIElSQy4KPj4KPj4gT24gOS8xNy8xOSA3OjIzIFBNLCBKZXJlbXkgV2hpdGUgd3JvdGU6
Cj4+PiBnY2MgNC54IHdhcm5zIGlmIHlvdSB1c2UgYSB7IDAgfSBpbml0aWFsaXphdGlvbiBjb25z
dHJ1Y3QKPj4+IGZvciBhIHN0cnVjdHVyZSB3aXRoIGFuIGluaXRpYWwgbWVtYmVyIHRoYXQgaXMg
YWxzbyBhIHN0cnVjdC4KPj4+Cj4+PiBUaGUgeyB9IGNvbnN0cnVjdCBpcyBzaW1wbGVyIGFuZCBh
cHBlYXJzIHRvIHdvcmsgb24gYSB3aWRlcgo+Pj4gcmFuZ2Ugb2YgZ2NjIHZlcnNpb25zLgo+Pgo+
PiBPbiBteSBGZWRvcmEgMzEsIGdjYyAodmVyc2lvbiA5LjIuMSkgZG9lcyBjb21wbGFpbiBhYm91
dCB7fSBidXQgbm90IAo+PiBhYm91dCB7MH0KPj4gd2hlbiBidWlsdCB3aXRoIC1XcGVkYW50aWMg
KHNlZSBzaW1wbGUgcHJvZ3JhbSBiZWxvdykuCj4+Cj4+Cj4+IERvZXMgezAsIH0gd29ya3MgYmV0
dGVyIGZvciB5b3UgPwo+Pgo+Pgo+PiA9PT09PT09PT09PT09PT09Cj4+Cj4+ICNpbmNsdWRlIDxz
dGRpby5oPgo+Pgo+PiBzdHJ1Y3QgUyB7aW50IGEsIGI7IH07Cj4+Cj4+IHZvaWQgcHJpbnRfcyhz
dHJ1Y3QgUyogcHMpCj4+IHsKPj4gwqDCoMKgwqDCoGlmICghcHMpIHsgcHJpbnRmKCJudWxsXG4i
KTsgcmV0dXJuOyB9Cj4+IMKgwqDCoMKgwqBwcmludGYoIiglZCwgJWQpXG4iLCBwcy0+YSwgcHMt
PmIpOwo+PiB9Cj4+Cj4+IGludCBtYWluICgpCj4+IHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBzdHJ1
Y3QgUyBzID0geyB9Owo+Pgo+PiDCoMKgwqDCoMKgwqDCoMKgIHByaW50X3MoJnMpOwo+PiDCoMKg
wqDCoMKgcmV0dXJuIDA7Cj4+IH0KPj4KPj4KPj4gPT09PT09PT09PT09PT09PQo+Pgo+PiBVcmku
Cj4+Cj4+Pgo+Pj4gVGhpcyBpcyBhIGNvcnJlY3Rpb24gdG8gZmRmZGYxMTA3YmUxMDBiOTgzZGUx
YmZmNGJlZWU4ZTYzNjBmNjcwYgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEplcmVteSBXaGl0ZSA8
andoaXRlQGNvZGV3ZWF2ZXJzLmNvbT4KPj4+IC0tLQo+Pj4gwqAgc3JjL2d1aS5jwqDCoMKgIHwg
MiArLQo+Pj4gwqAgc3JjL2xpc3Rlbi5jIHwgMiArLQo+Pj4gwqAgc3JjL21haW4uY8KgwqAgfCAy
ICstCj4+PiDCoCBzcmMvc3BpY2UuY8KgIHwgMiArLQo+Pj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3NyYy9n
dWkuYyBiL3NyYy9ndWkuYwo+Pj4gaW5kZXggODhhY2Y1YzkuLjNjMjZiODY0IDEwMDY0NAo+Pj4g
LS0tIGEvc3JjL2d1aS5jCj4+PiArKysgYi9zcmMvZ3VpLmMKPj4+IEBAIC0xNDcsNyArMTQ3LDcg
QEAgdm9pZCBzZXNzaW9uX2Rpc2Nvbm5lY3RfY2xpZW50KHNlc3Npb25fdCAqc2Vzc2lvbikKPj4+
IMKgIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCj4+PiDCoCB7Cj4+PiDCoMKgwqDC
oMKgIGd1aV90IGd1aTsKPj4+IC3CoMKgwqAgc2Vzc2lvbl90IHNlc3Npb24gPSB7IDAgfTsKPj4+
ICvCoMKgwqAgc2Vzc2lvbl90IHNlc3Npb24gPSB7IH07Cj4+PiDCoMKgwqDCoMKgIHNldGxvY2Fs
ZShMQ19BTEwsICIiKTsKPj4+IMKgwqDCoMKgwqAgZ3VpX2NyZWF0ZSgmZ3VpLCAmc2Vzc2lvbiwg
YXJnYywgYXJndik7Cj4+PiBkaWZmIC0tZ2l0IGEvc3JjL2xpc3Rlbi5jIGIvc3JjL2xpc3Rlbi5j
Cj4+PiBpbmRleCA0NTJmZDgxZi4uNzZjMDc5OGEgMTAwNjQ0Cj4+PiAtLS0gYS9zcmMvbGlzdGVu
LmMKPj4+ICsrKyBiL3NyYy9saXN0ZW4uYwo+Pj4gQEAgLTExNyw3ICsxMTcsNyBAQCBpbnQgbGlz
dGVuX3BhcnNlKGNvbnN0IGNoYXIgKmxpc3Rlbl9zcGVjLCBjaGFyIAo+Pj4gKiphZGRyLCBpbnQg
KnBvcnRfc3RhcnQsIGludCAqcG9yCj4+PiDCoCBzdGF0aWMgaW50IHRyeV9wb3J0KGNvbnN0IGNo
YXIgKmFkZHIsIGludCBwb3J0KQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBzdGF0aWMgY29uc3Qg
aW50IG9uID0gMSwgb2ZmID0gMDsKPj4+IC3CoMKgwqAgc3RydWN0IGFkZHJpbmZvIGFpID0geyAw
IH0sICpyZXMsICplOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgYWRkcmluZm8gYWkgPSB7IH0sICpyZXMs
ICplOwo+Pj4gwqDCoMKgwqDCoCBjaGFyIHBvcnRidWZbMzNdOwo+Pj4gwqDCoMKgwqDCoCBpbnQg
c29jaywgcmM7Cj4+PiBkaWZmIC0tZ2l0IGEvc3JjL21haW4uYyBiL3NyYy9tYWluLmMKPj4+IGlu
ZGV4IDcxY2JiNDY1Li44OTBmZjEzMyAxMDA2NDQKPj4+IC0tLSBhL3NyYy9tYWluLmMKPj4+ICsr
KyBiL3NyYy9tYWluLmMKPj4+IEBAIC01NSw3ICs1NSw3IEBAIGludCBtYWluKGludCBhcmdjLCBj
aGFyICphcmd2W10pCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIGludCByYzsKPj4+IC3CoMKgwqAg
c2Vzc2lvbl90IHNlc3Npb24gPSB7IDAgfTsKPj4+ICvCoMKgwqAgc2Vzc2lvbl90IHNlc3Npb24g
PSB7IH07Cj4+PiDCoMKgwqDCoMKgIGludCBkaXNwbGF5X29wZW5lZCA9IDA7Cj4+PiDCoMKgwqDC
oMKgIGludCBzcGljZV9zdGFydGVkID0gMDsKPj4+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UuYyBi
L3NyYy9zcGljZS5jCj4+PiBpbmRleCAwOGE1ZDA5YS4uNTYxYzg1ZmYgMTAwNjQ0Cj4+PiAtLS0g
YS9zcmMvc3BpY2UuYwo+Pj4gKysrIGIvc3JjL3NwaWNlLmMKPj4+IEBAIC00NzQsNyArNDc0LDcg
QEAgc3RhdGljIGludCBzZW5kX21vbml0b3JzX2NvbmZpZyhzcGljZV90ICpzLCBpbnQgCj4+PiB3
LCBpbnQgaCkKPj4+IMKgIGludCBzcGljZV9jcmVhdGVfcHJpbWFyeShzcGljZV90ICpzLCBpbnQg
dywgaW50IGgsIGludCAKPj4+IGJ5dGVzX3Blcl9saW5lLCB2b2lkICpzaG1hZGRyKQo+Pj4gwqAg
ewo+Pj4gLcKgwqDCoCBRWExEZXZTdXJmYWNlQ3JlYXRlIHN1cmZhY2UgPSB7IDAgfTsKPj4+ICvC
oMKgwqAgUVhMRGV2U3VyZmFjZUNyZWF0ZSBzdXJmYWNlID0geyB9Owo+Pj4gwqDCoMKgwqDCoCBz
dXJmYWNlLmhlaWdodCA9IGg7Cj4+PiDCoMKgwqDCoMKgIHN1cmZhY2Uud2lkdGggPSB3Owo+Pj4K
Pj4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo=
