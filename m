Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A65EFD0AF8
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2019 11:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16FF89B12;
	Wed,  9 Oct 2019 09:23:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266E989B12
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BAF9730BBE64
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Oct 2019 09:23:08 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 95B1360923;
 Wed,  9 Oct 2019 09:23:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  9 Oct 2019 10:22:57 +0100
Message-Id: <20191009092302.15025-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 09 Oct 2019 09:23:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v3 0/5] Multiple improvements for
 Smartcard code
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

TXVsdGlwbGUgZml4ZXMgYW5kIGF1dG9tYXRpYyB0ZXN0IG9mIHRoZSBkZXZpY2UvY2hhbm5lbC4K
SW1wcm92ZSBwcmV2aW91cyBzZXJpZXMuCk1vc3QgZml4ZXMgY2FtZSBmcm9tIGF1dG9tYXRpYyB0
ZXN0LgoKQ2hhbmdlcyBzaW5jZSB2MjoKLSB1cGRhdGUgc29tZSBjb21tZW50czsKLSBzcGxpdCBv
bmUgZml4IGludG8gMi4KCkZyZWRpYW5vIFppZ2xpbyAoNSk6CiAgc21hcnRjYXJkOiBGaXggY29w
eWluZyByZW1haW5pbmcgcmVxdWVzdAogIHNtYXJ0Y2FyZDogRml4IHBhcnNpbmcgbXVsdGlwbGUg
bWVzc2FnZXMgZnJvbSB0aGUgZGV2aWNlCiAgdGVzdC1zdHJlYW0tZGV2aWNlOiBGYWN0b3Igb3V0
IFZNQyBlbXVsYXRpb24KICB0ZXN0LXNtYXJ0Y2FyZDogQWRkIHRlc3QgZm9yIFNtYXJ0Y2FyZCBk
ZXZpY2UKICB0ZXN0LXNtYXJkY2FyZDogSW1wcm92ZSB0ZXN0IGNvdmVyYWdlCgogc2VydmVyL3Nt
YXJ0Y2FyZC5jICAgICAgICAgICAgICAgIHwgIDI3ICsrLQogc2VydmVyL3Rlc3RzLy5naXRpZ25v
cmUgICAgICAgICAgIHwgICAxICsKIHNlcnZlci90ZXN0cy9NYWtlZmlsZS5hbSAgICAgICAgICB8
ICAgNiArCiBzZXJ2ZXIvdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgfCAgIDYgKwogc2VydmVy
L3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMgICAgIHwgMzc5ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogc2VydmVyL3Rlc3RzL3Rlc3Qtc3RyZWFtLWRldmljZS5jIHwgMjI0ICsrKysrLS0t
LS0tLS0tLS0tLQogc2VydmVyL3Rlc3RzL3ZtYy1lbXUuYyAgICAgICAgICAgIHwgMTI0ICsrKysr
KysrKysKIHNlcnZlci90ZXN0cy92bWMtZW11LmggICAgICAgICAgICB8ICA1MSArKysrCiA4IGZp
bGVzIGNoYW5nZWQsIDY0OCBpbnNlcnRpb25zKCspLCAxNzAgZGVsZXRpb25zKC0pCiBjcmVhdGUg
bW9kZSAxMDA2NDQgc2VydmVyL3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBzZXJ2ZXIvdGVzdHMvdm1jLWVtdS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3Rl
c3RzL3ZtYy1lbXUuaAoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
