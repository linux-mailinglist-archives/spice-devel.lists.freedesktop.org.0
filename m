Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C732EB40E3
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1AA6EA3C;
	Mon, 16 Sep 2019 19:13:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7AF6EA3B
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:46 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRV-0003Nb-MZ
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:45 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:26 -0500
Message-Id: <20190916191333.27139-4-jwhite@codeweavers.com>
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
 bh=970FqR0xFU+4o6/o/f7wD3QEU8GHh1JZGi1zWxyTvRk=; b=WCfEN/51Qkecocin62Cc9qvr5K
 lK4hRAMI6GaWo1N+PNWfzFr0KCUwqnqh2OhLjuk/xAlaO09D+Fp5CVOVk1V2KW3cRQtYxdSI9s+ZG
 HApOhIA15AUD/SyTRzDCn3HAgEUngFjDWj7n3MY8Hf1fYeiOdiMz0BbDz4iFU3exvwqk=;
Subject: [Spice-devel] [PATCH x11spice 03/10] Use a proper prototype for
 CreateWindow() in struct dummyRec.
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
LWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+Ci0tLQogc3BpY2Utdmlk
ZW8tZHVtbXkvc3JjL2R1bW15LmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcGljZS12aWRlby1kdW1teS9zcmMvZHVt
bXkuaCBiL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oCmluZGV4IGQyODdhNTlhLi5kYzRh
YjkyZiAxMDA2NDQKLS0tIGEvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmgKKysrIGIvc3Bp
Y2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmgKQEAgLTU2LDcgKzU2LDcgQEAgdHlwZWRlZiBzdHJ1
Y3QgZHVtbXlSZWMgewogICAgIGludCBjdXJzb3JGRywgY3Vyc29yQkc7CiAKICAgICBkdW1teV9j
b2xvcnMgY29sb3JzWzEwMjRdOwotICAgIEJvb2wgKCpDcmVhdGVXaW5kb3cpKCk7ICAgICAvKiB3
cmFwcGVkIENyZWF0ZVdpbmRvdyAqLworICAgIEJvb2wgKCpDcmVhdGVXaW5kb3cpKFdpbmRvd1Jl
YyAqIHdpbmRvdyk7ICAgLyogd3JhcHBlZCBDcmVhdGVXaW5kb3cgKi8KICAgICBCb29sIHByb3A7
CiAKICAgICBCb29sIGdsYW1vcjsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
