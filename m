Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D0075725
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 20:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6633A6E816;
	Thu, 25 Jul 2019 18:43:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43DD6E816
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 18:43:52 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=[192.168.2.132])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hqiiq-0003Kd-0H; Thu, 25 Jul 2019 13:44:12 -0500
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Brendan Shanks <bshanks@codeweavers.com>
In-Reply-To: <20190717021606.2737-1-bshanks@codeweavers.com>
Date: Thu, 25 Jul 2019 11:43:49 -0700
Message-Id: <CC387F6E-494A-4F22-9FE6-BED47A0578E9@codeweavers.com>
References: <20190711200305.4616-1-bshanks@codeweavers.com>
 <20190717021606.2737-1-bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > On Jul 16, 2019, at 7:16 PM,
 Brendan Shanks <bshanks@codeweavers.com>
 wrote: > > Add a cache to x11spice for SHM segments. > > v2 should address
 Frediano's comments: style, use of G_N_ELEMENTS, > us [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=To:References:Message-Id:
 Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
 Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=En0Pb6gSDu8ZbRP6icO2lNTIvGYmMlOn4d+LQ2t3Iu8=; b=oWO+2V5yIJaPpdiToxZm4o4T1
 1mhedwmWZgatUGf0U1ehUHejLGwJIuMkhHLGbZtzG7VTKdDaa8A/Z2j2hwhmNwUhmpDG5teB6Ju//
 TsynhH5YrBPfUuq8DOPoOEFGZ+I9huj22L2RsUgLpT291mkgfuO2vY2PhUenAerYYCVBY=;
Subject: Re: [Spice-devel] [PATCH x11spice v2 0/3] Add cache for SHM segments
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

Cj4gT24gSnVsIDE2LCAyMDE5LCBhdCA3OjE2IFBNLCBCcmVuZGFuIFNoYW5rcyA8YnNoYW5rc0Bj
b2Rld2VhdmVycy5jb20+IHdyb3RlOgo+IAo+IEFkZCBhIGNhY2hlIHRvIHgxMXNwaWNlIGZvciBT
SE0gc2VnbWVudHMuCj4gCj4gdjIgc2hvdWxkIGFkZHJlc3MgRnJlZGlhbm8ncyBjb21tZW50czog
c3R5bGUsIHVzZSBvZiBHX05fRUxFTUVOVFMsCj4gdXNpbmcgdW5zaWduZWQgdHlwZXMgZm9yIHdp
ZHRoL2hlaWdodC9zaXplLCBjcmVhdGluZyBhIHNlcGFyYXRlIHN0cnVjdAo+IHRvIGhvbGQgYWxs
IHRoZSBzZWdtZW50LXNwZWNpZmljIHZhcmlhYmxlcywgYW5kIHJlZHVjaW5nIHRyYXZlcnNhbHMg
b2YKPiB0aGUgY2FjaGUuCj4gCj4gQnJlbmRhbiBTaGFua3MgKDMpOgo+ICBVc2UgdW5zaWduZWQg
aW50L3NpemVfdCBmb3IgZGlzcGxheSB3aWR0aC9oZWlnaHQvYnVmZmVyIHNpemUKPiAgQ3JlYXRl
IHNlcGFyYXRlIHNobV9zZWdtZW50X3Qgc3RydWN0IGZvciBTSE0gc2VnbWVudHMKPiAgQWRkIGNh
Y2hlIGZvciBTSE0gc2VnbWVudHMKPiAKPiBkb2Mvc3BpY2VfaW5kZW50IHwgICAxICsKPiBzcmMv
ZGlzcGxheS5jICAgIHwgMjA5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0tCj4gc3JjL2Rpc3BsYXkuaCAgICB8ICAyNSArKysrLS0KPiBzcmMvc2Nhbi5jICAg
ICAgIHwgICAyICstCj4gc3JjL3Nlc3Npb24uYyAgICB8ICAgMiArLQo+IHNyYy9zcGljZS5jICAg
ICAgfCAgIDIgKy0KPiA2IGZpbGVzIGNoYW5nZWQsIDIwMCBpbnNlcnRpb25zKCspLCA0MSBkZWxl
dGlvbnMoLSkKPiAKPiAtLSAKPiAyLjE3LjEKPiAKCkZyZWRpYW5vIGFuZCBvdGhlcnMsCgpEbyB5
b3UgaGF2ZSBhbnkgZmVlZGJhY2sgZm9yIHRoZXNlIHBhdGNoZXM/CgpCcmVuZGFuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
