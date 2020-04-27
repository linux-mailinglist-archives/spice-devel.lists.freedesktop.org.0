Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD891BA378
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 14:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F5A6E261;
	Mon, 27 Apr 2020 12:20:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 369A889B96
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 12:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587990026;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u4Fg2aqastE8mtf62yQFvi8o+2aVBkNom1aeiua4YKA=;
 b=i7e+N/rtpXqTUltaITc2fWpAqtlSXe10S5TAtZ4Gtb1FNnPSG0cgzBsjep6eroY/ASFTsD
 whxUdqakqlNco2FdlYmOU7KViGW1WMCXDkxB4KkD9XFqgmG0m9xZFGV6aYRXdIEe7QQOaC
 xpxTOY6WGhk1d2W3PFUYIFIZmUGaOws=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-GiCnvGM0NAicJJi6D9DruA-1; Mon, 27 Apr 2020 08:20:24 -0400
X-MC-Unique: GiCnvGM0NAicJJi6D9DruA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E800464;
 Mon, 27 Apr 2020 12:20:24 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.205])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A89A10013A1;
 Mon, 27 Apr 2020 12:20:22 +0000 (UTC)
To: Oleg Krutov <ole-krutov@yandex.ru>, spice-devel@lists.freedesktop.org
References: <5137131587976277@sas1-68ac888a1313.qloud-c.yandex.net>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <fc22402d-a59e-7784-bf27-967544a92e02@redhat.com>
Date: Mon, 27 Apr 2020 15:20:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5137131587976277@sas1-68ac888a1313.qloud-c.yandex.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Spice-streaming-agent: is it possible to replace
 main display channel with agent's video stream?
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

T24gNC8yNy8yMCAxMTozMSBBTSwgT2xlZyBLcnV0b3Ygd3JvdGU6Cj4gV2UgYXJlIHRyeWluZyB0
byBtYWtlIHBsdWdpbiB3aGljaCB1c2VzIG52aWRpYSBGQkMgKyBOVkVOQyBpbnN0ZWFkIG9mIAo+
IGdzdC1wbHVnaW4uIFdoZW4gdXNpbmcgRkJDLCBJIG11c3Qgc2V0ICJkaXNwbGF5IiB0byAib24i
LCBlbHNlIEZCQyBpcyAKPiByZXBvcnRpbmcgYXMgbm90IHN1cHBvcnRlZC4gSSBjYW4ndCBkbyB0
aGUgdHJpY2sgd2l0aCBxeGwrbnZpZGlhIHdpdGggCj4gZGlzcGxheSBvZmYgYXMgd2l0aCBnc3Qt
cGx1Z2luLiBUaHVzLCB0d28gc3BpY2Ugd2luZG93cyBhcHBlYXIsIG9uZSB3aXRoIAo+IG1haW4g
ZGlzcGxheSBjaGFubmVsIHdpdGggY2hvcHB5IHZpZGVvLCBhbmQgc2Vjb25kIC0tIHdpdGggaDI2
NCAKPiBjb21wcmVzc2VkIGNhcHR1cmVkIHZpZGVvLiBUaGVyZSBpcyBubyBtb3VzZSBjb250cm9s
cyBpbiBzZWNvbmQgd2luZG93LCAKPiBhbmQgZmlyc3Qgd2luZG93IGNvbnN1bWVzIG11Y2ggY3B1
IGFuZCBuZXR3b3JrIGJhbmR3aWR0aCB3aGVuIHZpZGVvIG9yIAo+IGR5bmFtaWMgZ3JhcGhpY3Mg
aXMgZGlzcGxheWVkLiBTbyBpdCB3b3VsZCBiZSBncmVhdCB0byBzdG9wIG91dHB1dCAKPiBwcmlt
YXJ5IGRpc3BsYXkgYW5kIHJlZGlyZWN0IGFnZW50J3MgdmlkZW8gc3RyZWFtIGludG8gaXQuIElz
IGl0IHNvbWVob3cgCj4gcG9zc2libGU/IFRoYW5rIHlvdS4KPiAKPiAtLSAKPiDQntGC0L/RgNCw
0LLQu9C10L3QviDQuNC3INC80L7QsdC40LvRjNC90L7Qs9C+INC/0YDQuNC70L7QttC10L3QuNGP
INCv0L3QtNC10LrRgS7Qn9C+0YfRgtGLCgpIaSwKCldoeSBjYW4geW91IG5vdCBzZXQgZGlzcGxh
eT1vZmYgPwoKRGlkIHlvdSBjb25maWd1cmUgeW91ciBYIHNlcnZlciB0byB1c2UgdGhlIE5WSURJ
QSBHUFUgb3IgdGhlIFFYTCA/CgpXaGF0IE5WSURJQSBjYXJkIGFuZCBkcml2ZXIgYXJlIHlvdSB1
c2luZyA/CgpVcmkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWwK
