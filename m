Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FF1CBD06
	for <lists+spice-devel@lfdr.de>; Fri,  4 Oct 2019 16:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DCE6EBAD;
	Fri,  4 Oct 2019 14:23:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43AE6EBAD
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 14:23:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4CB8218021BB
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 14:23:35 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 325F0100EBDE;
 Fri,  4 Oct 2019 14:23:33 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  4 Oct 2019 15:23:28 +0100
Message-Id: <20191004142328.23270-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Fri, 04 Oct 2019 14:23:35 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] ci: Update gitlab
 makecheck-centos Job to support CentOS 8
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

RGlzYWJsZSBjZWx0MC41MSwgbm93IG9ic29sZXRlLgpVcGRhdGUgcGFja2FnZSBuYW1lcyBhbmQg
cmVwb3NpdG9yaWVzLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJl
ZGhhdC5jb20+Ci0tLQogLmdpdGxhYi1jaS55bWwgfCAxMCArKysrKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKUmVzdWx0cyBhdCBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZnppZ2xpby9zcGljZS9waXBlbGluZXMvNjgzOTUKCmRp
ZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCmluZGV4IDMzMjEwY2I5
Li4wMWY2MzczMyAxMDA2NDQKLS0tIGEvLmdpdGxhYi1jaS55bWwKKysrIGIvLmdpdGxhYi1jaS55
bWwKQEAgLTg1LDEzICs4NSwxNSBAQCBkaXN0Y2hlY2s6CiAjIFNhbWUgYXMgbWFrZWNoZWNrIGpv
YiBidXQgdXNlIGEgQ2VudG9zIGltYWdlCiBtYWtlY2hlY2stY2VudG9zOgogICBiZWZvcmVfc2Ny
aXB0OgorICAgIC0gZG5mIGluc3RhbGwgLXkgJ2RuZi1jb21tYW5kKGNvbmZpZy1tYW5hZ2VyKScK
KyAgICAtIGRuZiBjb25maWctbWFuYWdlciAtLXNldC1lbmFibGVkIFBvd2VyVG9vbHMKICAgICAt
ID4KLSAgICAgIHl1bSBpbnN0YWxsIGdpdCBsaWJ0b29sIG1ha2UgbGliYXNhbiBvcmMtZGV2ZWwg
Z2xpYi1uZXR3b3JraW5nCi0gICAgICB5dW0tdXRpbHMgZ2NjIGdsaWIyLWRldmVsIGNlbHQwNTEt
ZGV2ZWwKKyAgICAgIGRuZiBpbnN0YWxsIGdpdCBsaWJ0b29sIG1ha2UgbGliYXNhbiBvcmMtZGV2
ZWwgZ2xpYi1uZXR3b3JraW5nCisgICAgICBnY2MgZ2xpYjItZGV2ZWwKICAgICAgIG9wdXMtZGV2
ZWwgcGl4bWFuLWRldmVsIG9wZW5zc2wtZGV2ZWwgbGlianBlZy1kZXZlbAogICAgICAgbGliY2Fj
YXJkLWRldmVsIGN5cnVzLXNhc2wtZGV2ZWwgbHo0LWRldmVsCiAgICAgICBnc3RyZWFtZXIxLWRl
dmVsIGdzdHJlYW1lcjEtcGx1Z2lucy1iYXNlLWRldmVsCi0gICAgICBnaXQtY29yZSBweXBhcnNp
bmcgcHl0aG9uLXNpeAorICAgICAgZ2l0LWNvcmUgcHl0aG9uMy1weXBhcnNpbmcgcHl0aG9uMy1z
aXggcHl0aG9uMwogICAgICAgLXkKICAgICAtIGdpdCBjbG9uZSAke0NJX1JFUE9TSVRPUllfVVJM
L3NwaWNlLmdpdC9zcGljZS1wcm90b2NvbC5naXR9CiAgICAgLSAoY2Qgc3BpY2UtcHJvdG9jb2wg
JiYgLi9hdXRvZ2VuLnNoIC0tcHJlZml4PS91c3IgJiYgbWFrZSBpbnN0YWxsKQpAQCAtMTAwLDcg
KzEwMiw3IEBAIG1ha2VjaGVjay1jZW50b3M6CiAgIC0gPgogICAgIENGTEFHUz0nLU8yIC1waXBl
IC1nIC1mc2FuaXRpemU9YWRkcmVzcyAtZm5vLW9taXQtZnJhbWUtcG9pbnRlciAtV2ZyYW1lLWxh
cmdlci10aGFuPTQwOTIwJwogICAgIExERkxBR1M9Jy1mc2FuaXRpemU9YWRkcmVzcyAtbGFzYW4n
Ci0gICAgLi9hdXRvZ2VuLnNoIC0tZW5hYmxlLWNlbHQwNTEKKyAgICAuL2F1dG9nZW4uc2ggLS1k
aXNhYmxlLWNlbHQwNTEKICAgLSBtYWtlCiAgIC0gbWFrZSAtQyBzZXJ2ZXIgY2hlY2sgfHwgKGNh
dCBzZXJ2ZXIvdGVzdHMvdGVzdC1zdWl0ZS5sb2cgJiYgZXhpdCAxKQogCi0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
