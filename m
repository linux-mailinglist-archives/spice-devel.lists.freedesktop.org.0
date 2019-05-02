Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2309114AF
	for <lists+spice-devel@lfdr.de>; Thu,  2 May 2019 10:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549AA8922A;
	Thu,  2 May 2019 08:04:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2138922A
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 08:04:28 +0000 (UTC)
Received: from amboise.dolphin.eu.org ([82.243.26.181] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hM6iQ-0000Un-4g; Thu, 02 May 2019 03:05:19 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hM6hY-0003Ig-TE; Thu, 02 May 2019 10:04:20 +0200
Date: Thu, 2 May 2019 10:04:20 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <440756961.15067105.1556263925510.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1905021002230.25470@amboise.dolphin>
References: <E1hE9Tp-0006PZ-O0@amboise>
 <440756961.15067105.1556263925510.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -102.4
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 26 Apr 2019, Frediano Ziglio wrote: > > > > We send
 mm_time adjustments to the client whenever there is no audio > > playback.
 There is no audio playback on startup. Therefore > > mm_time_enabled must
 be true on startup. QED. > > > > Ho [...] 
 Content analysis details:   (-102.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
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
 bh=Y2RXlwjvHex28qJLGWLAydEFkxIcfrVXQBs7+J3TBUw=; b=kPQ7c9np3FpWaahnCzqgqTzLm
 mAj4N9ycDFPOrHMnKkdRdINZ59br4IByeeiWTgz9UVIIX8CTTrB6N1aIUi1lzyyiTYHjF9bbulAm/
 9HImJWDpndTdx3umCyeVVbn6wyaXc70s7uaWJ7gTVPLB6TMLXQn++6qu33xPqXh9fDXNA=;
Subject: Re: [Spice-devel] [spice] Enable mm_time adjustments on startup
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

T24gRnJpLCAyNiBBcHIgMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgoKPiA+IAo+ID4gV2Ug
c2VuZCBtbV90aW1lIGFkanVzdG1lbnRzIHRvIHRoZSBjbGllbnQgd2hlbmV2ZXIgdGhlcmUgaXMg
bm8gYXVkaW8KPiA+IHBsYXliYWNrLiBUaGVyZSBpcyBubyBhdWRpbyBwbGF5YmFjayBvbiBzdGFy
dHVwLiBUaGVyZWZvcmUKPiA+IG1tX3RpbWVfZW5hYmxlZCBtdXN0IGJlIHRydWUgb24gc3RhcnR1
cC4gUUVELgo+ID4gCj4gCj4gSG93IGRpZCB5b3UgZGVtb25zdHJhdGVkIGl0ID8KClN0YXJ0aW5n
IFhzcGljZSAoc28gbm8gV2luZG93cyBqaW5nbGUgb3Igb3RoZXIgYmVpbmcgcGxheWVkIG9uIHN0
YXJ0dXApLCAKcGxheWluZyBhIFdlYkdMIGRlbW8sIGFuZCB0aGVuIHRyeWluZyB0byBmaWd1cmUg
b3V0IHdoeSB0aGUgc2VydmVyJ3MgCmxhdGVuY3kgYWRqdXN0bWVudHMgaGFkIGFic29sdXRlbHkg
bm8gZWZmZWN0IG9uIHRoZSBjbGllbnQuCgoKLS0gCkZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBj
b2Rld2VhdmVycy5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
