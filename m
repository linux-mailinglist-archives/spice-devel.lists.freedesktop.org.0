Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1CE6CFB8
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444186E3E3;
	Thu, 18 Jul 2019 14:32:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5436E3D8
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:32:03 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1ho7SM-0007R5-F1
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 09:32:26 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 09:32:00 -0500
Message-Id: <20190718143200.16380-2-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190718143200.16380-1-jwhite@codeweavers.com>
References: <20190718143200.16380-1-jwhite@codeweavers.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=References:In-Reply-To:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w8u2Cy+MZOErjlD+RfUCbI24OVllR7eqq0dEDIrG63I=; b=H42XtJUpQYR6HoX9BAZFdw53Y
 CtbuKKyg4HnowMcyUZOpbrKFpLiu3vZUiNjPoCbQKPtDsJvHN8PAZCOx2f0DQr6sTZYULlMLH26AH
 R9IA3zbxqzDLEmnP1+ArK8a87WY4/4yc6FYV5A4zZP3fGp68wGC8BerCVbAZyagsJklJc=;
Subject: [Spice-devel] [PATCH x11spice 2/2] Bug fix: a listen specification
 from the config file was ignored
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

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNyYy9vcHRpb25zLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvb3B0aW9ucy5jIGIvc3JjL29wdGlvbnMu
YwppbmRleCAwZDMxMzhkMC4uY2Y3NWU1NGUgMTAwNjQ0Ci0tLSBhL3NyYy9vcHRpb25zLmMKKysr
IGIvc3JjL29wdGlvbnMuYwpAQCAtMzU1LDcgKzM1NSw5IEBAIGludCBvcHRpb25zX3BhcnNlX2Fy
Z3VtZW50cyhpbnQgYXJnYywgY2hhciAqYXJndltdLCBvcHRpb25zX3QgKm9wdGlvbnMpCiAgICAg
aWYgKHJjID09IDApIHsKICAgICAgICAgaWYgKG9wdGluZCA+PSBhcmdjKSB7CiAgICAgICAgICAg
ICAvKiBEZWZhdWx0ICovCi0gICAgICAgICAgICBvcHRpb25zLT5saXN0ZW4gPSBzdHJkdXAoIjU5
MDAiKTsKKyAgICAgICAgICAgIGlmICghb3B0aW9ucy0+bGlzdGVuKSB7CisgICAgICAgICAgICAg
ICAgb3B0aW9ucy0+bGlzdGVuID0gc3RyZHVwKCI1OTAwIik7CisgICAgICAgICAgICB9CiAgICAg
ICAgIH0gZWxzZSBpZiAob3B0aW5kIDwgKGFyZ2MgLSAxKSkgewogICAgICAgICAgICAgZnByaW50
ZihzdGRlcnIsICJFcnJvcjogdG9vIG1hbnkgYXJndW1lbnRzXG4iKTsKICAgICAgICAgICAgIHJj
ID0gWDExU1BJQ0VfRVJSX0JBREFSR1M7Ci0tIAoyLjExLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
