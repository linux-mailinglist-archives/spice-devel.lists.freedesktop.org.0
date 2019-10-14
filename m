Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5C0D6180
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 13:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D556889834;
	Mon, 14 Oct 2019 11:40:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61EC89834
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:40:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 26971801674
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:40:45 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A69815DA8D
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:40:44 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 13:40:42 +0200
Message-Id: <20191014114043.31988-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Mon, 14 Oct 2019 11:40:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH v2 1/2] docs: include protocol and for-newbies
 documents
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKT25seSBieSBidWlsZGluZyBh
bmQgc2hhcmluZyB0aGUgZG9jdW1lbnRzIHdlIHdpbGwgYmUgYWJsZSB0byBnZXQgdGhlbQp1cCB0
byBkYXRlLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNv
bT4KQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIGRv
Y3MvbWVzb24uYnVpbGQgfCAxNCArKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZG9jcy9tZXNvbi5idWls
ZCBiL2RvY3MvbWVzb24uYnVpbGQKaW5kZXggODI4NjRiYjguLmNlMDMzNGMwIDEwMDY0NAotLS0g
YS9kb2NzL21lc29uLmJ1aWxkCisrKyBiL2RvY3MvbWVzb24uYnVpbGQKQEAgLTEsMTEgKzEsMTcg
QEAKK2FzY2lpZG9jX2ZpbGVzID0gWydzcGljZV9mb3JfbmV3YmllcycsCisgICAgICAgICAgICAg
ICAgICAnc3BpY2VfcHJvdG9jb2wnLAorICAgICAgICAgICAgICAgICAgJ3NwaWNlX3N0eWxlJywK
KyAgICAgICAgICAgICAgICAgICdzcGljZV90aHJlYWRpbmdfbW9kZWwnLAorICAgICAgICAgICAg
ICAgICAgJ3ZkX2ludGVyZmFjZXMnXQorCiBpZiBnZXRfb3B0aW9uKCdtYW51YWwnKQogICBhc2Np
aWRvYyA9IGZpbmRfcHJvZ3JhbSgnYXNjaWlkb2MnLCByZXF1aXJlZCA6IGZhbHNlKQogICBpZiBh
c2NpaWRvYy5mb3VuZCgpCiAgICAgYXNjaWlkb2NfYXJncyA9IFsnLWEnLCAnZGF0YS11cmknLCAn
LWEnLCAnaWNvbnMnLCAnLWEnLCAndG9jJ10KLSAgICBmb3JlYWNoIGRvYyA6IFsnc3R5bGUnLCAn
dGhyZWFkaW5nX21vZGVsJ10KLSAgICAgIGN1c3RvbV90YXJnZXQoJ3NwaWNlX0AwQC5odG1sJy5m
b3JtYXQoZG9jKSwKLSAgICAgICAgICAgICAgICAgICAgaW5wdXQgOiAnc3BpY2VfQDBALnR4dCcu
Zm9ybWF0KGRvYyksCi0gICAgICAgICAgICAgICAgICAgIG91dHB1dCA6ICdzcGljZV9AMEAuaHRt
bCcuZm9ybWF0KGRvYyksCisgICAgZm9yZWFjaCBkb2MgOiBhc2NpaWRvY19maWxlcworICAgICAg
Y3VzdG9tX3RhcmdldCgnQDBALmh0bWwnLmZvcm1hdChkb2MpLAorICAgICAgICAgICAgICAgICAg
ICBpbnB1dCA6ICdAMEAudHh0Jy5mb3JtYXQoZG9jKSwKKyAgICAgICAgICAgICAgICAgICAgb3V0
cHV0IDogJ0AwQC5odG1sJy5mb3JtYXQoZG9jKSwKICAgICAgICAgICAgICAgICAgICAgYnVpbGRf
YnlfZGVmYXVsdDogdHJ1ZSwKICAgICAgICAgICAgICAgICAgICAgY29tbWFuZCA6IFthc2NpaWRv
YywgJy1uJywgYXNjaWlkb2NfYXJncywgJy1vJywgJ0BPVVRQVVRAJywgJ0BJTlBVVEAnXSkKICAg
ICBlbmRmb3JlYWNoCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
