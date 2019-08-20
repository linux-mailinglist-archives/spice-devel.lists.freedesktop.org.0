Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF2E96771
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 19:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B226E7E5;
	Tue, 20 Aug 2019 17:25:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D8F6E7E5
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 17:25:51 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i07tE-000157-Pd; Tue, 20 Aug 2019 12:25:49 -0500
To: Brendan Shanks <bshanks@codeweavers.com>, spice-devel@lists.freedesktop.org
References: <20190820010334.24224-1-bshanks@codeweavers.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <ccfc50e2-edd6-3f69-a0c7-b1bbf6c1319d@codeweavers.com>
Date: Tue, 20 Aug 2019 12:25:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820010334.24224-1-bshanks@codeweavers.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6jzWlEA3N4pz/E0enACycHThIKNoeWeMWfYGU5NsJr0=; b=dsYiCDgrEEe5dk3WLoBUpJ28jN
 ssAlKJsNfa6yV1gms4y58q+ssEv4FNA2EvLP76MfnSLrWkOXYsjEOPjsaV0oBEkzWqFiEw0C3gUzy
 +T+owDf8TKYC0/GwW8idVaaH5TP2SRI0ig5jSQ3JBBXGbmlrJFaYO5AB/9Yt6Q0jWDB8=;
Subject: Re: [Spice-devel] [PATCH x11spice v4 0/3] Add cache for SHM segments
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

U2VyaWVzOgogICAgIEFja2VkLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5j
b20+CmFuZCBwdXNoZWQuCgpDaGVlcnMsCgpKZXJlbXkKCk9uIDgvMTkvMTkgODowMyBQTSwgQnJl
bmRhbiBTaGFua3Mgd3JvdGU6Cj4gQWRkIGEgY2FjaGUgdG8geDExc3BpY2UgZm9yIFNITSBzZWdt
ZW50cy4KPiAKPiB2NCBzaW1wbGlmaWVzIHRoZSAnaWYnIGNsYXVzZXMgaW4gc2htX2NhY2hlX2dl
dC9hZGQsIGFzIHN1Z2dlc3RlZCBieQo+IEZyZWRpYW5vLgo+IAo+IEJyZW5kYW4gU2hhbmtzICgz
KToKPiAgICBVc2UgdW5zaWduZWQgaW50L3NpemVfdCBmb3IgZGlzcGxheSB3aWR0aC9oZWlnaHQv
YnVmZmVyIHNpemUKPiAgICBDcmVhdGUgc2VwYXJhdGUgc2htX3NlZ21lbnRfdCBzdHJ1Y3QgZm9y
IFNITSBzZWdtZW50cwo+ICAgIEFkZCBjYWNoZSBmb3IgU0hNIHNlZ21lbnRzCj4gCj4gICBkb2Mv
c3BpY2VfaW5kZW50IHwgICAxICsKPiAgIHNyYy9kaXNwbGF5LmMgICAgfCAyMDUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgIHNyYy9kaXNwbGF5Lmgg
ICAgfCAgMjkgKysrKy0tLQo+ICAgc3JjL3NjYW4uYyAgICAgICB8ICAgMiArLQo+ICAgc3JjL3Nl
c3Npb24uYyAgICB8ICAgMiArLQo+ICAgc3JjL3NwaWNlLmMgICAgICB8ICAgMiArLQo+ICAgNiBm
aWxlcyBjaGFuZ2VkLCAxOTkgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
