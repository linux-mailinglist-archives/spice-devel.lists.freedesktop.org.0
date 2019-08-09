Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BBD87C9D
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D13F6EE1B;
	Fri,  9 Aug 2019 14:27:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DFCF6EE1B
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CEBE9C08EC0C
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:06 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 317921001DE0;
 Fri,  9 Aug 2019 14:27:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:21 +0100
Message-Id: <20190809142651.2967-4-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 09 Aug 2019 14:27:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 03/33] fixup! usb-redir: define
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

U3R5bGUKLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDE3ICsrKysrKysrKysrLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IGRlMmI1NWVjLi43
ZjlmY2MxNyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNr
ZW5kLmMKQEAgLTIwMCw3ICsyMDAsNyBAQCBzdGF0aWMgaW50IGNvbXBhcmVfZGV2X2xpc3RfZmly
ZV9jYWxsYmFjayhTcGljZVVzYkJhY2tlbmQgKmJlLAogfQogCiBzdGF0aWMgTFJFU1VMVCBzdWJj
bGFzc19wcm9jKEhXTkQgaFduZCwgVUlOVCB1TXNnLCBXUEFSQU0gd1BhcmFtLCBMUEFSQU0gbFBh
cmFtLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgIFVJTlRfUFRSIHVJZFN1YmNsYXNzLCBE
V09SRF9QVFIgZHdSZWZEYXRhKQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICBVSU5UX1BU
UiB1SWRTdWJjbGFzcywgRFdPUkRfUFRSIGR3UmVmRGF0YSkKIHsKICAgICBTcGljZVVzYkJhY2tl
bmQgKmJlID0gKFNwaWNlVXNiQmFja2VuZCAqKWR3UmVmRGF0YTsKICAgICBpZiAodU1zZyA9PSBX
TV9ERVZJQ0VDSEFOR0UgJiYgIWJlLT5yZWRpcmVjdGluZykgewpAQCAtMzA2LDE0ICszMDYsMTYg
QEAgc3RhdGljIGludCBlbmFibGVfaG90cGx1Z19zdXBwb3J0KFNwaWNlVXNiQmFja2VuZCAqYmUs
IGNvbnN0IGNoYXIgKiplcnJvcl9vbl9lbmEKICAgICByZXR1cm4gcmM7CiB9CiAKLXN0YXRpYyBp
bmxpbmUgdm9pZCBzZXRfcmVkaXJlY3RpbmcoU3BpY2VVc2JCYWNrZW5kICpiZSwgZ2Jvb2xlYW4g
b24pIHsKK3N0YXRpYyBpbmxpbmUgdm9pZCBzZXRfcmVkaXJlY3RpbmcoU3BpY2VVc2JCYWNrZW5k
ICpiZSwgZ2Jvb2xlYW4gb24pCit7CiAgICAgLyogbm90aGluZyBvbiBMaW51eCAqLwogfQogCiAj
ZW5kaWYKIAogLyogbG9jayBmdW5jdGlvbnMgZm9yIHVzYnJlZGlyaG9zdCBhbmQgdXNicmVkaXJw
YXJzZXIgKi8KLXN0YXRpYyB2b2lkICp1c2JyZWRpcl9hbGxvY19sb2NrKHZvaWQpIHsKK3N0YXRp
YyB2b2lkICp1c2JyZWRpcl9hbGxvY19sb2NrKHZvaWQpCit7CiAgICAgR011dGV4ICptdXRleDsK
IAogICAgIG11dGV4ID0gZ19uZXcwKEdNdXRleCwgMSk7CkBAIC0zMjIsMjAgKzMyNCwyMyBAQCBz
dGF0aWMgdm9pZCAqdXNicmVkaXJfYWxsb2NfbG9jayh2b2lkKSB7CiAgICAgcmV0dXJuIG11dGV4
OwogfQogCi1zdGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX2xvY2sodm9pZCAqdXNlcl9kYXRhKSB7
CitzdGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX2xvY2sodm9pZCAqdXNlcl9kYXRhKQorewogICAg
IEdNdXRleCAqbXV0ZXggPSB1c2VyX2RhdGE7CiAKICAgICBnX211dGV4X2NsZWFyKG11dGV4KTsK
ICAgICBnX2ZyZWUobXV0ZXgpOwogfQogCi1zdGF0aWMgdm9pZCB1c2JyZWRpcl9sb2NrX2xvY2so
dm9pZCAqdXNlcl9kYXRhKSB7CitzdGF0aWMgdm9pZCB1c2JyZWRpcl9sb2NrX2xvY2sodm9pZCAq
dXNlcl9kYXRhKQorewogICAgIEdNdXRleCAqbXV0ZXggPSB1c2VyX2RhdGE7CiAKICAgICBnX211
dGV4X2xvY2sobXV0ZXgpOwogfQogCi1zdGF0aWMgdm9pZCB1c2JyZWRpcl91bmxvY2tfbG9jayh2
b2lkICp1c2VyX2RhdGEpIHsKK3N0YXRpYyB2b2lkIHVzYnJlZGlyX3VubG9ja19sb2NrKHZvaWQg
KnVzZXJfZGF0YSkKK3sKICAgICBHTXV0ZXggKm11dGV4ID0gdXNlcl9kYXRhOwogCiAgICAgZ19t
dXRleF91bmxvY2sobXV0ZXgpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
