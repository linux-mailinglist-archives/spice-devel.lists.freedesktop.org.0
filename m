Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7700678E7C
	for <lists+spice-devel@lfdr.de>; Mon, 29 Jul 2019 16:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028E989F55;
	Mon, 29 Jul 2019 14:57:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D9489F55
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Jul 2019 14:57:17 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hs75j-0007nl-2k; Mon, 29 Jul 2019 09:57:36 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hs75N-0000QO-O4; Mon, 29 Jul 2019 16:57:13 +0200
Date: Mon, 29 Jul 2019 16:57:13 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <20190726095213.15655-2-fziglio@redhat.com>
Message-ID: <alpine.DEB.2.21.1907291646550.29955@amboise.dolphin>
References: <20190726095213.15655-1-fziglio@redhat.com>
 <20190726095213.15655-2-fziglio@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Actually I found something I'm a bit unhappy with in this
 patch. So one goal is to make sure all streams are in sync. This is why the
 mmtime conversion is performed globally: if two frames from different streams
 have the same mmtime, the resulting client-side times [...] 
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
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qye+Vq/Hto94haFZi4CmaqJnntqu09ereTWzSGGlSFw=; b=SMwf12rPoNLhe3S3w/XAF6/Qt
 8xuN9+hU1K43FBebwVzA6gT5uZWfPk+/fYCbhylWOsLK+CdR5vNGT6XMdD97Yf5xmE02y4nXLkon/
 hLmnJlde09ZFccM9HxAzOBVAbVA1ewkQ79UQfetRNtsTvjlIY6eNBQT/MBupvSrLColNk=;
Subject: Re: [Spice-devel] [PATCH spice-gtk v3 1/6] channel-display:
 Minimize the stream lag by ignoring the server one
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
Cc: Spice Devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CkFjdHVhbGx5IEkgZm91bmQgc29tZXRoaW5nIEknbSBhIGJpdCB1bmhhcHB5IHdpdGggaW4gdGhp
cyBwYXRjaC4KClNvIG9uZSBnb2FsIGlzIHRvIG1ha2Ugc3VyZSBhbGwgc3RyZWFtcyBhcmUgaW4g
c3luYy4gVGhpcyBpcyB3aHkgdGhlIAptbXRpbWUgY29udmVyc2lvbiBpcyBwZXJmb3JtZWQgZ2xv
YmFsbHk6IGlmIHR3byBmcmFtZXMgZnJvbSBkaWZmZXJlbnQgCnN0cmVhbXMgaGF2ZSB0aGUgc2Ft
ZSBtbXRpbWUsIHRoZSByZXN1bHRpbmcgY2xpZW50LXNpZGUgdGltZXN0YW1wcyAKc2hvdWxkIGJl
IGlkZW50aWNhbCB0b28uIFRoYXQncyBvbmx5IHBvc3NpYmxlIGJ5IGFwcGx5aW5nIHRoZSBzYW1l
IApvZmZzZXQgdG8gYWxsIHN0cmVhbXMsIHdoaWNoIGlzIHdoYXQgc3BpY2Vfc2Vzc2lvbl9tbXRp
bWUyY2xpZW50X3RpbWUoKSAKZG9lcy4KCkJ1dCB0aGVuIGVhY2ggc3RyZWFtIGFwcGxpZXMgaXRz
IG93biBkZWxheSB0byBtYWtlIHN1cmUgaXQgaGFzIGVub3VnaCAKbWFyZ2luIHRvIGVuc3VyZSBh
IHNtb290aCBwbGF5YmFjay4gVGh1cywgc2luY2UgdGhlIGRlbGF5cyBhcmUgZGlmZmVyZW50IAp0
aGUgZnJhbWUgcGxheWJhY2sgbWF5IG5vdCBiZSBpbiBzeW5jIGFjcm9zcyBzdHJlYW1zLgoKU28g
SSB0aGluayB0aGUgZGVsYXkgbWFuYWdlbWVudCBzaG91bGQgYmUgaGFuZGxlZCBnbG9iYWxseSB0
b28gd2hpY2ggSSAKdGhpbmsgc2hvdWxkIGJlIHF1aXRlIGRvYWJsZS4gQnV0IEkgaGF2ZSBiZWVu
IGJ1c3kgd2l0aCBvdGhlciBzdHVmZiBzbyBJIApkaWQgbm90IGdldCB0aW1lIHRvIGludmVzdGln
YXRlIGFuZCByZXN1Ym1pdC4KCgotLSAKRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2
ZXJzLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
