Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8211389192
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 13:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC40089E65;
	Sun, 11 Aug 2019 11:47:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9BD89993
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0AE793091785
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:27 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E92C5D9C9
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:47:26 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 11 Aug 2019 14:47:22 +0300
Message-Id: <20190811114723.22360-2-uril@redhat.com>
In-Reply-To: <20190811114723.22360-1-uril@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Sun, 11 Aug 2019 11:47:27 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH 2/3] test-loop: increment a
 variable outside of spice_assert
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

c3BpY2VfYXNzZXJ0IGlzIGEgbWFjcm8gYW5kIGl0IG1heSBiZSB0aGF0IHZhcmlhYmxlIHdpbGwK
YmUgaW5jcmVtZW50ZWQgdHdpY2UgKGluIHRoZW9yeSwgcG9zc2libHkgbm90IGluIHByYWN0aWNl
KS4KClNpbXBseSBkbyBpdCBvbmUgbGluZSBhYm92ZS4KCkZvdW5kIGJ5IGNvdnNjYW4KClNpZ25l
ZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvdGVzdHMv
dGVzdC1sb29wLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy90ZXN0LWxvb3AuYyBiL3NlcnZl
ci90ZXN0cy90ZXN0LWxvb3AuYwppbmRleCA4MmFmODBhYjMuLjRkZjNhN2QyMCAxMDA2NDQKLS0t
IGEvc2VydmVyL3Rlc3RzL3Rlc3QtbG9vcC5jCisrKyBiL3NlcnZlci90ZXN0cy90ZXN0LWxvb3Au
YwpAQCAtNzgsNyArNzgsOCBAQCBzdGF0aWMgU3BpY2VUaW1lciAqdHdpY2VfdGltZXJzX3JlbW92
ZVsyXSA9IHsgTlVMTCwgTlVMTCB9Owogc3RhdGljIGludCB0d2ljZV9yZW1vdmVfY2FsbGVkID0g
MDsKIHN0YXRpYyB2b2lkIHRpbWVyX25vdF90d2ljZV9yZW1vdmUodm9pZCAqb3BhcXVlKQogewot
ICAgIHNwaWNlX2Fzc2VydCgrK3R3aWNlX3JlbW92ZV9jYWxsZWQgPT0gMSk7CisgICAgKyt0d2lj
ZV9yZW1vdmVfY2FsbGVkOworICAgIHNwaWNlX2Fzc2VydCh0d2ljZV9yZW1vdmVfY2FsbGVkID09
IDEpOwogCiAgICAgLyogZGVsZXRlIHRpbWVycywgc2hvdWxkIG5vdCBoYXZlIGFub3RoZXIgY2Fs
bCAqLwogICAgIGNvcmUtPnRpbWVyX3JlbW92ZSh0d2ljZV90aW1lcnNfcmVtb3ZlWzBdKTsKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
