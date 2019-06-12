Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C358341BA8
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9168921B;
	Wed, 12 Jun 2019 05:53:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C8C8921B
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 505073087930
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 472715DEDE
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E93F1806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:10 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:53:10 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1148657461.22408065.1560318790210.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190602175359.24499-1-fziglio@redhat.com>
References: <20190602175359.24499-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: red-parse-qxl: Reset mask attributes if brush image is missing
Thread-Index: Yg+w1Aptcft1A03Oi00OFFgeJjXroA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 12 Jun 2019 05:53:10 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-parse-qxl: Reset mask
 attributes if brush image is missing
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

cGluZwoKPiAKPiBUaGUgYXR0cmlidXRlcyBpbiB0aGlzIGNhc2UgYXJlIG5vdCB1c2VkIHRvIGFw
cGx5IHRoZSBtYXNrLgo+IERvaW5nIHNvIGF2b2lkIHNlbmRpbmcgZ2FyYmFnZSBmcm9tIHRoZSBn
dWVzdCB3aGljaCB1c3VhbGx5Cj4gZG9uJ3QgaW5pdGlhbGlzZSB0aGUgbWVtb3J5IGluIGNhc2Ug
dGhlIG1hc2sgaXMgbWlzc2luZy4KPiBHdWVzdCBzaG91bGQgaGF2ZSBjbGVhcmVkIHRoZXNlIGJ5
dGVzIGJ5IGl0cyBvd24gaG93ZXZlciBkb2luZyBzbwo+IG9uIHRoZSBzZXJ2ZXIgZml4ZXMgdGhl
IHByb2JsZW0gdG9vLiBDb25zaWRlcmluZyB0aGF0IHRoZXNlCj4gY29tbWFuZCBzaG91bGQgbm90
IGFwcGVhcnMgaW4gbmV3ZXIgT1NlcyBpdCdzIHN1cmVseSBub3QgYSBob3QgcGF0aAo+IGNvZGUu
Cj4gVGhlc2UgZ2FyYmFnZSBjYW1lIGZyb20gdmlkZW8gbWVtb3J5IG9mIHRoZSBndWVzdCBzbyB0
aGV5IGRvbid0Cj4gY29udGFpbiBzZW5zaXRpdmUgZGF0YS4KPiAKPiBUaGlzIGZpeGVzIGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1zZXJ2ZXIvaXNzdWVzLzI1Lgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+
IC0tLQo+ICBzZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jIHwgMTAgKysrKysrKystLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jIGIvc2VydmVyL3JlZC1wYXJzZS1xeGwuYwo+IGluZGV4
IGFmYWU5NDMxNi4uYTRhYzZhNDczIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9yZWQtcGFyc2UtcXhs
LmMKPiArKysgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCj4gQEAgLTYyNiw5ICs2MjYsMTUgQEAg
c3RhdGljIHZvaWQgcmVkX3B1dF9icnVzaChTcGljZUJydXNoICpyZWQpCj4gIHN0YXRpYyB2b2lk
IHJlZF9nZXRfcW1hc2tfcHRyKFJlZE1lbVNsb3RJbmZvICpzbG90cywgaW50IGdyb3VwX2lkLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZVFNYXNrICpyZWQsIFFYTFFNYXNr
ICpxeGwsIHVpbnQzMl90Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZsYWdzKQo+
ICB7Cj4gLSAgICByZWQtPmZsYWdzICA9IHF4bC0+ZmxhZ3M7Cj4gLSAgICByZWRfZ2V0X3BvaW50
X3B0cigmcmVkLT5wb3MsICZxeGwtPnBvcyk7Cj4gICAgICByZWQtPmJpdG1hcCA9IHJlZF9nZXRf
aW1hZ2Uoc2xvdHMsIGdyb3VwX2lkLCBxeGwtPmJpdG1hcCwgZmxhZ3MsIHRydWUpOwo+ICsgICAg
aWYgKHJlZC0+Yml0bWFwKSB7Cj4gKyAgICAgICAgcmVkLT5mbGFncyAgPSBxeGwtPmZsYWdzOwo+
ICsgICAgICAgIHJlZF9nZXRfcG9pbnRfcHRyKCZyZWQtPnBvcywgJnF4bC0+cG9zKTsKPiArICAg
IH0gZWxzZSB7Cj4gKyAgICAgICAgcmVkLT5mbGFncyAgPSAwOwo+ICsgICAgICAgIHJlZC0+cG9z
LnggPSAwOwo+ICsgICAgICAgIHJlZC0+cG9zLnkgPSAwOwo+ICsgICAgfQo+ICB9Cj4gIAo+ICBz
dGF0aWMgdm9pZCByZWRfcHV0X3FtYXNrKFNwaWNlUU1hc2sgKnJlZCkKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
