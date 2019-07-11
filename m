Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA26F6531E
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602086E159;
	Thu, 11 Jul 2019 08:27:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D94826E159
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:27:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8661430C319F
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:27:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CB1A1001B2B
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:27:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 71C861833003;
 Thu, 11 Jul 2019 08:27:27 +0000 (UTC)
Date: Thu, 11 Jul 2019 04:27:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <559172568.27119885.1562833647412.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190710174435.15833-3-uril@redhat.com>
References: <20190710174435.15833-1-uril@redhat.com>
 <20190710174435.15833-3-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.1]
Thread-Topic: dcc-send: remove unused variable 'image'
Thread-Index: gt6bs16QQwUeDZajN0rXMHqarjbS+Q==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 11 Jul 2019 08:27:27 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH v2 2/3] dcc-send: remove
 unused variable 'image'
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

PiAKPiBGcm9tOiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkkgc3VwcG9z
ZWQgc29tZW9uZSBlbHNlIHNob3VsZCBhY2sgaXQKCj4gLS0tCj4gIHNlcnZlci9kY2Mtc2VuZC5j
IHwgNiArKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNl
bmQuYwo+IGluZGV4IDU2NWE3OWYzMy4uZTBmM2I4MTgzIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9k
Y2Mtc2VuZC5jCj4gKysrIGIvc2VydmVyL2RjYy1zZW5kLmMKPiBAQCAtNzI1LDcgKzcyNSw2IEBA
IHN0YXRpYyB2b2lkCj4gcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJsZXNfd2l0aF9p
bWFnZXMoRGlzcGxheUNoYW5uZWxDbGllbnQKPiAgICAgICAgICBSZWRQaXBlSXRlbSAqcGlwZV9p
dGVtID0gbC0+ZGF0YTsKPiAgICAgICAgICBEcmF3YWJsZSAqZHJhd2FibGU7Cj4gICAgICAgICAg
UmVkRHJhd2FibGVQaXBlSXRlbSAqZHBpOwo+IC0gICAgICAgIFJlZEltYWdlSXRlbSAqaW1hZ2U7
Cj4gIAo+ICAgICAgICAgIGlmIChwaXBlX2l0ZW0tPnR5cGUgIT0gUkVEX1BJUEVfSVRFTV9UWVBF
X0RSQVcpCj4gICAgICAgICAgICAgIGNvbnRpbnVlOwo+IEBAIC03NDUsMTMgKzc0NCwxMiBAQCBz
dGF0aWMgdm9pZAo+IHJlZF9waXBlX3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1h
Z2VzKERpc3BsYXlDaGFubmVsQ2xpZW50Cj4gICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAgICAg
ICAgIH0KPiAgCj4gLSAgICAgICAgaW1hZ2UgPSBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShk
Y2MsCj4gZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+c3VyZmFjZV9pZCwKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5i
Ym94LCBsLAo+IFRSVUUpOwo+ICsgICAgICAgIGRjY19hZGRfc3VyZmFjZV9hcmVhX2ltYWdlKGRj
YywgZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+c3VyZmFjZV9pZCwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmZHJhd2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveCwgbCwgVFJV
RSk7Cj4gICAgICAgICAgcmVzZW50X3N1cmZhY2VfaWRzW251bV9yZXNlbnRdID0gZHJhd2FibGUt
PnJlZF9kcmF3YWJsZS0+c3VyZmFjZV9pZDsKPiAgICAgICAgICByZXNlbnRfYXJlYXNbbnVtX3Jl
c2VudF0gPSBkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5iYm94Owo+ICAgICAgICAgIG51bV9yZXNl
bnQrKzsKPiAgCj4gLSAgICAgICAgc3BpY2VfYXNzZXJ0KGltYWdlKTsKPiAgICAgICAgICByZWRf
Y2hhbm5lbF9jbGllbnRfcGlwZV9yZW1vdmVfYW5kX3JlbGVhc2VfcG9zKFJFRF9DSEFOTkVMX0NM
SUVOVChkY2MpLAo+ICAgICAgICAgIGwpOwo+ICAgICAgfQo+ICB9CgpGcmVkaWFubwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
