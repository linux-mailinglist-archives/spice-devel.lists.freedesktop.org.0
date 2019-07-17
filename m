Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5AB6BB7B
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 13:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C0C89E50;
	Wed, 17 Jul 2019 11:32:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C19089E50
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:32:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E62CE4E93D
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:32:52 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CBEF160BF4;
 Wed, 17 Jul 2019 11:32:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 12:32:45 +0100
Message-Id: <20190717113245.711-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Wed, 17 Jul 2019 11:32:52 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] websocket: Include proper type
 header
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

aW50dHlwZXMuaCBjb250YWlucyBtYWNybyBmb3IgZm9ybWF0IHN0cmluZyB3aGlsZQpzdGRpbnQu
aCBtb3JlIHNwZWNpZmljYWxseSBjb250YWlucyB0eXBlIGRlZmluaXRpb25zIChsaWtlIHVpbnQ4
X3QpLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Ci0tLQogc2VydmVyL3dlYnNvY2tldC5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3dlYnNvY2tldC5oIGIv
c2VydmVyL3dlYnNvY2tldC5oCmluZGV4IGVjNDUyMDM4Yi4uNDYxOTgzNmE2IDEwMDY0NAotLS0g
YS9zZXJ2ZXIvd2Vic29ja2V0LmgKKysrIGIvc2VydmVyL3dlYnNvY2tldC5oCkBAIC0xOCw3ICsx
OCw3IEBACiAjaWZuZGVmIFdFQlNPQ0tFVF9IXwogI2RlZmluZSBXRUJTT0NLRVRfSF8KIAotI2lu
Y2x1ZGUgPGludHR5cGVzLmg+CisjaW5jbHVkZSA8c3RkaW50Lmg+CiAKICNpbmNsdWRlICJzeXMt
c29ja2V0LmgiCiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
