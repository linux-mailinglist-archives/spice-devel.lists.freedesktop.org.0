Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D64F8D3
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906DF89240;
	Tue, 30 Apr 2019 12:25:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA5C8923A
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:25:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 392A88762B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:25:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DFD962B3AB;
 Tue, 30 Apr 2019 12:25:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:19 +0100
Message-Id: <20190430122419.16241-20-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 30 Apr 2019 12:25:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 19/19] ci: Add test for
 Windows using MingW
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
LmdpdGxhYi1jaS55bWwgfCAxOCArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
OCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNp
LnltbAppbmRleCA5Y2U5NWMwMC4uZjVlZTk2M2MgMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1s
CisrKyBiLy5naXRsYWItY2kueW1sCkBAIC04NywzICs4NywyMSBAQCBtYWtlY2hlY2stY2VudG9z
OgogICAgIC4vYXV0b2dlbi5zaCAtLWVuYWJsZS1jZWx0MDUxCiAgIC0gbWFrZQogICAtIG1ha2Ug
LUMgc2VydmVyIGNoZWNrIHx8IChjYXQgc2VydmVyL3Rlc3RzL3Rlc3Qtc3VpdGUubG9nICYmIGV4
aXQgMSkKKworIyBTYW1lIGFzIG1ha2VjaGVjayBqb2IgYnV0IHVzZSBXaW5kb3dzIGJ1aWxkCitt
YWtlY2hlY2std2luZG93czoKKyAgc2NyaXB0OgorICAtID4KKyAgICBkbmYgaW5zdGFsbCAteQor
ICAgIHdpbmUtY29yZS54ODZfNjQgbWluZ3c2NC1nY2MtYysrCisgICAgbWluZ3c2NC1vcGVuc3Ns
IG1pbmd3NjQtZ2xpYjIgbWluZ3c2NC1nbGliLW5ldHdvcmtpbmcgbWluZ3c2NC1saWJqcGVnLXR1
cmJvCisgICAgbWluZ3c2NC1waXhtYW4gbWluZ3c2NC1vcHVzIG1pbmd3NjQtd2lucHRocmVhZHMg
bWluZ3c2NC16bGliCisgICAgbWluZ3c2NC1nc3RyZWFtZXIxLXBsdWdpbnMtYmFzZSBtaW5ndzY0
LWdzdHJlYW1lcjEtcGx1Z2lucy1nb29kIG1pbmd3NjQtb3JjCisgIC0gY2Qgc3BpY2UtcHJvdG9j
b2wKKyAgLSBtaW5ndzY0LWNvbmZpZ3VyZQorICAtIG1pbmd3NjQtbWFrZSBpbnN0YWxsCisgIC0g
Y2QgLi4KKyAgLSBOT0NPTkZJR1VSRT15ZXMgLi9hdXRvZ2VuLnNoCisgIC0gbWluZ3c2NC1jb25m
aWd1cmUgLS1kaXNhYmxlLWNlbHQwNTEKKyAgLSBtaW5ndzY0LW1ha2UKKyAgLSBtaW5ndzY0LW1h
a2UgTE9HX0NPTVBJTEU9d2luZSAtQyBzZXJ2ZXIgY2hlY2sgfHwgKGNhdCBzZXJ2ZXIvdGVzdHMv
dGVzdC1zdWl0ZS5sb2cgJiYgZXhpdCAxKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
