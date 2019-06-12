Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC344424FE
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 14:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6EE8928B;
	Wed, 12 Jun 2019 12:07:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638FF8928B
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 12:07:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F22A1300B916
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 12:07:07 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 52D6366604;
 Wed, 12 Jun 2019 12:07:05 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 12 Jun 2019 13:06:59 +0100
Message-Id: <20190612120659.10083-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 12 Jun 2019 12:07:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] build: Disable Celt support by
 default
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

V2Ugc3RhcnRlZCBkaXNhYmxpbmcgQ2VsdCBzdXBwb3J0IG1ha2luZyB0aGUgb3B0aW9uIHJlcXVp
cmVkLgpBZnRlciAyIHJlbGVhc2VzIHN0YXJ0IG1ha2luZyBpdCBkaXNhYmxlZCB1bmxlc3MgZXhw
bGljaXRseQplbmFibGVkLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+Ci0tLQogbTQvc3BpY2UtZGVwcy5tNCAgfCAxNCArKy0tLS0tLS0tLS0tLQog
bWVzb25fb3B0aW9ucy50eHQgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbTQvc3BpY2UtZGVwcy5tNCBiL200L3Nw
aWNlLWRlcHMubTQKaW5kZXggMDIyMzBkZC4uMTIxNDM0MSAxMDA2NDQKLS0tIGEvbTQvc3BpY2Ut
ZGVwcy5tNAorKysgYi9tNC9zcGljZS1kZXBzLm00CkBAIC0xMDEsMjEgKzEwMSwxMSBAQCBBQ19E
RUZVTihbU1BJQ0VfQ0hFQ0tfU01BUlRDQVJEXSwgWwogQUNfREVGVU4oW1NQSUNFX0NIRUNLX0NF
TFQwNTFdLCBbCiAgICAgQUNfQVJHX0VOQUJMRShbY2VsdDA1MV0sCiAgICAgICAgIEFTX0hFTFBf
U1RSSU5HKFstLWVuYWJsZS1jZWx0MDUxXSwKLSAgICAgICAgICAgICAgICAgICAgICAgW0VuYWJs
ZSBjZWx0MDUxIGF1ZGlvIGNvZGVjIEA8OkBkZWZhdWx0PWF1dG9AOj5AXSksLAotICAgICAgICBb
ZW5hYmxlX2NlbHQwNTE9ImF1dG8iXSkKKyAgICAgICAgICAgICAgICAgICAgICAgW0VuYWJsZSBj
ZWx0MDUxIGF1ZGlvIGNvZGVjIEA8OkBkZWZhdWx0PW5vQDo+QF0pLCwKKyAgICAgICAgW2VuYWJs
ZV9jZWx0MDUxPSJubyJdKQogCiAgICAgaWYgdGVzdCAieCRlbmFibGVfY2VsdDA1MSIgIT0gInhu
byI7IHRoZW4KICAgICAgICAgUEtHX0NIRUNLX01PRFVMRVMoW0NFTFQwNTFdLCBbY2VsdDA1MSA+
PSAwLjUuMS4xXSwgW2hhdmVfY2VsdDA1MT15ZXNdLCBbaGF2ZV9jZWx0MDUxPW5vXSkKLSAgICAg
ICAgaWYgdGVzdCAieCRlbmFibGVfY2VsdDA1MSIgPSAieGF1dG8iOyB0aGVuCi0gICAgICAgICAg
ICBpZiB0ZXN0ICJ4JGhhdmVfY2VsdDA1MSIgPSAieHllcyI7IHRoZW4KLSAgICAgICAgICAgICAg
ICBBQ19NU0dfRVJST1IobTRfbm9ybWFsaXplKFsKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgQ0VMVCAwLjUuMS54IGhhcyBiZWVuIGRldGVjdGVkLCBcCi0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJ1dCBDRUxUIHN1cHBvcnQgaXMgbm8gbG9uZ2VyIGF1dG9tYXRpY2Fs
bHkgZW5hYmxlZCBieSBkZWZhdWx0LiBcCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFBsZWFzZSBleHBsaWNpdGx5IHVzZSAtLWVuYWJsZS1jZWx0MDUxIG9yIC0tZGlzYWJsZS1jZWx0
MDUxCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIF0pKQotICAgICAgICAgICAgZmkKLSAg
ICAgICAgICAgICMgaGF2ZV9jZWx0MDUxIGlzICJubyIgaGVyZSwgc28gY2VsdCBpcyBkaXNhYmxl
ZCBieSBkZWZhdWx0Ci0gICAgICAgIGZpCiAgICAgICAgIGlmIHRlc3QgIngkZW5hYmxlX2NlbHQw
NTEiID0gInh5ZXMiICYmIHRlc3QgIngkaGF2ZV9jZWx0MDUxIiAhPSAieHllcyI7IHRoZW4KICAg
ICAgICAgICAgIEFDX01TR19FUlJPUihbIi0tZW5hYmxlLWNlbHQwNTEgaGFzIGJlZW4gc3BlY2lm
aWVkLCBidXQgQ0VMVCAwLjUuMSBpcyBtaXNzaW5nIl0pCiAgICAgICAgIGZpCmRpZmYgLS1naXQg
YS9tZXNvbl9vcHRpb25zLnR4dCBiL21lc29uX29wdGlvbnMudHh0CmluZGV4IDdlOWU3MDQuLmM5
ODI3MzYgMTAwNjQ0Ci0tLSBhL21lc29uX29wdGlvbnMudHh0CisrKyBiL21lc29uX29wdGlvbnMu
dHh0CkBAIC0xMiw2ICsxMiw3IEBAIG9wdGlvbignZXh0cmEtY2hlY2tzJywKIAogb3B0aW9uKCdj
ZWx0MDUxJywKICAgICB0eXBlIDogJ2ZlYXR1cmUnLAorICAgIHZhbHVlIDogJ2Rpc2FibGVkJywK
ICAgICB5aWVsZCA6IHRydWUsCiAgICAgZGVzY3JpcHRpb246ICdFbmFibGUgY2VsdDA1MSBhdWRp
byBjb2RlYycpCiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
