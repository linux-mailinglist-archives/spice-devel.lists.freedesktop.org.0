Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBEEBC9C8
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 16:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB316EA41;
	Tue, 24 Sep 2019 14:06:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253756EA40
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:06:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C2CBB315C025
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:06:57 +0000 (UTC)
Received: from dhcp-4-140.tlv.redhat.com (dhcp-4-140.tlv.redhat.com
 [10.35.4.140])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 33CA24503
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:06:57 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 17:06:54 +0300
Message-Id: <20190924140654.9351-2-ssheribe@redhat.com>
In-Reply-To: <20190924140654.9351-1-ssheribe@redhat.com>
References: <20190924140654.9351-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 24 Sep 2019 14:06:57 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: add debug message
 for each element added to pipeline
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

U2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KLS0tCgpU
aGlzIGhlbHBzIHRvIGRlYnVnIHBsdWdpbnMgbG9hZCByZWxhdGVkIGlzc3VlcwotLS0KIHNyYy9j
aGFubmVsLWRpc3BsYXktZ3N0LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5u
ZWwtZGlzcGxheS1nc3QuYwppbmRleCA0MzczMjhiLi4xNmJmYTM3IDEwMDY0NAotLS0gYS9zcmMv
Y2hhbm5lbC1kaXNwbGF5LWdzdC5jCisrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKQEAg
LTQ3Myw2ICs0NzMsMTAgQEAgc2lua19ldmVudF9wcm9iZShHc3RQYWQgKnBhZCwgR3N0UGFkUHJv
YmVJbmZvICppbmZvLCBncG9pbnRlciBkYXRhKQogc3RhdGljIHZvaWQKIGVsZW1lbnRfc2V0dXBf
Y2IoR3N0RWxlbWVudCAqcGlwZWxpbmUsIEdzdEVsZW1lbnQgKmVsZW1lbnQsIFNwaWNlR3N0RGVj
b2RlciAqZGVjb2RlcikKIHsKKyAgICBHc3RFbGVtZW50RmFjdG9yeSAqZiA9IGdzdF9lbGVtZW50
X2dldF9mYWN0b3J5IChlbGVtZW50KTsKKworICAgIFNQSUNFX0RFQlVHKCJBIG5ldyBlbGVtZW50
IHdhcyBhZGRlZCB0byBHc3RyZWFtZXIncyBwaXBlbGluZSAoJXMpIiwKKyAgICAgICAgICAgICAg
ICBmID8gR1NUX09CSkVDVF9OQU1FKGYpIDogR1NUX09CSkVDVF9OQU1FKGVsZW1lbnQpKTsKICAg
ICAvKiBBdHRhY2ggYSBwcm9iZSB0byB0aGUgc2luayB0byB1cGRhdGUgdGhlIHN0YXRpc3RpY3Mg
Ki8KICAgICBpZiAoR1NUX0lTX0JBU0VfU0lOSyhlbGVtZW50KSkgewogICAgICAgICBHc3RQYWQg
KnBhZCA9IGdzdF9lbGVtZW50X2dldF9zdGF0aWNfcGFkKGVsZW1lbnQsICJzaW5rIik7Ci0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
