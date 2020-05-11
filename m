Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8B81CDB1A
	for <lists+spice-devel@lfdr.de>; Mon, 11 May 2020 15:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFAE56E46C;
	Mon, 11 May 2020 13:23:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0916E46C
 for <spice-devel@lists.freedesktop.org>; Mon, 11 May 2020 13:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589203417;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uX3S2SQnV69uJj04kIZNmhd+5+/vOKq5HI2dcRtfgVo=;
 b=KGWG7LmeTc+sluORod8GXvUQUzEQafgMUaDV45HF1F7Qsgg6cJt2ZMB/5ERFHxZVLUT46C
 aniehbslH07nWKRUIGJf45O/Ohw7VSB3W2mfcoNvQu3s2oOua5wgMqFizANlQxf8NrZjQY
 AuGMV46LKJ8XvVnhzV/21YsuoSIA+tk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-i7ybp6aUP76naJoMSifHIQ-1; Mon, 11 May 2020 09:23:35 -0400
X-MC-Unique: i7ybp6aUP76naJoMSifHIQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0B4F108597A;
 Mon, 11 May 2020 13:23:34 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.198])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 70C671002394;
 Mon, 11 May 2020 13:23:33 +0000 (UTC)
To: bruts@netc.fr, spice-devel@lists.freedesktop.org
References: <ea-mime-5eb94e31-6c8d-6a040cb3@www-2.mailo.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <8d345dc9-b878-0d67-4bf8-1292aaf8c303@redhat.com>
Date: Mon, 11 May 2020 16:23:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ea-mime-5eb94e31-6c8d-6a040cb3@www-2.mailo.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-vdagent: how to enable additional mouse
 buttons?
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

