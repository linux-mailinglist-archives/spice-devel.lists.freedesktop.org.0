Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8860D952F1
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 03:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 147B36E4A7;
	Tue, 20 Aug 2019 01:03:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E526E4A7
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 01:03:44 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hzsYo-0001V5-6R; Mon, 19 Aug 2019 20:03:43 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 19 Aug 2019 18:03:31 -0700
Message-Id: <20190820010334.24224-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a cache to x11spice for SHM segments. v4 simplifies the
 'if' clauses in shm_cache_get/add, as suggested by Frediano. Brendan Shanks
 (3): Use unsigned int/size_t for display width/height/buffer size Create
 separate shm_segment_t struct for SHM segments Add cache for SHM segments 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ZnRRxLxWWgiFTuMSC8NqmhppDY6x2EReQJOL5cwMlE=; b=epoAwWJt6ObaizjFNleFVaKeJf
 +GSvBeEDLbJM3UbOBHVC1G8zHd53T10ffqcjoHU0RNwCV84AvzLKugmYPvg9Ofwosr/Dsgwv2/5b9
 U91RfI69a96S2cLCHtKv0f9t/3TIcw7aROVnHCu0xuIvW37FmX1u4hmOQCSLhuFi61Iw=;
Subject: [Spice-devel] [PATCH x11spice v4 0/3] Add cache for SHM segments
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

QWRkIGEgY2FjaGUgdG8geDExc3BpY2UgZm9yIFNITSBzZWdtZW50cy4KCnY0IHNpbXBsaWZpZXMg
dGhlICdpZicgY2xhdXNlcyBpbiBzaG1fY2FjaGVfZ2V0L2FkZCwgYXMgc3VnZ2VzdGVkIGJ5CkZy
ZWRpYW5vLgoKQnJlbmRhbiBTaGFua3MgKDMpOgogIFVzZSB1bnNpZ25lZCBpbnQvc2l6ZV90IGZv
ciBkaXNwbGF5IHdpZHRoL2hlaWdodC9idWZmZXIgc2l6ZQogIENyZWF0ZSBzZXBhcmF0ZSBzaG1f
c2VnbWVudF90IHN0cnVjdCBmb3IgU0hNIHNlZ21lbnRzCiAgQWRkIGNhY2hlIGZvciBTSE0gc2Vn
bWVudHMKCiBkb2Mvc3BpY2VfaW5kZW50IHwgICAxICsKIHNyYy9kaXNwbGF5LmMgICAgfCAyMDUg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KIHNyYy9kaXNw
bGF5LmggICAgfCAgMjkgKysrKy0tLQogc3JjL3NjYW4uYyAgICAgICB8ICAgMiArLQogc3JjL3Nl
c3Npb24uYyAgICB8ICAgMiArLQogc3JjL3NwaWNlLmMgICAgICB8ICAgMiArLQogNiBmaWxlcyBj
aGFuZ2VkLCAxOTkgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
