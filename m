Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420E59556
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A426E894;
	Fri, 28 Jun 2019 07:48:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFADB6E894
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9CD8A3004426
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 944A35E7A1
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8AC811806B15
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:23 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:48:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1043795662.25083171.1561708103515.JavaMail.zimbra@redhat.com>
In-Reply-To: <1644185886.23872973.1561102512272.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
 <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
 <1644185886.23872973.1561102512272.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: red-worker: Remove warning
Thread-Index: IYikIAqrrvK3LDfWnE/5b6T+50W4l4euGaXfqFDCfjU=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 28 Jun 2019 07:48:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 05/13] red-worker: Remove
 warning
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gSW4gc29t
ZSBjb25maWd1cmF0aW9uIF9HTlVfU09VUkNFIGlzIGRlZmluZWQgYnkgdGhlIGNvbXBpbGVyCj4g
PiA+IGFuZCBkZWZpbmluZyBhZ2FpbiBjYXVzZSBhIHdhcm5pbmcuCj4gPiA+IERvIG5vdCBkZWZp
bmUgYWdhaW4gdG8gYXZvaWQgdGhlIHdhcm5pbmcuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBz
ZXJ2ZXIvcmVkLXdvcmtlci5jIHwgMiArKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtd29ya2VyLmMgYi9z
ZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+IGluZGV4IGQ2NGMyNmU4My4uYjMzMzVhNTNhIDEwMDY0
NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+ICsrKyBiL3NlcnZlci9yZWQt
d29ya2VyLmMKPiA+ID4gQEAgLTE3LDcgKzE3LDkgQEAKPiA+ID4gICovCj4gPiA+ICAjaW5jbHVk
ZSA8Y29uZmlnLmg+Cj4gPiA+ICAKPiA+ID4gKyNpZm5kZWYgX0dOVV9TT1VSQ0UKPiA+ID4gICNk
ZWZpbmUgX0dOVV9TT1VSQ0UKPiA+ID4gKyNlbmRpZgo+ID4gPiAgI2luY2x1ZGUgPHN0ZGlvLmg+
Cj4gPiA+ICAjaW5jbHVkZSA8c3RkYXJnLmg+Cj4gPiA+ICAjaW5jbHVkZSA8c3RkbGliLmg+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
