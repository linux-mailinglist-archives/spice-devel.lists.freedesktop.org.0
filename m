Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7020C5E20F
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 12:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A96E6E113;
	Wed,  3 Jul 2019 10:31:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2747F6E113
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 10:31:33 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hicYS-00041j-GM; Wed, 03 Jul 2019 05:32:01 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hicXx-0004GX-MJ; Wed, 03 Jul 2019 12:31:29 +0200
Date: Wed, 3 Jul 2019 12:31:29 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Uri Lublin <uril@redhat.com>
In-Reply-To: <6f7177e2-f149-8c75-b91f-7645a72d455a@redhat.com>
Message-ID: <alpine.DEB.2.21.1907021507120.24896@amboise.dolphin>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
 <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906251256330.18664@amboise.dolphin>
 <672065155.24499471.1561477021845.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906251758070.4284@amboise.dolphin>
 <6f7177e2-f149-8c75-b91f-7645a72d455a@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 26 Jun 2019, Uri Lublin wrote: [...] > > I'd very
 much prefer the cast to be in the expression rather than hidden > > in some
 far away macro. > > Is that true even if the cast is needed in all [...] 
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
 bh=qZ4PuLxK3GtKk7+VLxfNk8u8AhmEsI3YwA507GWXmHU=; b=S6lvZksddfeA9tbR1UkMRNfXm
 OcP0BIwBHDs3a9rWK3LgzSQw5iseYjz+YcWw4BBHFLFazMyXNmDykQbSmpkC+hj5ciFR5rNlxWaIy
 0+iir9kNL6G0nGrMukk1/mwhvygjznB4JheEbaIuGqAJQg9lGi2Xfvjst5QrTiZPdDm3s=;
Subject: Re: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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

T24gV2VkLCAyNiBKdW4gMjAxOSwgVXJpIEx1YmxpbiB3cm90ZToKWy4uLl0KPiA+IEknZCB2ZXJ5
IG11Y2ggcHJlZmVyIHRoZSBjYXN0IHRvIGJlIGluIHRoZSBleHByZXNzaW9uIHJhdGhlciB0aGFu
IGhpZGRlbgo+ID4gaW4gc29tZSBmYXIgYXdheSBtYWNyby4KPiAKPiBJcyB0aGF0IHRydWUgZXZl
biBpZiB0aGUgY2FzdCBpcyBuZWVkZWQgaW4gYWxsIHRoZSBleHByZXNzaW9ucwo+IHRoYXQgdXNl
IHRoaXMgY29uc3RhbnQgPwoKWWVzLgoKVGhhdCdzIGZhciBmcm9tIGJlaW5nIHRoZSBjYXNlIHRo
b3VnaC4KSSBjb3VudCA4IGNhc3RzIG91dCBvZiAyNiBpbnN0YW5jZXMgb2YgTlNFQ19QRVJfU0VD
IGFuZCBpdHMgZGVyaXZhdGl2ZXMuCgpBbnl3YXksIHNpbmNlIHRoZXJlJ3Mgb3Bwb3NpdGlvbiB0
byB0aGUgJ25vIGNhc3QnIGFwcHJvYWNoIEknbGwgc2VuZCBhIApwYXRjaCBiYXNlZCBvbiBJTlQ2
NF9DKCkgaW5zdGVhZC4KCi0tIApGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
