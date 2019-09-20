Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC21DB90EC
	for <lists+spice-devel@lfdr.de>; Fri, 20 Sep 2019 15:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9246FD00;
	Fri, 20 Sep 2019 13:47:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E1C6FD00
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Sep 2019 13:47:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 18D6510C0928
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Sep 2019 13:47:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E2B75D6A7
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Sep 2019 13:47:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06B664E589;
 Fri, 20 Sep 2019 13:47:49 +0000 (UTC)
Date: Fri, 20 Sep 2019 09:47:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <282005117.2669654.1568987268552.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190919151029.12840-1-ssheribe@redhat.com>
References: <20190919151029.12840-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.12]
Thread-Topic: gst-plugin: Changing framerate crash when ximagesrc is used
Thread-Index: el2tw7/UU/Gb0pGFq3J3uldB3XbfEA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Fri, 20 Sep 2019 13:47:49 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin:
 Changing framerate crash when ximagesrc is used
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

PiAKPiBXaGVuIFhMSUJfQ0FQVFVSRSBpcyBzZXQgdG8gMCBhbmQgZnJhbWVyYXRlIGlzIHNldCB0
byBhbnl0aGluZwo+IG90aGVyIHRoYW4gMjUgc3RyZWFtaW5nLWFnZW50IGNyYXNoZXMKPiAKPiBU
aGlzIGlzIGEgcmVncmVyc3Npb24gY2F1c2VkIGJ5IGUwY2Y3NjRiYWZmOWQ2NzhhNmU3NTkxNjQ1
NzMwMGQxZmYzOWIxNjkKClR5cG86IHJlZ3JlcnNzaW9uIC0+IHJlZ3Jlc3Npb24KCj4gRml4aW5n
IGl0IGlzIGRvbmUgYnkgYWRkaW5nIHRoZSBmcmFtZXJhdGUgdmFsdWUgdG8gY29udmVydGlvbiBj
YXBzCgpUeXBvOiBjb252ZXJ0aW9uIC0+IGNvbnZlcnNpb24KCj4gCj4gU2lnbmVkLW9mZi1ieTog
U25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KCk90aGVyd2lzZSwKICAgQWNrZWQt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKPiAtLS0KPiAgc3JjL2dz
dC1wbHVnaW4uY3BwIHwgNSArKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNwcCBiL3Ny
Yy9nc3QtcGx1Z2luLmNwcAo+IGluZGV4IDcwYmM2YzguLjkyMmI5MGQgMTAwNjQ0Cj4gLS0tIGEv
c3JjL2dzdC1wbHVnaW4uY3BwCj4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4gQEAgLTIzNyw3
ICsyMzcsMTAgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQoY29u
c3QKPiBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+ICAgICAgZ3N0X2Jpbl9hZGQo
YmluLCBzaW5rKTsKPiAKPiAgICAgIEdzdENhcHNVUHRyIGNhcHMoZ3N0X2NhcHNfZnJvbV9zdHJp
bmcoInZpZGVvL3gtcmF3KEFOWSkiKSk7Cj4gLSAgICBsaW5rID0gZ3N0X2VsZW1lbnRfbGluayhj
YXB0dXJlLmdldCgpLCBjb252ZXJ0LmdldCgpKSAmJgo+ICsgICAgR3N0Q2Fwc1VQdHIgY29udmVy
dF9jYXBzKGdzdF9jYXBzX25ld19zaW1wbGUoInZpZGVvL3gtcmF3IiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJmcmFtZXJhdGUiLAo+IEdTVF9U
WVBFX0ZSQUNUSU9OLCBzZXR0aW5ncy5mcHMsIDEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBudWxscHRyKSk7Cj4gKyAgICBsaW5rID0gZ3N0X2Vs
ZW1lbnRfbGlua19maWx0ZXJlZChjYXB0dXJlLmdldCgpLCBjb252ZXJ0LmdldCgpLAo+IGNvbnZl
cnRfY2Fwcy5nZXQoKSkgJiYKPiAgICAgICAgICAgICBnc3RfZWxlbWVudF9saW5rX2ZpbHRlcmVk
KGNvbnZlcnQuZ2V0KCksIGVuY29kZXIuZ2V0KCksCj4gICAgICAgICAgICAgY2Fwcy5nZXQoKSkg
JiYKPiAgICAgICAgICAgICBnc3RfZWxlbWVudF9saW5rX2ZpbHRlcmVkKGVuY29kZXIuZ2V0KCks
IHNpbmsuZ2V0KCksCj4gICAgICAgICAgICAgc2lua19jYXBzLmdldCgpKTsKPiAgICAgIGlmICgh
bGluaykgewoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
