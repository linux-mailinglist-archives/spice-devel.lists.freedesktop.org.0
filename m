Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA95B75D8
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 11:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6746F685;
	Thu, 19 Sep 2019 09:12:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A170D6F685
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 09:12:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2A02C3175282
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 09:12:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B8FD19C6A
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 09:12:01 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FCBE180085A
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 09:12:01 +0000 (UTC)
Date: Thu, 19 Sep 2019 05:12:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2089089598.2493650.1568884320846.JavaMail.zimbra@redhat.com>
In-Reply-To: <338828308.11342435.1568108473723.JavaMail.zimbra@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <20190814170825.11903-2-fziglio@redhat.com>
 <1126453792.9954038.1567004568339.JavaMail.zimbra@redhat.com>
 <338828308.11342435.1568108473723.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.5]
Thread-Topic: codegen: Add 'chunk' to the output attributes
Thread-Index: oZvqvZBdEuK5z1nGXdk34O8H8hUf8RQzgV7DSt5ZvUY=
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 19 Sep 2019 09:12:01 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gT3V0cHV0
IGF0dHJpYnV0ZXMgYXJlIHRoZSBhdHRyaWJ1dGVzIHRoYXQgc3BlY2lmeSBob3cgdG8gc3RvcmUK
PiA+ID4gdGhhdCBmaWVsZCBpbiB0aGUgQyBzdHJ1Y3R1cmUuCj4gPiA+IFRoZXJlIGNhbiBiZSBv
bmx5IG9uZSBvdXRwdXQgdHlwZSBzcGVjaWZpZWQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBw
eXRob25fbW9kdWxlcy9wdHlwZXMucHkgfCAyICstCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9weXRo
b25fbW9kdWxlcy9wdHlwZXMucHkgYi9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiA+ID4gaW5k
ZXggZWJlMDAxYy4uNzk2YTQzNiAxMDA2NDQKPiA+ID4gLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5
cGVzLnB5Cj4gPiA+ICsrKyBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQo+ID4gPiBAQCAtOTgs
NyArOTgsNyBAQCBkZWYgZml4X2F0dHJpYnV0ZXMoYXR0cmlidXRlX2xpc3QpOgo+ID4gPiAgICAg
ICAgICBhdHRyc1tuYW1lXSA9IGxzdAo+ID4gPiAgCj4gPiA+ICAgICAgIyB0aGVzZSBhdHRyaWJ1
dGVzIHNwZWNpZnkgb3V0cHV0IGZvcm1hdCwgb25seSBvbmUgY2FuIGJlIHNldAo+ID4gPiAtICAg
IG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHInLCAnYXNfcHRyJywgJ3B0cl9hcnJh
eScsICd6ZXJvJ10pCj4gPiA+ICsgICAgb3V0cHV0X2F0dHJzID0gc2V0KFsnZW5kJywgJ3RvX3B0
cicsICdhc19wdHInLCAncHRyX2FycmF5JywgJ3plcm8nLAo+ID4gPiAnY2h1bmsnXSkKPiA+ID4g
ICAgICBpZiBsZW4ob3V0cHV0X2F0dHJzLmludGVyc2VjdGlvbihhdHRycy5rZXlzKCkpKSA+IDE6
Cj4gPiA+ICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiTXVsdGlwbGUgb3V0cHV0IHR5cGUgYXR0
cmlidXRlcyBzcGVjaWZpZWQgJXMiICUKPiA+ID4gICAgICAgICAgb3V0cHV0X2F0dHJzKQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
