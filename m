Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7717DC210F
	for <lists+spice-devel@lfdr.de>; Mon, 30 Sep 2019 14:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031F26E40F;
	Mon, 30 Sep 2019 12:58:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00FC66E413
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9F98A4E92A
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 97F7060C63
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8FFB44EA62
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:44 +0000 (UTC)
Date: Mon, 30 Sep 2019 08:58:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <590542837.3688482.1569848324561.JavaMail.zimbra@redhat.com>
In-Reply-To: <2089089598.2493650.1568884320846.JavaMail.zimbra@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <20190814170825.11903-2-fziglio@redhat.com>
 <1126453792.9954038.1567004568339.JavaMail.zimbra@redhat.com>
 <338828308.11342435.1568108473723.JavaMail.zimbra@redhat.com>
 <2089089598.2493650.1568884320846.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.23]
Thread-Topic: codegen: Add 'chunk' to the output attributes
Thread-Index: oZvqvZBdEuK5z1nGXdk34O8H8hUf8RQzgV7DSt5ZvUZSsN1IKg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 30 Sep 2019 12:58:44 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBPdXRwdXQgYXR0cmlidXRlcyBhcmUgdGhlIGF0dHJpYnV0
ZXMgdGhhdCBzcGVjaWZ5IGhvdyB0byBzdG9yZQo+ID4gPiA+IHRoYXQgZmllbGQgaW4gdGhlIEMg
c3RydWN0dXJlLgo+ID4gPiA+IFRoZXJlIGNhbiBiZSBvbmx5IG9uZSBvdXRwdXQgdHlwZSBzcGVj
aWZpZWQuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIHB5dGhvbl9tb2R1bGVzL3B0
eXBlcy5weSB8IDIgKy0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL3B5dGhvbl9tb2R1bGVz
L3B0eXBlcy5weSBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQo+ID4gPiA+IGluZGV4IGViZTAw
MWMuLjc5NmE0MzYgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5
Cj4gPiA+ID4gKysrIGIvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4gPiA+ID4gQEAgLTk4LDcg
Kzk4LDcgQEAgZGVmIGZpeF9hdHRyaWJ1dGVzKGF0dHJpYnV0ZV9saXN0KToKPiA+ID4gPiAgICAg
ICAgICBhdHRyc1tuYW1lXSA9IGxzdAo+ID4gPiA+ICAKPiA+ID4gPiAgICAgICMgdGhlc2UgYXR0
cmlidXRlcyBzcGVjaWZ5IG91dHB1dCBmb3JtYXQsIG9ubHkgb25lIGNhbiBiZSBzZXQKPiA+ID4g
PiAtICAgIG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHInLCAnYXNfcHRyJywgJ3B0
cl9hcnJheScsCj4gPiA+ID4gJ3plcm8nXSkKPiA+ID4gPiArICAgIG91dHB1dF9hdHRycyA9IHNl
dChbJ2VuZCcsICd0b19wdHInLCAnYXNfcHRyJywgJ3B0cl9hcnJheScsCj4gPiA+ID4gJ3plcm8n
LAo+ID4gPiA+ICdjaHVuayddKQo+ID4gPiA+ICAgICAgaWYgbGVuKG91dHB1dF9hdHRycy5pbnRl
cnNlY3Rpb24oYXR0cnMua2V5cygpKSkgPiAxOgo+ID4gPiA+ICAgICAgICAgIHJhaXNlIEV4Y2Vw
dGlvbigiTXVsdGlwbGUgb3V0cHV0IHR5cGUgYXR0cmlidXRlcyBzcGVjaWZpZWQgJXMiCj4gPiA+
ID4gICAgICAgICAgJQo+ID4gPiA+ICAgICAgICAgIG91dHB1dF9hdHRycykKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
