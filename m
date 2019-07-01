Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AB35BB7F
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 14:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE3889C55;
	Mon,  1 Jul 2019 12:29:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E460B89C55
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:29:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 38A3330832CE
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:29:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BD6E5D71C
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:29:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F3131806B15;
 Mon,  1 Jul 2019 12:29:04 +0000 (UTC)
Date: Mon, 1 Jul 2019 08:29:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1633464297.25958150.1561984142617.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190701120639.31441-1-kpouget@redhat.com>
References: <20190701120639.31441-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.5]
Thread-Topic: gstreamer-encoder: fix compiler warning
Thread-Index: tVWVZI5zKjF98XntRrUferc+U4xgPw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 01 Jul 2019 12:29:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning
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

PiAKPiB0aGlzIHdhcm5pbmcgaXMgZmFpbGluZyBteSBidWlsZCwgSSBhc3N1bWUgaXQgY29tZXMg
ZnJvbSBhIG5ldyB2ZXJzaW9uCj4gb2YgdGhlIGNvbXBpbGVyIGNhdGNoaW5nIHRoZSB1c2VsZXNz
IGNhbGwgdG8gYWJzKCkuCj4gCgpZZXMsIGdldHRpbmcgdG9vIHdpdGggRmVkb3JhIDMwLgoKSW5z
dGVhZCBvZiAiaXMgZmFpbGluZyBteSBidWlsZCIgY291bGQgeW91IGRlc2NyaWJlIHlvdXIgZW52
aXJvbm1lbnQ/Ckxpa2UgIkNvbXBpbGluZyB3aXRoIGdjYyAxMy40IHVuZGVyIEZlZG9yYSAzNCAi
Li4uCgo+IC0tLQo+IAo+ID4gZXJyb3I6IHRha2luZyB0aGUgYWJzb2x1dGUgdmFsdWUgb2YgdW5z
aWduZWQgdHlwZSAndWludDY0X3QnCj4gPiB7YWthICdsb25nIHVuc2lnbmVkIGludCd9IGhhcyBu
byBlZmZlY3QgWy1XZXJyb3I9YWJzb2x1dGUtdmFsdWVdCgpXaHkgbm90IHB1dHRpbmcgdGhpcyBh
bHNvIGluIHRoZSBjb21taXQgbWVzc2FnZT8KCkxvb2tpbmcgdGhlIGxvZyBmb3IgIkZlZG9yYSIg
SSBmb3VuZCBmb3IgaW5zdGFuY2UKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNl
L3NwaWNlL2NvbW1pdC9mOTBmNzVlNDFjMGNkYjMzYjZiNTVjZDQwODlkYjAyMjU0MDkzN2UzCgo+
IC0tLQo+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZl
ci9nc3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBpbmRl
eCA2NDE2YjY4OC4uZGJkNGIxMWQgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL2dzdHJlYW1lci1lbmNv
ZGVyLmMKPiArKysgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+IEBAIC01MTUsNyArNTE1
LDcgQEAgc3RhdGljIHZvaWQgc2V0X3ZpZGVvX2JpdF9yYXRlKFNwaWNlR3N0RW5jb2RlciAqZW5j
b2RlciwKPiB1aW50NjRfdCBiaXRfcmF0ZSkKPiAgICAgICAgICBlbmNvZGVyLT52aWRlb19iaXRf
cmF0ZSA9IGJpdF9yYXRlOwo+ICAgICAgICAgIHNldF9nc3RlbmNfYml0cmF0ZShlbmNvZGVyKTsK
PiAKPiAtICAgIH0gZWxzZSAgaWYgKGFicyhiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9y
YXRlKSA+Cj4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFU
RV9NQVJHSU4pIHsKPiArICAgIH0gZWxzZSAgaWYgKChiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVv
X2JpdF9yYXRlKSA+Cj4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9f
QklUUkFURV9NQVJHSU4pIHsKPiAgICAgICAgICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSA9IGJp
dF9yYXRlOwo+ICAgICAgICAgIHNldF9waXBlbGluZV9jaGFuZ2VzKGVuY29kZXIsIFNQSUNFX0dT
VF9WSURFT19QSVBFTElORV9CSVRSQVRFKTsKPiAgICAgIH0KCkNvZGUgaXMgZ29vZAoKRnJlZGlh
bm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
