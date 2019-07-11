Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45736531A
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5A46E14E;
	Thu, 11 Jul 2019 08:26:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1509A6E14E
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:26:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B1CE93DE0D
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:26:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A849C5C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:26:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9DF071833001;
 Thu, 11 Jul 2019 08:26:40 +0000 (UTC)
Date: Thu, 11 Jul 2019 04:26:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <803521647.27119588.1562833600595.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190710174435.15833-4-uril@redhat.com>
References: <20190710174435.15833-1-uril@redhat.com>
 <20190710174435.15833-4-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.1]
Thread-Topic: dcc-send: fix use-after-free
Thread-Index: lVZIKiDs1NqwT02QQSbvk08kUSyXhQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 11 Jul 2019 08:26:40 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH v2 3/3] dcc-send: fix
 use-after-free
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

PiAKPiAnbCcgaXMgYmVpbmcgZnJlZWQgd2l0aGluIHRoZSBsb29wCj4gCj4gRm91bmQtYnk6IEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFVyaSBM
dWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KCkFja2VkCgo+IC0tLQo+ICBzZXJ2ZXIvZGNjLXNlbmQu
YyB8IDUgKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNl
bmQuYwo+IGluZGV4IGUwZjNiODE4My4uNGE5MmNlOGNkIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9k
Y2Mtc2VuZC5jCj4gKysrIGIvc2VydmVyL2RjYy1zZW5kLmMKPiBAQCAtNzExLDcgKzcxMSw3IEBA
IHN0YXRpYyB2b2lkCj4gcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9p
bWFnZXMoRGlzcGxheUNoYW5uZWxDbGllbnQKPiAgICAgIGludCByZXNlbnRfc3VyZmFjZV9pZHNb
TUFYX1BJUEVfU0laRV07Cj4gICAgICBTcGljZVJlY3QgcmVzZW50X2FyZWFzW01BWF9QSVBFX1NJ
WkVdOyAvLyBub3QgcG9pbnRlcnMgc2luY2UgZHJhd2FibGVzCj4gICAgICBtYXkgYmUgcmVsZWFz
ZWQKPiAgICAgIGludCBudW1fcmVzZW50Owo+IC0gICAgR0xpc3QgKmw7Cj4gKyAgICBHTGlzdCAq
bCwgKnByZXY7Cj4gICAgICBHUXVldWUgKnBpcGU7Cj4gIAo+ICAgICAgcmVzZW50X3N1cmZhY2Vf
aWRzWzBdID0gZmlyc3Rfc3VyZmFjZV9pZDsKPiBAQCAtNzIxLDExICs3MjEsMTIgQEAgc3RhdGlj
IHZvaWQKPiByZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhE
aXNwbGF5Q2hhbm5lbENsaWVudAo+ICAgICAgcGlwZSA9IHJlZF9jaGFubmVsX2NsaWVudF9nZXRf
cGlwZShSRURfQ0hBTk5FTF9DTElFTlQoZGNjKSk7Cj4gIAo+ICAgICAgLy8gZ29pbmcgZnJvbSB0
aGUgb2xkZXN0IHRvIHRoZSBuZXdlc3QKPiAtICAgIGZvciAobCA9IHBpcGUtPnRhaWw7IGwgIT0g
TlVMTDsgbCA9IGwtPnByZXYpIHsKPiArICAgIGZvciAobCA9IHBpcGUtPnRhaWw7IGwgIT0gTlVM
TDsgbCA9IHByZXYpIHsKPiAgICAgICAgICBSZWRQaXBlSXRlbSAqcGlwZV9pdGVtID0gbC0+ZGF0
YTsKPiAgICAgICAgICBEcmF3YWJsZSAqZHJhd2FibGU7Cj4gICAgICAgICAgUmVkRHJhd2FibGVQ
aXBlSXRlbSAqZHBpOwo+ICAKPiArICAgICAgICBwcmV2ID0gbC0+cHJldjsKPiAgICAgICAgICBp
ZiAocGlwZV9pdGVtLT50eXBlICE9IFJFRF9QSVBFX0lURU1fVFlQRV9EUkFXKQo+ICAgICAgICAg
ICAgICBjb250aW51ZTsKPiAgICAgICAgICBkcGkgPSBTUElDRV9VUENBU1QoUmVkRHJhd2FibGVQ
aXBlSXRlbSwgcGlwZV9pdGVtKTsKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
