Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6234EC00
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 17:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D586E6E8E1;
	Fri, 21 Jun 2019 15:29:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA826E8E1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 15:29:12 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1heLU0-0002i2-AJ
 for spice-devel@lists.freedesktop.org; Fri, 21 Jun 2019 10:29:45 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1heLTR-0008Ui-Gr
 for spice-devel@lists.freedesktop.org; Fri, 21 Jun 2019 17:29:09 +0200
Date: Fri, 21 Jun 2019 17:29:09 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1heLTR-0008Ui-Gr@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We don't want to maintain more macros than necessary and in
 the end the equivalent G_GNUC_XXX macros should be preferred. Should any
 project actually depend on these macros they can keep using them by [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bDGEd5/qWQb7BSjQAeq/CyAS/K8YRfyi63iP0iZcAzk=; b=UrmJGVIDTqNPQFZTdgt1KUEEAu
 ihvEAsMenJcUh/f4KJtJJtQnTso2gieUYKRA3MD37Jy4ULmD9LfwuxM/mXorZLx97MOsErFHQsP5I
 DbILkUFl/B1ncv5Hk95qZYBwqr+p4v3U7/zy9TmOQNZD8uKLMelywHSVHVymKSwHw/H0=;
Subject: [Spice-devel] [protocol] macros: Mark unused SPICE_GNUC_XXX macros
 as deprecated
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

V2UgZG9uJ3Qgd2FudCB0byBtYWludGFpbiBtb3JlIG1hY3JvcyB0aGFuIG5lY2Vzc2FyeSBhbmQg
aW4gdGhlIGVuZAp0aGUgZXF1aXZhbGVudCBHX0dOVUNfWFhYIG1hY3JvcyBzaG91bGQgYmUgcHJl
ZmVycmVkLgpTaG91bGQgYW55IHByb2plY3QgYWN0dWFsbHkgZGVwZW5kIG9uIHRoZXNlIG1hY3Jv
cyB0aGV5IGNhbiBrZWVwIHVzaW5nCnRoZW0gYnkgZGVmaW5pbmcgdGhlIHVzdWFsIFNQSUNFX0RF
UFJFQ0FURUQgbWFjcm8gdW50aWwgdGhleSBtaWdyYXRlCmF3YXkgZnJvbSB0aGVtIG9yIHRoZSBt
YWNyb3MgYXJlIHJlaW5zdGF0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZn
b3VnZXRAY29kZXdlYXZlcnMuY29tPgotLS0KCkkgbm90aWNlZCB0aGF0IHRoaXMgcGF0Y2ggZmVs
bCBvZmYgZGVzcGl0ZSB3aGF0IGxvb2tlZCBsaWtlIGdlbmVyYWwgCmFncmVlbWVudC4gSSByZS1n
cmVwcGVkIGZvciB0aGVzZSBtYWNyb3MgYW5kIGRpZCBub3QgZmluZCB0aGVtIHVzZWQgaW4gCnRo
ZSBjdXJyZW50IFNwaWNlIGNvZGViYXNlIHdoaWNoIG1lYW5zIHRoZXkgaGF2ZSBub3QgYmVlbiB1
c2VkIGZvciBhdCAKbGVhc3QgdHdvIHllYXJzLgoKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvYXJjaGl2ZXMvc3BpY2UtZGV2ZWwvMjAxNi1EZWNlbWJlci8wMzQ1NzguaHRtbAoKIHNwaWNl
L21hY3Jvcy5oIHwgMTggKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcGljZS9tYWNyb3MuaCBi
L3NwaWNlL21hY3Jvcy5oCmluZGV4IGFiMWQwNTYuLjk1YzEyZDQgMTAwNjQ0Ci0tLSBhL3NwaWNl
L21hY3Jvcy5oCisrKyBiL3NwaWNlL21hY3Jvcy5oCkBAIC0zMyw4ICszMywxNCBAQAogCiAjaW5j
bHVkZSA8c3BpY2UvdHlwZXMuaD4KIAorI2lmbmRlZiBTUElDRV9ERVBSRUNBVEVECisjZGVmaW5l
IFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKGF0dHJpYnV0ZSwgbmFtZSkgX19hdHRyaWJ1dGVf
XygoYXR0cmlidXRlLCB3YXJuaW5nKCJkZXByZWNhdGVkLCB1c2UgLURTUElDRV9ERVBSRUNBVEVE
IG9yICIgbmFtZSAiIGluc3RlYWQiKSkpCisjZWxzZQorI2RlZmluZSBTUElDRV9BVFRSSUJVVEVf
REVQUkVDQVRFRChhdHRyaWJ1dGUsIG5hbWUpIF9fYXR0cmlidXRlX18oKGF0dHJpYnV0ZSkpCisj
ZW5kaWYKKwogI2lmICAgIF9fR05VQ19fID4gMiB8fCAoX19HTlVDX18gPT0gMiAmJiBfX0dOVUNf
TUlOT1JfXyA+PSA5NikKLSNkZWZpbmUgU1BJQ0VfR05VQ19QVVJFIF9fYXR0cmlidXRlX18oKF9f
cHVyZV9fKSkKKyNkZWZpbmUgU1BJQ0VfR05VQ19QVVJFIFNQSUNFX0FUVFJJQlVURV9ERVBSRUNB
VEVEKF9fcHVyZV9fLCAiR19HTlVDX1BVUkUiKQogI2RlZmluZSBTUElDRV9HTlVDX01BTExPQyBf
X2F0dHJpYnV0ZV9fKChfX21hbGxvY19fKSkKICNlbHNlCiAjZGVmaW5lIFNQSUNFX0dOVUNfUFVS
RQpAQCAtNDIsNyArNDgsNyBAQAogI2VuZGlmCiAKICNpZiAgICAgX19HTlVDX18gPj0gNAotI2Rl
ZmluZSBTUElDRV9HTlVDX05VTExfVEVSTUlOQVRFRCBfX2F0dHJpYnV0ZV9fKChfX3NlbnRpbmVs
X18pKQorI2RlZmluZSBTUElDRV9HTlVDX05VTExfVEVSTUlOQVRFRCBTUElDRV9BVFRSSUJVVEVf
REVQUkVDQVRFRChfX3NlbnRpbmVsX18sICJHX0dOVUNfTlVMTF9URVJNSU5BVEVEIikKICNlbHNl
CiAjZGVmaW5lIFNQSUNFX0dOVUNfTlVMTF9URVJNSU5BVEVECiAjZW5kaWYKQEAgLTYyLDEyICs2
OCwxMiBAQAogCiAjaWYgICAgIF9fR05VQ19fID4gMiB8fCAoX19HTlVDX18gPT0gMiAmJiBfX0dO
VUNfTUlOT1JfXyA+IDQpCiAjZGVmaW5lIFNQSUNFX0dOVUNfUFJJTlRGKCBmb3JtYXRfaWR4LCBh
cmdfaWR4ICkgX19hdHRyaWJ1dGVfXygoX19mb3JtYXRfXyAoX19wcmludGZfXywgZm9ybWF0X2lk
eCwgYXJnX2lkeCkpKQotI2RlZmluZSBTUElDRV9HTlVDX1NDQU5GKCBmb3JtYXRfaWR4LCBhcmdf
aWR4ICkgX19hdHRyaWJ1dGVfXygoX19mb3JtYXRfXyAoX19zY2FuZl9fLCBmb3JtYXRfaWR4LCBh
cmdfaWR4KSkpCi0jZGVmaW5lIFNQSUNFX0dOVUNfRk9STUFUKCBhcmdfaWR4ICkgX19hdHRyaWJ1
dGVfXygoX19mb3JtYXRfYXJnX18gKGFyZ19pZHgpKSkKKyNkZWZpbmUgU1BJQ0VfR05VQ19TQ0FO
RiggZm9ybWF0X2lkeCwgYXJnX2lkeCApIFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKF9fZm9y
bWF0X18gKF9fc2NhbmZfXywgZm9ybWF0X2lkeCwgYXJnX2lkeCksICJHX0dOVUNfU0NBTkYiKQor
I2RlZmluZSBTUElDRV9HTlVDX0ZPUk1BVCggYXJnX2lkeCApIFNQSUNFX0FUVFJJQlVURV9ERVBS
RUNBVEVEKF9fZm9ybWF0X2FyZ19fIChhcmdfaWR4KSwgIkdfR05VQ19GT1JNQVQiKQogI2RlZmlu
ZSBTUElDRV9HTlVDX05PUkVUVVJOIF9fYXR0cmlidXRlX18oKF9fbm9yZXR1cm5fXykpCi0jZGVm
aW5lIFNQSUNFX0dOVUNfQ09OU1QgX19hdHRyaWJ1dGVfXygoX19jb25zdF9fKSkKKyNkZWZpbmUg
U1BJQ0VfR05VQ19DT05TVCBTUElDRV9BVFRSSUJVVEVfREVQUkVDQVRFRChfX2NvbnN0X18sICJH
X0dOVUNfQ09OU1QiKQogI2RlZmluZSBTUElDRV9HTlVDX1VOVVNFRCBfX2F0dHJpYnV0ZV9fKChf
X3VudXNlZF9fKSkKLSNkZWZpbmUgU1BJQ0VfR05VQ19OT19JTlNUUlVNRU5UIF9fYXR0cmlidXRl
X18oKF9fbm9faW5zdHJ1bWVudF9mdW5jdGlvbl9fKSkKKyNkZWZpbmUgU1BJQ0VfR05VQ19OT19J
TlNUUlVNRU5UIFNQSUNFX0FUVFJJQlVURV9ERVBSRUNBVEVEKF9fbm9faW5zdHJ1bWVudF9mdW5j
dGlvbl9fLCAiR19HTlVDX05PX0lOU1RSVU1FTlQiKQogI2Vsc2UgICAvKiAhX19HTlVDX18gKi8K
ICNkZWZpbmUgU1BJQ0VfR05VQ19QUklOVEYoIGZvcm1hdF9pZHgsIGFyZ19pZHggKQogI2RlZmlu
ZSBTUElDRV9HTlVDX1NDQU5GKCBmb3JtYXRfaWR4LCBhcmdfaWR4ICkKLS0gCjIuMjAuMQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
