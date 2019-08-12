Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B444E897A2
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 09:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5280F6E4B5;
	Mon, 12 Aug 2019 07:15:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E622A6E4B5
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:15:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D9727BDA2
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:15:46 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-153.brq.redhat.com [10.40.204.153])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 98284646B1;
 Mon, 12 Aug 2019 07:15:38 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 08:14:58 +0100
Message-Id: <20190812071458.8946-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 12 Aug 2019 07:15:46 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] glz-encode: Remove obsolete
 reference segment
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

VGhlIEdMWiBjb2RlIGlzIGJhc2ljYWxseSBMWiBjb2RlIHNoYXJpbmcgaW1hZ2Ugc2VnbWVudHMg
YmV0d2VlbgptdWx0aXBsZSBpbWFnZXMuClRoZSBjb2RlIGZvciBSTEUgY2hlY2sgaW4gTFogaXMg
ZGVhbGluZyB3aXRoIGJvdGggUkxFIGFuZCBkaWN0aW9uYXJ5Cm1hdGNoZXMgYmVpbmc6CgogICAg
aWYgKCFkaXN0YW5jZSkgewogICAgICAgIC8qIHplcm8gZGlzdGFuY2UgbWVhbnMgYSBydW4gKi8K
ICAgICAgICBQSVhFTCB4ID0gKnJlZjsKICAgICAgICB3aGlsZSAoKGlwIDwgaXBfYm91bmQpICYm
IChyZWYgPCByZWZfbGltaXQpKSB7IC8vIFRPRE86IG1heWJlIHNlcGFyYXRlIGEgcnVuIGZyb20K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8v
ICAgICAgIHRoZSBzYW1lIHNlZyBvciBmcm9tIGRpZmZlcmVudAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gICAgICAgb25lcyBpbiBvcmRl
ciB0byBzcGFyZQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLy8gICAgICAgcmVmIDwgcmVmX2xpbWl0CgppbiBHTFogdGhhdCBwYXJ0IHdhcyBj
b3BpZWQgdG8gUkxFIHBhcnQgcmVtb3ZpbmcgdGhlIG5lZWQgZm9yIHRoZQpzZWNvbmQgc2VnbWVu
dCAoInJlZiIpLiBIb3dldmVyIHRoZSBjb21tZW50IGFuZCBzZXR0aW5nIHJlZiB2YXJpYWJsZXMK
d2VyZSBub3QgcmVtb3ZlZC4gUmVtb3ZlIHRoZSBvbGQgY29kZSB0byBhdm9pZCBjb25mdXNpb25z
LgoKVGhpcyBhbHNvIHJlbW92ZSBhIENvdmVyaXR5IHdhcm5pbmcgYXMgcmVmX2xpbWl0IHdhcyBz
ZXQgbm90IG5vdCB1c2VkCihyZXBvcnRlZCBieSBVcmkgTHVibGluKS4KVGhlIHdhcm5pbmcgd2Fz
OgoKQ0xBTkcgd2FybmluZzogIlZhbHVlIHN0b3JlZCB0byAncmVmX2xpbWl0JyBpcyBuZXZlciBy
ZWFkIgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Ci0tLQogc2VydmVyL2dsei1lbmNvZGUudG1wbC5jIHwgMTAgKysrLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvZ2x6LWVuY29kZS50bXBsLmMgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMKaW5kZXggNDhi
YWI1MGJjLi45MmRlYjBlMTIgMTAwNjQ0Ci0tLSBhL3NlcnZlci9nbHotZW5jb2RlLnRtcGwuYwor
KysgYi9zZXJ2ZXIvZ2x6LWVuY29kZS50bXBsLmMKQEAgLTI3NiwxOSArMjc2LDE1IEBAIHN0YXRp
YyB2b2lkIEZOQU1FKGNvbXByZXNzX3NlZykoRW5jb2RlciAqZW5jb2RlciwgdWludDMyX3Qgc2Vn
X2lkeCwgUElYRUwgKmZyb20sCiAKICAgICAgICAgaWYgKExaX0VYUEVDVF9DT05ESVRJT05BTChp
cCA+IChQSVhFTCAqKShzZWctPmxpbmVzKSkpIHsKICAgICAgICAgICAgIGlmIChTQU1FX1BJWEVM
KGlwWy0xXSwgaXBbMF0pICYmIFNBTUVfUElYRUwoaXBbMF0sIGlwWzFdKSAmJiBTQU1FX1BJWEVM
KGlwWzFdLCBpcFsyXSkpIHsKLSAgICAgICAgICAgICAgICBQSVhFTCB4OworICAgICAgICAgICAg
ICAgIFBJWEVMIHggPSBpcFsyXTsKKwogICAgICAgICAgICAgICAgIHBpeF9kaXN0ID0gMTsKICAg
ICAgICAgICAgICAgICBpbWFnZV9kaXN0ID0gMDsKIAogICAgICAgICAgICAgICAgIGlwICs9IDM7
Ci0gICAgICAgICAgICAgICAgcmVmID0gYW5jaG9yICsgMjsKLSAgICAgICAgICAgICAgICByZWZf
bGltaXQgPSAoUElYRUwgKikoc2VnLT5saW5lc19lbmQpOwogICAgICAgICAgICAgICAgIGxlbiA9
IDM7CiAKLSAgICAgICAgICAgICAgICB4ID0gKnJlZjsKLQotICAgICAgICAgICAgICAgIHdoaWxl
IChpcCA8IGlwX2JvdW5kKSB7IC8vIFRPRE86IG1heWJlIHNlcGFyYXRlIGEgcnVuIGZyb20gdGhl
IHNhbWUgc2VnIG9yIGZyb20KLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IC8vIGRpZmZlcmVudCBvbmVzIGluIG9yZGVyIHRvIHNwYXJlIHJlZiA8IHJlZl9saW1pdAorICAg
ICAgICAgICAgICAgIHdoaWxlIChpcCA8IGlwX2JvdW5kKSB7CiAgICAgICAgICAgICAgICAgICAg
IGlmICghU0FNRV9QSVhFTCgqaXAsIHgpKSB7CiAgICAgICAgICAgICAgICAgICAgICAgICBpcCsr
OwogICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
