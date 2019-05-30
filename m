Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7DE2FDA8
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8D26E373;
	Thu, 30 May 2019 14:23:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 581346E369
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0628A308626C
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C4D5B1001DFA;
 Thu, 30 May 2019 14:23:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:52 +0100
Message-Id: <20190530142254.28937-11-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 30 May 2019 14:23:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 11/13] red-channel: Remove unused
 declaration
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
c2VydmVyL3JlZC1jaGFubmVsLmggfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLmggYi9zZXJ2ZXIvcmVkLWNoYW5uZWwu
aAppbmRleCA0YmZkODFlZTEuLmViMTZiZDRiOCAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZC1jaGFu
bmVsLmgKKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLmgKQEAgLTQ3LDcgKzQ3LDYgQEAgdHlwZWRl
ZiBzdHJ1Y3QgTWFpbkNoYW5uZWxDbGllbnQgTWFpbkNoYW5uZWxDbGllbnQ7CiAKIHR5cGVkZWYg
Ym9vbCAoKmNoYW5uZWxfaGFuZGxlX21lc3NhZ2VfcHJvYykoUmVkQ2hhbm5lbENsaWVudCAqcmNj
LCB1aW50MTZfdCB0eXBlLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB1aW50MzJfdCBzaXplLCB2b2lkICptc2cpOwotdHlwZWRlZiBib29sICgqY2hhbm5lbF9j
b25maWd1cmVfc29ja2V0X3Byb2MpKFJlZENoYW5uZWxDbGllbnQgKnJjYyk7CiB0eXBlZGVmIHZv
aWQgKCpjaGFubmVsX3NlbmRfcGlwZV9pdGVtX3Byb2MpKFJlZENoYW5uZWxDbGllbnQgKnJjYywg
UmVkUGlwZUl0ZW0gKml0ZW0pOwogCiB0eXBlZGVmIGJvb2wgKCpjaGFubmVsX2hhbmRsZV9taWdy
YXRlX2ZsdXNoX21hcmtfcHJvYykoUmVkQ2hhbm5lbENsaWVudCAqYmFzZSk7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
