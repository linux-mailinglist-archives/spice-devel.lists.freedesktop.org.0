Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F98463D2
	for <lists+spice-devel@lfdr.de>; Fri, 14 Jun 2019 18:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 654DB899AB;
	Fri, 14 Jun 2019 16:17:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9EDD899AB
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jun 2019 16:17:54 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hbouL-0001O4-3c
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 11:18:30 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hbotj-0004f4-6T
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 18:17:51 +0200
Date: Fri, 14 Jun 2019 18:17:51 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Message-ID: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
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
 src/channel-display-gst.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c index
 91ece0fa..c756f916 100644 --- a/src/channel-display-gst.c +++
 b/src/channel-display-gst.c
 @@ -278,7 +278,7 @@ static SpiceGstFr [...] 
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
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RCFDOt8QNi6OgC+rJhQ5tYPRzR4LxzTUF0Ab5OhF/ZQ=; b=Vuc5bBcjE88sOmXxeDzhPTJeV+
 OwGHkHrmHfv0qnNE+83HrJGFiiUdxbiptVmee8KnzITM10jr/7RitwrGptNqLTTH0QLKh+V7Cd5/q
 7kYDxtIDk8R5gM6CuzLLnF4CRzbXKwJ8H0LfQhtw0sYGClPVTklSuvW0rx2voRk6mg6c=;
Subject: [Spice-devel] [client 1/5] gstreamer: Avoid direct access to GQueue
 fields
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
LS0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlz
cGxheS1nc3QuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKaW5kZXggOTFlY2UwZmEuLmM3
NTZmOTE2IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCisrKyBiL3NyYy9j
aGFubmVsLWRpc3BsYXktZ3N0LmMKQEAgLTI3OCw3ICsyNzgsNyBAQCBzdGF0aWMgU3BpY2VHc3RG
cmFtZSAqZ2V0X2RlY29kZWRfZnJhbWUoU3BpY2VHc3REZWNvZGVyICpkZWNvZGVyLCBHc3RCdWZm
ZXIgKmJ1ZgogICAgICAgICAgICAgICAgImZyYW1lIG1tX3RpbWUgJXUgc2l6ZSAldSBjcmVhdGlv
biB0aW1lICUiIFBSSWQ2NAogICAgICAgICAgICAgICAgIiBkZWNvZGVkIHRpbWUgJSIgUFJJZDY0
ICIgcXVldWUgJXUiLAogICAgICAgICAgICAgICAgZnJhbWUtPm1tX3RpbWUsIGZyYW1lLT5zaXpl
LCBmcmFtZS0+Y3JlYXRpb25fdGltZSwKLSAgICAgICAgICAgICAgIGR1cmF0aW9uLCBkZWNvZGVy
LT5kZWNvZGluZ19xdWV1ZS0+bGVuZ3RoKTsKKyAgICAgICAgICAgICAgIGR1cmF0aW9uLCBnX3F1
ZXVlX2dldF9sZW5ndGgoZGVjb2Rlci0+ZGVjb2RpbmdfcXVldWUpKTsKICAgICB9CiAgICAgcmV0
dXJuIGdzdGZyYW1lOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
