Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD867A5B16
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5E3891AF;
	Mon,  2 Sep 2019 16:04:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3783A8919C
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DAC0188D318
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:54 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 62CDA5D9C3
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:54 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 18:04:48 +0200
Message-Id: <20190902160449.19589-6-victortoso@redhat.com>
In-Reply-To: <20190902160449.19589-1-victortoso@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Mon, 02 Sep 2019 16:04:54 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 5/6] spice-gstaudio: fix GTask leak on
 query for volume
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKID4gMTg0IGJ5dGVzIGluIDEg
YmxvY2tzIGFyZSBkZWZpbml0ZWx5IGxvc3QgaW4gbG9zcyByZWNvcmQgMTIsNjY4IG9mIDE0LDIz
MQogPiAgICBhdCAweDQ4Mzg4MEI6IG1hbGxvYyAodmdfcmVwbGFjZV9tYWxsb2MuYzozMDkpCiA+
ICAgIGJ5IDB4NEE2NEM5ODogZ19tYWxsb2MgKGluIC91c3IvbGliNjQvbGliZ2xpYi0yLjAuc28u
MC42MDAwLjYpCiA+ICAgIGJ5IDB4NEE3Q0ZCNTogZ19zbGljZV9hbGxvYyAoaW4gL3Vzci9saWI2
NC9saWJnbGliLTIuMC5zby4wLjYwMDAuNikKID4gICAgYnkgMHg0QTdENUREOiBnX3NsaWNlX2Fs
bG9jMCAoaW4gL3Vzci9saWI2NC9saWJnbGliLTIuMC5zby4wLjYwMDAuNikKID4gICAgYnkgMHg0
RDNFMDYxOiBnX3R5cGVfY3JlYXRlX2luc3RhbmNlIChpbiAvdXNyL2xpYjY0L2xpYmdvYmplY3Qt
Mi4wLnNvLjAuNjAwMC42KQogPiAgICBieSAweDREMjA0MkM6ID8/PyAoaW4gL3Vzci9saWI2NC9s
aWJnb2JqZWN0LTIuMC5zby4wLjYwMDAuNikKID4gICAgYnkgMHg0RDIxQjE0OiBnX29iamVjdF9u
ZXdfd2l0aF9wcm9wZXJ0aWVzIChpbiAvdXNyL2xpYjY0L2xpYmdvYmplY3QtMi4wLnNvLjAuNjAw
MC42KQogPiAgICBieSAweDREMjI2QzA6IGdfb2JqZWN0X25ldyAoaW4gL3Vzci9saWI2NC9saWJn
b2JqZWN0LTIuMC5zby4wLjYwMDAuNikKID4gICAgYnkgMHg0QkUwRkI4OiBnX3Rhc2tfbmV3IChp
biAvdXNyL2xpYjY0L2xpYmdpby0yLjAuc28uMC42MDAwLjYpCiA+ICAgIGJ5IDB4NDhFREZDQjog
c3BpY2VfZ3N0YXVkaW9fZ2V0X3JlY29yZF92b2x1bWVfaW5mb19hc3luYyAoc3BpY2UtZ3N0YXVk
aW8uYzo2NzkpCiA+ICAgIGJ5IDB4NDhDMkE0Rjogc3BpY2VfYXVkaW9fZ2V0X3JlY29yZF92b2x1
bWVfaW5mb19hc3luYyAoc3BpY2UtYXVkaW8uYzoyMTIpCiA+ICAgIGJ5IDB4NDhCMkYwMDogYWdl
bnRfc3luY19hdWRpb19yZWNvcmQgKGNoYW5uZWwtbWFpbi5jOjEyODUpCiA+CiA+IDI0MCAoMTg0
IGRpcmVjdCwgNTYgaW5kaXJlY3QpIGJ5dGVzIGluIDEgYmxvY2tzIGFyZSBkZWZpbml0ZWx5IGxv
c3QgaW4gbG9zcyByZWNvcmQgMTIsODg5IG9mIDE0LDIzMQogPiAgICBhdCAweDQ4Mzg4MEI6IG1h
bGxvYyAodmdfcmVwbGFjZV9tYWxsb2MuYzozMDkpCiA+ICAgIGJ5IDB4NEE2NEM5ODogZ19tYWxs
b2MgKGluIC91c3IvbGliNjQvbGliZ2xpYi0yLjAuc28uMC42MDAwLjYpCiA+ICAgIGJ5IDB4NEE3
Q0ZCNTogZ19zbGljZV9hbGxvYyAoaW4gL3Vzci9saWI2NC9saWJnbGliLTIuMC5zby4wLjYwMDAu
NikKID4gICAgYnkgMHg0QTdENUREOiBnX3NsaWNlX2FsbG9jMCAoaW4gL3Vzci9saWI2NC9saWJn
bGliLTIuMC5zby4wLjYwMDAuNikKID4gICAgYnkgMHg0RDNFMDYxOiBnX3R5cGVfY3JlYXRlX2lu
c3RhbmNlIChpbiAvdXNyL2xpYjY0L2xpYmdvYmplY3QtMi4wLnNvLjAuNjAwMC42KQogPiAgICBi
eSAweDREMjA0MkM6ID8/PyAoaW4gL3Vzci9saWI2NC9saWJnb2JqZWN0LTIuMC5zby4wLjYwMDAu
NikKID4gICAgYnkgMHg0RDIxQjE0OiBnX29iamVjdF9uZXdfd2l0aF9wcm9wZXJ0aWVzIChpbiAv
dXNyL2xpYjY0L2xpYmdvYmplY3QtMi4wLnNvLjAuNjAwMC42KQogPiAgICBieSAweDREMjI2QzA6
IGdfb2JqZWN0X25ldyAoaW4gL3Vzci9saWI2NC9saWJnb2JqZWN0LTIuMC5zby4wLjYwMDAuNikK
ID4gICAgYnkgMHg0QkUwRkI4OiBnX3Rhc2tfbmV3IChpbiAvdXNyL2xpYjY0L2xpYmdpby0yLjAu
c28uMC42MDAwLjYpCiA+ICAgIGJ5IDB4NDhFREFGOTogc3BpY2VfZ3N0YXVkaW9fZ2V0X3BsYXli
YWNrX3ZvbHVtZV9pbmZvX2FzeW5jIChzcGljZS1nc3RhdWRpby5jOjU5NykKID4gICAgYnkgMHg0
OEMyOTY3OiBzcGljZV9hdWRpb19nZXRfcGxheWJhY2tfdm9sdW1lX2luZm9fYXN5bmMgKHNwaWNl
LWF1ZGlvLmM6MTg5KQogPiAgICBieSAweDQ4QjJDMzM6IGFnZW50X3N5bmNfYXVkaW9fcGxheWJh
Y2sgKGNoYW5uZWwtbWFpbi5jOjEyMjkpCgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmlj
dG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHNyYy9zcGljZS1nc3RhdWRpby5jIHwgMiArKwogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1nc3Rh
dWRpby5jIGIvc3JjL3NwaWNlLWdzdGF1ZGlvLmMKaW5kZXggOWJlNjQ3Yi4uOWU5ZmQ0OSAxMDA2
NDQKLS0tIGEvc3JjL3NwaWNlLWdzdGF1ZGlvLmMKKysrIGIvc3JjL3NwaWNlLWdzdGF1ZGlvLmMK
QEAgLTU5Nyw2ICs1OTcsNyBAQCBzdGF0aWMgdm9pZCBzcGljZV9nc3RhdWRpb19nZXRfcGxheWJh
Y2tfdm9sdW1lX2luZm9fYXN5bmMoU3BpY2VBdWRpbyAqYXVkaW8sCiAgICAgR1Rhc2sgKnRhc2sg
PSBnX3Rhc2tfbmV3KGF1ZGlvLCBjYW5jZWxsYWJsZSwgY2FsbGJhY2ssIHVzZXJfZGF0YSk7CiAK
ICAgICBnX3Rhc2tfcmV0dXJuX2Jvb2xlYW4odGFzaywgVFJVRSk7CisgICAgZ19vYmplY3RfdW5y
ZWYodGFzayk7CiB9CiAKIHN0YXRpYyBnYm9vbGVhbiBzcGljZV9nc3RhdWRpb19nZXRfcGxheWJh
Y2tfdm9sdW1lX2luZm9fZmluaXNoKFNwaWNlQXVkaW8gKmF1ZGlvLApAQCAtNjc5LDYgKzY4MCw3
IEBAIHN0YXRpYyB2b2lkIHNwaWNlX2dzdGF1ZGlvX2dldF9yZWNvcmRfdm9sdW1lX2luZm9fYXN5
bmMoU3BpY2VBdWRpbyAqYXVkaW8sCiAgICAgR1Rhc2sgKnRhc2sgPSBnX3Rhc2tfbmV3KGF1ZGlv
LCBjYW5jZWxsYWJsZSwgY2FsbGJhY2ssIHVzZXJfZGF0YSk7CiAKICAgICBnX3Rhc2tfcmV0dXJu
X2Jvb2xlYW4odGFzaywgVFJVRSk7CisgICAgZ19vYmplY3RfdW5yZWYodGFzayk7CiB9CiAKIHN0
YXRpYyBnYm9vbGVhbiBzcGljZV9nc3RhdWRpb19nZXRfcmVjb3JkX3ZvbHVtZV9pbmZvX2Zpbmlz
aChTcGljZUF1ZGlvICphdWRpbywKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
