Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79489847D4
	for <lists+spice-devel@lfdr.de>; Wed,  7 Aug 2019 10:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136D98922F;
	Wed,  7 Aug 2019 08:45:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C09E8922F
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Aug 2019 08:45:49 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hvHa7-0001Ok-Sw; Wed, 07 Aug 2019 03:46:04 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hvHZq-0003QE-2B; Wed, 07 Aug 2019 10:45:46 +0200
Date: Wed, 7 Aug 2019 10:45:46 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <1342565575.4137102.1564661024115.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1908071043500.29225@amboise.dolphin>
References: <E1hlYpy-0004W0-2Q@amboise>
 <1342565575.4137102.1564661024115.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 1 Aug 2019, Frediano Ziglio wrote: [...] > > @@ -254,
 7
 +261,7 @@ typedef struct SPICE_ATTR_PACKED VDAgentDeviceDisplayInfo > > {
 > > uint32_t monitor_id; > > uint32_t device_display_id; > > ui [...] 
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
 bh=gOeno8vdxJUpO/aHe75mWijsSzE8u6OTit08JNQ3MXo=; b=dbetUqCkXk4/2LIJQIG6K7NhC
 FaNfxi4ruKvuPwlLT8VexhvtuVyQCb2+/ecBE7UDPOPqIFwqSBqIRDRru2jfL2w+zlRB7WYqIto5g
 W3hD1EWKdJ+cOt0nxOdpBgnWhbY7tX8S0yVeGDK/mLPmKPqFzI/NuxmTP1edvl/zq1p8U=;
Subject: Re: [Spice-devel] [protocol] protocol: Add some comments to
 vd_agentd.h
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

T24gVGh1LCAxIEF1ZyAyMDE5LCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6ClsuLi5dCj4gPiBAQCAt
MjU0LDcgKzI2MSw3IEBAIHR5cGVkZWYgc3RydWN0IFNQSUNFX0FUVFJfUEFDS0VEIFZEQWdlbnRE
ZXZpY2VEaXNwbGF5SW5mbwo+ID4gewo+ID4gICAgICB1aW50MzJfdCBtb25pdG9yX2lkOwo+ID4g
ICAgICB1aW50MzJfdCBkZXZpY2VfZGlzcGxheV9pZDsKPiA+ICAgICAgdWludDMyX3QgZGV2aWNl
X2FkZHJlc3NfbGVuOwo+ID4gLSAgICB1aW50OF90IGRldmljZV9hZGRyZXNzWzBdOyAgLy8gYSB6
ZXJvLXRlcm1pbmF0ZWQgc3RyaW5nCj4gPiArICAgIHVpbnQ4X3QgZGV2aWNlX2FkZHJlc3NbMF07
ICAvKiBhIHplcm8tdGVybWluYXRlZCBzdHJpbmcgKi8KPiAKPiBOb3QgcmVhbGx5IHN0cm9uZyBh
Ym91dCBpdC4KCkl0J3MgdGhlIG9ubHkgcGxhY2Ugd2hlcmUgYSBDKystc3R5bGUgY29tbWVudCBp
cyB1c2VkIHdoaWNoIG1ha2VzIGl0IAppbmNvbnNpc3RlbnQgd2l0aCB0aGUgc3R5bGUgb2YgdGhl
IHJlc3Qgb2YgdGhlIGNvZGUuCgoKPiBDYW4gSSBzZW5kIGFuIHVwZGF0ZSB0byB0aGlzIHBhdGNo
ID8KClN1cmUuCkknbSBmaW5lIHdpdGggdGhlIHByb3Bvc2VkIGNoYW5nZXMuCgoKLS0gCkZyYW5j
b2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
