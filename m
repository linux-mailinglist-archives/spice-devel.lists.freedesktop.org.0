Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A66F73167
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 16:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC46F6E5AD;
	Wed, 24 Jul 2019 14:17:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D3B6E5AE
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 14:17:32 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hqI5X-0001ed-Op
 for spice-devel@lists.freedesktop.org; Wed, 24 Jul 2019 09:17:51 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 09:17:23 -0500
Message-Id: <20190724141726.32063-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ixmxd/YSkLp1IcJ//P1X4jeM1XhpYmGWhmTBmbVtP+8=; b=VKJNYYdbYz919hlY3pYVIpwckU
 Tu7bkdtm8xJ8Dl50qXsGa08zEdSR1/lYC5XA4QN5zNsfK7dwD6rhfbLSJSAcNeHB0RU0OvJOrEKQs
 0SiEl6MCrh46A3oYJOrYc6GN1mYDnXHVlc4FOYGxo7JjgFNVL34d1tBCXwmm9bCeYx34=;
Subject: [Spice-devel] PATCH fixup1 for x11spice 0/3
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

RnJlZGlhbm8gYW5kIEkgaGFkIGEgc2xpZ2h0IGNvbGxpc2lvbiBpbiBwYXRjaCBwcm9jZXNzaW5n
LgoKVGhpcyBzZXQgb2YgdGhyZWUgcGF0Y2hlcyBzaG91bGQgYnVpbGQgb24gdGhlIHBhdGNoZXMg
aGUgY29tbWl0dGVkCnRvIGJyaW5nIHRoZSB0cmVlIHRvIHRoZSBzdGF0ZSBpbnRlbmRlZCBieSB0
aGUgbGFzdCBwYXRjaCBzZXJpZXMuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
