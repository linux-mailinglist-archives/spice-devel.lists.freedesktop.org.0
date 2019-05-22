Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BA725F39
	for <lists+spice-devel@lfdr.de>; Wed, 22 May 2019 10:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5258979E;
	Wed, 22 May 2019 08:19:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC968979E
 for <spice-devel@lists.freedesktop.org>; Wed, 22 May 2019 08:19:03 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hTMTR-0008N0-KX
 for spice-devel@lists.freedesktop.org; Wed, 22 May 2019 03:19:46 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hTMSg-00064q-So
 for spice-devel@lists.freedesktop.org; Wed, 22 May 2019 10:18:58 +0200
Date: Wed, 22 May 2019 10:18:58 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Message-ID: <cover.1558511881.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The LL suffix forces the expressions these constants are used
 in to be computed in 64 bit. The good thing is that this avoids overflows.
 The downside is that, because the LL suffix is hidden in a far [...] 
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
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gJvGTGcqMfLqGB/5C2cuvmwe5SlkQxNZZOLrAbV0bRE=; b=ksT0JDqkbIgKZ2RlH4payM1GB1
 v+C/BKXrVDZxR5vFtXUCOOSiihzOe57LRuBd/A2hEx+APmWhGX86H374aQgf+a0v6NhVovrepvCah
 w+328xOQV2RcaJ/g0dFXf5e2zLCWCe5NixH24QZvilrVDBuq5A8L9FlCfHnZSJ4abKis=;
Subject: [Spice-devel] [spice 0/2] utils: Remove the LL suffix from the
 NSEC_PER_* constants
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CgpUaGUgTEwgc3VmZml4IGZvcmNlcyB0aGUgZXhwcmVzc2lvbnMgdGhlc2UgY29uc3RhbnRzIGFy
ZSB1c2VkIGluIHRvIGJlIApjb21wdXRlZCBpbiA2NCBiaXQuIFRoZSBnb29kIHRoaW5nIGlzIHRo
YXQgdGhpcyBhdm9pZHMgb3ZlcmZsb3dzLiBUaGUgCmRvd25zaWRlIGlzIHRoYXQsIGJlY2F1c2Ug
dGhlIExMIHN1ZmZpeCBpcyBoaWRkZW4gaW4gYSBmYXIgYXdheSBtYWNybywgCmxvb2tpbmcgYXQg
dGhlIGV4cHJlc3Npb24gd2lsbCBub3QgcmV2ZWFsIHdoZXRoZXIgaXQgb3BlcmF0ZXMgb24gMzIg
b3IgCjY0IGJpdCBpbnRlZ2Vycy4KClRoaXMgaXMgbWFkZSBldmVuIG1vcmUgY29uZnVzaW5nIGJ5
IHRoZSBmYWN0IHRoYXQgbm90IGFsbCB0aGUgTlNFQ19QRVJfKiAKY29uc3RhbnRzIGhhdmUgdGhl
IExMIHN1ZmZpeC4KClRoZW4gd2hlbiBhIGRldmVsb3BwZXIgYWRkcyBhIHNwaWNlX2RlYnVnKCkg
dHJhY2UgdXNpbmcgb25lIG9mIHRoZXNlIApjb25zdGFudHMgaXQgYWxzbyBtYWtlcyBpdCBoYXJk
IHRvIGtub3cgaW4gYWR2YW5jZSB3aGV0aGVyICVsZCBvciAlbGxkIApzaG91bGQgYmUgdXNlZCwg
Y2F1c2luZyB1bm5lY2Vzc2FyeSBjb21waWxhdGlvbiBlcnJvcnMuCgpGaW5hbGx5LCB3aGlsZSB0
aGUgbWFpbiBOU0VDX1BFUl8qIGNvbnN0YW50cyBmaXQgaW4gMzIgYml0IHNvbWUgb2YgdGhlIApk
ZXJpdmVkIG9uZXMgc3VjaCBhcyBDT01NT05fQ0xJRU5UX1RJTUVPVVQgZG9uJ3QuIEZvciB0aG9z
ZSB1c2UgYW4gCnVpbnQ2NF90IGNhc3QgcmF0aGVyIHRoYW4gYW4gTEwgc3VmZml4IHRvIGF2b2lk
IHRoZSAlbGQgdnMuICVsbGQgCmNvbmZ1c2lvbiAoYWdhaW4gZm9yIGRlYnVnZ2luZykuCgoKRnJh
bmNvaXMgR291Z2V0ICgyKToKICB1dGlsczogUmVtb3ZlIHRoZSBMTCBzdWZmaXggZnJvbSBOU0VD
X1BFUl9NSUxMSVNFQwogIHV0aWxzOiBSZW1vdmUgdGhlIExMIHN1ZmZpeCBmcm9tIE5TRUNfUEVS
X1NFQwoKIHNlcnZlci9jb21tb24tZ3JhcGhpY3MtY2hhbm5lbC5oIHwgMiArLQogc2VydmVyL2Rj
Yy5oICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIu
YyAgICAgICB8IDIgKy0KIHNlcnZlci9tanBlZy1lbmNvZGVyLmMgICAgICAgICAgIHwgMiArLQog
c2VydmVyL3V0aWxzLmggICAgICAgICAgICAgICAgICAgfCA2ICsrKy0tLQogc2VydmVyL3ZpZGVv
LXN0cmVhbS5jICAgICAgICAgICAgfCA0ICsrLS0KIHNlcnZlci92aWRlby1zdHJlYW0uaCAgICAg
ICAgICAgIHwgMiArLQogNyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMCBkZWxl
dGlvbnMoLSkKCi0tIAoyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
