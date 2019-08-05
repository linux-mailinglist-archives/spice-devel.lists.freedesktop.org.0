Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B32B7824CC
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 20:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D448892BF;
	Mon,  5 Aug 2019 18:20:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC2A892BF
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 18:20:06 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1huhal-0005N6-E2; Mon, 05 Aug 2019 13:20:21 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 11:19:56 -0700
Message-Id: <20190805181956.8406-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Check the Debian/Ubuntu path for the non-wrapper Xorg binary
 Signed-off-by: Brendan Shanks <bshanks@codeweavers.com> --- src/tests/xdummy.c
 | 2 ++ 1 file changed,
 2 insertions(+) diff --git a/src/tests/xdummy.c b/src/tests/xdummy.c
 index 0651dc7..ce57b1c 100644 --- a/src/tests/xdummy.c +++
 b/src/tests/xdummy.c
 @@ -157,6 +157,8 @@ static int exec_xorg(xdummy_t *server, gconstpo [...]
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dbuRmX2DZQYYtnIy3hnvAJRlMkwrieOkco6Qosefq+c=; b=nTNg9hy+p00IOnThj8zyB75htq
 8cyFtP4WwKEOCn3+FIKgURR/cDxGMAnirvB7UE0QUsfHRfCjGk9oSh8wpafFqMqS87WX2bewPYIIA
 u5QB2BRh0hIjS7LlJJEoGJ+gFlX+4hGukqMMUKODzH30+lzIdY/b3rCk3IgxusHNSZ+U=;
Subject: [Spice-devel] [PATCH x11spice] Fix running tests on Debian/Ubuntu
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

Q2hlY2sgdGhlIERlYmlhbi9VYnVudHUgcGF0aCBmb3IgdGhlIG5vbi13cmFwcGVyIFhvcmcgYmlu
YXJ5CgpTaWduZWQtb2ZmLWJ5OiBCcmVuZGFuIFNoYW5rcyA8YnNoYW5rc0Bjb2Rld2VhdmVycy5j
b20+Ci0tLQogc3JjL3Rlc3RzL3hkdW1teS5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy90ZXN0cy94ZHVtbXkuYyBiL3NyYy90ZXN0cy94
ZHVtbXkuYwppbmRleCAwNjUxZGM3Li5jZTU3YjFjIDEwMDY0NAotLS0gYS9zcmMvdGVzdHMveGR1
bW15LmMKKysrIGIvc3JjL3Rlc3RzL3hkdW1teS5jCkBAIC0xNTcsNiArMTU3LDggQEAgc3RhdGlj
IGludCBleGVjX3hvcmcoeGR1bW15X3QgKnNlcnZlciwgZ2NvbnN0cG9pbnRlciB1c2VyX2RhdGEg
R19HTlVDX1VOVVNFRCkKICAgICBzdHJjcHkoeG9yZ19iaW5hcnksICJYb3JnIik7CiAgICAgaWYg
KGFjY2VzcygiL3Vzci9saWJleGVjL1hvcmciLCBYX09LKSA9PSAwKQogICAgICAgICBzdHJjcHko
eG9yZ19iaW5hcnksICIvdXNyL2xpYmV4ZWMvWG9yZyIpOworICAgIGVsc2UgaWYgKGFjY2Vzcygi
L3Vzci9saWIveG9yZy9Yb3JnIiwgWF9PSykgPT0gMCkKKyAgICAgICAgc3RyY3B5KHhvcmdfYmlu
YXJ5LCAiL3Vzci9saWIveG9yZy9Yb3JnIik7CiAKICAgICByZXR1cm4gZXhlY2xwKHhvcmdfYmlu
YXJ5LCB4b3JnX2JpbmFyeSwgIi1hYyIsCiAgICAgICAgICAgICAgICAgICAiLWNvbmZpZyIsIHNl
cnZlci0+eG9yZ19mbmFtZSwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
