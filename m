Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE1773169
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 16:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040AC6E5AF;
	Wed, 24 Jul 2019 14:17:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564756E5AF
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 14:17:32 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hqI5Y-0001ed-BD
 for spice-devel@lists.freedesktop.org; Wed, 24 Jul 2019 09:17:52 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 09:17:26 -0500
Message-Id: <20190724141726.32063-4-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724141726.32063-1-jwhite@codeweavers.com>
References: <20190724141726.32063-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lbIIQYiMjPWLws2TPMSrv7R7SBV2IBZ0PKHWgPU3W04=; b=KfDFsU3OAGQjKloz8j/9Ng8YLm
 YzNitGSa/IZ1gx6pvTpY9rwyo2ZxeRNoGh+rw3LWkEq+EtXgCwWFydv1Tb5QIrVmfWXHWrTMKOKaQ
 szEuNOjsxapBbnDouux4rvO5yopeU8A3EDJyRUl982zCilTCkW+1hTO4WbyTisC6TK8E=;
Subject: [Spice-devel] [PATCH fixup1 x11spice 3/3] Bug fix: a listen
 specification from the config file was ignored
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
IHNyYy9vcHRpb25zLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvb3B0aW9ucy5jIGIvc3JjL29wdGlvbnMu
YwppbmRleCA2NjIwYjg1My4uNjRlNmFjOTUgMTAwNjQ0Ci0tLSBhL3NyYy9vcHRpb25zLmMKKysr
IGIvc3JjL29wdGlvbnMuYwpAQCAtMzI3LDcgKzMyNyw5IEBAIGludCBvcHRpb25zX3BhcnNlX2Fy
Z3VtZW50cyhpbnQgYXJnYywgY2hhciAqYXJndltdLCBvcHRpb25zX3QgKm9wdGlvbnMpCiAgICAg
aWYgKHJjID09IDApIHsKICAgICAgICAgaWYgKG9wdGluZCA+PSBhcmdjKSB7CiAgICAgICAgICAg
ICAvKiBEZWZhdWx0ICovCi0gICAgICAgICAgICBzdHJfcmVwbGFjZSgmb3B0aW9ucy0+bGlzdGVu
LCAiNTkwMCIpOworICAgICAgICAgICAgaWYgKG9wdGlvbnMtPmxpc3RlbiA9PSBOVUxMKSB7Cisg
ICAgICAgICAgICAgICAgc3RyX3JlcGxhY2UoJm9wdGlvbnMtPmxpc3RlbiwgIjU5MDAiKTsKKyAg
ICAgICAgICAgIH0KICAgICAgICAgfSBlbHNlIGlmIChvcHRpbmQgPCAoYXJnYyAtIDEpKSB7CiAg
ICAgICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkVycm9yOiB0b28gbWFueSBhcmd1bWVudHNcbiIp
OwogICAgICAgICAgICAgcmMgPSBYMTFTUElDRV9FUlJfQkFEQVJHUzsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
