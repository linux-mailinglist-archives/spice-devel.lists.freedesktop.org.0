Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156116861E
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 11:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662188982A;
	Mon, 15 Jul 2019 09:16:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1168C8982A
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:16:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AF267308A951
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:16:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A653E60C05
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 09:16:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C89D1843720;
 Mon, 15 Jul 2019 09:16:03 +0000 (UTC)
Date: Mon, 15 Jul 2019 05:16:03 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <2056402581.67874.1563182163605.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712091242.13214-6-victortoso@redhat.com>
References: <20190712091242.13214-1-victortoso@redhat.com>
 <20190712091242.13214-6-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.3]
Thread-Topic: coverity: allow pass by value with XEvent
Thread-Index: otXHKv4xmqRvHX81hys+8VwG9ajyqA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 15 Jul 2019 09:16:03 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd-agent v1 5/7] coverity: allow pass by
 value with XEvent
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBTdWJqZWN0OiBbU3BpY2UtZGV2ZWxdIFtsaW51eC92ZC1hZ2VudCB2MSA1LzddIGNvdmVyaXR5
OiBhbGxvdyBwYXNzIGJ5IHZhbHVlIHdpdGggWEV2ZW50CgpJIHdvdWxkIHNheSB0aGF0IHRoaXMg
cGF0Y2ggaXMgaWdub3JpbmcgYSB3YXJuaW5nLCB0aGUgY29kZSBpcyBjb21waWxpbmcuCgo+IAo+
IEZyb206IFZpY3RvciBUb3NvIDxtZUB2aWN0b3J0b3NvLmNvbT4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMvdmRhZ2Vu
dC94MTEtcmFuZHIuYyB8IDQgKystLQo+ICBzcmMvdmRhZ2VudC94MTEuYyAgICAgICB8IDEgKwo+
ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMgYi9zcmMvdmRhZ2VudC94MTEtcmFu
ZHIuYwo+IGluZGV4IGQwMDBlMjguLjkyNGY1ZWMgMTAwNjQ0Cj4gLS0tIGEvc3JjL3ZkYWdlbnQv
eDExLXJhbmRyLmMKPiArKysgYi9zcmMvdmRhZ2VudC94MTEtcmFuZHIuYwo+IEBAIC01MjgsOCAr
NTI4LDggQEAgdm9pZCB2ZGFnZW50X3gxMV9yYW5kcl9oYW5kbGVfcm9vdF9zaXplX2NoYW5nZShz
dHJ1Y3QKPiB2ZGFnZW50X3gxMSAqeDExLAo+ICAgICAgfQo+ICB9Cj4gIAo+IC1pbnQgdmRhZ2Vu
dF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLAo+IC0gICAg
WEV2ZW50IGV2ZW50KQo+ICsvKiBjb3Zlcml0eVtwYXNzX2J5X3ZhbHVlXSAqLwo+ICtpbnQgdmRh
Z2VudF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHN0cnVjdCB2ZGFnZW50X3gxMSAqeDExLCBYRXZl
bnQgZXZlbnQpCj4gIHsKPiAgICAgIGludCBoYW5kbGVkID0gVFJVRTsKPiAgCj4gZGlmZiAtLWdp
dCBhL3NyYy92ZGFnZW50L3gxMS5jIGIvc3JjL3ZkYWdlbnQveDExLmMKPiBpbmRleCBjMjUxNWE4
Li45MGQwOGExIDEwMDY0NAo+IC0tLSBhL3NyYy92ZGFnZW50L3gxMS5jCj4gKysrIGIvc3JjL3Zk
YWdlbnQveDExLmMKPiBAQCAtNDk0LDYgKzQ5NCw3IEBAIHN0YXRpYyBpbnQgdmRhZ2VudF94MTFf
Z2V0X2NsaXBib2FyZF9zZWxlY3Rpb24oc3RydWN0Cj4gdmRhZ2VudF94MTEgKngxMSwKPiAgfQo+
ICAjZW5kaWYKPiAgCj4gKy8qIGNvdmVyaXR5W3Bhc3NfYnlfdmFsdWVdICovCj4gIHN0YXRpYyB2
b2lkIHZkYWdlbnRfeDExX2hhbmRsZV9ldmVudChzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwgWEV2
ZW50IGV2ZW50KQo+ICB7Cj4gICAgICBpbnQgaSwgaGFuZGxlZCA9IDA7CgpIYXZlIHlvdSB0aG91
Z2ggYWJvdXQgY29udmVydGluZyB0byAiY29uc3QgWEV2ZW50KiIgPwpUaGUgc3RydWN0dXJlIGlz
IG5vdCB0aGF0IHNtYWxsLgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
