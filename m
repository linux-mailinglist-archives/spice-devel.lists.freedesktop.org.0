Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FAA9E3EF
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC2489850;
	Tue, 27 Aug 2019 09:23:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB3E89852
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AF10B30832C0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:00 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C620C5D9CC;
 Tue, 27 Aug 2019 09:22:58 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:19 +0100
Message-Id: <20190827092246.10276-3-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 27 Aug 2019 09:23:00 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 02/29] fixup! usb-redir: define
 interfaces to support emulated devices
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

Q29zbWV0aWMgc3R5bGUgZml4ZXMKLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDE3ICsrKysrKysr
KysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmlu
ZGV4IGRlMmI1NWVjLi43ZjlmY2MxNyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysr
IGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTIwMCw3ICsyMDAsNyBAQCBzdGF0aWMgaW50IGNvbXBh
cmVfZGV2X2xpc3RfZmlyZV9jYWxsYmFjayhTcGljZVVzYkJhY2tlbmQgKmJlLAogfQogCiBzdGF0
aWMgTFJFU1VMVCBzdWJjbGFzc19wcm9jKEhXTkQgaFduZCwgVUlOVCB1TXNnLCBXUEFSQU0gd1Bh
cmFtLCBMUEFSQU0gbFBhcmFtLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgIFVJTlRfUFRS
IHVJZFN1YmNsYXNzLCBEV09SRF9QVFIgZHdSZWZEYXRhKQorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBVSU5UX1BUUiB1SWRTdWJjbGFzcywgRFdPUkRfUFRSIGR3UmVmRGF0YSkKIHsKICAg
ICBTcGljZVVzYkJhY2tlbmQgKmJlID0gKFNwaWNlVXNiQmFja2VuZCAqKWR3UmVmRGF0YTsKICAg
ICBpZiAodU1zZyA9PSBXTV9ERVZJQ0VDSEFOR0UgJiYgIWJlLT5yZWRpcmVjdGluZykgewpAQCAt
MzA2LDE0ICszMDYsMTYgQEAgc3RhdGljIGludCBlbmFibGVfaG90cGx1Z19zdXBwb3J0KFNwaWNl
VXNiQmFja2VuZCAqYmUsIGNvbnN0IGNoYXIgKiplcnJvcl9vbl9lbmEKICAgICByZXR1cm4gcmM7
CiB9CiAKLXN0YXRpYyBpbmxpbmUgdm9pZCBzZXRfcmVkaXJlY3RpbmcoU3BpY2VVc2JCYWNrZW5k
ICpiZSwgZ2Jvb2xlYW4gb24pIHsKK3N0YXRpYyBpbmxpbmUgdm9pZCBzZXRfcmVkaXJlY3Rpbmco
U3BpY2VVc2JCYWNrZW5kICpiZSwgZ2Jvb2xlYW4gb24pCit7CiAgICAgLyogbm90aGluZyBvbiBM
aW51eCAqLwogfQogCiAjZW5kaWYKIAogLyogbG9jayBmdW5jdGlvbnMgZm9yIHVzYnJlZGlyaG9z
dCBhbmQgdXNicmVkaXJwYXJzZXIgKi8KLXN0YXRpYyB2b2lkICp1c2JyZWRpcl9hbGxvY19sb2Nr
KHZvaWQpIHsKK3N0YXRpYyB2b2lkICp1c2JyZWRpcl9hbGxvY19sb2NrKHZvaWQpCit7CiAgICAg
R011dGV4ICptdXRleDsKIAogICAgIG11dGV4ID0gZ19uZXcwKEdNdXRleCwgMSk7CkBAIC0zMjIs
MjAgKzMyNCwyMyBAQCBzdGF0aWMgdm9pZCAqdXNicmVkaXJfYWxsb2NfbG9jayh2b2lkKSB7CiAg
ICAgcmV0dXJuIG11dGV4OwogfQogCi1zdGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX2xvY2sodm9p
ZCAqdXNlcl9kYXRhKSB7CitzdGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX2xvY2sodm9pZCAqdXNl
cl9kYXRhKQorewogICAgIEdNdXRleCAqbXV0ZXggPSB1c2VyX2RhdGE7CiAKICAgICBnX211dGV4
X2NsZWFyKG11dGV4KTsKICAgICBnX2ZyZWUobXV0ZXgpOwogfQogCi1zdGF0aWMgdm9pZCB1c2Jy
ZWRpcl9sb2NrX2xvY2sodm9pZCAqdXNlcl9kYXRhKSB7CitzdGF0aWMgdm9pZCB1c2JyZWRpcl9s
b2NrX2xvY2sodm9pZCAqdXNlcl9kYXRhKQorewogICAgIEdNdXRleCAqbXV0ZXggPSB1c2VyX2Rh
dGE7CiAKICAgICBnX211dGV4X2xvY2sobXV0ZXgpOwogfQogCi1zdGF0aWMgdm9pZCB1c2JyZWRp
cl91bmxvY2tfbG9jayh2b2lkICp1c2VyX2RhdGEpIHsKK3N0YXRpYyB2b2lkIHVzYnJlZGlyX3Vu
bG9ja19sb2NrKHZvaWQgKnVzZXJfZGF0YSkKK3sKICAgICBHTXV0ZXggKm11dGV4ID0gdXNlcl9k
YXRhOwogCiAgICAgZ19tdXRleF91bmxvY2sobXV0ZXgpOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
