Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0983AB40E7
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601FC6EA41;
	Mon, 16 Sep 2019 19:13:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138A56EA3B
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:48 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRW-0003Nb-N9
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:46 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:30 -0500
Message-Id: <20190916191333.27139-8-jwhite@codeweavers.com>
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
 bh=ZWOUqbzHITa1iwjCkvsZ6GrxMEdtMdq/3adeC1tkuj4=; b=NzNt3/QfC+xc3fY7nsx0LAkztN
 pK2EGrKpSFpLQjV8J40CueAQPVmgPVM43BYwK6UhqA7iAaEFIOdWwpiBn7HPYOZ6k//Ncr3QNx2w3
 CEnW209nAGJkfAtQv9z3LBhJfQHc/esXBcG7WynL9ieuCvw52MGjBBdwjWRSvpPWMnFs=;
Subject: [Spice-devel] [PATCH x11spice 07/10] Call xf86DPMSInit() in
 DUMMYScreenInit().
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

RnJvbTogSGVucmkgVmVyYmVldCA8aHZlcmJlZXRAY29kZXdlYXZlcnMuY29tPgoKVGhpcyBpcyBw
cm9iYWJseSBub3Qgc3RyaWN0bHkgbmVlZGVkLCBidXQgaXQncyBlYXN5IGFuZCBnZXRzIHJpZCBv
ZiB0aGUKIlhsaWI6ICBleHRlbnNpb24gIkRQTVMiIG1pc3Npbmcgb24gZGlzcGxheSAiOjIiLiIg
bWVzc2FnZS4KClNpZ25lZC1vZmYtYnk6IEhlbnJpIFZlcmJlZXQgPGh2ZXJiZWV0QGNvZGV3ZWF2
ZXJzLmNvbT4KU2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMu
Y29tPgotLS0KIHNwaWNlLXZpZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jIHwgMiAr
KwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NwaWNlLXZp
ZGVvLWR1bW15L3NyYy9zcGljZWR1bW15X2RyaXZlci5jIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3Jj
L3NwaWNlZHVtbXlfZHJpdmVyLmMKaW5kZXggMThlOTZjZWMuLjU0M2EzYjQ1IDEwMDY0NAotLS0g
YS9zcGljZS12aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYworKysgYi9zcGljZS12
aWRlby1kdW1teS9zcmMvc3BpY2VkdW1teV9kcml2ZXIuYwpAQCAtNjIzLDYgKzYyMyw4IEBAIERV
TU1ZU2NyZWVuSW5pdChTQ1JFRU5fSU5JVF9BUkdTX0RFQ0wpCiAgICAgaWYgKCF4Zjg2Q3J0Y1Nj
cmVlbkluaXQocFNjcmVlbikpCiAgICAgICAgIHJldHVybiBGQUxTRTsKIAorICAgIHhmODZEUE1T
SW5pdChwU2NyZWVuLCB4Zjg2RFBNU1NldCwgMCk7CisKICAgICBpZiAoZFB0ci0+Z2xhbW9yICYm
ICFnbGFtb3JfaW5pdChwU2NyZWVuLCBnbGFtb3JfZmxhZ3MpKSB7CiAgICAgICAgIHhmODZEcnZN
c2cocFNjcm4tPnNjcm5JbmRleCwgWF9FUlJPUiwKICAgICAgICAgICAgICAgICAgICAiRmFpbGVk
IHRvIGluaXRpYWxpc2UgZ2xhbW9yIGF0IFNjcmVlbkluaXQoKSB0aW1lLlxuIik7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
