Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C904B6FE7C
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 13:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5911E89C1A;
	Mon, 22 Jul 2019 11:08:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDB289BF4
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:08:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B00FE30860C6
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:08:48 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A4C945D704;
 Mon, 22 Jul 2019 11:08:47 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 12:08:40 +0100
Message-Id: <20190722110841.31711-2-fziglio@redhat.com>
In-Reply-To: <20190722110841.31711-1-fziglio@redhat.com>
References: <20190722110841.31711-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 22 Jul 2019 11:08:48 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/3] glz-encoder: Remove useless
 __packed__ attribute
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

VGhlc2Ugc3RydWN0dXJlIGNvbnRhaW4gb25seSBieXRlcywgbm8gbmVlZCBmb3IgdGhpcyBhdHRy
aWJ1dGUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBzZXJ2ZXIvZ2x6LWVuY29kZXIuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9nbHot
ZW5jb2Rlci5jIGIvc2VydmVyL2dsei1lbmNvZGVyLmMKaW5kZXggMzQxMjk0MDM1Li5lZTlkOTVh
ZTkgMTAwNjQ0Ci0tLSBhL3NlcnZlci9nbHotZW5jb2Rlci5jCisrKyBiL3NlcnZlci9nbHotZW5j
b2Rlci5jCkBAIC0xNjgsMTggKzE2OCwxOCBAQCB2b2lkIGdsel9lbmNvZGVyX2Rlc3Ryb3koR2x6
RW5jb2RlckNvbnRleHQgKm9wYXF1ZV9lbmNvZGVyKQogCiB0eXBlZGVmIHVpbnQ4X3QgQllURTsK
IAotdHlwZWRlZiBzdHJ1Y3QgX19hdHRyaWJ1dGVfXyAoKF9fcGFja2VkX18pKSBvbmVfYnl0ZV9w
aXhlbF90IHsKK3R5cGVkZWYgc3RydWN0IG9uZV9ieXRlX3BpeGVsX3QgewogICAgIEJZVEUgYTsK
IH0gb25lX2J5dGVfcGl4ZWxfdDsKIAotdHlwZWRlZiBzdHJ1Y3QgX19hdHRyaWJ1dGVfXyAoKF9f
cGFja2VkX18pKSByZ2IzMl9waXhlbF90IHsKK3R5cGVkZWYgc3RydWN0IHJnYjMyX3BpeGVsX3Qg
ewogICAgIEJZVEUgYjsKICAgICBCWVRFIGc7CiAgICAgQllURSByOwogICAgIEJZVEUgcGFkOwog
fSByZ2IzMl9waXhlbF90OwogCi10eXBlZGVmIHN0cnVjdCBfX2F0dHJpYnV0ZV9fICgoX19wYWNr
ZWRfXykpIHJnYjI0X3BpeGVsX3QgewordHlwZWRlZiBzdHJ1Y3QgcmdiMjRfcGl4ZWxfdCB7CiAg
ICAgQllURSBiOwogICAgIEJZVEUgZzsKICAgICBCWVRFIHI7Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
