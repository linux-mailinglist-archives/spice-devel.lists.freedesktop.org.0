Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80230084
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 19:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9852D6E3C6;
	Thu, 30 May 2019 17:01:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FB16E3C6
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 17:01:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 682D7307D98A
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 17:01:15 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.89])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 264CB2B45A;
 Thu, 30 May 2019 17:01:13 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190530142254.28937-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
Date: Thu, 30 May 2019 20:01:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 30 May 2019 17:01:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 01/13] char-device: Remove
 unused red_char_device_destroy function
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS8zMC8xOSA1OjIyIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gZ19vYmplY3RfdW5y
ZWYgaXMgZGlyZWN0bHkgdXNlZC4KCk9LLgoKSSBzZWUgdGhlcmUgYXJlIHNvbWUgY29tbWVudHMg
cmVmZXJyaW5nIHRvIHJlZF9jaGFyX2RldmljZV9kZXN0cm95LgpDb25zaWRlciByZW1vdmluZyB0
aG9zZSBjb21tZW50cyBvciByZXdyaXRpbmcgdGhlbS4KClVyaS4KCgo+IFNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgc2VydmVyL2No
YXItZGV2aWNlLmMgfCA2IC0tLS0tLQo+ICAgc2VydmVyL2NoYXItZGV2aWNlLmggfCAxIC0KPiAg
IDIgZmlsZXMgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+IGluZGV4IDllZTI1NTY2NC4u
MGY2YTI5ZDZmIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5jCj4gKysrIGIvc2Vy
dmVyL2NoYXItZGV2aWNlLmMKPiBAQCAtNjk3LDEyICs2OTcsNiBAQCB2b2lkIHJlZF9jaGFyX2Rl
dmljZV9yZXNldF9kZXZfaW5zdGFuY2UoUmVkQ2hhckRldmljZSAqZGV2LAo+ICAgICAgIGdfb2Jq
ZWN0X25vdGlmeShHX09CSkVDVChkZXYpLCAic2luIik7Cj4gICB9Cj4gICAKPiAtdm9pZCByZWRf
Y2hhcl9kZXZpY2VfZGVzdHJveShSZWRDaGFyRGV2aWNlICpjaGFyX2RldikKPiAtewo+IC0gICAg
Z19yZXR1cm5faWZfZmFpbChSRURfSVNfQ0hBUl9ERVZJQ0UoY2hhcl9kZXYpKTsKPiAtICAgIGdf
b2JqZWN0X3VucmVmKGNoYXJfZGV2KTsKPiAtfQo+IC0KPiAgIHN0YXRpYyBSZWRDaGFyRGV2aWNl
Q2xpZW50ICpyZWRfY2hhcl9kZXZpY2VfY2xpZW50X25ldyhSZWRDbGllbnQgKmNsaWVudCwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
bnQgZG9fZmxvd19jb250cm9sLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IG1heF9zZW5kX3F1ZXVlX3NpemUsCj4gZGlm
ZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiBp
bmRleCA4OTNkM2U0YjEuLjdkM2FkOGIzYSAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZp
Y2UuaAo+ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gQEAgLTE2MCw3ICsxNjAsNiBAQCB0
eXBlZGVmIHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVCdWZmZXIgewo+ICAgCj4gICB2b2lkIHJl
ZF9jaGFyX2RldmljZV9yZXNldF9kZXZfaW5zdGFuY2UoUmVkQ2hhckRldmljZSAqZGV2LAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlQ2hhckRldmljZUlu
c3RhbmNlICpzaW4pOwo+IC12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZp
Y2UgKmRldik7Cj4gICAKPiAgIC8qIG9ubHkgb25lIGNsaWVudCBpcyBzdXBwb3J0ZWQgKi8KPiAg
IHZvaWQgcmVkX2NoYXJfZGV2aWNlX21pZ3JhdGVfZGF0YV9tYXJzaGFsbChSZWRDaGFyRGV2aWNl
ICpkZXYsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
