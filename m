Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1663C6D64D
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 23:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987A86E46D;
	Thu, 18 Jul 2019 21:14:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DCE6E46B
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 21:14:11 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hoDjV-0005iE-Im
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 16:14:33 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 16:14:01 -0500
Message-Id: <20190718211405.8753-1-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1cC/UXUovzE04Grnt9eHoTlz6k6Hhu4MzfY1hH+S7io=; b=U+g6NXhF5Ny3JDUZ1Q/uRc9G6w
 9BxdyY/z9HrBZRWWY6x5sxEoL5v/DL+B/7ysajGBvQjffGcOxaVhOqDjoHeYlthUdABhjfPQwzL/v
 PDfE1d2PqZjXaqf+jPCjzB6g1+CB7REQ1WIsIYyeVfLpYKD51L6AJ/6hriXShH4PFi1I=;
Subject: [Spice-devel] [PATCH v2 x11spice 0/4] Resend two small fixes
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

djI6ICBVc2UgZ2xpYiBtZW1vcnkgcm91dGluZXMgd2l0aCBvcHRpb25zLmMKICAgICBGaXggYSBt
ZW1vcnkgdXNlIGJ1ZyBpbiBvcHRpb25zCiAgICAgSnVzdCBjYWxsIGdldG9wdF9sb25nIHR3aWNl
LCByYXRoZXIgdGhhbiB0cnlpbmcgdG8gZG8gYSBwb29yIGltcGxlbWVudGF0aW9uCiAgICAgRm9y
IHRoZSBsaXN0ZW4gYnVnIGZpeCwgdXNlID09IE5VTEwsIGFuZCBnX3N0cmR1cAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
