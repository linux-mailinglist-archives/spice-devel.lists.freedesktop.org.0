Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 850E2B40E6
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02ABE6EA3B;
	Mon, 16 Sep 2019 19:13:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F646EA3D
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:46 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRV-0003Nb-9F
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:45 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:25 -0500
Message-Id: <20190916191333.27139-3-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916191333.27139-1-jwhite@codeweavers.com>
References: <20190916191333.27139-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KBES8a6aOFYgDYA8q8Nxo7QsNZlp+kU0MlNc1fI1KM8=; b=vcyoi7MfCUHRP1HRpmgnqr7RPK
 7q5784Xq4LQEEQnX1GivKOmfKI11b1S82klHI+HR8+4SWtjCdj8aXPaTElSw4M6pTXKawkVp35YIj
 o3q4yr/xs79V17xfIAHYRseX/cSv2QbqcgYgM8QCw68/tUIgjO8JLM5yi29zeQpZH86U=;
Subject: [Spice-devel] [PATCH x11spice 02/10] Add .dirstamp to .gitignore.
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

RnJvbTogSGVucmkgVmVyYmVldCA8aHZlcmJlZXRAY29kZXdlYXZlcnMuY29tPgoKU2lnbmVkLW9m
Zi1ieTogSGVucmkgVmVyYmVldCA8aHZlcmJlZXRAY29kZXdlYXZlcnMuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+Ci0tLQogLmdpdGlnbm9y
ZSB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvLmdp
dGlnbm9yZSBiLy5naXRpZ25vcmUKaW5kZXggYWVlNmM5M2EuLjcwNTJkM2ZmIDEwMDY0NAotLS0g
YS8uZ2l0aWdub3JlCisrKyBiLy5naXRpZ25vcmUKQEAgLTExLDYgKzExLDcgQEAgaW5zdGFsbC1z
aAogbWlzc2luZwogCiAuZGVwcworLmRpcnN0YW1wCiBNYWtlZmlsZQogTWFrZWZpbGUuaW4KICou
bwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
