Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDD346D26
	for <lists+spice-devel@lfdr.de>; Sat, 15 Jun 2019 02:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB5589266;
	Sat, 15 Jun 2019 00:14:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4603889266
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Jun 2019 00:14:46 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hbwLn-0001KP-IF; Fri, 14 Jun 2019 19:15:21 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hbwLC-0002zn-5u; Sat, 15 Jun 2019 02:14:42 +0200
Date: Sat, 15 Jun 2019 02:14:42 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <87006434.22885842.1560532156244.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1906150211110.8132@amboise.dolphin>
References: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
 <87006434.22885842.1560532156244.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 14 Jun 2019,
 Frediano Ziglio wrote: > > > > Signed-off-by:
 Francois Gouget <fgouget@codeweavers.com> > > Considering that the field
 is public and that code will get > slower and bigger at least would be good
 to describe the reason > why [...] 
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
 bh=jhg4DiDw43OCR/GKhzeszD2lpqyptTYykjV/UepmqGU=; b=w5fdmCbPpEpOWEq9buPhYroEh
 2g3/GlF3tH+Mk1lZW8RVYQ+FwvuKMvn1FyYgF5wfM1BBq9ZCRd69rc3TgDnmeNonC3KG3eKmq8b2x
 oed0zHINmH+s5yAa4C7bDJVdOAaQqWNGMkpvOicTSDc96IWft60/qmUPVV86a6rIfJsd4=;
Subject: Re: [Spice-devel] [client 1/5] gstreamer: Avoid direct access to
 GQueue fields
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

T24gRnJpLCAxNCBKdW4gMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgoKPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KPiAK
PiBDb25zaWRlcmluZyB0aGF0IHRoZSBmaWVsZCBpcyBwdWJsaWMgYW5kIHRoYXQgY29kZSB3aWxs
IGdldCAKPiBzbG93ZXIgYW5kIGJpZ2dlciBhdCBsZWFzdCB3b3VsZCBiZSBnb29kIHRvIGRlc2Ny
aWJlIHRoZSByZWFzb24KPiB3aHkgeW91IGNvbnNpZGVyIGl0IGJldHRlci4KCkNvbnNpc3RlbmN5
IG1vc3RseS4gVGhpcyBpcyB0aGUgb25seSBwbGFjZSB3aGVyZSB3ZSBhY2Nlc3MgdGhlIEdRdWV1
ZSAKZmllbGRzLiBJbiBvdGhlciBwbGFjZXMgd2UgdXNlIGdfcXVldWVfcGVla19oZWFkX2xpbmso
KSBpbnN0ZWFkIG9mIApkZWNvZGluZ19xdWV1ZS0+aGVhZCBmb3IgaW5zdGFuY2UuCgpCdXQgSSdt
IGZpbmUgd2l0aCBrZWVwaW5nIGRlY29kaW5nX3F1ZXVlLT5sZW5ndGggaWYgdGhhdCdzIHByZWZl
cnJlZC4KCi0tIApGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
