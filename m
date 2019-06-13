Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AA943475
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 10:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9079B896C7;
	Thu, 13 Jun 2019 08:58:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A90896C7
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 08:58:55 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hbLZy-0006vJ-Q4
 for spice-devel@lists.freedesktop.org; Thu, 13 Jun 2019 03:59:31 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hbLZM-0004Yq-FK
 for spice-devel@lists.freedesktop.org; Thu, 13 Jun 2019 10:58:52 +0200
Date: Thu, 13 Jun 2019 10:58:52 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Message-ID: <bcf3420b33ebc0b54f9913326814ca104a916e2f.1560416148.git.fgouget@free.fr>
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
 Signed-off-by: Francois Gouget <fgouget@codeweavers.com> --- 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XQQr75QS0NRdmnp1T2n8bz4CCdbObrKPxma9oSUdWfs=; b=A6/XLop2biTU3AF9DTHd7wgSGy
 cQ4J1NHDsWjc2HPxyUNHTZ9I3us/gPjqe0Vc2jDhUkvxDZgYo9mziX9oAkAEJHFHKFdFgLYt+Kev3
 fqdqQ7EBbhCnINIHzJeqU5DudGqL9nmqp3Hg9TSQ+oQmG+f32QCITi8Bn3+9v/r0ih58=;
Subject: [Spice-devel] [spice v2 1/2] utils: Remove the LL suffix from
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
IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCgp2MjogTm8gY2hhbmdlcy4KdjE6IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL3NwaWNlLWRldmVsLzIwMTktTWF5LzA0
OTE5My5odG1sCgogc2VydmVyL3V0aWxzLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdXRpbHMuaCBiL3Nl
cnZlci91dGlscy5oCmluZGV4IGVhMGRlMTUyOS4uNTRiYzlkNDkwIDEwMDY0NAotLS0gYS9zZXJ2
ZXIvdXRpbHMuaAorKysgYi9zZXJ2ZXIvdXRpbHMuaApAQCAtNTMsNyArNTMsNyBAQCBzdGF0aWMg
aW5saW5lIGludCB0ZXN0X2JpdChpbnQgaW5kZXgsIHVpbnQzMl90IHZhbCkKIHR5cGVkZWYgaW50
NjRfdCByZWRfdGltZV90OwogCiAjZGVmaW5lIE5TRUNfUEVSX1NFQyAgICAgIDEwMDAwMDAwMDBM
TAotI2RlZmluZSBOU0VDX1BFUl9NSUxMSVNFQyAxMDAwMDAwTEwKKyNkZWZpbmUgTlNFQ19QRVJf
TUlMTElTRUMgMTAwMDAwMAogI2RlZmluZSBOU0VDX1BFUl9NSUNST1NFQyAxMDAwCiAKIC8qIGdf
Z2V0X21vbm90b25pY190aW1lKCkgZG9lcyBub3QgaGF2ZSBlbm91Z2ggcHJlY2lzaW9uICovCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