T24gNS8xMS8yMCA0OjA4IFBNLCBicnV0c0BuZXRjLmZyIHdyb3RlOgo+IEhpLAo+IAo+IAo+IAo+
IFllcyBtb3N0IGxpa2VseS4KPiAKPiBJIGZpbmQgdGhlc2UgbGluZXMgb2YgY29kZToKPiAKPiAK
PiAKPiAvKiBidXR0b25zICovCj4gIMKgwqDCoCBpb2N0bCh1aW5wdXQtPmZkLCBVSV9TRVRfRVZC
SVQsIEVWX0tFWSk7Cj4gIMKgwqDCoCBpb2N0bCh1aW5wdXQtPmZkLCBVSV9TRVRfS0VZQklULCBC
VE5fTEVGVCk7Cj4gIMKgwqDCoCBpb2N0bCh1aW5wdXQtPmZkLCBVSV9TRVRfS0VZQklULCBCVE5f
TUlERExFKTsKPiAgwqDCoMKgIGlvY3RsKHVpbnB1dC0+ZmQsIFVJX1NFVF9LRVlCSVQsIEJUTl9S
SUdIVCk7Cj4gCj4gIMKgwqDCoCAvKiB3aGVlbCAqLwo+ICDCoMKgwqAgaW9jdGwodWlucHV0LT5m
ZCwgVUlfU0VUX0VWQklULCBFVl9SRUwpOwo+ICDCoMKgwqAgaW9jdGwodWlucHV0LT5mZCwgVUlf
U0VUX1JFTEJJVCwgUkVMX1dIRUVMKTsKPiAKPiAKPiBJIHdpbGwgcHJvYmFibHkgbmVlZCB0byBk
ZWNsYXJlIHRoZSBhZGRpdGlvbmFsIG1vdXNlIGJ1dHRvbnMgb2YgbXkgbW91c2UgKExvZ2l0ZWNo
IEc0MDMpLCBzbyBJIHJ1biB4ZXYgdG8gZmluZCBzb21lIGluZm9ybWF0aW9uOgo+IAo+IAo+IAo+
IChCVE5fTEVGVCwgQlROX1JJR0hULCBidXR0b24gOCwgYnV0dG9uIDkpCj4gCj4gCj4gCj4gQnV0
dG9uUHJlc3MgZXZlbnQsIHNlcmlhbCA0OCwgc3ludGhldGljIE5PLCB3aW5kb3cgMHgzMDAwMDAx
LAo+ICDCoMKgwqAgcm9vdCAweDNhZCwgc3VidyAweDAsIHRpbWUgMzYxMzI3LCAoMTI3LDk0KSwg
cm9vdDooMTI4LDE0NCksCj4gIMKgwqDCoCBzdGF0ZSAweDAsIGJ1dHRvbiAxLCBzYW1lX3NjcmVl
biBZRVMKPiAKPiBCdXR0b25SZWxlYXNlIGV2ZW50LCBzZXJpYWwgNDgsIHN5bnRoZXRpYyBOTywg
d2luZG93IDB4MzAwMDAwMSwKPiAgwqDCoMKgIHJvb3QgMHgzYWQsIHN1YncgMHgwLCB0aW1lIDM2
MTQyNiwgKDEyNyw5NCksIHJvb3Q6KDEyOCwxNDQpLAo+ICDCoMKgwqAgc3RhdGUgMHgxMDAsIGJ1
dHRvbiAxLCBzYW1lX3NjcmVlbiBZRVMKPiAKPiBCdXR0b25QcmVzcyBldmVudCwgc2VyaWFsIDQ4
LCBzeW50aGV0aWMgTk8sIHdpbmRvdyAweDMwMDAwMDEsCj4gIMKgwqDCoCByb290IDB4M2FkLCBz
dWJ3IDB4MCwgdGltZSAzNjI0NDgsICgxMjcsOTQpLCByb290OigxMjgsMTQ0KSwKPiAgwqDCoMKg
IHN0YXRlIDB4MCwgYnV0dG9uIDMsIHNhbWVfc2NyZWVuIFlFUwo+IAo+IEJ1dHRvblJlbGVhc2Ug
ZXZlbnQsIHNlcmlhbCA0OCwgc3ludGhldGljIE5PLCB3aW5kb3cgMHgzMDAwMDAxLAo+ICDCoMKg
wqAgcm9vdCAweDNhZCwgc3VidyAweDAsIHRpbWUgMzYyNTU2LCAoMTI3LDk0KSwgcm9vdDooMTI4
LDE0NCksCj4gIMKgwqDCoCBzdGF0ZSAweDQwMCwgYnV0dG9uIDMsIHNhbWVfc2NyZWVuIFlFUwo+
IAo+IEJ1dHRvblByZXNzIGV2ZW50LCBzZXJpYWwgNDgsIHN5bnRoZXRpYyBOTywgd2luZG93IDB4
MzAwMDAwMSwKPiAgwqDCoMKgIHJvb3QgMHgzYWQsIHN1YncgMHgwLCB0aW1lIDM2NjgyOSwgKDEy
Nyw5NCksIHJvb3Q6KDEyOCwxNDQpLAo+ICDCoMKgwqAgc3RhdGUgMHgwLCBidXR0b24gOCwgc2Ft
ZV9zY3JlZW4gWUVTCj4gCj4gQnV0dG9uUmVsZWFzZSBldmVudCwgc2VyaWFsIDQ4LCBzeW50aGV0
aWMgTk8sIHdpbmRvdyAweDMwMDAwMDEsCj4gIMKgwqDCoCByb290IDB4M2FkLCBzdWJ3IDB4MCwg
dGltZSAzNjY5NDksICgxMjcsOTQpLCByb290OigxMjgsMTQ0KSwKPiAgwqDCoMKgIHN0YXRlIDB4
MCwgYnV0dG9uIDgsIHNhbWVfc2NyZWVuIFlFUwo+IAo+IEJ1dHRvblByZXNzIGV2ZW50LCBzZXJp
YWwgNDgsIHN5bnRoZXRpYyBOTywgd2luZG93IDB4MzAwMDAwMSwKPiAgwqDCoMKgIHJvb3QgMHgz
YWQsIHN1YncgMHgwLCB0aW1lIDM2ODA5MywgKDEyNyw5NCksIHJvb3Q6KDEyOCwxNDQpLAo+ICDC
oMKgwqAgc3RhdGUgMHgwLCBidXR0b24gOSwgc2FtZV9zY3JlZW4gWUVTCj4gCj4gQnV0dG9uUmVs
ZWFzZSBldmVudCwgc2VyaWFsIDQ4LCBzeW50aGV0aWMgTk8sIHdpbmRvdyAweDMwMDAwMDEsCj4g
IMKgwqDCoCByb290IDB4M2FkLCBzdWJ3IDB4MCwgdGltZSAzNjgyNTAsICgxMjcsOTQpLCByb290
OigxMjgsMTQ0KSwKPiAgwqDCoMKgIHN0YXRlIDB4MCwgYnV0dG9uIDksIHNhbWVfc2NyZWVuIFlF
Uwo+IAo+IAo+IAo+IE5vdyB0aGUgbmV4dCBxdWVzdGlvbiBpcyBvYnZpb3VzOiBob3cgZG8gSSBh
ZGp1c3QgdGhlIGNvZGUgdG8gYWRkIHN1cHBvcnQgZm9yIGJ1dHRvbiA4LDkgPwo+IAo+IAo+IAo+
IEkgdGhvdWdodCBCVE5fTEVGVCBhbmQgQlROX1JJR0hUIHdvdWxkIGJlIGRlY2xhcmVkIGluIHVp
bnB1dC5oIGJ1dCB0aGV5IGFyZSBnbG9iYWwgdmFyaWFibGVzPyBvciB3aGVyZSBhcmUgdGhleSBk
ZWNsYXJlZD8KCkkgZm91bmQgdGhlbSBpbgovdXNyL2luY2x1ZGUvbGludXgvaW5wdXQtZXZlbnQt
Y29kZXMuaC4KVGhlcmUgaXMgYWxzbyAJQlROX0JBQ0sgYnV0IEknbSBub3Qgc3VyZSBpdCdzIG1h
cHBlZCB0byBhbnkgb2YgYnV0dG9uLTggCm9yIDkuCgpVcmkuCgo+IAo+IEFueSBoZWxwIHdpdGgg
YWRkaW5nIHN1cHBvcnQgZm9yIHRoZXNlIGJ1dHRvbnMgd291bGQgYmUgdmVyeSBhcHByZWNpYXRl
ZCBhbmQgZmluYWxseSBtYWtlIG1lIHN0b3AgdXNpbmcgdmlydHVhbGJveCBsb2wuCj4gCj4gVGhh
bmtzIQo+IAo+IAo+IAo+IAo+IAo+IAo+IAo+IERlIDogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQu
Y29tPgo+IMOAIDogYnJ1dHNAbmV0Yy5mcjsKPiAgwqDCoMKgc3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gU3VqZXQgOiBSZTogW1NwaWNlLWRldmVsXSBzcGljZS12ZGFnZW50OiBo
b3cgdG8gZW5hYmxlIGFkZGl0aW9uYWwgbW91c2UgYnV0dG9ucz8KPiBEYXRlIDogMDMvMDUvMjAy
MCAxNzozMzo1NSBFdXJvcGUvUGFyaXMKPiAKPiBPbiA1LzEvMjAgMzo1MSBQTSwgYnJ1dHNAbmV0
Yy5mciB3cm90ZToKPj4KPj4gSSBhbSB1c2luZyBzcGljZS12ZGFnZW50IG9uIG1vc3Qgb2YgbXkg
cWVtdS1rdm0gdm0ncywgd2hpbGUgdGhpcyBpcyB2ZXJ5Cj4+IGNvbnZlbmllbnQsIG1vdXNlIGJ1
dHRvbiA4IGFuZCA5IGFyZSBub3Qgd29ya2luZyAodGhvc2UgYXJlIHRoZSBzaWRlCj4+IGJ1dHRv
bnMgb2YgdGhlIG1vdXNlLCBvbmUgaXMgb2Z0ZW4gdXNlZCBmb3IgQkFDSyBmdW5jdGlvbiBvZiB0
aGUKPj4gYnJvd3Nlciwgd2hpY2ggbXkgdGh1bWIgaXMgYWN0dWFsbHkgYWRkaWN0ZWQgdG8pLgo+
PiBIb3cgY291bGQgaSBtYWtlIHRoZXNlIGJ1dHRvbnMgd29yayB3aXRoIHNwaWNlLXZkYWdlbnQ/
Cj4gCj4gSGksCj4gCj4gQ3VycmVudGx5IDUgbW91c2UgYnV0dG9ucyBhcmUgc3VwcG9ydGVkLiBJ
IHRoaW5rIHNvbWUgY29kZSBpcyBuZWVkZWQgdG8KPiBiZSBhZGRlZCBpbiBvcmRlciB0byBzdXBw
b3J0IG1vcmUgYnV0dG9ucy4KPiAKPiBVcmkuCj4gCj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHN1Z2dl
c3Rpb25zLAo+Pgo+PiBCcnV0cwo+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
