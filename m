Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0132C583F3
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 15:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA586E36D;
	Thu, 27 Jun 2019 13:56:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A933B6E36D
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 13:56:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4925A3082B4D
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 13:56:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4024060856
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 13:56:09 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 360C31806B18;
 Thu, 27 Jun 2019 13:56:09 +0000 (UTC)
Date: Thu, 27 Jun 2019 09:56:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <209981790.24999259.1561643767800.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190627133722.15613-2-ssheribe@redhat.com>
References: <20190627133722.15613-1-ssheribe@redhat.com>
 <20190627133722.15613-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.23]
Thread-Topic: gst-plugin: Use autovideoconvert element for color space
 conversion
Thread-Index: c7bYzjv/3JOaGsWvNHujDG7LioVlZw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 27 Jun 2019 13:56:09 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent v2 2/2] gst-plugin:
 Use autovideoconvert element for color space conversion
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

PiAKPiBXaGVuIFZBQVBJIGJhc2VkIGVuY29kZXIgaXMgdXNlZCBpdCdzIGxpa2VseSB0aGF0IGFs
c28gVkFBUEkgYmFzZWQKPiBjb252ZXJzaW9uIGlzIGF2YWlsYWJsZSAodXNpbmcgdGhlIHZhYXBp
cG9zdHByb2MgZWxlbWVudCkuCj4gTW92aW5nIHRvIGF1dG92aWRlb2NvbnZlcnQgd2lsbCBhdXRv
bWF0aWNhbGx5IGNob29zZSBhIHN1aXRhYmxlCj4gY29udmVydCBlbGVtZW50IGFjY29yZGluZyB0
byBlbGVtZW50cyBhdmFpbGFiaWxpdHkgKGUuZy4gaW4gdGhlCj4gVkFBUEkgY2FzZSBpdCB3b3Vs
ZCBzZWxlY3QgdmFhcGlwb3N0cHJvYyBkdWUgdG8gaXRzIGhpZ2ggcmFuaykuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiBBY2tlZC1ieTog
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gQmFzaWNhbGx5IEFj
a2VkLCBmb3IgdGhlIHJlY29yZCBJJ20gc2VuZGluZyBpdCBhZ2FpbiB3aXRoIHRoZSBtaW5vciBj
aGFuZ2VzCgp5ZXMsIGNvbmZpcm1lZCBmb3IgbWUKCj4gLS0tCj4gIHNyYy9nc3QtcGx1Z2luLmNw
cCB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdp
bi5jcHAKPiBpbmRleCAwZGQ3Nzk2Li4zODg3YjQ3IDEwMDY0NAo+IC0tLSBhL3NyYy9nc3QtcGx1
Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IEBAIC0yMTYsOSArMjE2LDkgQEAg
dm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQoY29uc3QKPiBHc3RyZWFt
ZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+ICAgICAgaWYgKCFjYXB0dXJlKSB7Cj4gICAgICAg
ICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJHc3RyZWFtZXIncyBjYXB0dXJlIGVsZW1lbnQg
Y2Fubm90IGJlCj4gICAgICAgICAgY3JlYXRlZCIpOwo+ICAgICAgfQo+IC0gICAgR3N0T2JqZWN0
VVB0cjxHc3RFbGVtZW50Pgo+IGNvbnZlcnQoZ3N0X2VsZW1lbnRfZmFjdG9yeV9tYWtlKCJ2aWRl
b2NvbnZlcnQiLCAiY29udmVydCIpKTsKPiArICAgIEdzdE9iamVjdFVQdHI8R3N0RWxlbWVudD4K
PiBjb252ZXJ0KGdzdF9lbGVtZW50X2ZhY3RvcnlfbWFrZSgiYXV0b3ZpZGVvY29udmVydCIsICJj
b252ZXJ0IikpOwo+ICAgICAgaWYgKCFjb252ZXJ0KSB7Cj4gLSAgICAgICAgdGhyb3cgc3RkOjpy
dW50aW1lX2Vycm9yKCJHc3RyZWFtZXIncyAndmlkZW9jb252ZXJ0JyBlbGVtZW50IGNhbm5vdAo+
IGJlIGNyZWF0ZWQiKTsKPiArICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkdzdHJl
YW1lcidzICdhdXRvdmlkZW9jb252ZXJ0JyBlbGVtZW50Cj4gY2Fubm90IGJlIGNyZWF0ZWQiKTsK
PiAgICAgIH0KPiAgICAgIEdzdENhcHNVUHRyIHNpbmtfY2FwczsKPiAgICAgIEdzdE9iamVjdFVQ
dHI8R3N0RWxlbWVudD4gZW5jb2RlcihnZXRfZW5jb2Rlcl9wbHVnaW4oc2V0dGluZ3MsCj4gICAg
ICBzaW5rX2NhcHMpKTsKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
