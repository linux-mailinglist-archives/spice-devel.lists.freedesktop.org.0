Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F1AB40E2
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE536EA3A;
	Mon, 16 Sep 2019 19:13:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03C66EA3C
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:46 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRV-0003Nb-10
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:45 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:24 -0500
Message-Id: <20190916191333.27139-2-jwhite@codeweavers.com>
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
 bh=9ovm6ZfiyEEzyet39QsZzgbnZvyYdsbJCXc04djkSvc=; b=IWAFVMy/j8+kCo/QkNs50tJ/nO
 UFWcqWD2WhIXcGgBjrMsXCQ4lyACn1KSsJmQx8+BIA1cV0cpzGXJiYqdHN8Iu0W5tdMuWLZWztW1u
 U5+TKL9orwWaewmhplP59sH5UdYX0EzM1VbKB82NTuzeK/HvbSOhmWQk/ljogjKwa9bs=;
Subject: [Spice-devel] [PATCH x11spice 01/10] Style: tweak a few spaces to
 match Spice style.
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

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oICAgICAgICAgICAgIHwgMiArLQogc3BpY2Ut
dmlkZW8tZHVtbXkvc3JjL3NwaWNlZHVtbXlfZHJpdmVyLmMgfCAyICstCiAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcGljZS12
aWRlby1kdW1teS9zcmMvZHVtbXkuaCBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oCmlu
ZGV4IGNiOGFmYzM3Li5kMjg3YTU5YSAxMDA2NDQKLS0tIGEvc3BpY2UtdmlkZW8tZHVtbXkvc3Jj
L2R1bW15LmgKKysrIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmgKQEAgLTU2LDcgKzU2
LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgZHVtbXlSZWMgewogICAgIGludCBjdXJzb3JGRywgY3Vyc29y
Qkc7CiAKICAgICBkdW1teV9jb2xvcnMgY29sb3JzWzEwMjRdOwotICAgIEJvb2wgKCpDcmVhdGVX
aW5kb3cpKCk7ICAgIC8qIHdyYXBwZWQgQ3JlYXRlV2luZG93ICovCisgICAgQm9vbCAoKkNyZWF0
ZVdpbmRvdykoKTsgICAgIC8qIHdyYXBwZWQgQ3JlYXRlV2luZG93ICovCiAgICAgQm9vbCBwcm9w
OwogCiAgICAgQm9vbCBnbGFtb3I7CmRpZmYgLS1naXQgYS9zcGljZS12aWRlby1kdW1teS9zcmMv
c3BpY2VkdW1teV9kcml2ZXIuYyBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2Ry
aXZlci5jCmluZGV4IDFkYmU4N2IyLi4xZWZhZTQ3MyAxMDA2NDQKLS0tIGEvc3BpY2UtdmlkZW8t
ZHVtbXkvc3JjL3NwaWNlZHVtbXlfZHJpdmVyLmMKKysrIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3Jj
L3NwaWNlZHVtbXlfZHJpdmVyLmMKQEAgLTI5Miw3ICsyOTIsNyBAQCBkdW1teV9lbmFibGVfZ2xh
bW9yKFNjcm5JbmZvUmVjICogc2NybikKICAgICBjb25zdCBjaGFyICphY2NlbF9tZXRob2Q7CiAK
ICAgICBpZiAoKChhY2NlbF9tZXRob2QgPSB4Zjg2R2V0T3B0VmFsU3RyaW5nKGR1bW15LT5PcHRp
b25zLCBPUFRJT05fQUNDRUxfTUVUSE9EKSkKLSAgICAgICAgJiYgc3RyY21wKGFjY2VsX21ldGhv
ZCwgImdsYW1vciIpKSB8fCBkdW1teS0+ZmQgPT0gLTEpIHsKKyAgICAgICAgICYmIHN0cmNtcChh
Y2NlbF9tZXRob2QsICJnbGFtb3IiKSkgfHwgZHVtbXktPmZkID09IC0xKSB7CiAgICAgICAgIHhm
ODZEcnZNc2coc2Nybi0+c2NybkluZGV4LCBYX0NPTkZJRywgIkdsYW1vciBkaXNhYmxlZC5cbiIp
OwogICAgICAgICByZXR1cm4gRkFMU0U7CiAgICAgfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
