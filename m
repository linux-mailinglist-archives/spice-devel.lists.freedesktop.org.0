Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3974CA076
	for <lists+spice-devel@lfdr.de>; Wed,  2 Mar 2022 10:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B5D10F286;
	Wed,  2 Mar 2022 09:18:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326A710EAE4
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Mar 2022 05:45:46 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41103.protonmail.ch (Postfix) with ESMTPS id 4K7jlD2Chbz4x0LV
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Mar 2022 05:45:44 +0000 (UTC)
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com
 header.b="WjctEcpi"
Date: Wed, 02 Mar 2022 05:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1646199939;
 bh=h1JJe2wGIs5VtkvmVbHnQhykS+tvCzNyLUW//BGLE8Q=;
 h=Date:To:From:Reply-To:Subject:Message-ID:From:To:Cc:Date:Subject:
 Reply-To:Feedback-ID:Message-ID;
 b=WjctEcpiBenPZl/BniFk1sQJnzg7o1YQYhkZ8TRzBYSj0x/SXhsUDcq/3oNaKKG8u
 c9jQSwkfePiXJgq3BDMGWLNg5EOjqNImf5LVbi8ti0N7dkN9XGIyH1CtFUrRBJiGuQ
 KF8viGlmq4sD+tOLNtjp2+S6EMsENz3RXLpkaNfiiCBJRxojf8koiiZ3qQTQYVJodb
 9cvTaBxjwa8rClPDFPmw9RTdHJFqGqWVqh18zrv3OoxvRaSaP1eQ1gMCCIBHtLzY5r
 IQ2I4PFG1hHMw6ctTtZschyZSDQiFAh0R8UT2rc52Nvvux/t8zZKqqW3vjkQMoQ8+K
 S+JiKjlx0tYwg==
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: LordShrimpPineapple <LordShrimpPineapple@protonmail.com>
Message-ID: <jMSHAL3aQWRzZvQo8tBPtZc14eFL-PHBvnyQAcR8dBIH8OOmxvsVdu0HNQFgoSq9YaeOpmtYRnoyVomdTyqRS0GJEW9va8tNYtDFaQ12Mjo=@protonmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_0mPzNBwrvqVTHnZBduhJ8QlhMi4PdTPqfQuiiO8l4"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,HTML_MESSAGE,
 T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
X-Mailman-Approved-At: Wed, 02 Mar 2022 09:18:43 +0000
Subject: [Spice-devel] KVM spice question
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Reply-To: LordShrimpPineapple <LordShrimpPineapple@protonmail.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.

--b1_0mPzNBwrvqVTHnZBduhJ8QlhMi4PdTPqfQuiiO8l4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SSBhbSB1c2luZyBhIEtWTSBWaXJ0dWFsIE1hY2hpbmUgZm9yIHRoZSBwdXJwb3NlIG9mIGlzb2xh
dGluZyAobGVnYWwpIGludGVybmV0IGFjdGl2aXR5IGZyb20gc3VydmVpbGxhbmNlIGJpZyB0ZWNo
IGxpa2UgR29vZ2xlLCBnb3Zlcm5tZW50LCBhbmQgaGFja2Vycy4gQnV0IEkgd2FudCB0byB1c2Ug
U1BJQ0UgdG8gc2hhcmUgdGhlIGNvcHkvcGFzdGUgY2xpcGJvYXJkIHRvIG1ha2UgdGhlIHdvcmtm
bG93IGVhc2llci4gRG9lcyBzZXR0aW5nIHVwIFNQSUNFIG1ha2Ugb25lIG1vcmUgdnVsbmVyYWJs
ZSB0byBtYWxpY2lvdXMgYWN0b3JzIGJyZWFraW5nIG91dCBvZiB0aGUgVk0gYm94IHRvIHRoZSBo
b3N0Pw==

--b1_0mPzNBwrvqVTHnZBduhJ8QlhMi4PdTPqfQuiiO8l4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PHAgc3R5bGU9Im1hcmdpbi1ib3R0b206MGluO2xpbmUtaGVpZ2h0OjEwMCU7YmFja2dyb3VuZDp0
cmFuc3BhcmVudCBub25lIHJlcGVhdCBzY3JvbGwgMCUgMCUiPjxmb250IHN0eWxlPSJmb250LXNp
emU6MTZwdCIgc2l6ZT0iNSI+SSBhbSB1c2luZyBhIEtWTSBWaXJ0dWFsDQpNYWNoaW5lIGZvciB0
aGUgcHVycG9zZSBvZiBpc29sYXRpbmcgPC9mb250Pjxmb250IHN0eWxlPSJmb250LXNpemU6MTZw
dCIgc2l6ZT0iNSI+KGxlZ2FsKQ0KPC9mb250Pjxmb250IHN0eWxlPSJmb250LXNpemU6MTZwdCIg
c2l6ZT0iNSI+aW50ZXJuZXQgYWN0aXZpdHkgZnJvbQ0KPC9mb250Pjxmb250IHN0eWxlPSJmb250
LXNpemU6MTZwdCIgc2l6ZT0iNSI+c3VydmVpbGxhbmNlIGJpZyB0ZWNoDQpsaWtlIEdvb2dsZSwg
Z292ZXJubWVudCwgYW5kIGhhY2tlcnMuIEJ1dCBJIHdhbnQgdG8gdXNlIFNQSUNFIHRvDQpzaGFy
ZSB0aGUgY29weS9wYXN0ZSBjbGlwYm9hcmQgdG8gbWFrZSB0aGUgd29ya2Zsb3cgZWFzaWVyLiAg
RG9lcw0Kc2V0dGluZyB1cCBTUElDRSBtYWtlIG9uZSBtb3JlIHZ1bG5lcmFibGUgdG8gbWFsaWNp
b3VzIGFjdG9ycw0KYnJlYWtpbmcgb3V0IG9mIHRoZSBWTSBib3ggdG8gdGhlIGhvc3Q/PC9mb250
PjwvcD48YnI+


--b1_0mPzNBwrvqVTHnZBduhJ8QlhMi4PdTPqfQuiiO8l4--

