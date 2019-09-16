Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3015DB40EB
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF8E6EA43;
	Mon, 16 Sep 2019 19:13:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7476EA3E
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:48 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRX-0003Nb-RO
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:47 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:33 -0500
Message-Id: <20190916191333.27139-11-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916191333.27139-1-jwhite@codeweavers.com>
References: <20190916191333.27139-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nlh93m7whLG4qSZgLRGlMa5k9Ur+0jr9CaQ+35FJzRY=; b=W42L15NmJ7OBCLTsZCXkSbDSw3
 DftBNLCzSHISF4V/oDawGu+1FFbCOwSph0xoqo19kbgKo8qACbPJDfQ1SF8js4q8/VXMB8mn2ClF2
 e7+QhWby6w2KRIm4xqzhviTRHxepTuzT9zCwMvUjyepZqIeJTANRIfcqoug+je1GMbcU=;
Subject: [Spice-devel] [PATCH x11spice 10/10] Do not use show_cursor_check
 on older Xorg builds.
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

VmVyc2lvbnMgcHJpb3IgdG8gMS4yMCBkbyBub3QgaGF2ZSB0aGUgc2hvd19jdXJzb3JfY2hlY2sg
ZnVuY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVy
cy5jb20+Ci0tLQogc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2Rpc3BsYXkuYyB8IDEwICsrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3BpY2Ut
dmlkZW8tZHVtbXkvc3JjL2Rpc3BsYXkuYyBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kaXNwbGF5
LmMKaW5kZXggNzg2ZTY5MTYuLjMxYmUwNDE2IDEwMDY0NAotLS0gYS9zcGljZS12aWRlby1kdW1t
eS9zcmMvZGlzcGxheS5jCisrKyBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kaXNwbGF5LmMKQEAg
LTExMywxMCArMTEzLDE2IEBAIGR1bW15X2NydGNfaGlkZV9jdXJzb3IoeGY4NkNydGNQdHIgY3J0
YykKIHsKIH0KIAorI2lmIFhGODZfQ1JUQ19WRVJTSU9OID4gNwogc3RhdGljIEJvb2wKKyNlbHNl
CitzdGF0aWMgdm9pZAorI2VuZGlmCiBkdW1teV9jcnRjX3Nob3dfY3Vyc29yKHhmODZDcnRjUHRy
IGNydGMpCiB7CisjaWYgWEY4Nl9DUlRDX1ZFUlNJT04gPiA3CiAgICAgcmV0dXJuIFRSVUU7Cisj
ZW5kaWYKIH0KIAogc3RhdGljIEJvb2wKQEAgLTE0MSw4ICsxNDcsMTIgQEAgc3RhdGljIGNvbnN0
IHhmODZDcnRjRnVuY3NSZWMgY3J0Y19mdW5jcyA9IHsKICAgICAuc2hhZG93X2Rlc3Ryb3kgPSBO
VUxMLAogICAgIC5zZXRfY3Vyc29yX2NvbG9ycyA9IGR1bW15X2NydGNfc2V0X2N1cnNvcl9jb2xv
cnMsCiAgICAgLnNldF9jdXJzb3JfcG9zaXRpb24gPSBkdW1teV9jcnRjX3NldF9jdXJzb3JfcG9z
aXRpb24sCisjaWYgWEY4Nl9DUlRDX1ZFUlNJT04gPiA3CiAgICAgLnNob3dfY3Vyc29yID0gTlVM
TCwKICAgICAuc2hvd19jdXJzb3JfY2hlY2sgPSBkdW1teV9jcnRjX3Nob3dfY3Vyc29yLAorI2Vs
c2UKKyAgICAuc2hvd19jdXJzb3IgPSBkdW1teV9jcnRjX3Nob3dfY3Vyc29yLAorI2VuZGlmCiAg
ICAgLmhpZGVfY3Vyc29yID0gZHVtbXlfY3J0Y19oaWRlX2N1cnNvciwKICAgICAubG9hZF9jdXJz
b3JfaW1hZ2UgPSBOVUxMLAogICAgIC5sb2FkX2N1cnNvcl9pbWFnZV9jaGVjayA9IE5VTEwsCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
