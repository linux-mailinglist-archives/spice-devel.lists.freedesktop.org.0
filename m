Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119C3F3A9
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 12:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF6788DD0;
	Tue, 30 Apr 2019 10:05:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3BC288DD0
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:05:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 279BB308622E
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:05:48 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EDFF36C52C;
 Tue, 30 Apr 2019 10:05:46 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 11:05:42 +0100
Message-Id: <20190430100542.21909-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 30 Apr 2019 10:05:48 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] gitignore: Ignore auto generated
 generated_messages.h file
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

Z2l0Lm1rIHNlZW1zIHRvIGhhdmUgaXNzdWVzIHdpdGggTWFrZWZpbGUgcnVsZXMgZ2VuZXJhdGlu
ZyBtdWx0aXBsZQpmaWxlcyBzbyBhZGQgbWFudWFsbHkgdGhpcyBmaWxlLgpUaGlzIGF2b2lkIFNQ
SUNFIHNlcnZlciB0byBnZW5lcmF0ZSBkaXN0cmlidXRpb24gZmlsZXMgd2l0aAoiLWRpcnR5IiBz
dWZmaXguCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBjb21tb24vTWFrZWZpbGUuYW0gfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9jb21tb24vTWFrZWZpbGUuYW0gYi9jb21tb24vTWFr
ZWZpbGUuYW0KaW5kZXggYTkwNGRhZS4uOTYzODYzNSAxMDA2NDQKLS0tIGEvY29tbW9uL01ha2Vm
aWxlLmFtCisrKyBiL2NvbW1vbi9NYWtlZmlsZS5hbQpAQCAtMTM4LDQgKzEzOCw4IEBAIEVYVFJB
X0RJU1QgPQkJCQlcCiAJcXVpY190bXBsLmMJCQlcCiAJJChOVUxMKQogCitHSVRJR05PUkVGSUxF
UyA9IFwKKwlnZW5lcmF0ZWRfbWVzc2FnZXMuaCBcCisJJChOVUxMKQorCiAtaW5jbHVkZSAkKHRv
cF9zcmNkaXIpL2dpdC5tawotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
