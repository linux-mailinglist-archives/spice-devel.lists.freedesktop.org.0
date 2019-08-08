Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E2C86496
	for <lists+spice-devel@lfdr.de>; Thu,  8 Aug 2019 16:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D75897F5;
	Thu,  8 Aug 2019 14:42:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE455897F5
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 14:42:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5DA896404C
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 14:42:34 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DA995D9CC;
 Thu,  8 Aug 2019 14:42:33 +0000 (UTC)
To: Snir Sheriber <ssheribe@redhat.com>, Frediano Ziglio <fziglio@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <20190801150119.29179-4-ssheribe@redhat.com>
 <2074963738.4204519.1564674497673.JavaMail.zimbra@redhat.com>
 <2104123345.4229833.1564676262147.JavaMail.zimbra@redhat.com>
 <4b6f968c-17b5-df3e-43e7-cccb1df9b2e4@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <8e7fff6c-17cb-b44e-b8ed-e9bd6ca783cb@redhat.com>
Date: Thu, 8 Aug 2019 17:42:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4b6f968c-17b5-df3e-43e7-cccb1df9b2e4@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 08 Aug 2019 14:42:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 4/4] gst-plugin:
 reduce number of templates being used
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC80LzE5IDEwOjUzIEFNLCBTbmlyIFNoZXJpYmVyIHdyb3RlOgo+IAo+IE9uIDgvMS8xOSA3
OjE3IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Pj4gLS0tCj4+Pj4KPj4+PiBUaGlzIHBh
dGNoIGlzIG5vdCByZWFsbHkgbmVjZXNzYXJ5LCBqdXN0IGEgc3VnZ2VzdGlvbiwgaXQncyBhIGJp
dCBoYWNreQo+Pj4+IGJ1dCB3b3VsZCBzYXZlIHNvbWUgY29kZS4KPj4+PiBPdGhlciBvcHRpb25z
IHdvdWxkIGJlIHRvIHVzZSBleHBsaWNpdCB0ZW1wbGF0ZSBzcGVjaWFsaXphdGlvbiBvciB0bwo+
Pj4+IGxlYXZlIGl0IGFzIGlzLgo+Pj4+Cj4+PiBTdXJlLCB3aGF0IEkgZG9uJ3QgbGlrZSBpcyB0
aGF0IGlzIHN1cmVseSBub3QgdHlwZSBzYWZlLCB5b3UgY2FuIAo+Pj4gaW5zdGFudGlhdGUKPj4+
IGEgR3N0TWluaU9iamVjdFVQdHIgb2Ygd2hhdGV2ZXIsIGV2ZW4gYW4gImludCIgdHlwZSBhbmQg
Y29tcGlsZXIgd29uJ3QKPj4+IGNvbXBsYWluIGF0IGFsbCwgd2l0Y2ggaXMgYSBnb29kIHRoaW5n
IG9mIEMrKy4KPj4+IEknbSB0aGlua2luZyBwb3NzaWJsZSBjaGFuZ2VzIHRvIHRoaXMgcGF0Y2gg
bGlrZSB0cmFpdHMgYW5kL29yIG1hY3JvcyB0bwo+Pj4gZGVjbGFyZSBhbGxvd2VkIHR5cGVzLgo+
Pj4gQ2VydGFpbiB0aGUgdHlwZSBpcyBnZXR0aW5nIGEgYml0IGxvbmcgKCJHc3RNaW5pT2JqZWN0
VVB0cjxHc3RTYW1wbGU+IiksCj4+PiBidXQgdGhpcyBjb3VsZCBiZSBzb2x2ZSBieSB0eXBlZGVm
cyAod2VsbCwgdGhpcyB3YXMgc29sdmVkIGJ5IHVzaW5nIAo+Pj4gbGluZXMpLgo+Pj4KPj4gV2hh
dCBhYm91dDoKPj4KPj4KPj4gdGVtcGxhdGUgPHR5cGVuYW1lIFQ+Cj4+IHN0cnVjdCBpc19nc3Rf
bWluaV90eXBlIHsKPj4gfTsKPj4KPj4gdGVtcGxhdGUgPHR5cGVuYW1lIFQsIHR5cGVuYW1lID0g
dHlwZW5hbWUgaXNfZ3N0X21pbmlfdHlwZTxUPjo6dHlwZT4KPj4gc3RydWN0IEdzdE1pbmlPYmpl
Y3REZWxldGVyIHsKPj4gwqDCoMKgwqAgdm9pZCBvcGVyYXRvcigpKFQqIHApCj4+IMKgwqDCoMKg
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoCBnc3RfbWluaV9vYmplY3RfdW5yZWYoR1NUX01JTklfT0JK
RUNUX0NBU1QocCkpOwo+PiDCoMKgwqDCoCB9Cj4+IH07Cj4+Cj4+IHRlbXBsYXRlIDx0eXBlbmFt
ZSBUPgo+PiB1c2luZyBHc3RNaW5pT2JqZWN0VVB0ciA9IHN0ZDo6dW5pcXVlX3B0cjxULCBHc3RN
aW5pT2JqZWN0RGVsZXRlcjxUPj47Cj4+Cj4+ICNkZWZpbmUgREVDTEFSRV9HU1RfTUlOSV9UWVBF
KG5hbWUpIFwKPj4gdGVtcGxhdGUgPD4gc3RydWN0IGlzX2dzdF9taW5pX3R5cGU8bmFtZT4geyBc
Cj4+IMKgwqDCoMKgwqDCoMKgwqAgdHlwZWRlZiBuYW1lICp0eXBlOyBcCj4+IH07IFwKPj4gdXNp
bmcgbmFtZSAjIyBVUHRyID0gR3N0TWluaU9iamVjdFVQdHI8bmFtZT47Cj4+Cj4+IERFQ0xBUkVf
R1NUX01JTklfVFlQRShHc3RTYW1wbGUpCj4+Cj4gCj4gQWN0dWFsbHkgYWxzbyB0aGUgR3N0T2Jq
ZWN0VVB0ciBpcyBub3QgcmVhbGx5IHR5cGUgc2FmZQo+IAo+IEknbSBub3Qgc3VyZSBpIHdvdWxk
bid0IHByZWZlciB0byBqdXN0IGRvIHNvbWV0aGluZyBsaWtlIHRoaXMgZm9yCj4gc2ltcGxpY2l0
eToKPiAKPiB0ZW1wbGF0ZSA8dHlwZW5hbWUgVD4KPiBzdHJ1Y3QgR3N0RGVsZXRlciB7Cj4gIMKg
wqDCoCB2b2lkIG9wZXJhdG9yKCkoVCogcCkKPiAgwqDCoMKgIHsKPiAgwqDCoMKgwqDCoMKgwqAg
Z3N0X29iamVjdF91bnJlZihwKTsKPiAgwqDCoMKgIH0KPiB9OwoKCkNhbiB3ZSBzb21laG93IHBh
c3MgdGhlIHVucmVmLWZ1bmN0aW9uIGluIHRoZSB0ZW1wbGF0ZSA/CnRlbXBsYXRlIDx0eXBlbmFt
ZSBULCBmdW5jdGlvbiBmPgpzdHJ1Y3QgR3N0RGVsZXRlciB7CiAgICAuLi4KCgpVcmkuCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
