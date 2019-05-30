Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 460832FDA3
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6156E366;
	Thu, 30 May 2019 14:23:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF29D6E366
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 887D9B0ADF
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:07 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 69B6B1001E86;
 Thu, 30 May 2019 14:23:06 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:47 +0100
Message-Id: <20190530142254.28937-6-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 30 May 2019 14:23:07 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 06/13] red-channel: Inline
 red_channel_pipes_create_batch
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

VGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCBvbmx5IGJ5IHJlZF9jaGFubmVsX3BpcGVzX25ld19hZGQu
CgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0t
CiBzZXJ2ZXIvcmVkLWNoYW5uZWwuYyB8IDIwICsrKystLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9z
ZXJ2ZXIvcmVkLWNoYW5uZWwuYyBiL3NlcnZlci9yZWQtY2hhbm5lbC5jCmluZGV4IDgyZTUyMjM5
NS4uNDg3MmQyODA3IDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwuYworKysgYi9zZXJ2
ZXIvcmVkLWNoYW5uZWwuYwpAQCAtNTk4LDMyICs1OTgsMjcgQEAgc3RhdGljIGJvb2wgcmVkX2No
YW5uZWxfbm9faXRlbV9iZWluZ19zZW50KFJlZENoYW5uZWwgKmNoYW5uZWwpCiAgKiBUT0RPIC0g
aW5saW5lPyBtYWNybz8gcmlnaHQgbm93IHRoaXMgaXMgdGhlIHNpbXBsZXN0IGZyb20gY29kZSBh
bW91bnQKICAqLwogCi10eXBlZGVmIHZvaWQgKCpyY2NfaXRlbV90KShSZWRDaGFubmVsQ2xpZW50
ICpyY2MsIFJlZFBpcGVJdGVtICppdGVtKTsKLQogLyoqCi0gKiByZWRfY2hhbm5lbF9waXBlc19j
cmVhdGVfYmF0Y2g6CisgKiByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkOgogICogQGNoYW5uZWw6
IGEgY2hhbm5lbAogICogQGNyZWF0b3I6IGEgY2FsbGJhY2sgdG8gY3JlYXRlIHBpcGUgaXRlbSAo
bm90IG51bGwpCiAgKiBAZGF0YTogdGhlIGRhdGEgdG8gcGFzcyB0byB0aGUgY3JlYXRvcgotICog
QHBpcGVfYWRkOiBhIGNhbGxiYWNrIHRvIGFkZCBub24tbnVsbCBwaXBlIGl0ZW1zIChub3QgbnVs
bCkKICAqCiAgKiBSZXR1cm5zOiB0aGUgbnVtYmVyIG9mIGFkZGVkIGl0ZW1zCiAgKiovCi1zdGF0
aWMgaW50IHJlZF9jaGFubmVsX3BpcGVzX2NyZWF0ZV9iYXRjaChSZWRDaGFubmVsICpjaGFubmVs
LAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9pdGVtX3QgY3JlYXRv
ciwgdm9pZCAqZGF0YSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmNjX2l0ZW1f
dCBwaXBlX2FkZCkKK2ludCByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkKFJlZENoYW5uZWwgKmNo
YW5uZWwsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9pdGVtX3QgY3Jl
YXRvciwgdm9pZCAqZGF0YSkKIHsKICAgICBSZWRDaGFubmVsQ2xpZW50ICpyY2M7CiAgICAgUmVk
UGlwZUl0ZW0gKml0ZW07CiAgICAgaW50IG51bSA9IDAsIG4gPSAwOwogCiAgICAgc3BpY2VfYXNz
ZXJ0KGNyZWF0b3IgIT0gTlVMTCk7Ci0gICAgc3BpY2VfYXNzZXJ0KHBpcGVfYWRkICE9IE5VTEwp
OwogCiAgICAgRk9SRUFDSF9DTElFTlQoY2hhbm5lbCwgcmNjKSB7CiAgICAgICAgIGl0ZW0gPSAo
KmNyZWF0b3IpKHJjYywgZGF0YSwgbnVtKyspOwogICAgICAgICBpZiAoaXRlbSkgewotICAgICAg
ICAgICAgKCpwaXBlX2FkZCkocmNjLCBpdGVtKTsKKyAgICAgICAgICAgIHJlZF9jaGFubmVsX2Ns
aWVudF9waXBlX2FkZChyY2MsIGl0ZW0pOwogICAgICAgICAgICAgbisrOwogICAgICAgICB9CiAg
ICAgfQpAQCAtNjMxLDEzICs2MjYsNiBAQCBzdGF0aWMgaW50IHJlZF9jaGFubmVsX3BpcGVzX2Ny
ZWF0ZV9iYXRjaChSZWRDaGFubmVsICpjaGFubmVsLAogICAgIHJldHVybiBuOwogfQogCi1pbnQg
cmVkX2NoYW5uZWxfcGlwZXNfbmV3X2FkZChSZWRDaGFubmVsICpjaGFubmVsLAotICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbmV3X3BpcGVfaXRlbV90IGNyZWF0b3IsIHZvaWQgKmRhdGEp
Ci17Ci0gICAgcmV0dXJuIHJlZF9jaGFubmVsX3BpcGVzX2NyZWF0ZV9iYXRjaChjaGFubmVsLCBj
cmVhdG9yLCBkYXRhLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkKTsKLX0KLQogdWludDMyX3QgcmVkX2NoYW5uZWxf
bWF4X3BpcGVfc2l6ZShSZWRDaGFubmVsICpjaGFubmVsKQogewogICAgIFJlZENoYW5uZWxDbGll
bnQgKnJjYzsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
