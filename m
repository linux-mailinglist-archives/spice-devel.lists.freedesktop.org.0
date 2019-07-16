Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7026A7D9
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 13:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA95F89BF6;
	Tue, 16 Jul 2019 11:59:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C527B89BF6
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 11:59:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 542AB308FBA9
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 11:59:14 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B269C60C05;
 Tue, 16 Jul 2019 11:59:13 +0000 (UTC)
To: Snir Sheriber <ssheribe@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190716105516.14803-1-ssheribe@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <22a4ba43-986c-32f9-adc4-8e2ea69ed624@redhat.com>
Date: Tue, 16 Jul 2019 14:59:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190716105516.14803-1-ssheribe@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 16 Jul 2019 11:59:14 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin: receive
 encoder properties as command parameters
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

T24gNy8xNi8xOSAxOjU1IFBNLCBTbmlyIFNoZXJpYmVyIHdyb3RlOgo+IFRoaXMgYWxsb3dzIHRv
IHNldCBwbHVnaW4ga2V5PXZhbHVlIHByb3BlcnRpZXMgb24gcnVuIHRpbWUuCj4gVG8gYWRkIGVu
Y29kZXIgcGx1Z2luIHByb3BlcnR5IHVzZSB0aGUgZm9sbG93aW5nIHN5bnRheDoKPiAtZ3N0LnBy
b3A9ImtleT12YWx1ZSIKCklzIHRoaXMgdGhlIGNvcnJlY3Qgc3ludGF4LCBvciBkbyB5b3UgbmVl
ZCBhIC1jID8KCj4gTWFrZSBzdXJlIHN5bnRheCBpcyBhY2N1cmF0ZSBhbmQgdGhhdCB0aGUgcHJv
cGVydHkgaXMgc3VwcG9ydGVkIGJ5Cj4gdGhlIGNob3NlbiBwbHVnaW4sIHdyb25nL2ludmFsaWQg
cHJvcGVydGllcyB3aWxsIGJlIGlnbm9yZWQgc2lsZW50bHkuCj4gU3BlY2lmaWMgZW5jb2RlciBh
dmFpbGFibGUgcHJvcGVydGllcyBjYW4gYmUgdmlld2VkIGJ5Ogo+IGdzdC1pbnNwZWN0LTEuMCA8
UExVR0lOLU5BTUU+Cj4gLS0tCj4gKiBUaGlzIHBhdGNoIHVzZWZ1bCBmb3IgZW5jb2RlcnMgdHVu
aW5nIGFuZCB0ZXN0aW5nIChsYXRlciB3ZSBjYW4gaW50cm9kdWNlCj4gICAgZml4ZWQgZW5jb2Rl
cnMgc2V0dXBzKSwgaGVuY2Ugbm90IGNoZWNraW5nIGZvciB2YWxpZGl0eSBvZiBpbnB1dC4KPiAq
IEkgZHJvcHBlZCBzc3RyZWFtIGluIHByZXZpb3VzIHBhdGNoIGJ1dCBpIGZvdW5kIGl0IHVzZWZ1
bCBoZXJlIGFuZCBhZGRlZCBpdAo+ICAgIGFnYWluLCBhbHRlcm5hdGl2ZSBzdWdnZXN0aW9ucyBh
cmUgd2VsY29tZQo+IAo+IC0tLQo+ICAgc3JjL2dzdC1wbHVnaW4uY3BwIHwgMjEgKysrKysrKysr
KysrKysrKystLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVnaW4uY3BwIGIvc3JjL2dzdC1w
bHVnaW4uY3BwCj4gaW5kZXggNGU4MDJmMS4uMGQ4NzczZCAxMDA2NDQKPiAtLS0gYS9zcmMvZ3N0
LXBsdWdpbi5jcHAKPiArKysgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiBAQCAtNiw2ICs2LDcgQEAK
PiAgIAo+ICAgI2luY2x1ZGUgPGNvbmZpZy5oPgo+ICAgI2luY2x1ZGUgPGNzdHJpbmc+Cj4gKyNp
bmNsdWRlIDxzc3RyZWFtPgo+ICAgI2luY2x1ZGUgPGV4Y2VwdGlvbj4KPiAgICNpbmNsdWRlIDxz
dGRleGNlcHQ+Cj4gICAjaW5jbHVkZSA8bWVtb3J5Pgo+IEBAIC0zNSw2ICszNiw3IEBAIHN0cnVj
dCBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MKPiAgICAgICBpbnQgZnBzID0gMjU7Cj4gICAgICAg
U3BpY2VWaWRlb0NvZGVjVHlwZSBjb2RlYyA9IFNQSUNFX1ZJREVPX0NPREVDX1RZUEVfSDI2NDsK
PiAgICAgICBzdGQ6OnN0cmluZyBlbmNvZGVyOwo+ICsgICAgc3RkOjp2ZWN0b3I8c3RkOjpzdHJp
bmc+IHByb3Bfc3RyaW5nczsKPiAgIH07Cj4gICAKPiAgIHRlbXBsYXRlIDx0eXBlbmFtZSBUPgo+
IEBAIC0xODAsMTAgKzE4MiwxNSBAQCBHc3RFbGVtZW50ICpHc3RyZWFtZXJGcmFtZUNhcHR1cmU6
OmdldF9lbmNvZGVyX3BsdWdpbihjb25zdCBHc3RyZWFtZXJFbmNvZGVyU2V0dAo+ICAgCj4gICAg
ICAgZW5jb2RlciA9IGZhY3RvcnkgPyBnc3RfZWxlbWVudF9mYWN0b3J5X2NyZWF0ZShmYWN0b3J5
LCAiZW5jb2RlciIpIDogbnVsbHB0cjsKPiAgICAgICBpZiAoZW5jb2RlcikgeyAvLyBJbnZhbGlk
IHByb3BlcnRpZXMgd2lsbCBiZSBpZ25vcmVkIHNpbGVudGx5Cj4gLSAgICAgICAgLyogeDI2NGVu
YyBwcm9wZXJ0aWVzICovCj4gLSAgICAgICAgZ3N0X3V0aWxfc2V0X29iamVjdF9hcmcoR19PQkpF
Q1QoZW5jb2RlciksICJ0dW5lIiwgInplcm9sYXRlbmN5Iik7Ly8gc3RpbGxpbWFnZSwgZmFzdGRl
Y29kZSwgemVyb2xhdGVuY3kKPiAtICAgICAgICBnc3RfdXRpbF9zZXRfb2JqZWN0X2FyZyhHX09C
SkVDVChlbmNvZGVyKSwgImJmcmFtZXMiLCAiMCIpOwo+IC0gICAgICAgIGdzdF91dGlsX3NldF9v
YmplY3RfYXJnKEdfT0JKRUNUKGVuY29kZXIpLCAic3BlZWQtcHJlc2V0IiwgIjEiKTsvLyAxLXVs
dHJhZmFzdCwgNi1tZWQsIDktdmVyeXNsb3cKPiArICAgICAgICBjb25zdCBjaGFyICprZXk7Cj4g
KyAgICAgICAgY29uc3QgY2hhciAqdmFsOwo+ICsgICAgICAgIGZvciAoaW50IGkgPSAxOyBpIDwg
c2V0dGluZ3MucHJvcF9zdHJpbmdzLnNpemUoKTsgaSArPSAyKSB7Cj4gKyAgICAgICAgICAgIGtl
eSA9IHNldHRpbmdzLnByb3Bfc3RyaW5nc1tpLTFdLmNfc3RyKCk7Cj4gKyAgICAgICAgICAgIHZh
bCA9IHNldHRpbmdzLnByb3Bfc3RyaW5nc1tpXS5jX3N0cigpOwo+ICsgICAgICAgICAgICBnc3Rf
dXRpbF9zZXRfb2JqZWN0X2FyZyhHX09CSkVDVChlbmNvZGVyKSwga2V5LCB2YWwpOwo+ICsgICAg
ICAgICAgICBnc3Rfc3lzbG9nKExPR19OT1RJQ0UsICJUcnlpbmcgdG8gc2V0IGVuY29kZXIgcHJv
cGVydHk6ICclcyA9ICVzJyIsIGtleSwgdmFsKTsKCklmIGdzdF91dGlsX3NldF9vYmplY3RfYXJn
IHJldHVybnMgc29tZXRoaW5nIGl0IHdvdWxkIGJlIG5pY2UgdG8gYWRkCmEgc3RhdHVzIHRvIHRo
ZSBnc3Rfc3lzbG9nCgoKPiArICAgICAgICB9Cj4gKwo+ICAgICAgIH0KPiAgICAgICBnc3RfcGx1
Z2luX2ZlYXR1cmVfbGlzdF9mcmVlKGZpbHRlcmVkKTsKPiAgICAgICBnc3RfcGx1Z2luX2ZlYXR1
cmVfbGlzdF9mcmVlKGVuY29kZXJzKTsKPiBAQCAtNDQ5LDYgKzQ1NiwxMiBAQCB2b2lkIEdzdHJl
YW1lclBsdWdpbjo6UGFyc2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlvbiAqb3B0aW9ucykK
PiAgICAgICAgICAgICAgIH0KPiAgICAgICAgICAgfSBlbHNlIGlmIChuYW1lID09ICJnc3QuZW5j
b2RlciIpIHsKPiAgICAgICAgICAgICAgIHNldHRpbmdzLmVuY29kZXIgPSB2YWx1ZTsKPiArICAg
ICAgICB9IGVsc2UgaWYgKG5hbWUgPT0gImdzdC5wcm9wIikgewo+ICsgICAgICAgICAgICBzdGQ6
OnN0cmluZ3N0cmVhbSBzcyh2YWx1ZSk7Cj4gKyAgICAgICAgICAgIHN0ZDo6c3RyaW5nIGl0ZW07
Cj4gKyAgICAgICAgICAgIHdoaWxlIChzdGQ6OmdldGxpbmUoc3MsIGl0ZW0sICc9JykpIHsKPiAr
ICAgICAgICAgICAgICAgc2V0dGluZ3MucHJvcF9zdHJpbmdzLnB1c2hfYmFjayhpdGVtKTsKCk1h
eWJlIGJldHRlciB0byBnZXQgcGFpcnMuCgpVcmkuCgo+ICsgICAgICAgICAgICB9Cj4gICAgICAg
ICAgIH0KPiAgICAgICB9Cj4gICB9Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
