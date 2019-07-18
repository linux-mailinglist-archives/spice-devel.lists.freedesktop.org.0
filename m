Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A46EF6D649
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 23:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2769D6E466;
	Thu, 18 Jul 2019 21:14:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC826E466
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 21:14:11 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hoDjV-0005iE-UR
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 16:14:33 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 16:14:03 -0500
Message-Id: <20190718211405.8753-3-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190718211405.8753-1-jwhite@codeweavers.com>
References: <20190718211405.8753-1-jwhite@codeweavers.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=References:In-Reply-To:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W/8abR0BdGiH9eismmgeOo61STfm5uLXsfSiMlF61zI=; b=VE7EpVfzcFnSwPFEJrMTigU1m
 ILK1pGnUvFGpQRQ/xfhi+MkSnPyqPEzj875nGN7cFOlcLxGeYwjYsyqco3A0Apd9Z/xfHHhM5OFAX
 Ftteb2EjheOxRzJS133pEQ8/2bML/A0AovvyhAdCxgt/jHM+A5/zOXRGJpGOR7F3VDnxY=;
Subject: [Spice-devel] [PATCH v2 x11spice 2/4] Free the SSL and
 password_file option fields.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNyYy9vcHRpb25zLmMgfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3JjL29wdGlvbnMuYyBiL3NyYy9vcHRpb25zLmMK
aW5kZXggYTIwNmM5MmMuLjMwM2MwN2RlIDEwMDY0NAotLS0gYS9zcmMvb3B0aW9ucy5jCisrKyBi
L3NyYy9vcHRpb25zLmMKQEAgLTUwLDYgKzUwLDE3IEBAIHZvaWQgb3B0aW9uc19pbml0KG9wdGlv
bnNfdCAqb3B0aW9ucykKICAgICBtZW1zZXQob3B0aW9ucywgMCwgc2l6ZW9mKCpvcHRpb25zKSk7
CiB9CiAKK3ZvaWQgc3NsX29wdGlvbnNfZnJlZShzc2xfb3B0aW9uc190ICpzc2wpCit7CisgICAg
Z19mcmVlKHNzbC0+Y2FfY2VydF9maWxlKTsKKyAgICBnX2ZyZWUoc3NsLT5jZXJ0c19maWxlKTsK
KyAgICBnX2ZyZWUoc3NsLT5wcml2YXRlX2tleV9maWxlKTsKKyAgICBnX2ZyZWUoc3NsLT5rZXlf
cGFzc3dvcmQpOworICAgIGdfZnJlZShzc2wtPmRoX2tleV9maWxlKTsKKyAgICBnX2ZyZWUoc3Ns
LT5jaXBoZXJzdWl0ZSk7CisgICAgKnNzbCA9IChzc2xfb3B0aW9uc190KSB7IDAgfTsKK30KKwog
dm9pZCBvcHRpb25zX2ZyZWUob3B0aW9uc190ICpvcHRpb25zKQogewogICAgIGdfZnJlZShvcHRp
b25zLT5kaXNwbGF5KTsKQEAgLTU3LDggKzY4LDEyIEBAIHZvaWQgb3B0aW9uc19mcmVlKG9wdGlv
bnNfdCAqb3B0aW9ucykKICAgICBnX2ZyZWUob3B0aW9ucy0+bGlzdGVuKTsKICAgICBvcHRpb25z
LT5saXN0ZW4gPSBOVUxMOwogCisgICAgc3NsX29wdGlvbnNfZnJlZSgmb3B0aW9ucy0+c3NsKTsK
KwogICAgIGdfZnJlZShvcHRpb25zLT5zcGljZV9wYXNzd29yZCk7CiAgICAgb3B0aW9ucy0+c3Bp
Y2VfcGFzc3dvcmQgPSBOVUxMOworICAgIGdfZnJlZShvcHRpb25zLT5wYXNzd29yZF9maWxlKTsK
KyAgICBvcHRpb25zLT5wYXNzd29yZF9maWxlID0gTlVMTDsKIAogICAgIGdfZnJlZShvcHRpb25z
LT52aXJ0aW9fcGF0aCk7CiAgICAgb3B0aW9ucy0+dmlydGlvX3BhdGggPSBOVUxMOwotLSAKMi4x
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
