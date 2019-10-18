Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCDCDCA54
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 18:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D596EAA5;
	Fri, 18 Oct 2019 16:08:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494B76EAA5
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 16:08:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E66302BA0
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 16:08:30 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C69C95C1B5;
 Fri, 18 Oct 2019 16:08:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 17:08:25 +0100
Message-Id: <20191018160825.24560-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Fri, 18 Oct 2019 16:08:30 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] quic: Use G_UNLIKELY in some hot
 paths
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

VGhlIGJ1ZmZlcnMgcHJvdmlkZWQgc2hvdWxkIGJlIGJpZyBlbm91Z2ggdG8gYXZvaWQgdG8gYXNr
CmZvciBtb3JlIHNwYWNlIG11Y2ggb2Z0ZW4uCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBjb21tb24vcXVpYy5jIHwgNCArKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2NvbW1vbi9xdWljLmMgYi9jb21tb24vcXVpYy5jCmluZGV4IGUxYzQzOWYuLmQyNGEwZjYgMTAw
NjQ0Ci0tLSBhL2NvbW1vbi9xdWljLmMKKysrIGIvY29tbW9uL3F1aWMuYwpAQCAtMzk2LDcgKzM5
Niw3IEBAIHN0YXRpYyB2b2lkIG1vcmVfaW9fd29yZHMoRW5jb2RlciAqZW5jb2RlcikKIAogc3Rh
dGljIGlubGluZSB2b2lkIHdyaXRlX2lvX3dvcmQoRW5jb2RlciAqZW5jb2RlcikKIHsKLSAgICBp
ZiAoZW5jb2Rlci0+aW9fbm93ID09IGVuY29kZXItPmlvX2VuZCkgeworICAgIGlmIChHX1VOTElL
RUxZKGVuY29kZXItPmlvX25vdyA9PSBlbmNvZGVyLT5pb19lbmQpKSB7CiAgICAgICAgIG1vcmVf
aW9fd29yZHMoZW5jb2Rlcik7CiAgICAgfQogICAgICooZW5jb2Rlci0+aW9fbm93KyspID0gR1VJ
TlQzMl9UT19MRShlbmNvZGVyLT5pb193b3JkKTsKQEAgLTQ0NCw3ICs0NDQsNyBAQCBzdGF0aWMg
aW5saW5lIHZvaWQgZmx1c2goRW5jb2RlciAqZW5jb2RlcikKIAogc3RhdGljIGlubGluZSB2b2lk
IHJlYWRfaW9fd29yZChFbmNvZGVyICplbmNvZGVyKQogewotICAgIGlmIChlbmNvZGVyLT5pb19u
b3cgPT0gZW5jb2Rlci0+aW9fZW5kKSB7CisgICAgaWYgKEdfVU5MSUtFTFkoZW5jb2Rlci0+aW9f
bm93ID09IGVuY29kZXItPmlvX2VuZCkpIHsKICAgICAgICAgbW9yZV9pb193b3JkcyhlbmNvZGVy
KTsKICAgICB9CiAgICAgaWYgKHNwaWNlX2V4dHJhX2NoZWNrcykgewotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
