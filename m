Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CA86FDEA
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 12:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D59C8940F;
	Mon, 22 Jul 2019 10:36:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBD08940F
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:36:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B5F80C057F31
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:36:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ACDD05D9D3
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:36:00 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A4A3A1800206;
 Mon, 22 Jul 2019 10:36:00 +0000 (UTC)
Date: Mon, 22 Jul 2019 06:36:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1613706740.2025795.1563791760492.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190722101355.25853-1-uril@redhat.com>
References: <20190722101355.25853-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.20]
Thread-Topic: pre-install "file"
Thread-Index: 7GciDKn1i8XQnDFMSBBuplp8CzcWrg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 22 Jul 2019 10:36:00 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 1/2] ci: pre-install "file"
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

PiAKPiBUaGlzIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKPiAgIC4vY29uZmlndXJlOiBs
aW5lIDcwNDA6IC91c3IvYmluL2ZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+CgpBY2tlZAoKPiAtLS0K
PiAgLmdpdGxhYi1jaS55bWwgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRs
YWItY2kueW1sCj4gaW5kZXggMzE2YTg2MGRkLi4zMzIxMGNiOWQgMTAwNjQ0Cj4gLS0tIGEvLmdp
dGxhYi1jaS55bWwKPiArKysgYi8uZ2l0bGFiLWNpLnltbAo+IEBAIC00LDcgKzQsNyBAQCBiZWZv
cmVfc2NyaXB0Ogo+ICAgIC0gPgo+ICAgICAgZG5mIGluc3RhbGwgJ2RuZi1jb21tYW5kKGRlYnVn
aW5mby1pbnN0YWxsKScgZ2l0IGxpYnRvb2wgbWFrZSBsaWJhc2FuCj4gICAgICBvcmMtZGV2ZWwK
PiAgICAgIHB5dGhvbjMgcHl0aG9uMy1zaXggcHl0aG9uMy1weXBhcnNpbmcgZ2xpYi1uZXR3b3Jr
aW5nCj4gLSAgICBhc2NpaWRvYyBiemlwMiBtZXNvbiBuaW5qYS1idWlsZAo+ICsgICAgYXNjaWlk
b2MgYnppcDIgbWVzb24gbmluamEtYnVpbGQgZmlsZQo+ICAgICAgZ2xpYjItZGV2ZWwgY2VsdDA1
MS1kZXZlbCBwaXhtYW4tZGV2ZWwgYWxzYS1saWItZGV2ZWwgb3BlbnNzbC1kZXZlbAo+ICAgICAg
bGlianBlZy10dXJiby1kZXZlbAo+ICAgICAgbGliY2FjYXJkLWRldmVsIGN5cnVzLXNhc2wtZGV2
ZWwgbHo0LWRldmVsIG9wdXMtZGV2ZWwKPiAgICAgIGdzdHJlYW1lcjEtZGV2ZWwgZ3N0cmVhbWVy
MS1wbHVnaW5zLWJhc2UtZGV2ZWwKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
