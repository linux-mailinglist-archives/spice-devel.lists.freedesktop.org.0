Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E0381DF8
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 15:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7871F89C68;
	Mon,  5 Aug 2019 13:51:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9427789C68
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 306AFC05683F
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 27D245D717
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1EAFB4EE50
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:07 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:51:06 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <557143216.4733170.1565013066936.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190722111522.400-1-fziglio@redhat.com>
References: <20190722111522.400-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.3]
Thread-Topic: usb-device-manager: Do not give warnings for supported
 configuration
Thread-Index: xmXCpE8c7qESDVPJcsFCNio9hK8yrQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 05 Aug 2019 13:51:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v2] usb-device-manager: Do not
 give warnings for supported configuration
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

cGluZwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KPiAtLS0KPiAgc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMTQgKysrKysrKysrKy0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4g
Cj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIGNvbnZlciBhIGRlYnVnIGludG8gd2FybmluZyB0byBp
bmZvcm0gdGhlIHVzZXIgYXQgbGVhc3Qgb25lIHRpbWUKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gaW5kZXggOWFi
YTI3NWYuLmEzOGUzYzBkIDEwMDY0NAo+IC0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+
ICsrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IEBAIC0yNDMsNyArMjQzLDcgQEAgc3Rh
dGljIHZvaWQKPiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfaW5pdChTcGljZVVzYkRldmljZU1h
bmFnZXIgKnNlbGYpCj4gICAgICBpZiAodXNiZGtfaXNfZHJpdmVyX2luc3RhbGxlZCgpKSB7Cj4g
ICAgICAgICAgcHJpdi0+dXNiZGtfYXBpID0gdXNiZGtfYXBpX2xvYWQoKTsKPiAgICAgIH0gZWxz
ZSB7Cj4gLSAgICAgICAgc3BpY2VfZGVidWcoIlVzYkRrIGRyaXZlciBpcyBub3QgaW5zdGFsbGVk
Iik7Cj4gKyAgICAgICAgZ193YXJuaW5nKCJVc2JEayBkcml2ZXIgaXMgbm90IGluc3RhbGxlZCIp
Owo+ICAgICAgfQo+ICAjZW5kaWYKPiAgI2lmZGVmIFVTRV9VU0JSRURJUgo+IEBAIC0xNjY4LDcg
KzE2NjgsOSBAQCBnYm9vbGVhbiBfdXNiZGtfaGlkZXJfcHJlcGFyZShTcGljZVVzYkRldmljZU1h
bmFnZXIKPiAqbWFuYWdlcikKPiAgewo+ICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyUHJpdmF0
ZSAqcHJpdiA9IG1hbmFnZXItPnByaXY7Cj4gIAo+IC0gICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwo
cHJpdi0+dXNiZGtfYXBpICE9IE5VTEwsIEZBTFNFKTsKPiArICAgIGlmIChwcml2LT51c2Jka19h
cGkgPT0gTlVMTCkgewo+ICsgICAgICAgIHJldHVybiBGQUxTRTsKPiArICAgIH0KPiAgCj4gICAg
ICBpZiAocHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlID09IE5VTEwpIHsKPiAgICAgICAgICBwcml2
LT51c2Jka19oaWRlcl9oYW5kbGUgPQo+ICAgICAgICAgIHVzYmRrX2NyZWF0ZV9oaWRlcl9oYW5k
bGUocHJpdi0+dXNiZGtfYXBpKTsKPiBAQCAtMTY4Niw3ICsxNjg4LDkgQEAgdm9pZCBfdXNiZGtf
aGlkZXJfY2xlYXIoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyKQo+ICB7Cj4gICAgICBT
cGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpwcml2ID0gbWFuYWdlci0+cHJpdjsKPiAgCj4g
LSAgICBnX3JldHVybl9pZl9mYWlsKHByaXYtPnVzYmRrX2FwaSAhPSBOVUxMKTsKPiArICAgIGlm
IChwcml2LT51c2Jka19hcGkgPT0gTlVMTCkgewo+ICsgICAgICAgIHJldHVybjsKPiArICAgIH0K
PiAgCj4gICAgICBpZiAocHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlICE9IE5VTEwpIHsKPiAgICAg
ICAgICB1c2Jka19jbGVhcl9oaWRlX3J1bGVzKHByaXYtPnVzYmRrX2FwaSwgcHJpdi0+dXNiZGtf
aGlkZXJfaGFuZGxlKTsKPiBAQCAtMTcwMCw3ICsxNzA0LDkgQEAgdm9pZCBfdXNiZGtfaGlkZXJf
dXBkYXRlKFNwaWNlVXNiRGV2aWNlTWFuYWdlcgo+ICptYW5hZ2VyKQo+ICB7Cj4gICAgICBTcGlj
ZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpwcml2ID0gbWFuYWdlci0+cHJpdjsKPiAgCj4gLSAg
ICBnX3JldHVybl9pZl9mYWlsKHByaXYtPnVzYmRrX2FwaSAhPSBOVUxMKTsKPiArICAgIGlmIChw
cml2LT51c2Jka19hcGkgPT0gTlVMTCkgewo+ICsgICAgICAgIHJldHVybjsKPiArICAgIH0KPiAg
Cj4gICAgICBpZiAocHJpdi0+YXV0b19jb25uZWN0X2ZpbHRlciA9PSBOVUxMKSB7Cj4gICAgICAg
ICAgU1BJQ0VfREVCVUcoIk5vIGF1dG9yZWRpcmVjdCBydWxlcywgbm8gaGlkZXIgc2V0dXAgbmVl
ZGVkIik7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
