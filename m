Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C662213A96
	for <lists+spice-devel@lfdr.de>; Sat,  4 May 2019 16:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6090892B8;
	Sat,  4 May 2019 14:32:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB8788FD2
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 14:32:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B34A308339A
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 14:32:43 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1403A5D71B
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 14:32:42 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sat,  4 May 2019 14:32:40 +0000
Message-Id: <20190504143241.28352-2-victortoso@redhat.com>
In-Reply-To: <20190504143241.28352-1-victortoso@redhat.com>
References: <20190504143241.28352-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Sat, 04 May 2019 14:32:43 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk 1/2] channel-usbredir: if disabled,
 define type without private
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKT3RoZXJ3aXNlIHdlJ2xsIGdl
dAoKICAgIGdfdHlwZV9hZGRfaW5zdGFuY2VfcHJpdmF0ZTogYXNzZXJ0aW9uICdwcml2YXRlX3Np
emUgPiAwJyBmYWlsZWQKClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJl
ZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8IDUgKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3Jj
L2NoYW5uZWwtdXNicmVkaXIuYyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKaW5kZXggMzU2MjE2
NC4uZjgwMWM4ZSAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYworKysgYi9zcmMv
Y2hhbm5lbC11c2JyZWRpci5jCkBAIC0xMDEsMTIgKzEwMSwxMSBAQCBzdGF0aWMgdm9pZCB1c2Jy
ZWRpcl9sb2NrX2xvY2sodm9pZCAqdXNlcl9kYXRhKTsKIHN0YXRpYyB2b2lkIHVzYnJlZGlyX3Vu
bG9ja19sb2NrKHZvaWQgKnVzZXJfZGF0YSk7CiBzdGF0aWMgdm9pZCB1c2JyZWRpcl9mcmVlX2xv
Y2sodm9pZCAqdXNlcl9kYXRhKTsKIAorR19ERUZJTkVfVFlQRV9XSVRIX1BSSVZBVEUoU3BpY2VV
c2JyZWRpckNoYW5uZWwsIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWwsIFNQSUNFX1RZUEVfQ0hBTk5F
TCkKICNlbHNlCi1zdHJ1Y3QgX1NwaWNlVXNicmVkaXJDaGFubmVsUHJpdmF0ZSB7Ci19OworR19E
RUZJTkVfVFlQRShTcGljZVVzYnJlZGlyQ2hhbm5lbCwgc3BpY2VfdXNicmVkaXJfY2hhbm5lbCwg
U1BJQ0VfVFlQRV9DSEFOTkVMKQogI2VuZGlmCiAKLUdfREVGSU5FX1RZUEVfV0lUSF9QUklWQVRF
KFNwaWNlVXNicmVkaXJDaGFubmVsLCBzcGljZV91c2JyZWRpcl9jaGFubmVsLCBTUElDRV9UWVBF
X0NIQU5ORUwpCiAKIC8qIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAqLwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
