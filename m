Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726BF3C934
	for <lists+spice-devel@lfdr.de>; Tue, 11 Jun 2019 12:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A53890BA;
	Tue, 11 Jun 2019 10:44:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E4C890BA
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Jun 2019 10:44:19 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1haeGt-00034G-8c; Tue, 11 Jun 2019 05:44:56 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1haeGG-0003w7-Po; Tue, 11 Jun 2019 12:44:16 +0200
Date: Tue, 11 Jun 2019 12:44:16 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Victor Toso <victortoso@redhat.com>
In-Reply-To: <20190611102714.hf42bgos6fegjfdk@toolbox>
Message-ID: <alpine.DEB.2.21.1906111241340.17138@amboise.dolphin>
References: <E1had6s-0004ka-6n@amboise>
 <20190611102714.hf42bgos6fegjfdk@toolbox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 11 Jun 2019, Victor Toso wrote: [...] > > Thankfully
 the frame would usually be the last decoded frame > > and would thus be
 displayed
 anyway. > > Have you found while reading the code or some [...] 
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
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oJq3hAOCO4dXKquJciZ15/1IXawcOX/p91GUQJakYfE=; b=Qktv2h0fbJiaP6fPzEb64kv9t
 HfMLxTX4GIrsYV2rcNufpmcNyj9SieUpiVBjKlAeuQF7zQQtbyTJd47T1o8zjqfEbJM25hAABHQsG
 J1w3IhG0fmlFqDjtvrMQRtRA2dhrlghJv7eT1V9LU6bOMn0huypVLJ1cMiPEAwpVM4lrk=;
Subject: Re: [Spice-devel] [client] gstreamer: A frame is not late if it
 should be displayed immediately
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

T24gVHVlLCAxMSBKdW4gMjAxOSwgVmljdG9yIFRvc28gd3JvdGU6ClsuLi5dCj4gPiBUaGFua2Z1
bGx5IHRoZSBmcmFtZSB3b3VsZCB1c3VhbGx5IGJlIHRoZSBsYXN0IGRlY29kZWQgZnJhbWUKPiA+
IGFuZCB3b3VsZCB0aHVzIGJlIGRpc3BsYXllZCBhbnl3YXkuCj4gCj4gSGF2ZSB5b3UgZm91bmQg
d2hpbGUgcmVhZGluZyB0aGUgY29kZSBvciBzb21lIG90aGVyIHdheT8gSnVzdAo+IGN1cmlvdXMu
CgpJJ20gd29ya2luZyBvbiB0aGUgY2xpZW50LXNpZGUgc3RyZWFtIGxhZyBhbmQgSSBvY2Nhc2lv
bmFsbHkgaGFkIHRoZSAKInJlbmRlcmluZyB0b28gbGF0ZSIgdHJhY2Ugd2hpY2ggZGlkIG5vdCBz
ZWVtIHJpZ2h0LgoKCj4gPiBBbHNvIHJldmVyc2UgdGhlIGluZXF1YWxpdHkgdG8gbWFrZSBpdCBl
YXNpZXIgdG8gdW5kZXJzdGFuZC4KPiAKPiBUaGF0J3MgcmVsYXRpdmUgYnV0IEkgZG9uJ3QgbWlu
ZCA7KQoKU3VyZSBidXQgaXQgbG9va3MgbW9yZSBsaWtlICJmcmFtZS0+dGltZSA+PSBub3ciIHNv
IEkgbGlrZSBpdCBiZXR0ZXIuCkknbSBub3QgZGVhZCBzZXQgb24gb25lIGZvciBvciBhbm90aGVy
IHRob3VnaC4KCgotLSAKRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
