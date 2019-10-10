Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BB1D2606
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CB06EACA;
	Thu, 10 Oct 2019 09:15:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730336EACA
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:15:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 133F8308FE8F
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:15:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B0825D6B2
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:15:31 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 025C44E589
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:15:31 +0000 (UTC)
Date: Thu, 10 Oct 2019 05:15:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1186113414.6238907.1570698930758.JavaMail.zimbra@redhat.com>
In-Reply-To: <590542837.3688482.1569848324561.JavaMail.zimbra@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <20190814170825.11903-2-fziglio@redhat.com>
 <1126453792.9954038.1567004568339.JavaMail.zimbra@redhat.com>
 <338828308.11342435.1568108473723.JavaMail.zimbra@redhat.com>
 <2089089598.2493650.1568884320846.JavaMail.zimbra@redhat.com>
 <590542837.3688482.1569848324561.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.1]
Thread-Topic: codegen: Add 'chunk' to the output attributes
Thread-Index: oZvqvZBdEuK5z1nGXdk34O8H8hUf8RQzgV7DSt5ZvUZSsN1IKlHXFXWh
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 10 Oct 2019 09:15:31 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] codegen: Add 'chunk' to the
 output attributes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IE91dHB1dCBhdHRyaWJ1dGVzIGFyZSB0aGUgYXR0cmlidXRlcyB0aGF0IHNwZWNpZnkgaG93IHRv
IHN0b3JlCj4gPiA+ID4gPiB0aGF0IGZpZWxkIGluIHRoZSBDIHN0cnVjdHVyZS4KPiA+ID4gPiA+
IFRoZXJlIGNhbiBiZSBvbmx5IG9uZSBvdXRwdXQgdHlwZSBzcGVjaWZpZWQuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQu
Y29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5IHwg
MiArLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvcHR5
cGVzLnB5IGIvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4gPiA+ID4gPiBpbmRleCBlYmUwMDFj
Li43OTZhNDM2IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5
Cj4gPiA+ID4gPiArKysgYi9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiA+ID4gPiA+IEBAIC05
OCw3ICs5OCw3IEBAIGRlZiBmaXhfYXR0cmlidXRlcyhhdHRyaWJ1dGVfbGlzdCk6Cj4gPiA+ID4g
PiAgICAgICAgICBhdHRyc1tuYW1lXSA9IGxzdAo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gICAgICAj
IHRoZXNlIGF0dHJpYnV0ZXMgc3BlY2lmeSBvdXRwdXQgZm9ybWF0LCBvbmx5IG9uZSBjYW4gYmUg
c2V0Cj4gPiA+ID4gPiAtICAgIG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHInLCAn
YXNfcHRyJywgJ3B0cl9hcnJheScsCj4gPiA+ID4gPiAnemVybyddKQo+ID4gPiA+ID4gKyAgICBv
dXRwdXRfYXR0cnMgPSBzZXQoWydlbmQnLCAndG9fcHRyJywgJ2FzX3B0cicsICdwdHJfYXJyYXkn
LAo+ID4gPiA+ID4gJ3plcm8nLAo+ID4gPiA+ID4gJ2NodW5rJ10pCj4gPiA+ID4gPiAgICAgIGlm
IGxlbihvdXRwdXRfYXR0cnMuaW50ZXJzZWN0aW9uKGF0dHJzLmtleXMoKSkpID4gMToKPiA+ID4g
PiA+ICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiTXVsdGlwbGUgb3V0cHV0IHR5cGUgYXR0cmli
dXRlcyBzcGVjaWZpZWQKPiA+ID4gPiA+ICAgICAgICAgICVzIgo+ID4gPiA+ID4gICAgICAgICAg
JQo+ID4gPiA+ID4gICAgICAgICAgb3V0cHV0X2F0dHJzKQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
