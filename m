Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69535992F4
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 14:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C0E6EB0E;
	Thu, 22 Aug 2019 12:14:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59BEB6EB0E
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:14:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 107BF308FC4E
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:14:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0874360BF3
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:14:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 00CF61802216
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:14:24 +0000 (UTC)
Date: Thu, 22 Aug 2019 08:14:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <843482782.8394876.1566476064826.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190813095032.10191-1-fziglio@redhat.com>
References: <20190813095032.10191-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.109, 10.4.195.7]
Thread-Topic: qxl_dev: Add comment to QXLQUICData->data field
Thread-Index: i+dEvnNZTEdJyHxVToECrmY3S3V6CA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 22 Aug 2019 12:14:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol] qxl_dev: Add comment to
 QXLQUICData->data field
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

cGluZwoKPiAKPiBSZWNlbnRseSBhIGJ1ZyB1c2luZyB0aGlzIHN0cnVjdHVyZSB3YXMgZml4ZWQu
Cj4gVGhlIGJ1ZyBpbnZvbHZlZCB1bmRlcnN0YW5kIHRoZSB1c2FnZSBvZiB0aGlzIGZpZWxkIHNv
IGFkZCBzb21lCj4gbm90ZSBvbiB0aGUgZmllbGQgZm9yIGZ1dHVyZSByZWZlcmVuY2UuCj4gCj4g
U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0t
Cj4gIHNwaWNlL3F4bF9kZXYuaCB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvc3BpY2UvcXhsX2Rldi5oIGIvc3BpY2UvcXhsX2Rldi5o
Cj4gaW5kZXggYzg0NGQ3Yi4uM2Y1NmFhZSAxMDA2NDQKPiAtLS0gYS9zcGljZS9xeGxfZGV2LmgK
PiArKysgYi9zcGljZS9xeGxfZGV2LmgKPiBAQCAtNzQwLDYgKzc0MCw5IEBAIHR5cGVkZWYgc3Ry
dWN0IFNQSUNFX0FUVFJfUEFDS0VEIFFYTFN1cmZhY2VJZCB7Cj4gIAo+ICB0eXBlZGVmIHN0cnVj
dCBTUElDRV9BVFRSX1BBQ0tFRCBRWExRVUlDRGF0YSB7Cj4gICAgICB1aW50MzJfdCBkYXRhX3Np
emU7Cj4gKyAgICAvKiBUaGlzIGRhdGEgZm9yIFFVSUMgaXMgYSBRWExEYXRhQ2h1bmsuCj4gKyAg
ICAgKiBUaGlzIGRpZmZlcnMgZnJvbSBRWExCaXRtYXAgd2hlcmUgaXQncyBhIHJlZmVyZW5jZSB0
byBiaXRtYXAgZGF0YSBvcgo+ICsgICAgICogYSByZWZlcmVuY2UgdG8gUVhMRGF0YUNodW5rICov
Cj4gICAgICB1aW50OF90IGRhdGFbMF07Cj4gIH0gUVhMUVVJQ0RhdGEsIFFYTExaUkdCRGF0YSwg
UVhMSlBFR0RhdGE7Cj4gIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
