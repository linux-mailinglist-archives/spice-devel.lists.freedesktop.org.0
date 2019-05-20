Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 765FD238A9
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 15:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0658928B;
	Mon, 20 May 2019 13:47:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53ECC8928B
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 13:47:21 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hSie3-00021g-BB; Mon, 20 May 2019 08:48:05 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hSidI-0006H2-QG; Mon, 20 May 2019 15:47:16 +0200
Date: Mon, 20 May 2019 15:47:16 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <1940036155.18668461.1557991240154.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1905201545120.10407@amboise.dolphin>
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
 Content preview:  On Thu, 16 May 2019, Frediano Ziglio wrote: > > > > It makes
 no sense to expect average frame sizes anywhere close to 2GB. > > > >
 Signed-off-by:
 Francois Gouget <fgouget@codeweavers.com> > > Sure but 256 kb are possible.
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
 bh=VhZ8WhK7Fz05Ow34KuVfAvwSXCtIXkXEjTYHLlRpUrI=; b=MHZaXEEYxByHo2xP3Bh5i6KSW
 qHV5eKgWCuX9rwsP2TIEyBTsAfsJ5DGQmq7zDpPhtuKYCFpyijiKS5kkSRylzMrDRTPwzE7yi/X+N
 nIuQk3jCBN0HNhDYwK9Vu1JcJxtlJJocipdrLxTyrH+YA88Fh90YiLll+RuipWI0CW7Oc=;
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

T24gVGh1LCAxNiBNYXkgMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgoKPiA+IAo+ID4gSXQg
bWFrZXMgbm8gc2Vuc2UgdG8gZXhwZWN0IGF2ZXJhZ2UgZnJhbWUgc2l6ZXMgYW55d2hlcmUgY2xv
c2UgdG8gMkdCLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3Vn
ZXRAY29kZXdlYXZlcnMuY29tPgo+IAo+IFN1cmUgYnV0IDI1NiBrYiBhcmUgcG9zc2libGUuCgpF
dmVuIG11bHRpcGxpZWQgYnkgdHdvIHRoYXQgZml0cyBwcmV0dHkgd2VsbCBpbiBhIDMyIHNpZ25l
ZCBpbnRlZ2VyLgoKCi0tIApGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29t
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
