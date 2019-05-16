Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D40872054E
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 13:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A1C893BC;
	Thu, 16 May 2019 11:44:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7E5893BC
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:44:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CBF568110A
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:44:14 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5559D78565
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:44:14 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 16 May 2019 11:44:13 +0000
Message-Id: <20190516114413.32185-1-victortoso@redhat.com>
In-Reply-To: <20190516113000.31578-1-victortoso@redhat.com>
References: <20190516113000.31578-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 16 May 2019 11:44:14 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v2 5/6] build-sys: Ship keycodemapdb's
 meson.build on release
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKT3RoZXJ3aXNlIHdlIGJyZWFr
IG1lc29uIGJ1aWxkcyB3aXRoICJtZXNvbi5idWlsZDo0NDowOiBFUlJPUjoKU3VicHJvamVjdCBl
eGlzdHMgYnV0IGhhcyBubyBtZXNvbi5idWlsZCBmaWxlIgoKU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvTWFrZWZpbGUuYW0gfCAyICsr
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3JjL01ha2Vm
aWxlLmFtIGIvc3JjL01ha2VmaWxlLmFtCmluZGV4IDdiOTgxODAuLjdhN2VjYjQgMTAwNjQ0Ci0t
LSBhL3NyYy9NYWtlZmlsZS5hbQorKysgYi9zcmMvTWFrZWZpbGUuYW0KQEAgLTMwLDYgKzMwLDcg
QEAgRVhUUkFfRElTVCA9CQkJCQlcCiAJJChLRVlNQVBTKQkJCQlcCiAJJChLRVlNQVBfQ1NWKQkJ
CQlcCiAJJChLRVlNQVBfR0VOKQkJCQlcCisJJChLRVlNQVBfRElTVCkJCQkJXAogCW1hcC1maWxl
CQkJCVwKIAlzcGljZS1nbGliLXN5bS1maWxlCQkJXAogCXNwaWNlLWd0ay1zeW0tZmlsZQkJCVwK
QEAgLTY1LDYgKzY2LDcgQEAgZW5kaWYKIAogS0VZTUFQX0dFTiA9ICQodG9wX3NyY2Rpcikvc3Vi
cHJvamVjdHMva2V5Y29kZW1hcGRiL3Rvb2xzL2tleW1hcC1nZW4KIEtFWU1BUF9DU1YgPSAkKHRv
cF9zcmNkaXIpL3N1YnByb2plY3RzL2tleWNvZGVtYXBkYi9kYXRhL2tleW1hcHMuY3N2CitLRVlN
QVBfRElTVCA9ICQodG9wX3NyY2Rpcikvc3VicHJvamVjdHMva2V5Y29kZW1hcGRiL21lc29uLmJ1
aWxkCiAKIFNQSUNFX0NPTU1PTl9DUFBGTEFHUyA9CQkJCQkJXAogCS1EU1BJQ0VfQ09NUElMQVRJ
T04JCQkJCVwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
