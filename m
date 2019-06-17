Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA3948A43
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 19:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C928926C;
	Mon, 17 Jun 2019 17:36:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2CE8926C
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 17:36:50 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hcvZM-0007CQ-JB
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 12:37:25 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hcvYm-00006x-Bf
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 19:36:48 +0200
Date: Mon, 17 Jun 2019 19:36:48 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <cover.1560790607.git.fgouget@free.fr>
Message-ID: <83e7e8b8edab33715a49db68fddc628312a68865.1560790607.git.fgouget@free.fr>
References: <cover.1560790607.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 src/channel-display-mjpeg.c | 3 +++ 1 file changed, 3 insertions(+) diff
 --git a/src/channel-display-mjpeg.c b/src/channel-display-mjpeg.c index
 20e10d9b..764f0611
 100644 --- a/src/channel-display-mjpeg.c +++ b/src/channel-display-mjpeg.c
 @@ -189,6 +189,9 @@ static vo [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cJeflcVB8s2hxXHcnvx7bAHfagOWXgJNTJgWREWjbpQ=; b=PaOV2078sDeWwcCiAh9Mm3HiW
 Lqwlo1A9OEbbQyirNPyHPaJPrKZ/pfZLEPMgF3mOHVSUlq6mhbeHtsE0EawbhHQQ4Gns9CQtT5qoo
 KpQOsi432reWeyZf9CRHyyUREi78YAsVZqoq3xhU9qFVwLYtqKmYDjYm50cXcREKGnrPg=;
Subject: [Spice-devel] [client v2 12/12] mjpeg: Take the decoding time into
 account to display frames
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

U2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4K
LS0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcu
YyBiL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwppbmRleCAyMGUxMGQ5Yi4uNzY0ZjA2MTEg
MTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYworKysgYi9zcmMvY2hhbm5l
bC1kaXNwbGF5LW1qcGVnLmMKQEAgLTE4OSw2ICsxODksOSBAQCBzdGF0aWMgdm9pZCBtanBlZ19k
ZWNvZGVyX3NjaGVkdWxlKE1KcGVnRGVjb2RlciAqZGVjb2RlcikKICAgICAgICAgaWYgKGZyYW1l
KSB7CiAgICAgICAgICAgICBpZiAoc3BpY2VfbW10aW1lX2RpZmYodGltZSwgZnJhbWUtPnRpbWUp
IDw9IDApIHsKICAgICAgICAgICAgICAgICBndWludDMyIGQgPSBmcmFtZS0+dGltZSAtIHRpbWU7
CisgICAgICAgICAgICAgICAgaWYgKGQgPiBkZWNvZGVyLT5iYXNlLmRlY29kaW5nX3RpbWUpIHsK
KyAgICAgICAgICAgICAgICAgICAgZCAtPSBkZWNvZGVyLT5iYXNlLmRlY29kaW5nX3RpbWU7Cisg
ICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgIGRlY29kZXItPmN1cl9mcmFtZSA9IGZy
YW1lOwogICAgICAgICAgICAgICAgIGRlY29kZXItPnRpbWVyX2lkID0gZ190aW1lb3V0X2FkZChk
LCBtanBlZ19kZWNvZGVyX2RlY29kZV9mcmFtZSwgZGVjb2Rlcik7CiAgICAgICAgICAgICAgICAg
YnJlYWs7Ci0tIAoyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
