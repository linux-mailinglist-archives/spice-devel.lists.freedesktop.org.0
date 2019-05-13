Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B66BC1B321
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 11:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE37899EA;
	Mon, 13 May 2019 09:46:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D366899EA
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 09:46:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C54E0356E4
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 09:46:01 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9553B5D720;
 Mon, 13 May 2019 09:46:00 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 13 May 2019 10:45:54 +0100
Message-Id: <20190513094556.14035-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 13 May 2019 09:46:01 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 1/3] build-sys: post-release
 version bump 0.14.1
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
Y29uZmlndXJlLmFjIHwgMiArLQogbWVzb24uYnVpbGQgIHwgMiArLQogMiBmaWxlcyBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29uZmlndXJl
LmFjIGIvY29uZmlndXJlLmFjCmluZGV4IGI1NmY0MTQuLmJjM2UzM2YgMTAwNjQ0Ci0tLSBhL2Nv
bmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTIsNyArMiw3IEBAIEFDX1BSRVJFUShb
Mi41N10pCiAKIG00X2RlZmluZShbU1BJQ0VfTUFKT1JdLCAwKQogbTRfZGVmaW5lKFtTUElDRV9N
SU5PUl0sIDE0KQotbTRfZGVmaW5lKFtTUElDRV9NSUNST10sIDApCittNF9kZWZpbmUoW1NQSUNF
X01JQ1JPXSwgMSkKIAogQUNfSU5JVChzcGljZS1wcm90b2NvbCwgW1NQSUNFX01BSk9SLlNQSUNF
X01JTk9SLlNQSUNFX01JQ1JPXSwgW10sIHNwaWNlLXByb3RvY29sKQogCmRpZmYgLS1naXQgYS9t
ZXNvbi5idWlsZCBiL21lc29uLmJ1aWxkCmluZGV4IGY5ZGE0YWMuLjc1ZTY0YzQgMTAwNjQ0Ci0t
LSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC0yLDcgKzIsNyBAQAogIyBwcm9q
ZWN0IGRlZmluaXRpb24KICMKIHByb2plY3QoJ3NwaWNlLXByb3RvY29sJywgJ2MnLAotICAgICAg
ICB2ZXJzaW9uIDogJzAuMTQuMCcsCisgICAgICAgIHZlcnNpb24gOiAnMC4xNC4xJywKICAgICAg
ICAgbGljZW5zZSA6ICdCU0QnLAogICAgICAgICBtZXNvbl92ZXJzaW9uIDogJz49IDAuNDEuMCcp
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
