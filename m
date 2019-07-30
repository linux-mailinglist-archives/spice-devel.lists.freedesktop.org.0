Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9B97A784
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8859A6E4EC;
	Tue, 30 Jul 2019 12:04:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585D06E4E1
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EAB1530C1341
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 274255D6B0;
 Tue, 30 Jul 2019 12:04:14 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:12 +0100
Message-Id: <20190730120331.17967-24-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 30 Jul 2019 12:04:16 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 24/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

Rml4IHR5cG8gaW4gY29tbWVudC4KLS0tCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMgYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKaW5kZXggODll
OTRmOGUuLmJiNDllMGQ0IDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKKysrIGIv
c3JjL2NkLXVzYi1idWxrLW1zZC5jCkBAIC0zNzAsNyArMzcwLDcgQEAgc3RhdGljIHZvaWQgdXNi
X2NkX3NlbmRfZGF0YV9pbihVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50MzJfdCBtYXhfbGVu
KQogICAgICAgICB1c2JfcmVxLT54ZmVyX2xlbiArPSBzZW5kX2xlbjsKICAgICAgICAgaWYgKHVz
Yl9yZXEtPnhmZXJfbGVuID09IHVzYl9yZXEtPnNjc2lfaW5fbGVuKSB7CiAgICAgICAgICAgICAv
KiBhbGwgZGF0YSBmb3IgdGhpcyBidWxrIGhhcyBiZWVuIHRyYW5zZmVycmVkICovCi0gICAgICAg
ICAgICBpZiAodXNiX3JlcS0+c2NzaV9pbl9sZW4gPT0gdXNiX3JlcS0+dXNiX3JlcV9sZW4gfHwg
LyogcmVxIGZ1bGx5IHNhdGlzZmlsZWQgKi8KKyAgICAgICAgICAgIGlmICh1c2JfcmVxLT5zY3Np
X2luX2xlbiA9PSB1c2JfcmVxLT51c2JfcmVxX2xlbiB8fCAvKiByZXEgZnVsbHkgc2F0aXNmaWVk
ICovCiAgICAgICAgICAgICAgICAgc2VuZF9sZW4gPCBtYXhfbGVuKSB7IC8qIHBhcnRpYWwgYnVs
ayAtIG5vIG1vcmUgZGF0YSAqLwogICAgICAgICAgICAgICAgIGNkX3VzYl9idWxrX21zZF9zZXRf
c3RhdGUoY2QsIFVTQl9DRF9TVEFURV9DU1cpOwogICAgICAgICAgICAgfSBlbHNlIHsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
