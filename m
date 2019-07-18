Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C396D64C
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 23:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECFB96E46B;
	Thu, 18 Jul 2019 21:14:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D4166E427
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 21:14:11 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hoDjW-0005iE-8G
 for spice-devel@lists.freedesktop.org; Thu, 18 Jul 2019 16:14:34 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 16:14:05 -0500
Message-Id: <20190718211405.8753-5-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190718211405.8753-1-jwhite@codeweavers.com>
References: <20190718211405.8753-1-jwhite@codeweavers.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=References:In-Reply-To:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LN7QIMYKCeszfwh1AvzuKtyVVQwoY8SN5HRDD0qlHmU=; b=weswxRXu3IljxOeZ/3dMbDcg9
 uFN9LMAAGlyOg3k8g/ZnonEPhR+2pTQz7UJcSuOtmSI/e4776lO9F0Zz53kigFUc1O5jaGl3uOUTN
 0RiGIuwmcCHXmgoO0Ni6+1SWsZ8O62bWFhGHDUUu9OrJ5yOy8Q50kMJOmBE8w8GnDzI3I=;
Subject: [Spice-devel] [PATCH v2 x11spice 4/4] Bug fix: a listen
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgotLS0K
IHNyYy9vcHRpb25zLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvb3B0aW9ucy5jIGIvc3JjL29wdGlvbnMu
YwppbmRleCA1YTU1ZjJjOS4uYTNkZDIwYWMgMTAwNjQ0Ci0tLSBhL3NyYy9vcHRpb25zLmMKKysr
IGIvc3JjL29wdGlvbnMuYwpAQCAtMzM5LDcgKzMzOSw5IEBAIGludCBvcHRpb25zX3BhcnNlX2Fy
Z3VtZW50cyhpbnQgYXJnYywgY2hhciAqYXJndltdLCBvcHRpb25zX3QgKm9wdGlvbnMpCiAgICAg
aWYgKHJjID09IDApIHsKICAgICAgICAgaWYgKG9wdGluZCA+PSBhcmdjKSB7CiAgICAgICAgICAg
ICAvKiBEZWZhdWx0ICovCi0gICAgICAgICAgICBvcHRpb25zLT5saXN0ZW4gPSBnX3N0cmR1cCgi
NTkwMCIpOworICAgICAgICAgICAgaWYgKG9wdGlvbnMtPmxpc3RlbiA9PSBOVUxMKSB7CisgICAg
ICAgICAgICAgICAgb3B0aW9ucy0+bGlzdGVuID0gZ19zdHJkdXAoIjU5MDAiKTsKKyAgICAgICAg
ICAgIH0KICAgICAgICAgfSBlbHNlIGlmIChvcHRpbmQgPCAoYXJnYyAtIDEpKSB7CiAgICAgICAg
ICAgICBmcHJpbnRmKHN0ZGVyciwgIkVycm9yOiB0b28gbWFueSBhcmd1bWVudHNcbiIpOwogICAg
ICAgICAgICAgcmMgPSBYMTFTUElDRV9FUlJfQkFEQVJHUzsKLS0gCjIuMTEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
