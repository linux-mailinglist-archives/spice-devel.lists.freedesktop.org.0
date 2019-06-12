Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCBC41BA9
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4332E89226;
	Wed, 12 Jun 2019 05:53:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E85689226
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 29894C028353
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2004039B9
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 170D11806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:53:37 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:53:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1662746914.22408073.1560318817044.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530171746.14635-1-fziglio@redhat.com>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: char-device: Remove unused red_char_device_destroy function
Thread-Index: oVLbAfxneLI7lwDZqoDz4gUXvkf+Jg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 12 Jun 2019 05:53:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] char-device: Remove
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBnX29iamVjdF91bnJlZiBpcyBkaXJlY3RseSB1c2VkLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2
ZXIvY2hhci1kZXZpY2UuYyB8IDYgLS0tLS0tCj4gIHNlcnZlci9jaGFyLWRldmljZS5oIHwgNSAr
Ky0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZp
Y2UuYwo+IGluZGV4IDllZTI1NTY2NC4uMGY2YTI5ZDZmIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9j
aGFyLWRldmljZS5jCj4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiBAQCAtNjk3LDEyICs2
OTcsNiBAQCB2b2lkIHJlZF9jaGFyX2RldmljZV9yZXNldF9kZXZfaW5zdGFuY2UoUmVkQ2hhckRl
dmljZQo+ICpkZXYsCj4gICAgICBnX29iamVjdF9ub3RpZnkoR19PQkpFQ1QoZGV2KSwgInNpbiIp
Owo+ICB9Cj4gIAo+IC12b2lkIHJlZF9jaGFyX2RldmljZV9kZXN0cm95KFJlZENoYXJEZXZpY2Ug
KmNoYXJfZGV2KQo+IC17Cj4gLSAgICBnX3JldHVybl9pZl9mYWlsKFJFRF9JU19DSEFSX0RFVklD
RShjaGFyX2RldikpOwo+IC0gICAgZ19vYmplY3RfdW5yZWYoY2hhcl9kZXYpOwo+IC19Cj4gLQo+
ICBzdGF0aWMgUmVkQ2hhckRldmljZUNsaWVudCAqcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9uZXco
UmVkQ2xpZW50ICpjbGllbnQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbnQgZG9fZmxvd19jb250cm9sLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1heF9z
ZW5kX3F1ZXVlX3NpemUsCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5oIGIvc2Vy
dmVyL2NoYXItZGV2aWNlLmgKPiBpbmRleCA4OTNkM2U0YjEuLjQxNWQ0ZjE3YyAxMDA2NDQKPiAt
LS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4g
QEAgLTkxLDcgKzkxLDcgQEAgR1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBlKHZvaWQpIEdf
R05VQ19DT05TVDsKPiAgICogSG93IHRvIHVzZSB0aGUgYXBpOgo+ICAgKiA9PT09PT09PT09PT09
PT09PT0KPiAgICogZGV2aWNlIGF0dGFjaGVkOiBjcmVhdGUgbmV3IG9iamVjdCBpbnN0YW50aWF0
aW5nIGEgUmVkQ2hhckRldmljZSBjaGlsZAo+ICAgY2xhc3MKPiAtICogZGV2aWNlIGRldGFjaGVk
OiBjYWxsIHJlZF9jaGFyX2RldmljZV9kZXN0cm95L3Jlc2V0Cj4gKyAqIGRldmljZSBkZXRhY2hl
ZDogY2FsbCBnX29iamVjdF91bnJlZi9yZWRfY2hhcl9kZXZpY2VfcmVzZXQKPiAgICoKPiAgICog
Y2xpZW50IGNvbm5lY3RlZCBhbmQgYXNzb2NpYXRlZCB3aXRoIGEgZGV2aWNlOiByZWRfY2hhcl9k
ZXZpY2VfX2FkZAo+ICAgKiBjbGllbnQgZGlzY29ubmVjdGVkOiByZWRfY2hhcl9kZXZpY2VfX3Jl
bW92ZQo+IEBAIC0xMjAsNyArMTIwLDcgQEAgR1R5cGUgcmVkX2NoYXJfZGV2aWNlX2dldF90eXBl
KHZvaWQpIEdfR05VQ19DT05TVDsKPiAgICogcmVkX2NoYXJfZGV2aWNlX3dha2V1cCAoZm9yIHJl
YWRpbmcgZnJvbSB0aGUgZGV2aWNlKQo+ICAgKi8KPiAgLyogcmVmY291bnRpbmcgaXMgdXNlZCB0
byBwcm90ZWN0IHRoZSBjaGFyX2RldiBmcm9tIGJlaW5nIGRlYWxsb2NhdGVkIGluCj4gLSAqIGNh
c2UgcmVkX2NoYXJfZGV2aWNlX2Rlc3Ryb3kgaGFzIGJlZW4gY2FsbGVkCj4gKyAqIGNhc2UgZ19v
YmplY3RfdW5yZWYgaGFzIGJlZW4gY2FsbGVkCj4gICAqIGR1cmluZyBhIGNhbGxiYWNrLCBhbmQg
d2UgbWlnaHQgc3RpbGwgYWNjZXNzIHRoZSBjaGFyX2RldiBhZnRlcndhcmRzLgo+ICAgKi8KPiAg
Cj4gQEAgLTE2MCw3ICsxNjAsNiBAQCB0eXBlZGVmIHN0cnVjdCBSZWRDaGFyRGV2aWNlV3JpdGVC
dWZmZXIgewo+ICAKPiAgdm9pZCByZWRfY2hhcl9kZXZpY2VfcmVzZXRfZGV2X2luc3RhbmNlKFJl
ZENoYXJEZXZpY2UgKmRldiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4pOwo+IC12b2lkIHJlZF9jaGFyX2Rldmlj
ZV9kZXN0cm95KFJlZENoYXJEZXZpY2UgKmRldik7Cj4gIAo+ICAvKiBvbmx5IG9uZSBjbGllbnQg
aXMgc3VwcG9ydGVkICovCj4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX21pZ3JhdGVfZGF0YV9tYXJz
aGFsbChSZWRDaGFyRGV2aWNlICpkZXYsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
