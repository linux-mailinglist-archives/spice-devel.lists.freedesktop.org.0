Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CB7182FC4
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 13:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2796F6EA87;
	Thu, 12 Mar 2020 12:02:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9C66EA87
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584014577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cLglU1eYf/0VA3MBeh+k3QHxyMmGrUswQbYiczPqINM=;
 b=Q7Tzg+RpEvp40pIAY+egdCBfLB8L2B9tF2cOBP/SrbYJ3aTDRnPyOdYqsrUUYoQ5zExqIy
 bbzgIlYnpQ+1+JMjvjaJUk2D35KhZVLm4Zgvgl/Ia//mBbAWELwqyXaalT0R5aQjN9zs5b
 UIbp0lTAfMltmHsEdKMldEEOuw4LLBw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-d164NRtdPxWVolgRMsULZA-1; Thu, 12 Mar 2020 08:02:51 -0400
X-MC-Unique: d164NRtdPxWVolgRMsULZA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 830A38C4C95;
 Thu, 12 Mar 2020 12:02:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B1AE92965;
 Thu, 12 Mar 2020 12:02:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6DAFF18089C8;
 Thu, 12 Mar 2020 12:02:50 +0000 (UTC)
Date: Thu, 12 Mar 2020 08:02:50 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1089125122.16271124.1584014570069.JavaMail.zimbra@redhat.com>
In-Reply-To: <4382f121-7241-e62d-3f73-9ba8d8d6621f@codeweavers.com>
References: <20190917162300.21667-1-jwhite@codeweavers.com>
 <ec986562-b8ca-6af0-986d-bde0c4699f27@redhat.com>
 <4382f121-7241-e62d-3f73-9ba8d8d6621f@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.23, 10.4.195.28]
