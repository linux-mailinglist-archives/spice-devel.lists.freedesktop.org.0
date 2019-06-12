Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4E442A78
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 17:13:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E47896C4;
	Wed, 12 Jun 2019 15:13:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B381896B0
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 15:13:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 74CFC883D7
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 15:13:16 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E29470A1C;
 Wed, 12 Jun 2019 15:13:14 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 12 Jun 2019 16:13:08 +0100
Message-Id: <20190612151308.8226-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 12 Jun 2019 15:13:16 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] ci: Remove dependencies from
 copr build
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
LmdpdGxhYi1jaS55bWwgfCAxMyArKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIv
LmdpdGxhYi1jaS55bWwKaW5kZXggOTFlZTQ3ZWRjLi5lMjFlYTk3ZGUgMTAwNjQ0Ci0tLSBhLy5n
aXRsYWItY2kueW1sCisrKyBiLy5naXRsYWItY2kueW1sCkBAIC03OSwxMiArNzksMTUgQEAgZGlz
dGNoZWNrOgogbWFrZWNoZWNrLWNlbnRvczoKICAgYmVmb3JlX3NjcmlwdDoKICAgICAtID4KLSAg
ICAgIHl1bSBpbnN0YWxsIGdpdCBsaWJ0b29sIG1ha2UgbGliYXNhbiBvcmMtZGV2ZWwKLSAgICAg
IHB5dGhvbjMgcHl0aG9uMy1zaXggcHl0aG9uMy1weXBhcnNpbmcgZ2xpYi1uZXR3b3JraW5nCi0g
ICAgICB5dW0tdXRpbHMgeXVtLXBsdWdpbi1jb3ByCisgICAgICB5dW0gaW5zdGFsbCBnaXQgbGli
dG9vbCBtYWtlIGxpYmFzYW4gb3JjLWRldmVsIGdsaWItbmV0d29ya2luZworICAgICAgeXVtLXV0
aWxzIGdjYyBnbGliMi1kZXZlbCBjZWx0MDUxLWRldmVsCisgICAgICBvcHVzLWRldmVsIHBpeG1h
bi1kZXZlbCBvcGVuc3NsLWRldmVsIGxpYmpwZWctZGV2ZWwKKyAgICAgIGxpYmNhY2FyZC1kZXZl
bCBjeXJ1cy1zYXNsLWRldmVsIGx6NC1kZXZlbAorICAgICAgZ3N0cmVhbWVyMS1kZXZlbCBnc3Ry
ZWFtZXIxLXBsdWdpbnMtYmFzZS1kZXZlbAorICAgICAgZ2l0LWNvcmUgcHlwYXJzaW5nIHB5dGhv
bi1zaXgKICAgICAgIC15Ci0gICAgLSB5dW0gY29wciBlbmFibGUgQHNwaWNlL25pZ2h0bHkgLXkK
LSAgICAtIHl1bS1idWlsZGRlcCBzcGljZSAteQorICAgIC0gZ2l0IGNsb25lICR7Q0lfUkVQT1NJ
VE9SWV9VUkwvc3BpY2UuZ2l0L3NwaWNlLXByb3RvY29sLmdpdH0KKyAgICAtIChjZCBzcGljZS1w
cm90b2NvbCAmJiAuL2F1dG9nZW4uc2ggLS1wcmVmaXg9L3VzciAmJiBtYWtlIGluc3RhbGwpCiAg
IGltYWdlOiBjZW50b3M6bGF0ZXN0CiAgIHNjcmlwdDoKICAgLSA+Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
