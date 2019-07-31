Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE307C6B6
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 17:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E1E89C08;
	Wed, 31 Jul 2019 15:35:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23D589C08
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 15:35:10 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hsqdV-00074g-60
 for spice-devel@lists.freedesktop.org; Wed, 31 Jul 2019 10:35:29 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 31 Jul 2019 10:35:07 -0500
Message-Id: <20190731153507.26085-2-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731153507.26085-1-jwhite@codeweavers.com>
References: <20190731153507.26085-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mt9TnzYSDlWhauQ9IS6VhCuTMUxVICQZFB3e7DgFhN0=; b=rykH6L+8ARLOzWaghErCuWpGql
 2+/ENSyAfdUwVOXgKTRNalKyuf51u06kmKVTvYRvXQp3EFOlG9T9csQ+bJfQoxjTDIRaickaAypX6
 ceI4DYr9DXS6GOQot05DzafGBfkJwtD1Hwyu9aiMq0QFTnwXwRh3ClV8LlwMG56nOsmg=;
Subject: [Spice-devel] [PATCH x11spice 2/2] Including missing header for
 inlined clock functions.
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

Rml4ZXMgY29tcGlsYXRpb24gb24gUkhFTCA3LjMuCgpTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hp
dGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+Ci0tLQogc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1
bW15LmggfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5oIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1
bW15LmgKaW5kZXggYWY3N2MxNzcuLmNiOGFmYzM3IDEwMDY0NAotLS0gYS9zcGljZS12aWRlby1k
dW1teS9zcmMvZHVtbXkuaAorKysgYi9zcGljZS12aWRlby1kdW1teS9zcmMvZHVtbXkuaApAQCAt
MTAsNiArMTAsNyBAQAogI2luY2x1ZGUgPFgxMS9leHRlbnNpb25zL1h2Lmg+CiAjZW5kaWYKICNp
bmNsdWRlIDxzdHJpbmcuaD4KKyNpbmNsdWRlIDx0aW1lLmg+CiAKICNkZWZpbmUgR0xBTU9SX0ZP
Ul9YT1JHIDEKICNpbmNsdWRlICJnbGFtb3IuaCIKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
