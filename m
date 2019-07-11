Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A2F65782
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1EC6E222;
	Thu, 11 Jul 2019 13:01:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60426E227
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 880763082DD3
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:01:02 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC9875C220;
 Thu, 11 Jul 2019 13:01:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:52 +0100
Message-Id: <20190711130054.17867-5-fziglio@redhat.com>
In-Reply-To: <20190711130054.17867-1-fziglio@redhat.com>
References: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 11 Jul 2019 13:01:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 5/7] usb-device-manager: Minor style
 fixes
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

Rml4IHNwYWNlLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Ci0tLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IGRiYjc4Mzkw
Li5jMjcwZTFjZiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3Ny
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYwpAQCAtMTcxNiw3ICsxNzE2LDcgQEAgdm9pZCBfdXNiZGtf
aGlkZXJfdXBkYXRlKFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbWFuYWdlcikKICAgICAgICAgcmV0
dXJuOwogICAgIH0KIAotICAgIGlmKF91c2Jka19oaWRlcl9wcmVwYXJlKG1hbmFnZXIpKSB7Cisg
ICAgaWYgKF91c2Jka19oaWRlcl9wcmVwYXJlKG1hbmFnZXIpKSB7CiAgICAgICAgIHVzYmRrX2Fw
aV9zZXRfaGlkZV9ydWxlcyhwcml2LT51c2Jka19hcGksCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBwcml2LT51c2Jka19oaWRlcl9oYW5kbGUsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwcml2LT5hdXRvX2Nvbm5lY3RfZmlsdGVyKTsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
