Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55157E1AB9
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 14:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7AE6EA7B;
	Wed, 23 Oct 2019 12:36:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 906 seconds by postgrey-1.36 at gabe;
 Wed, 23 Oct 2019 12:36:22 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF4E6EA7B
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 12:36:22 +0000 (UTC)
Received: from 97-116-191-87.mpls.qwest.net ([97.116.191.87] helo=[10.0.0.11])
 by mail.codeweavers.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <jwhite@codeweavers.com>) id 1iNFdZ-00046u-UU
 for spice-devel@lists.freedesktop.org; Wed, 23 Oct 2019 07:21:15 -0500
To: spice-devel@lists.freedesktop.org
References: <ba6c323774fef3ca9517ec3b3c8bd5@cweb012.nm.nfra.io>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <f4fa4e26-ddb6-0ea6-360c-8e67da0c5ff4@codeweavers.com>
Date: Wed, 23 Oct 2019 07:21:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ba6c323774fef3ca9517ec3b3c8bd5@cweb012.nm.nfra.io>
Content-Language: en-US
X-Spam-Score: -26.2
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 I actively maintain spice-html5 and work to review patches
 and see that they are committed. In the cases where I miss a patch or two,
 other project members usually do a good job of covering them as we [...] 
 Content analysis details:   (-26.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gL6wNtodFdfb8zHBL5Bl44hJj9KA5KNcZ+pjqvbfQF0=; b=ovdbar+A7s3ETQNDsbf/Y5oQqB
 YqLoksTNXsEwEiqDKW3KpFV5koVj7P6knSZaghCMjGKnwXrBAJs48k51OCdDXYDqxIU9ie/+ZP0uR
 dwcCXmxBGlpmiXs0u35Def5XcuERRiYtPji/0GrvViNiw2Wee3eNPL2lMZXr/Lhd7J6g=;
Subject: Re: [Spice-devel] I want to contribute spice html5 client
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpJIGFjdGl2ZWx5IG1haW50YWluIHNwaWNlLWh0bWw1IGFuZCB3b3JrIHRvIHJldmlldyBw
YXRjaGVzIGFuZCBzZWUgdGhhdCAKdGhleSBhcmUgY29tbWl0dGVkLiAgSW4gdGhlIGNhc2VzIHdo
ZXJlIEkgbWlzcyBhIHBhdGNoIG9yIHR3bywgb3RoZXIgCnByb2plY3QgbWVtYmVycyB1c3VhbGx5
IGRvIGEgZ29vZCBqb2Igb2YgY292ZXJpbmcgdGhlbSBhcyB3ZWxsLgoKWW91ciBjb250cmlidXRp
b25zIHdvdWxkIGJlIHdlbGNvbWUuCgpDaGVlcnMsCgpKZXJlbXkKCk9uIDEwLzIzLzE5IDY6MTAg
QU0sIOyhsOuvuOumrCB3cm90ZToKPiBIaSwgSSdtIGludGVyZXN0ZWQgdG8gZGV2ZWxvcCBzcGlj
ZSB3ZWIgY2xpZW50Lgo+IAo+IEJ1dCBJIGRvbid0IHRoaW5rIHNwaWNlLWh0bWw1IHByb2plY3Qg
aXMgYWRtaW5pc3RyYXRlZCB3ZWxsLCBJcyB0aGUgCj4gcHJvamVjdCBnb2luZyB3ZWxsPwo+IAo+
IEkgZm91bmQgb3V0IGFub3RoZXIgc3BpY2Ugd2ViIGNsaWVudCBwcm9qZWN0LCBleWVPUyBzcGlj
ZS13ZWItY2xpZW50IAo+IHByb2plY3QuCj4gCj4gSSBrbm93IHRoZXNlIHR3byBwcm9qZWN0cyBh
cmVuJ3QgcmVsZXZhbnQuCj4gCj4gSSB3YW50IHRvIGNvbnRyaWJ1dGUgYW55IHByb2plY3Qgb2Yg
dGhlbS4KPiAKPiBCdXQgSSBkb24ndCBjaG9vc2Ugd2hlcmUgSSBzdGFydC4KPiAKPiBJJ20gc29y
cnkgYnV0IEkgd2FudCB0byBrbm93IHdoaWNoIHByb2plY3QgY29udHJpYnV0aW9uIGFyZSB3b3J0
aHdoaWxlLgo+IAo+IE1heWJlIHNwaWNlLWh0bWw1IHByb2plY3QgaXNuJ3QgYWRtaW5pc3RyYXRl
ZCBieSBhbnlvbmUsIEkgdGhpbmsgdGhhdCAKPiBjb250cmlidXRpb24gdG8gZXllT1MgcHJvamVj
dCBiZXR0ZXJzLi4uLgo+IAo+IEkgd291bGQgYXBwcmVjaWF0ZSB5b3VyIHJlcGx5Lgo+IAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
