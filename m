Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F6D657B1
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3996E22E;
	Thu, 11 Jul 2019 13:10:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939316E22E
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:10:17 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hlYqQ-0002eZ-8Z
 for spice-devel@lists.freedesktop.org; Thu, 11 Jul 2019 08:10:43 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hlYpy-0004W0-2Q
 for spice-devel@lists.freedesktop.org; Thu, 11 Jul 2019 15:10:14 +0200
Date: Thu, 11 Jul 2019 15:10:14 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hlYpy-0004W0-2Q@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 Just a minor patch partly inspired by a patch from Frediano Ziglio.
 5975a98a94e0
 at git://people.freedesktop.org/~fziglio/spice-protocol The "client|server"
 comments bear verification: they're based on a comment in do_client_monitors()
 in vdagentd.c that implies VD_AGENT_MONITORS_CONFIG can be sent by either
 the client or server which [...] 
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
 bh=2eqQkcpLM336n0X9fQNJpTTPx+3Lhd8GFY4sf97aVpk=; b=pvcFybg7FhplOomOalRBCQkfjM
 9QzsoyUG6ccou/aOR3NKTch/NfyKkfuVruq9FwkRCYW8pUCvTp5rlzshPBc0ptLrHRa627GF6Dau4
 m/cWD2ZpBhoEjs0/sFuSHrmQ8TNb/WhF9mRfgqpjDBa46JsLoORBDsm6GwGtNhBlG3UQ=;
Subject: [Spice-devel] [protocol] protocol: Add some comments to vd_agentd.h
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

U2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4K
LS0tCgpKdXN0IGEgbWlub3IgcGF0Y2ggcGFydGx5IGluc3BpcmVkIGJ5IGEgcGF0Y2ggZnJvbSBG
cmVkaWFubyBaaWdsaW8uCjU5NzVhOThhOTRlMCBhdCBnaXQ6Ly9wZW9wbGUuZnJlZWRlc2t0b3Au
b3JnL35memlnbGlvL3NwaWNlLXByb3RvY29sCgpUaGUgImNsaWVudHxzZXJ2ZXIiIGNvbW1lbnRz
IGJlYXIgdmVyaWZpY2F0aW9uOiB0aGV5J3JlIGJhc2VkIG9uIGEgCmNvbW1lbnQgaW4gZG9fY2xp
ZW50X21vbml0b3JzKCkgaW4gdmRhZ2VudGQuYyB0aGF0IGltcGxpZXMgClZEX0FHRU5UX01PTklU
T1JTX0NPTkZJRyBjYW4gYmUgc2VudCBieSBlaXRoZXIgdGhlIGNsaWVudCBvciBzZXJ2ZXIgCndo
aWNoIEknbSBub3Qgc3VyZSBpcyB0cnVlLgoKCiBzcGljZS92ZF9hZ2VudC5oIHwgMTIgKysrKysr
KysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3NwaWNlL3ZkX2FnZW50LmggYi9zcGljZS92ZF9hZ2VudC5oCmluZGV4IDQy
ZWM3N2EuLjA2NjJlNDQgMTAwNjQ0Ci0tLSBhL3NwaWNlL3ZkX2FnZW50LmgKKysrIGIvc3BpY2Uv
dmRfYWdlbnQuaApAQCAtNjIsMTUgKzYyLDIyIEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJf
UEFDS0VEIFZEQWdlbnRNZXNzYWdlIHsKICNkZWZpbmUgVkRfQUdFTlRfQ0xJUEJPQVJEX01BWF9T
SVpFX0VOViAiU1BJQ0VfQ0xJUEJPQVJEX01BWF9TSVpFIgogI2VuZGlmCiAKKworLyogdmRhZ2Vu
dGQgc29ja2V0IG1lc3NhZ2VzIGFuZCB0eXBlcyAqLworCiBlbnVtIHsKKyAgICAvKiBzZXJ2ZXIg
LT4gYWdlbnQgKi8KICAgICBWRF9BR0VOVF9NT1VTRV9TVEFURSA9IDEsCisgICAgLyogY2xpZW50
fHNlcnZlciAtPiBhZ2VudCAoYWNrbm93bGVkZ2VkIHVzaW5nIFZEX0FHRU5UX1JFUExZKSAqLwog
ICAgIFZEX0FHRU5UX01PTklUT1JTX0NPTkZJRywKKyAgICAvKiBhZ2VudCAtPiBjbGllbnR8c2Vy
dmVyICovCiAgICAgVkRfQUdFTlRfUkVQTFksCiAgICAgLyogU2V0IGNsaXBib2FyZCBkYXRhIChi
b3RoIGRpcmVjdGlvbnMpLgogICAgICAqIE1lc3NhZ2UgY29tZXMgd2l0aCB0eXBlIGFuZCBkYXRh
LgogICAgICAqIFNlZSBWREFnZW50Q2xpcGJvYXJkIHN0cnVjdHVyZS4KICAgICAgKi8KICAgICBW
RF9BR0VOVF9DTElQQk9BUkQsCisgICAgLyogY2xpZW50IC0+IGFnZW50ICovCiAgICAgVkRfQUdF
TlRfRElTUExBWV9DT05GSUcsCiAgICAgVkRfQUdFTlRfQU5OT1VOQ0VfQ0FQQUJJTElUSUVTLAog
ICAgIC8qIEFza3MgdG8gbGlzdGVuIGZvciBjbGlwYm9hcmQgY2hhbmdlcyAoYm90aCBkaXJlY3Rp
b25zKS4KQEAgLTI1NCw3ICsyNjEsNyBAQCB0eXBlZGVmIHN0cnVjdCBTUElDRV9BVFRSX1BBQ0tF
RCBWREFnZW50RGV2aWNlRGlzcGxheUluZm8gewogICAgIHVpbnQzMl90IG1vbml0b3JfaWQ7CiAg
ICAgdWludDMyX3QgZGV2aWNlX2Rpc3BsYXlfaWQ7CiAgICAgdWludDMyX3QgZGV2aWNlX2FkZHJl
c3NfbGVuOwotICAgIHVpbnQ4X3QgZGV2aWNlX2FkZHJlc3NbMF07ICAvLyBhIHplcm8tdGVybWlu
YXRlZCBzdHJpbmcKKyAgICB1aW50OF90IGRldmljZV9hZGRyZXNzWzBdOyAgLyogYSB6ZXJvLXRl
cm1pbmF0ZWQgc3RyaW5nICovCiB9IFZEQWdlbnREZXZpY2VEaXNwbGF5SW5mbzsKIAogCkBAIC0y
NzAsNiArMjc3LDkgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9QQUNLRUQgVkRBZ2VudEdy
YXBoaWNzRGV2aWNlSW5mbyB7CiAgICAgVkRBZ2VudERldmljZURpc3BsYXlJbmZvIGRpc3BsYXlf
aW5mb1swXTsKIH0gVkRBZ2VudEdyYXBoaWNzRGV2aWNlSW5mbzsKIAorCisvKiBDYXBhYmlsaXRp
ZXMgZGVmaW5pdGlvbnMgKi8KKwogZW51bSB7CiAgICAgVkRfQUdFTlRfQ0FQX01PVVNFX1NUQVRF
ID0gMCwKICAgICBWRF9BR0VOVF9DQVBfTU9OSVRPUlNfQ09ORklHLAotLSAKMi4yMC4xCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
