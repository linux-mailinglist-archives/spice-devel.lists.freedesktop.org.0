Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F54B40EA
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F366EA42;
	Mon, 16 Sep 2019 19:13:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A29E6EA3B
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:47 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRW-0003Nb-9V
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:46 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:29 -0500
Message-Id: <20190916191333.27139-7-jwhite@codeweavers.com>
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
 bh=oxtzWYTcZUeztLB7UEuFKN8s7c2po4AnpBFk2DaOf8g=; b=g8OtAdhTCgnusE8GasUQFRiq1L
 gnkNG6c564LvDhAXU577UxD3vG3mUuoHgYLaFbdmNsDT5fgTQQoJCN/w4g0UIDG2nIFwNwBp7nLIQ
 fpH8RtbiM94foA+32Rk89Ya69xzWOzHit46Ya7xUeLTidJnbE3CZOnssmqkOOLpAKkmg=;
Subject: [Spice-devel] [PATCH x11spice 06/10] Implement page flips.
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
ZW8tZHVtbXkvc3JjL3ByZXNlbnQuYyB8IDkgKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NwaWNlLXZpZGVvLWR1
bW15L3NyYy9wcmVzZW50LmMgYi9zcGljZS12aWRlby1kdW1teS9zcmMvcHJlc2VudC5jCmluZGV4
IGFkMjlkYzkxLi40MDI5MGQ3MCAxMDA2NDQKLS0tIGEvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL3By
ZXNlbnQuYworKysgYi9zcGljZS12aWRlby1kdW1teS9zcmMvcHJlc2VudC5jCkBAIC0xNjIsMTkg
KzE2MiwyNCBAQCBkdW1teV9wcmVzZW50X2ZsdXNoKFdpbmRvd1JlYyAqIHdpbmRvdykKIHN0YXRp
YyBCb29sCiBkdW1teV9wcmVzZW50X2NoZWNrX2ZsaXAoUlJDcnRjUmVjICogY3J0YywgV2luZG93
UmVjICogd2luZG93LCBQaXhtYXBSZWMgKiBwaXhtYXAsIEJvb2wgc3luY19mbGlwKQogewotICAg
IHJldHVybiBGQUxTRTsKKyAgICBjb25zdCBTY3JuSW5mb1JlYyAqc2NybiA9IHhmODZTY3JlZW5U
b1Njcm4oY3J0Yy0+cFNjcmVlbik7CisgICAgY29uc3QgRFVNTVlSZWMgKmR1bW15ID0gc2Nybi0+
ZHJpdmVyUHJpdmF0ZTsKKworICAgIHJldHVybiAhZHVtbXktPnN3Q3Vyc29yOwogfQogCiBzdGF0
aWMgQm9vbAogZHVtbXlfcHJlc2VudF9mbGlwKFJSQ3J0Y1JlYyAqIGNydGMsIHVpbnQ2NF90IGV2
ZW50X2lkLAogICAgICAgICAgICAgICAgICAgIHVpbnQ2NF90IHRhcmdldF9tc2MsIFBpeG1hcFJl
YyAqIHBpeG1hcCwgQm9vbCBzeW5jX2ZsaXApCiB7Ci0gICAgcmV0dXJuIEZBTFNFOworICAgIGds
YW1vcl9ibG9ja19oYW5kbGVyKGNydGMtPnBTY3JlZW4pOworICAgIHJldHVybiBkdW1teV9wcmVz
ZW50X3F1ZXVlX3ZibGFuayhjcnRjLCBldmVudF9pZCwgdGFyZ2V0X21zYykgPT0gU3VjY2VzczsK
IH0KIAogc3RhdGljIHZvaWQKIGR1bW15X3ByZXNlbnRfdW5mbGlwKFNjcmVlblJlYyAqIHNjcmVl
biwgdWludDY0X3QgZXZlbnRfaWQpCiB7CisgICAgZ2xhbW9yX2Jsb2NrX2hhbmRsZXIoc2NyZWVu
KTsKICAgICBwcmVzZW50X2V2ZW50X25vdGlmeShldmVudF9pZCwgMCwgMCk7CiB9CiAKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
