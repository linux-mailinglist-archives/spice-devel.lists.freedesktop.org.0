Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2564EBDA
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 17:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB3B6E8DB;
	Fri, 21 Jun 2019 15:22:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7996E8DB
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 15:22:34 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1heLNa-0002Xi-Km; Fri, 21 Jun 2019 10:23:07 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1heLN0-0007le-TA; Fri, 21 Jun 2019 17:22:30 +0200
Date: Fri, 21 Jun 2019 17:22:30 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <1049128713.23381030.1560853428399.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1906211710010.17144@amboise.dolphin>
References: <cover.1560790607.git.fgouget@free.fr>
 <80842530005e7f5601d067c4cbb7268de82dd999.1560790607.git.fgouget@free.fr>
 <1304943834.23355861.1560846216724.JavaMail.zimbra@redhat.com>
 <1049128713.23381030.1560853428399.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 18 Jun 2019, Frediano Ziglio wrote: > > > > > > The
 point of the mmtime timestamps is that they are the same on the > > > server
 and client thanks to the client running its own mmtime clock > > >
 synchronized, modulo a server-controlled [...] 
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
 bh=zPNrlcoF3ewkwS9DBxj8zAFnQJQHyftEIWZCsSNCYlA=; b=Fm5BxYj68llAVHKbj5pxvxvVt
 iih8pKTchk0PfwTk0z5TtdcKAjlkgZIJ0BzBmUO41svUK9wi0+eLE0MmvWGEG5FG34wiWRfTYt9LR
 X15eUCr6B04zMSUrKtg69y/ttzKl3f77fV+dKmwsZ3ASDqS6RVfQtFDiRXTjjT3BkfzNI=;
Subject: Re: [Spice-devel] [client v2 06/12] channel-display: Rename the
 frame mmtime variables
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

T24gVHVlLCAxOCBKdW4gMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgoKPiA+ID4gCj4gPiA+
IFRoZSBwb2ludCBvZiB0aGUgbW10aW1lIHRpbWVzdGFtcHMgaXMgdGhhdCB0aGV5IGFyZSB0aGUg
c2FtZSBvbiB0aGUKPiA+ID4gc2VydmVyIGFuZCBjbGllbnQgdGhhbmtzIHRvIHRoZSBjbGllbnQg
cnVubmluZyBpdHMgb3duIG1tdGltZSBjbG9jawo+ID4gPiBzeW5jaHJvbml6ZWQsIG1vZHVsbyBh
IHNlcnZlci1jb250cm9sbGVkIG9mZnNldCwgdG8gdGhlIHNlcnZlcidzCj4gCj4gTm90IHN1cmUg
YWJvdXQgdGhlICJtb2R1bG8gYSBzZXJ2ZXItY29udHJvbGxlZCBvZmZzZXQiLCBJIHdvdWxkCj4g
c2F5ICJiaWFzZWQgYnkgYSBzZXJ2ZXItY29udHJvbGxlZCBvZmZzZXQiLgoKSSdtIG9rIHdpdGgg
dGhlIHdvcmRpbmcgY2hhbmdlLgoKCj4gPiA+IG1tdGltZSBjbG9jay4KPiA+ID4gU28gdGhlIGZy
YW1lIG1tdGltZSB0aW1lc3RhbXBzIGFyZSBuZWl0aGVyIHRpZWQgdG8gdGhlIHNlcnZlciBub3Ig
dGhlCj4gPiA+IGNsaWVudC4gVGhleSBhcmUgaG93ZXZlciB0aWVkIHRvIHRoZSBmcmFtZS4KPiA+
IAo+ID4gSSBnb3QgdG8gcmVhZCB0aGlzIGxhc3QgcGFyYWdyYXBoIGNvdXBsZSBvZiB0aW1lcyB0
byBtYWtlIGl0IHNvdW5kcyByaWdodCwKPiA+IGJ1dCBJIGRvbid0IGhhdmUgc3VnZ2VzdGlvbnMu
CgpNYXliZToKClRodXMgcHJlZml4aW5nIG1tdGltZSB2YXJpYWJsZSBuYW1lcyB3aXRoIGNsaWVu
dCBvciBzZXJ2ZXIgZG9lcyAKbm90IHJlYWxseSBtYWtlIHNlbnNlIHNvIGl0IGlzIGJldHRlciB0
byB1c2UgdGhlIHByZWZpeCB0byBpbmRpY2F0ZSAKd2hhdCB0aGV5IGFyZSByZWxhdGVkIHRvIHN1
Y2ggYXMgdGhlIGZyYW1lIG9yIHRoZSBjdXJyZW50IHRpbWUuCgoKWy4uLl0KPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIgc2VydmVyX21tdGltZSwKPiA+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIgY2xpZW50X21t
dGltZSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIg
ZnJhbWVfbW10aW1lLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Z3VpbnQzMiBjdXJyZW50X21tdGltZSkKWy4uLl0KCi0tIApGcmFuY29pcyBHb3VnZXQgPGZnb3Vn
ZXRAY29kZXdlYXZlcnMuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
