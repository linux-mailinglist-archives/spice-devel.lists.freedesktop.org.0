Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBBC6B469
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 04:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6491B6E20D;
	Wed, 17 Jul 2019 02:16:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7556E20D
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 02:16:23 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hnZUq-0006Ub-NE; Tue, 16 Jul 2019 21:16:45 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 16 Jul 2019 19:16:03 -0700
Message-Id: <20190717021606.2737-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190711200305.4616-1-bshanks@codeweavers.com>
References: <20190711200305.4616-1-bshanks@codeweavers.com>
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a cache to x11spice for SHM segments. v2 should address
 Frediano's comments: style, use of G_N_ELEMENTS, using unsigned types for
 width/height/size, creating a separate struct to hold all the segment-specific
 variables, and reducing trave [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ihxKDX7e30l/j2f1jLQrrLmd2c2Uh7KslHRKzic/u4=; b=wDOV3OBnin+bsl/M10rE/YMBX
 1aZD9btP/o+KJhvD1w8O3TOyJn/zpBXHn5y3TG4suQG77GLM1c+f7hnkUfojIf1NcMmjajvXxr/F2
 8J/jgdiS8pVnHZKDhCTrHlOzG7zMl08iQllYkz3kf2zeIpYeiMDTrLuCCB2W6r8Z90pZA=;
Subject: [Spice-devel] [PATCH x11spice v2 0/3] Add cache for SHM segments
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QWRkIGEgY2FjaGUgdG8geDExc3BpY2UgZm9yIFNITSBzZWdtZW50cy4KCnYyIHNob3VsZCBhZGRy
ZXNzIEZyZWRpYW5vJ3MgY29tbWVudHM6IHN0eWxlLCB1c2Ugb2YgR19OX0VMRU1FTlRTLAp1c2lu
ZyB1bnNpZ25lZCB0eXBlcyBmb3Igd2lkdGgvaGVpZ2h0L3NpemUsIGNyZWF0aW5nIGEgc2VwYXJh
dGUgc3RydWN0CnRvIGhvbGQgYWxsIHRoZSBzZWdtZW50LXNwZWNpZmljIHZhcmlhYmxlcywgYW5k
IHJlZHVjaW5nIHRyYXZlcnNhbHMgb2YKdGhlIGNhY2hlLgoKQnJlbmRhbiBTaGFua3MgKDMpOgog
IFVzZSB1bnNpZ25lZCBpbnQvc2l6ZV90IGZvciBkaXNwbGF5IHdpZHRoL2hlaWdodC9idWZmZXIg
c2l6ZQogIENyZWF0ZSBzZXBhcmF0ZSBzaG1fc2VnbWVudF90IHN0cnVjdCBmb3IgU0hNIHNlZ21l
bnRzCiAgQWRkIGNhY2hlIGZvciBTSE0gc2VnbWVudHMKCiBkb2Mvc3BpY2VfaW5kZW50IHwgICAx
ICsKIHNyYy9kaXNwbGF5LmMgICAgfCAyMDkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0KIHNyYy9kaXNwbGF5LmggICAgfCAgMjUgKysrKy0tCiBzcmMvc2Nh
bi5jICAgICAgIHwgICAyICstCiBzcmMvc2Vzc2lvbi5jICAgIHwgICAyICstCiBzcmMvc3BpY2Uu
YyAgICAgIHwgICAyICstCiA2IGZpbGVzIGNoYW5nZWQsIDIwMCBpbnNlcnRpb25zKCspLCA0MSBk
ZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
