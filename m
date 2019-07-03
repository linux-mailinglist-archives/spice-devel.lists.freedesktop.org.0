Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEF95EDBC
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 22:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5202B6E1DE;
	Wed,  3 Jul 2019 20:40:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31F86E1DE
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 20:40:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5231885A04
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 20:40:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 48B1B837A1
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 20:40:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CC4754D3C;
 Wed,  3 Jul 2019 20:40:51 +0000 (UTC)
Date: Wed, 3 Jul 2019 16:40:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <491309502.26368914.1562186449775.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190703150307.10287-1-uril@redhat.com>
References: <20190703150307.10287-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.2]
Thread-Topic: dcc-send: remove useless pipe_item assignment pipe_item
Thread-Index: wKS/VI0zAMtv2qSiRk+379X3ulwYpg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 03 Jul 2019 20:40:51 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH] dcc-send: remove useless
 pipe_item assignment pipe_item
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

Cgo+IEluIHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzLCB0
aGUKPiB2YWx1ZSBvZiBwaXBlX2l0ZW0gaXMgcmUtd3JpdHRlbiBvbiB0aGUgbmV4dCBpdGVyYXRp
b24uCj4gCj4gU2luY2UgYTc4YTdkMjUxMDQyODkyMTgyYjE1ODY1MDI5MWQxOWE4NWJiZDZiMSBw
aXBlX2l0ZW0KPiBpcyBubyBsb25nZXIgdXNlZCB0byBjb250cm9sIHRoZSBsb29wLgo+IAo+IEZv
dW5kIGJ5IENvdnNjYW4uCj4gCj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRo
YXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvZGNjLXNlbmQuYyB8IDEgLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLXNlbmQuYyBiL3Nl
cnZlci9kY2Mtc2VuZC5jCj4gaW5kZXggYjE0NjE5YTJiLi41NjVhNzlmMzMgMTAwNjQ0Cj4gLS0t
IGEvc2VydmVyL2RjYy1zZW5kLmMKPiArKysgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+IEBAIC03NTMs
NyArNzUzLDYgQEAgc3RhdGljIHZvaWQKPiByZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdh
Ymxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hhbm5lbENsaWVudAo+ICAKPiAgICAgICAgICBzcGlj
ZV9hc3NlcnQoaW1hZ2UpOwo+ICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX3JlbW92
ZV9hbmRfcmVsZWFzZV9wb3MoUkVEX0NIQU5ORUxfQ0xJRU5UKGRjYyksCj4gICAgICAgICAgbCk7
Cj4gLSAgICAgICAgcGlwZV9pdGVtID0gJmltYWdlLT5iYXNlOwo+ICAgICAgfQo+ICB9Cj4gIAoK
TmljZSBzcG90IGNvdnNjYW4hCgpCZXR0ZXIgaG93ZXZlciB0byByZW1vdmUgYWxzbyB0aGUgdXNl
LWFmdGVyLWZyZWUgaW50cm9kdWNlZCBieSBhNzhhN2QyNTEwNDI4OTIxODJiMTU4NjUwMjkxZDE5
YTg1YmJkNmIxICEKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
