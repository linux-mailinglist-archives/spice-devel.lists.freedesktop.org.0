Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A14D425F3A
	for <lists+spice-devel@lfdr.de>; Wed, 22 May 2019 10:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5A0897EB;
	Wed, 22 May 2019 08:19:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3CA897EB
 for <spice-devel@lists.freedesktop.org>; Wed, 22 May 2019 08:19:10 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hTMTa-0008Nq-0t
 for spice-devel@lists.freedesktop.org; Wed, 22 May 2019 03:19:54 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hTMSq-00065h-C6
 for spice-devel@lists.freedesktop.org; Wed, 22 May 2019 10:19:08 +0200
Date: Wed, 22 May 2019 10:19:08 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <cover.1558511881.git.fgouget@free.fr>
Message-ID: <bcf3420b33ebc0b54f9913326814ca104a916e2f.1558511881.git.fgouget@free.fr>
References: <cover.1558511881.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This constant fits in a regular 32 bit signed integer so it
 does not need the suffix. It is also not used in expressions that may
 overflow.
 Signed-off-by: Francois Gouget <fgouget@codeweavers.com> --- server/utils.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
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
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qpj/oks8WHytINLOcchzZeVdoQbEGbn+FU7vMo7LSrI=; b=Z0luzeJJ7blIf3BG+O4liTtwY
 6E7sRmxb+m5lAj5Op/9nxckPiTpLy2iyrv55vCsudXoMjIO2WSTAERM8FZNi34HYZv4nTv2qg5fGP
 9Z1LM5ZcDqZCglFPy1zkWMkcpAAWZe7uZ9rTBOUOyMQ5imwYEP5eSpKY274Ai+iKFJ5tg=;
Subject: [Spice-devel] [spice 1/2] utils: Remove the LL suffix from
 NSEC_PER_MILLISEC
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

VGhpcyBjb25zdGFudCBmaXRzIGluIGEgcmVndWxhciAzMiBiaXQgc2lnbmVkIGludGVnZXIgc28g
aXQgZG9lcyBub3QKbmVlZCB0aGUgc3VmZml4LgpJdCBpcyBhbHNvIG5vdCB1c2VkIGluIGV4cHJl
c3Npb25zIHRoYXQgbWF5IG92ZXJmbG93LgoKU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0
IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzZXJ2ZXIvdXRpbHMuaCB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3NlcnZlci91dGlscy5oIGIvc2VydmVyL3V0aWxzLmgKaW5kZXggZWEwZGUxNTI5Li41NGJjOWQ0
OTAgMTAwNjQ0Ci0tLSBhL3NlcnZlci91dGlscy5oCisrKyBiL3NlcnZlci91dGlscy5oCkBAIC01
Myw3ICs1Myw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IHRlc3RfYml0KGludCBpbmRleCwgdWludDMy
X3QgdmFsKQogdHlwZWRlZiBpbnQ2NF90IHJlZF90aW1lX3Q7CiAKICNkZWZpbmUgTlNFQ19QRVJf
U0VDICAgICAgMTAwMDAwMDAwMExMCi0jZGVmaW5lIE5TRUNfUEVSX01JTExJU0VDIDEwMDAwMDBM
TAorI2RlZmluZSBOU0VDX1BFUl9NSUxMSVNFQyAxMDAwMDAwCiAjZGVmaW5lIE5TRUNfUEVSX01J
Q1JPU0VDIDEwMDAKIAogLyogZ19nZXRfbW9ub3RvbmljX3RpbWUoKSBkb2VzIG5vdCBoYXZlIGVu
b3VnaCBwcmVjaXNpb24gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
