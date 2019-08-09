Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7466487CA9
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AC46EE25;
	Fri,  9 Aug 2019 14:27:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248896EE2B
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C4FE48E90C
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:45 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6D9D41001B02;
 Fri,  9 Aug 2019 14:27:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:31 +0100
Message-Id: <20190809142651.2967-14-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 09 Aug 2019 14:27:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 13/33] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

TWFrZSBzb21lIHBhcmFtZXRlciBjb25zdGFudC4KTWFrZSBjbGVhciB0aGV5IGRvbid0IGNoYW5n
ZSB0aGUgcGFzc2VkIHZhbHVlCi0tLQogc3JjL2NkLXNjc2kuYyB8IDEwICsrKysrLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvc3JjL2NkLXNjc2kuYyBiL3NyYy9jZC1zY3NpLmMKaW5kZXggOWM1NjE2YjAuLmRiYjc4ZTU0
IDEwMDY0NAotLS0gYS9zcmMvY2Qtc2NzaS5jCisrKyBiL3NyYy9jZC1zY3NpLmMKQEAgLTQzMiwx
MiArNDMyLDEyIEBAIHZvaWQgY2Rfc2NzaV90YXJnZXRfZnJlZShDZFNjc2lUYXJnZXQgKnNjc2lf
dGFyZ2V0KQogCiAvKiBTQ1NJIERldmljZSAqLwogCi1zdGF0aWMgaW5saW5lIGdib29sZWFuIGNk
X3Njc2lfdGFyZ2V0X2x1bl9sZWdhbChDZFNjc2lUYXJnZXQgKnN0LCB1aW50MzJfdCBsdW4pCitz
dGF0aWMgaW5saW5lIGdib29sZWFuIGNkX3Njc2lfdGFyZ2V0X2x1bl9sZWdhbChjb25zdCBDZFNj
c2lUYXJnZXQgKnN0LCB1aW50MzJfdCBsdW4pCiB7CiAgICAgcmV0dXJuIChsdW4gPCBzdC0+bWF4
X2x1bnMpID8gVFJVRSA6IEZBTFNFOwogfQogCi1zdGF0aWMgaW5saW5lIGdib29sZWFuIGNkX3Nj
c2lfdGFyZ2V0X2x1bl9yZWFsaXplZChDZFNjc2lUYXJnZXQgKnN0LCB1aW50MzJfdCBsdW4pCitz
dGF0aWMgaW5saW5lIGdib29sZWFuIGNkX3Njc2lfdGFyZ2V0X2x1bl9yZWFsaXplZChjb25zdCBD
ZFNjc2lUYXJnZXQgKnN0LCB1aW50MzJfdCBsdW4pCiB7CiAgICAgcmV0dXJuIChzdC0+bnVtX2x1
bnMgPT0gMCB8fCAhc3QtPnVuaXRzW2x1bl0ucmVhbGl6ZWQpID8gRkFMU0UgOiBUUlVFOwogfQpA
QCAtNzQxLDcgKzc0MSw3IEBAIHN0YXRpYyB2b2lkIHN0cnBhZGNweShjaGFyICpidWYsIGludCBi
dWZfc2l6ZSwgY29uc3QgY2hhciAqc3RyLCBjaGFyIHBhZCkKIAogLyogU0NTSSBDREIgKi8KIAot
c3RhdGljIGludCBzY3NpX2NkYl9sZW5ndGgodWludDhfdCAqY2RiKQorc3RhdGljIGludCBzY3Np
X2NkYl9sZW5ndGgoY29uc3QgdWludDhfdCAqY2RiKQogewogICAgIGludCBjZGJfbGVuOwogCkBA
IC03NjUsNyArNzY1LDcgQEAgc3RhdGljIGludCBzY3NpX2NkYl9sZW5ndGgodWludDhfdCAqY2Ri
KQogICAgIHJldHVybiBjZGJfbGVuOwogfQogCi1zdGF0aWMgdWludDY0X3Qgc2NzaV9jZGJfbGJh
KHVpbnQ4X3QgKmNkYiwgaW50IGNkYl9sZW4pCitzdGF0aWMgdWludDY0X3Qgc2NzaV9jZGJfbGJh
KGNvbnN0IHVpbnQ4X3QgKmNkYiwgaW50IGNkYl9sZW4pCiB7CiAgICAgdWludDY0X3QgbGJhOwog
CkBAIC03OTgsNyArNzk4LDcgQEAgc3RhdGljIHVpbnQ2NF90IHNjc2lfY2RiX2xiYSh1aW50OF90
ICpjZGIsIGludCBjZGJfbGVuKQogICAgIHJldHVybiBsYmE7CiB9CiAKLXN0YXRpYyB1aW50MzJf
dCBzY3NpX2NkYl94ZmVyX2xlbmd0aCh1aW50OF90ICpjZGIsIGludCBjZGJfbGVuKQorc3RhdGlj
IHVpbnQzMl90IHNjc2lfY2RiX3hmZXJfbGVuZ3RoKGNvbnN0IHVpbnQ4X3QgKmNkYiwgaW50IGNk
Yl9sZW4pCiB7CiAgICAgdWludDMyX3QgbGVuOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
