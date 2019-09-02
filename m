Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F8A5B11
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E03689191;
	Mon,  2 Sep 2019 16:04:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94B489183
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 958263082E10
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:52 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F2075D9C3
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:51 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 18:04:45 +0200
Message-Id: <20190902160449.19589-3-victortoso@redhat.com>
In-Reply-To: <20190902160449.19589-1-victortoso@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 02 Sep 2019 16:04:52 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 2/6] display-gst: rely on SpiceSession
 init of GStreamer
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhpcyBtZWFucyB3ZSBjYW4g
ZHJvcCBnc3R2aWRlb19pbml0KCkgZnVuY3Rpb24gYW5kIHJlcGxhY2UgaXRzIGNhbGxzCndpdGgg
Z3N0X2lzX2luaXRpYWxpemVkKCkuCgpTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9y
dG9zb0ByZWRoYXQuY29tPgotLS0KIHNyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgfCAyMyArKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTgg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyBiL3Ny
Yy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKaW5kZXggNmZjY2Y2Mi4uYTM0YjVkMCAxMDA2NDQKLS0t
IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LWdz
dC5jCkBAIC03NDgsMjIgKzc0OCw2IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV9nc3RfZGVjb2Rl
cl9xdWV1ZV9mcmFtZShWaWRlb0RlY29kZXIgKnZpZGVvX2RlY29kZXIsCiAgICAgcmV0dXJuIFRS
VUU7CiB9CiAKLXN0YXRpYyBnYm9vbGVhbiBnc3R2aWRlb19pbml0KHZvaWQpCi17Ci0gICAgc3Rh
dGljIGludCBzdWNjZXNzID0gMDsKLSAgICBpZiAoIXN1Y2Nlc3MpIHsKLSAgICAgICAgR0Vycm9y
ICplcnIgPSBOVUxMOwotICAgICAgICBpZiAoZ3N0X2luaXRfY2hlY2soTlVMTCwgTlVMTCwgJmVy
cikpIHsKLSAgICAgICAgICAgIHN1Y2Nlc3MgPSAxOwotICAgICAgICB9IGVsc2UgewotICAgICAg
ICAgICAgc3BpY2Vfd2FybmluZygiRGlzYWJsaW5nIEdTdHJlYW1lciB2aWRlbyBzdXBwb3J0OiAl
cyIsIGVyci0+bWVzc2FnZSk7Ci0gICAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnIpOwotICAg
ICAgICAgICAgc3VjY2VzcyA9IC0xOwotICAgICAgICB9Ci0gICAgfQotICAgIHJldHVybiBzdWNj
ZXNzID4gMDsKLX0KLQogR19HTlVDX0lOVEVSTkFMCiBWaWRlb0RlY29kZXIqIGNyZWF0ZV9nc3Ry
ZWFtZXJfZGVjb2RlcihpbnQgY29kZWNfdHlwZSwgZGlzcGxheV9zdHJlYW0gKnN0cmVhbSkKIHsK
QEAgLTc3MSw3ICs3NTUsNyBAQCBWaWRlb0RlY29kZXIqIGNyZWF0ZV9nc3RyZWFtZXJfZGVjb2Rl
cihpbnQgY29kZWNfdHlwZSwgZGlzcGxheV9zdHJlYW0gKnN0cmVhbSkKIAogICAgIGdfcmV0dXJu
X3ZhbF9pZl9mYWlsKFZBTElEX1ZJREVPX0NPREVDX1RZUEUoY29kZWNfdHlwZSksIE5VTEwpOwog
Ci0gICAgaWYgKGdzdHZpZGVvX2luaXQoKSkgeworICAgIGlmIChnc3RfaXNfaW5pdGlhbGl6ZWQo
KSkgewogICAgICAgICBkZWNvZGVyID0gZ19uZXcwKFNwaWNlR3N0RGVjb2RlciwgMSk7CiAgICAg
ICAgIGRlY29kZXItPmJhc2UuZGVzdHJveSA9IHNwaWNlX2dzdF9kZWNvZGVyX2Rlc3Ryb3k7CiAg
ICAgICAgIGRlY29kZXItPmJhc2UucmVzY2hlZHVsZSA9IHNwaWNlX2dzdF9kZWNvZGVyX3Jlc2No
ZWR1bGU7CkBAIC04MjAsNyArODA0LDEwIEBAIGdib29sZWFuIGdzdHZpZGVvX2hhc19jb2RlYyhp
bnQgY29kZWNfdHlwZSkKICAgICBHc3RDYXBzICpjYXBzOwogICAgIEdzdEVsZW1lbnRGYWN0b3J5
TGlzdFR5cGUgdHlwZTsKIAotICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGdzdHZpZGVvX2luaXQo
KSwgRkFMU0UpOworICAgIGlmICghZ3N0X2lzX2luaXRpYWxpemVkKCkpIHsKKyAgICAgICAgcmV0
dXJuIEZBTFNFOworICAgIH0KKwogICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKFZBTElEX1ZJREVP
X0NPREVDX1RZUEUoY29kZWNfdHlwZSksIEZBTFNFKTsKIAogICAgIHR5cGUgPSBHU1RfRUxFTUVO
VF9GQUNUT1JZX1RZUEVfREVDT0RFUiB8Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
