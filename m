Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 887DC238F6
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 15:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D435892A1;
	Mon, 20 May 2019 13:56:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6BB892A1
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 13:56:43 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hSin9-0002AO-7R; Mon, 20 May 2019 08:57:28 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hSimO-0003Ef-T0; Mon, 20 May 2019 15:56:40 +0200
Date: Mon, 20 May 2019 15:56:40 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <1940036155.18668461.1557991240154.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1905201550160.10407@amboise.dolphin>
References: <E1hR33N-0008KB-NL@amboise>
 <1940036155.18668461.1557991240154.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -102.4
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 16 May 2019, Frediano Ziglio wrote: [...] > > @@ -520,
 7
 +520, 7 @@ static uint32_t get_min_playback_delay(SpiceGstEncoder > > *encoder)
 > > * an I frame) and an average frame. This also takes i [...] 
 Content analysis details:   (-102.4 points, 5.0 required)
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
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vaSg9Vcw75bRc8SkEMH6S9OHwOM6Wq/TviB57pO/CJg=; b=UdvXnBwB4vXsila5ieO2v1llr
 Vk5zWlFmptBNgNaVtkfrEjDQWkuh+30IrFMKDZDUdz7QaC/w3nKV6Rl5TrrHhnZg1oJ8q5jQnf5Hk
 Qrxz3RtUCBGfKrNxvzOIH4YjAplC6FcRBSVZnWjTHUb+toA9dksYo5wpXVl6tBolqjkyk=;
Subject: Re: [Spice-devel] [spice] gstreamer-encoder: Return the average
 frame size as a 32 bit int
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCAxNiBNYXkgMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgpbLi4uXQo+ID4gQEAg
LTUyMCw3ICs1MjAsNyBAQCBzdGF0aWMgdWludDMyX3QgZ2V0X21pbl9wbGF5YmFja19kZWxheShT
cGljZUdzdEVuY29kZXIKPiA+ICplbmNvZGVyKQo+ID4gICAgICAgKiBhbiBJIGZyYW1lKSBhbmQg
YW4gYXZlcmFnZSBmcmFtZS4gVGhpcyBhbHNvIHRha2VzIGludG8gYWNjb3VudCB0aGUKPiA+ICAg
ICAgICogZnJhbWVzIGRyb3BwZWQgYnkgdGhlIGVuY29kZXIgYml0IHJhdGUgY29udHJvbC4KPiA+
ICAgICAgICovCj4gPiAtICAgIHVpbnQ2NF90IHNpemUgPSBnZXRfbWF4aW11bV9mcmFtZV9zaXpl
KGVuY29kZXIpICsKPiA+IGdldF9hdmVyYWdlX2ZyYW1lX3NpemUoZW5jb2Rlcik7Cj4gPiArICAg
IHVpbnQzMl90IHNpemUgPSBnZXRfbWF4aW11bV9mcmFtZV9zaXplKGVuY29kZXIpICsKPiA+IGdl
dF9hdmVyYWdlX2ZyYW1lX3NpemUoZW5jb2Rlcik7Cj4gPiAgICAgIHVpbnQzMl90IHNlbmRfdGlt
ZSA9IE1TRUNfUEVSX1NFQyAqIHNpemUgKiA4IC8gZW5jb2Rlci0+Yml0X3JhdGU7Cj4gPiAgCj4g
Cj4gSGVyZSB5b3UgaGF2ZSA4MDAwICogMiAqIGZyYW1lX3NpemUgc28gY291bGQgb3ZlcmZsb3cg
dWludDMyX3Qgd2l0aAo+IGZyYW1lX3NpemUgPj0gfjI1NmtiLgoKUmlnaHQuIEl0J3MgY29uZnVz
aW5nIHRoYXQgTlNFQ19QRVJfU0VDIGFuZCBOU0VDX1BFUl9NSUxMSVNFQyBhcmUgTEwgCmNvbnN0
YW50cyBidXQgbm90IE5TRUNfUEVSX01JQ1JPU0VDIGFuZCBNU0VDX1BFUl9TRUMuIFNob3VsZCB0
aGF0IGJlIApjaGFuZ2VkPwoKU2luY2UgdGhleSBhcmUgYWxsIGxlc3MgdGhhbiBvciBlcXVhbCB0
byBvbmUgYmlsbGlvbiwgc2hvdWxkIHRoZXkganVzdCAKYmUgYmFzaWMgY29uc3RhbnRzICh3aGlj
aCB3b3VsZCBhdm9pZCB0aGUgJWxsZCB2cy4gJWxkIGNvbmZ1c2lvbiAKd2hlbmV2ZXIgdGhleSBh
cmUgdXNlZCBpbiBhIHRyYWNlKSBvciBzaG91bGQgdGhleSBhbGwgYmUgTEwgY29uc3RhbnRzIHRv
IAphdm9pZCB1bmV4cGVjdGVkIG92ZXJmbG93cy4KCgo+IEkgYWdyZWUgZ2V0X2F2ZXJhZ2VfZnJh
bWVfc2l6ZSBjYW4gc2FmZWx5IHJldHVybnMgdWludDMyX3QgYnV0IHlvdSBzaG91bGQKPiBjaGFu
Z2UgYWJvdmUgbGluZSB0bwo+IAo+ICAgIHVpbnQzMl90IHNlbmRfdGltZSA9ICh1aW50MzJfdCkg
KCh1aW50NjRfdCkgKE1TRUNfUEVSX1NFQyAqIDgpICogc2l6ZSAvIGVuY29kZXItPmJpdF9yYXRl
KTsKPiAKPiBvciBsZWF2ZSBzaXplIHVpbnQ2NF90LgoKSSB3b3VsZCBiZSBvayB3aXRoIHRoYXQg
dG9vLiBJdCdzIG1vc3RseSBoYXZpbmcgZ2V0X2F2ZXJhZ2VfZnJhbWVfc2l6ZSgpIApyZXR1cm4g
YW4gdWludDY0X3Qgd2hlbiBnZXRfbWF4aW11bV9mcmFtZV9zaXplKCkgcmV0dXJucyBhbiB1aW50
MzJfdCAKdGhhdCB3YXMgYm90aGVyaW5nIG1lLgoKLS0gCkZyYW5jb2lzIEdvdWdldCA8ZmdvdWdl
dEBjb2Rld2VhdmVycy5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
