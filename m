Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F7F42859
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 16:04:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB4F895B4;
	Wed, 12 Jun 2019 14:04:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45968895B4
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 14:04:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D90E564123
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 14:04:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CB8F45D96F
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 14:04:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC3C519722
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 14:04:25 +0000 (UTC)
Date: Wed, 12 Jun 2019 10:04:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1247130092.22453536.1560348264432.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190612133704.9864-1-fziglio@redhat.com>
References: <20190612133704.9864-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.25, 10.4.195.24]
Thread-Topic: test-qxl-parsing: Fix possible integer overflow
Thread-Index: xOK5n7/kuuBoFnHmn2EpO+Ktp0FPuQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 12 Jun 2019 14:04:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] test-qxl-parsing: Fix
 possible integer overflow
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

PiAKPiBUaGlzIGZpeGVzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGlj
ZS1zZXJ2ZXIvaXNzdWVzLzMxLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8
ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvdGVzdHMvdGVzdC1xeGwtcGFyc2lu
Zy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rlc3QtcXhsLXBhcnNpbmcuYwo+IGIv
c2VydmVyL3Rlc3RzL3Rlc3QtcXhsLXBhcnNpbmcuYwo+IGluZGV4IDYwY2E4Zjg4Yy4uNzZlYWIw
NmNlIDEwMDY0NAo+IC0tLSBhL3NlcnZlci90ZXN0cy90ZXN0LXF4bC1wYXJzaW5nLmMKPiArKysg
Yi9zZXJ2ZXIvdGVzdHMvdGVzdC1xeGwtcGFyc2luZy5jCj4gQEAgLTk2LDcgKzk2LDcgQEAgc3Rh
dGljIHZvaWQgdGVzdF9tZW1zbG90X2ludmFsaWRfc2xvdF9pZCh2b2lkKQo+ICAgICAgUmVkTWVt
U2xvdEluZm8gbWVtX2luZm87Cj4gICAgICBpbml0X21lbWluZm8oJm1lbV9pbmZvKTsKPiAgCj4g
LSAgICBtZW1zbG90X2dldF92aXJ0KCZtZW1faW5mbywgMSA8PCBtZW1faW5mby5tZW1zbG90X2lk
X3NoaWZ0LCAxNiwgMCk7Cj4gKyAgICBtZW1zbG90X2dldF92aXJ0KCZtZW1faW5mbywgKChRWExQ
SFlTSUNBTCkgMSkgPDwKPiBtZW1faW5mby5tZW1zbG90X2lkX3NoaWZ0LCAxNiwgMCk7Cj4gIH0K
PiAgCj4gIHN0YXRpYyB2b2lkIHRlc3RfbWVtc2xvdF9pbnZhbGlkX2FkZHJlc3Nlcyh2b2lkKQoK
UGxlYXNlIGlnbm9yZSwgdGhlcmUgd2FzIGFscmVhZHkgYSBtZXJnZSByZXF1ZXN0IGZvciB0aGlz
LgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
