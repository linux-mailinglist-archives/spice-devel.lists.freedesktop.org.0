Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FC823D97
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 18:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879F689227;
	Mon, 20 May 2019 16:36:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FC389227
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 16:36:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D5023086211
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 16:36:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1BC4F5D719;
 Mon, 20 May 2019 16:36:16 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 20 May 2019 17:36:11 +0100
Message-Id: <20190520163611.2331-2-fziglio@redhat.com>
In-Reply-To: <20190520163611.2331-1-fziglio@redhat.com>
References: <20190520163611.2331-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 20 May 2019 16:36:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common 2/2] recorder: Update
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

UHVsbCB2ZXJzaW9uIHVwZGF0ZSBhbmQgc29tZSBmZWF0dXJlcy4KVmVyc2lvbiB1cGRhdGUgY2hh
bmdlZCBjb3B5cmlnaHQgaW4gZmlsZXMgdG8gTEdQTHYyLCBtb3JlCmNvbXBhdGlibGUgd2l0aCBT
UElDRS4KT25lIG9mIHRoZSBmZWF0dXJlIGlzIHRoZSBzdXBwb3J0IGZvciBhYnNvbHV0ZSB0aW1l
LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0t
LQogY29tbW9uL3JlY29yZGVyIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvY29tbW9uL3JlY29yZGVyIGIvY29tbW9uL3Jl
Y29yZGVyCmluZGV4IDEwYjE3ODcuLmQ1Y2JmNmMgMTYwMDAwCi0tLSBhL2NvbW1vbi9yZWNvcmRl
cgorKysgYi9jb21tb24vcmVjb3JkZXIKQEAgLTEgKzEgQEAKLVN1YnByb2plY3QgY29tbWl0IDEw
YjE3ODc2MmUxZDY2ZDgyYmRkZTc1NDM4NWE2YTYwOGE3MzA2MDcKK1N1YnByb2plY3QgY29tbWl0
IGQ1Y2JmNmNhYmE2MGQ1ODA0MDFjNzJkMGNkMThjMzE2Y2YxYmUyMTEKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