Thread-Topic: Fix compliation on gcc 4.X.
Thread-Index: hmJA+7QzeWevx5rVYRY/W/IInTAGQw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SWYgSSBjYW4gc3VnZ2VzdCwgZm9yIHNpZ2FjdGlvbiwganVzdCB1c2UgbWVtc2V0IQoKSXQncyAg
d2VpcmQgc3RydWN0dXJlIGRlZmluZWQgaW4gZGlmZmVyZW50IHdheSBpbiBkaWZmZXJlbnQgc3lz
dGVtcywgYW5kIGFsc28Kb24gdGhlIHNhbWUgc3lzdGVtIGNvdWxkIGJlIGRpZmZlcmVudCBkZXBl
bmRpbmcgb24gc29tZSBmbGFncy4KSXQncyBhIHdlaXJkIGNvbWJpbmF0aW9uIG9mIHVuaW9ucyBh
bmQgc3RydWN0dXJlcywgaW4gcmVhbGl0eSBzb21lIGZpZWxkIG5hbWUKeW91IHVzZSBhcmUgcHJl
cHJvY2Vzc29yIG1hY3JvcyB0byBhY2Nlc3MgbmVzdGVkIGZpZWxkcy4KCkZyZWRpYW5vCgo+IAo+
IEhpLAo+IAo+IEknbSBhZnJhaWQgdGhhdCBkb2VzIG5vdCBoZWxwIG9uIHRoZSBnY2MgNC44LjUg
b24gUkhFTCA3LlgsIHBhcnRpY3VsYXJseQo+IHdpdGggc3RydWN0dXJlcyB0aGF0IGNvbnRhaW4g
b3RoZXIgc3RydWN0dXJlcy4KPiAKPiBnY2MgLVdhbGwgLURUSFJFRSAtbyAvZGV2L251bGwgLWMg
dGVzdC5jCj4gdGVzdC5jOiBJbiBmdW5jdGlvbiDigJhoYW5kbGVfc2lndGVybeKAmToKPiB0ZXN0
LmM6MTI6MTI6IHdhcm5pbmc6IG1pc3NpbmcgYnJhY2VzIGFyb3VuZCBpbml0aWFsaXplciBbLVdt
aXNzaW5nLWJyYWNlc10KPiAgICAgICBzdHJ1Y3Qgc2lnYWN0aW9uIGFjdCA9IHsgMCB9Owo+ICAg
ICAgICAgICAgICBeCj4gdGVzdC5jOjEyOjEyOiB3YXJuaW5nOiAobmVhciBpbml0aWFsaXphdGlv
biBmb3IKPiDigJhhY3QuX19zaWdhY3Rpb25faGFuZGxlcuKAmSkgWy1XbWlzc2luZy1icmFjZXNd
Cj4gCj4gQXR0YWNoZWQgaXMgdGhlIHRlc3QgcHJvZ3JhbS4KPiAKPiBDaGVlcnMsCj4gCj4gSmVy
ZW15Cj4gCj4gT24gMy8xMS8yMCAxOjI3IFBNLCBVcmkgTHVibGluIHdyb3RlOgo+ID4gSGksCj4g
PiAKPiA+IFRoYW5rcyBmb3IgdGhlIHBpbmcgb24gSVJDLgo+ID4gCj4gPiBPbiA5LzE3LzE5IDc6
MjMgUE0sIEplcmVteSBXaGl0ZSB3cm90ZToKPiA+PiBnY2MgNC54IHdhcm5zIGlmIHlvdSB1c2Ug
YSB7IDAgfSBpbml0aWFsaXphdGlvbiBjb25zdHJ1Y3QKPiA+PiBmb3IgYSBzdHJ1Y3R1cmUgd2l0
aCBhbiBpbml0aWFsIG1lbWJlciB0aGF0IGlzIGFsc28gYSBzdHJ1Y3QuCj4gPj4KPiA+PiBUaGUg
eyB9IGNvbnN0cnVjdCBpcyBzaW1wbGVyIGFuZCBhcHBlYXJzIHRvIHdvcmsgb24gYSB3aWRlcgo+
ID4+IHJhbmdlIG9mIGdjYyB2ZXJzaW9ucy4KPiA+IAo+ID4gT24gbXkgRmVkb3JhIDMxLCBnY2Mg
KHZlcnNpb24gOS4yLjEpIGRvZXMgY29tcGxhaW4gYWJvdXQge30gYnV0IG5vdAo+ID4gYWJvdXQg
ezB9Cj4gPiB3aGVuIGJ1aWx0IHdpdGggLVdwZWRhbnRpYyAoc2VlIHNpbXBsZSBwcm9ncmFtIGJl
bG93KS4KPiA+IAo+ID4gCj4gPiBEb2VzIHswLCB9IHdvcmtzIGJldHRlciBmb3IgeW91ID8KPiA+
IAo+ID4gCj4gPiA9PT09PT09PT09PT09PT09Cj4gPiAKPiA+ICNpbmNsdWRlIDxzdGRpby5oPgo+
ID4gCj4gPiBzdHJ1Y3QgUyB7aW50IGEsIGI7IH07Cj4gPiAKPiA+IHZvaWQgcHJpbnRfcyhzdHJ1
Y3QgUyogcHMpCj4gPiB7Cj4gPiAgwqDCoMKgwqBpZiAoIXBzKSB7IHByaW50ZigibnVsbFxuIik7
IHJldHVybjsgfQo+ID4gIMKgwqDCoMKgcHJpbnRmKCIoJWQsICVkKVxuIiwgcHMtPmEsIHBzLT5i
KTsKPiA+IH0KPiA+IAo+ID4gaW50IG1haW4gKCkKPiA+IHsKPiA+ICDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgUyBzID0geyB9Owo+ID4gCj4gPiAgwqDCoMKgwqDCoMKgwqAgcHJpbnRfcygmcyk7Cj4g
PiAgwqDCoMKgwqByZXR1cm4gMDsKPiA+IH0KPiA+IAo+ID4gCj4gPiA9PT09PT09PT09PT09PT09
Cj4gPiAKPiA+IFVyaS4KPiA+IAo+ID4+Cj4gPj4gVGhpcyBpcyBhIGNvcnJlY3Rpb24gdG8gZmRm
ZGYxMTA3YmUxMDBiOTgzZGUxYmZmNGJlZWU4ZTYzNjBmNjcwYgo+ID4+Cj4gPj4gU2lnbmVkLW9m
Zi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgo+ID4+IC0tLQo+ID4+
IMKgIHNyYy9ndWkuY8KgwqDCoCB8IDIgKy0KPiA+PiDCoCBzcmMvbGlzdGVuLmMgfCAyICstCj4g
Pj4gwqAgc3JjL21haW4uY8KgwqAgfCAyICstCj4gPj4gwqAgc3JjL3NwaWNlLmPCoCB8IDIgKy0K
PiA+PiDCoCA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
PiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9zcmMvZ3VpLmMgYi9zcmMvZ3VpLmMKPiA+PiBpbmRleCA4
OGFjZjVjOS4uM2MyNmI4NjQgMTAwNjQ0Cj4gPj4gLS0tIGEvc3JjL2d1aS5jCj4gPj4gKysrIGIv
c3JjL2d1aS5jCj4gPj4gQEAgLTE0Nyw3ICsxNDcsNyBAQCB2b2lkIHNlc3Npb25fZGlzY29ubmVj
dF9jbGllbnQoc2Vzc2lvbl90ICpzZXNzaW9uKQo+ID4+IMKgIGludCBtYWluKGludCBhcmdjLCBj
aGFyICphcmd2W10pCj4gPj4gwqAgewo+ID4+IMKgwqDCoMKgwqAgZ3VpX3QgZ3VpOwo+ID4+IC3C
oMKgwqAgc2Vzc2lvbl90IHNlc3Npb24gPSB7IDAgfTsKPiA+PiArwqDCoMKgIHNlc3Npb25fdCBz
ZXNzaW9uID0geyB9Owo+ID4+IMKgwqDCoMKgwqAgc2V0bG9jYWxlKExDX0FMTCwgIiIpOwo+ID4+
IMKgwqDCoMKgwqAgZ3VpX2NyZWF0ZSgmZ3VpLCAmc2Vzc2lvbiwgYXJnYywgYXJndik7Cj4gPj4g
ZGlmZiAtLWdpdCBhL3NyYy9saXN0ZW4uYyBiL3NyYy9saXN0ZW4uYwo+ID4+IGluZGV4IDQ1MmZk
ODFmLi43NmMwNzk4YSAxMDA2NDQKPiA+PiAtLS0gYS9zcmMvbGlzdGVuLmMKPiA+PiArKysgYi9z
cmMvbGlzdGVuLmMKPiA+PiBAQCAtMTE3LDcgKzExNyw3IEBAIGludCBsaXN0ZW5fcGFyc2UoY29u
c3QgY2hhciAqbGlzdGVuX3NwZWMsIGNoYXIKPiA+PiAqKmFkZHIsIGludCAqcG9ydF9zdGFydCwg
aW50ICpwb3IKPiA+PiDCoCBzdGF0aWMgaW50IHRyeV9wb3J0KGNvbnN0IGNoYXIgKmFkZHIsIGlu
dCBwb3J0KQo+ID4+IMKgIHsKPiA+PiDCoMKgwqDCoMKgIHN0YXRpYyBjb25zdCBpbnQgb24gPSAx
LCBvZmYgPSAwOwo+ID4+IC3CoMKgwqAgc3RydWN0IGFkZHJpbmZvIGFpID0geyAwIH0sICpyZXMs
ICplOwo+ID4+ICvCoMKgwqAgc3RydWN0IGFkZHJpbmZvIGFpID0geyB9LCAqcmVzLCAqZTsKPiA+
PiDCoMKgwqDCoMKgIGNoYXIgcG9ydGJ1ZlszM107Cj4gPj4gwqDCoMKgwqDCoCBpbnQgc29jaywg
cmM7Cj4gPj4gZGlmZiAtLWdpdCBhL3NyYy9tYWluLmMgYi9zcmMvbWFpbi5jCj4gPj4gaW5kZXgg
NzFjYmI0NjUuLjg5MGZmMTMzIDEwMDY0NAo+ID4+IC0tLSBhL3NyYy9tYWluLmMKPiA+PiArKysg
Yi9zcmMvbWFpbi5jCj4gPj4gQEAgLTU1LDcgKzU1LDcgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNo
YXIgKmFyZ3ZbXSkKPiA+PiDCoCB7Cj4gPj4gwqDCoMKgwqDCoCBpbnQgcmM7Cj4gPj4gLcKgwqDC
oCBzZXNzaW9uX3Qgc2Vzc2lvbiA9IHsgMCB9Owo+ID4+ICvCoMKgwqAgc2Vzc2lvbl90IHNlc3Np
b24gPSB7IH07Cj4gPj4gwqDCoMKgwqDCoCBpbnQgZGlzcGxheV9vcGVuZWQgPSAwOwo+ID4+IMKg
wqDCoMKgwqAgaW50IHNwaWNlX3N0YXJ0ZWQgPSAwOwo+ID4+IGRpZmYgLS1naXQgYS9zcmMvc3Bp
Y2UuYyBiL3NyYy9zcGljZS5jCj4gPj4gaW5kZXggMDhhNWQwOWEuLjU2MWM4NWZmIDEwMDY0NAo+
ID4+IC0tLSBhL3NyYy9zcGljZS5jCj4gPj4gKysrIGIvc3JjL3NwaWNlLmMKPiA+PiBAQCAtNDc0
LDcgKzQ3NCw3IEBAIHN0YXRpYyBpbnQgc2VuZF9tb25pdG9yc19jb25maWcoc3BpY2VfdCAqcywg
aW50IHcsCj4gPj4gaW50IGgpCj4gPj4gwqAgaW50IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KHNwaWNl
X3QgKnMsIGludCB3LCBpbnQgaCwgaW50Cj4gPj4gYnl0ZXNfcGVyX2xpbmUsIHZvaWQgKnNobWFk
ZHIpCj4gPj4gwqAgewo+ID4+IC3CoMKgwqAgUVhMRGV2U3VyZmFjZUNyZWF0ZSBzdXJmYWNlID0g
eyAwIH07Cj4gPj4gK8KgwqDCoCBRWExEZXZTdXJmYWNlQ3JlYXRlIHN1cmZhY2UgPSB7IH07Cj4g
Pj4gwqDCoMKgwqDCoCBzdXJmYWNlLmhlaWdodCA9IGg7Cj4gPj4gwqDCoMKgwqDCoCBzdXJmYWNl
LndpZHRoID0gdzsKPiA+Pgo+ID4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
