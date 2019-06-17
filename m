Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B4848A1D
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 19:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D2A891C4;
	Mon, 17 Jun 2019 17:31:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D469F891C4
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 17:31:30 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hcvUC-00076Z-F7
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 12:32:05 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hcvTb-00083l-5Y
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 19:31:27 +0200
Date: Mon, 17 Jun 2019 19:31:27 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <cover.1560790607.git.fgouget@free.fr>
Message-ID: <8b01abd135c671687bb97a37667aeef2013d38f0.1560790607.git.fgouget@free.fr>
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
 v2: No change. src/channel-display-gst.c | 81 ++++++++++++++++++++ 1 file
 changed, 42 insertions(+), 39 deletions(-) 
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
 bh=yp3VyoNl7HMXeUaYsrbxGyVrFStkPqWPem/jnm45pJo=; b=JVuR+vbHDbPCteQ29XFPCO13m
 2v1IUQOO9ABV+Iq/8vvshSmmopFXaPPIQ603ONeUclG8Kl03FBunJ4b17LCDIEC21LDHbZfdoApM/
 1ygEBNYLi38UchLOQ+AIgXt8gnncBx2z6KuxglPry9YgtGbOdRvE/IPGXlU2u7i0f0SYw=;
Subject: [Spice-devel] [client v2 01/12] gstreamer: Avoid a couple of
 forward function declarations
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
LS0tCgp2MjogTm8gY2hhbmdlLgoKIHNyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgfCA4MSArKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MiBp
bnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1k
aXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwppbmRleCA5MWVjZTBmYS4u
ZWM4YTdkMzkgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKKysrIGIvc3Jj
L2NoYW5uZWwtZGlzcGxheS1nc3QuYwpAQCAtMTIwLDggKzEyMCw2IEBAIHN0YXRpYyB2b2lkIGZy
ZWVfZ3N0X2ZyYW1lKFNwaWNlR3N0RnJhbWUgKmdzdGZyYW1lKQogLyogLS0tLS0tLS0tLSBHU3Ry
ZWFtZXIgcGlwZWxpbmUgLS0tLS0tLS0tLSAqLwogCiBzdGF0aWMgdm9pZCBzY2hlZHVsZV9mcmFt
ZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIpOwotc3RhdGljIHZvaWQgZmV0Y2hfcGVuZGluZ19z
YW1wbGUoU3BpY2VHc3REZWNvZGVyICpkZWNvZGVyKTsKLXN0YXRpYyBTcGljZUdzdEZyYW1lICpn
ZXRfZGVjb2RlZF9mcmFtZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIsIEdzdEJ1ZmZlciAqYnVm
ZmVyKTsKIAogUkVDT1JERVIoZnJhbWVzX3N0YXRzLCA2NCwgIkZyYW1lcyBzdGF0aXN0aWNzIik7
CiAKQEAgLTE4NCw0NiArMTgyLDEwIEBAIHN0YXRpYyBnYm9vbGVhbiBkaXNwbGF5X2ZyYW1lKGdw
b2ludGVyIHZpZGVvX2RlY29kZXIpCiAgICAgcmV0dXJuIEdfU09VUkNFX1JFTU9WRTsKIH0KIAot
LyogbWFpbiBsb29wIG9yIEdTdHJlYW1lciBzdHJlYW1pbmcgdGhyZWFkICovCi1zdGF0aWMgdm9p
ZCBzY2hlZHVsZV9mcmFtZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIpCi17Ci0gICAgZ3VpbnQz
MiBub3cgPSBzdHJlYW1fZ2V0X3RpbWUoZGVjb2Rlci0+YmFzZS5zdHJlYW0pOwotICAgIGdfbXV0
ZXhfbG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKLQotICAgIHdoaWxlICghZGVjb2Rlci0+
dGltZXJfaWQpIHsKLSAgICAgICAgd2hpbGUgKGRlY29kZXItPmRpc3BsYXlfZnJhbWUgPT0gTlVM
TCAmJiBkZWNvZGVyLT5wZW5kaW5nX3NhbXBsZXMpIHsKLSAgICAgICAgICAgIGZldGNoX3BlbmRp
bmdfc2FtcGxlKGRlY29kZXIpOwotICAgICAgICB9Ci0KLSAgICAgICAgU3BpY2VHc3RGcmFtZSAq
Z3N0ZnJhbWUgPSBkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lOwotICAgICAgICBpZiAoIWdzdGZyYW1l
KSB7Ci0gICAgICAgICAgICBicmVhazsKLSAgICAgICAgfQotCi0gICAgICAgIGlmIChzcGljZV9t
bXRpbWVfZGlmZihnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSwgbm93KSA+PSAwKSB7
Ci0gICAgICAgICAgICBkZWNvZGVyLT50aW1lcl9pZCA9IGdfdGltZW91dF9hZGQoZ3N0ZnJhbWUt
PmVuY29kZWRfZnJhbWUtPm1tX3RpbWUgLSBub3csCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZGlzcGxheV9mcmFtZSwgZGVjb2Rlcik7Ci0gICAgICAgIH0g
ZWxzZSBpZiAoZGVjb2Rlci0+ZGlzcGxheV9mcmFtZSAmJiAhZGVjb2Rlci0+cGVuZGluZ19zYW1w
bGVzKSB7Ci0gICAgICAgICAgICAvKiBTdGlsbCBhdHRlbXB0IHRvIGRpc3BsYXkgdGhlIGxlYXN0
IG91dCBvZiBkYXRlIGZyYW1lIHNvIHRoZQotICAgICAgICAgICAgICogdmlkZW8gaXMgbm90IGNv
bXBsZXRlbHkgZnJvemVuIGZvciBhbiBleHRlbmRlZCBwZXJpb2Qgb2YgdGltZS4KLSAgICAgICAg
ICAgICAqLwotICAgICAgICAgICAgZGVjb2Rlci0+dGltZXJfaWQgPSBnX3RpbWVvdXRfYWRkKDAs
IGRpc3BsYXlfZnJhbWUsIGRlY29kZXIpOwotICAgICAgICB9IGVsc2UgewotICAgICAgICAgICAg
U1BJQ0VfREVCVUcoIiVzOiByZW5kZXJpbmcgdG9vIGxhdGUgYnkgJXUgbXMgKHRzOiAldSwgbW10
aW1lOiAldSksIGRyb3BwaW5nIiwKLSAgICAgICAgICAgICAgICAgICAgICAgIF9fRlVOQ1RJT05f
Xywgbm93IC0gZ3N0ZnJhbWUtPmVuY29kZWRfZnJhbWUtPm1tX3RpbWUsCi0gICAgICAgICAgICAg
ICAgICAgICAgICBnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSwgbm93KTsKLSAgICAg
ICAgICAgIHN0cmVhbV9kcm9wcGVkX2ZyYW1lX29uX3BsYXliYWNrKGRlY29kZXItPmJhc2Uuc3Ry
ZWFtKTsKLSAgICAgICAgICAgIGRlY29kZXItPmRpc3BsYXlfZnJhbWUgPSBOVUxMOwotICAgICAg
ICAgICAgZnJlZV9nc3RfZnJhbWUoZ3N0ZnJhbWUpOwotICAgICAgICB9Ci0gICAgfQotCi0gICAg
Z19tdXRleF91bmxvY2soJmRlY29kZXItPnF1ZXVlc19tdXRleCk7Ci19Ci0KIC8qIEdldCB0aGUg
ZGVjb2RlZCBmcmFtZSByZWxhdGl2ZSB0byBidWZmZXIgb3IgTlVMTCBpZiBub3QgZm91bmQuCiAg
KiBEZXF1ZXVlIHRoZSBmcmFtZSBmcm9tIGRlY29kaW5nX3F1ZXVlIGFuZCByZXR1cm4gaXQsIGNh
bGxlcgogICogaXMgcmVzcG9uc2libGUgdG8gZnJlZSB0aGUgcG9pbnRlci4KKyAqCiAgKiBxdWV1
ZXNfbXV0ZXggbXVzdCBiZSBoZWxkLgogICovCiBzdGF0aWMgU3BpY2VHc3RGcmFtZSAqZ2V0X2Rl
Y29kZWRfZnJhbWUoU3BpY2VHc3REZWNvZGVyICpkZWNvZGVyLCBHc3RCdWZmZXIgKmJ1ZmZlcikK
QEAgLTI4Myw2ICsyNDUsMTAgQEAgc3RhdGljIFNwaWNlR3N0RnJhbWUgKmdldF9kZWNvZGVkX2Zy
YW1lKFNwaWNlR3N0RGVjb2RlciAqZGVjb2RlciwgR3N0QnVmZmVyICpidWYKICAgICByZXR1cm4g
Z3N0ZnJhbWU7CiB9CiAKKy8qIEhlbHBlciBmb3Igc2NoZWR1bGVfZnJhbWUoKS4KKyAqCisgKiBx
dWV1ZXNfbXV0ZXggbXVzdCBiZSBoZWxkLgorICovCiBzdGF0aWMgdm9pZCBmZXRjaF9wZW5kaW5n
X3NhbXBsZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIpCiB7CiAgICAgR3N0U2FtcGxlICpzYW1w
bGUgPSBnc3RfYXBwX3NpbmtfcHVsbF9zYW1wbGUoZGVjb2Rlci0+YXBwc2luayk7CkBAIC0zMTUs
NiArMjgxLDQzIEBAIHN0YXRpYyB2b2lkIGZldGNoX3BlbmRpbmdfc2FtcGxlKFNwaWNlR3N0RGVj
b2RlciAqZGVjb2RlcikKICAgICB9CiB9CiAKKy8qIG1haW4gbG9vcCBvciBHU3RyZWFtZXIgc3Ry
ZWFtaW5nIHRocmVhZCAqLworc3RhdGljIHZvaWQgc2NoZWR1bGVfZnJhbWUoU3BpY2VHc3REZWNv
ZGVyICpkZWNvZGVyKQoreworICAgIGd1aW50MzIgbm93ID0gc3RyZWFtX2dldF90aW1lKGRlY29k
ZXItPmJhc2Uuc3RyZWFtKTsKKyAgICBnX211dGV4X2xvY2soJmRlY29kZXItPnF1ZXVlc19tdXRl
eCk7CisKKyAgICB3aGlsZSAoIWRlY29kZXItPnRpbWVyX2lkKSB7CisgICAgICAgIHdoaWxlIChk
ZWNvZGVyLT5kaXNwbGF5X2ZyYW1lID09IE5VTEwgJiYgZGVjb2Rlci0+cGVuZGluZ19zYW1wbGVz
KSB7CisgICAgICAgICAgICBmZXRjaF9wZW5kaW5nX3NhbXBsZShkZWNvZGVyKTsKKyAgICAgICAg
fQorCisgICAgICAgIFNwaWNlR3N0RnJhbWUgKmdzdGZyYW1lID0gZGVjb2Rlci0+ZGlzcGxheV9m
cmFtZTsKKyAgICAgICAgaWYgKCFnc3RmcmFtZSkgeworICAgICAgICAgICAgYnJlYWs7CisgICAg
ICAgIH0KKworICAgICAgICBpZiAoc3BpY2VfbW10aW1lX2RpZmYoZ3N0ZnJhbWUtPmVuY29kZWRf
ZnJhbWUtPm1tX3RpbWUsIG5vdykgPj0gMCkgeworICAgICAgICAgICAgZGVjb2Rlci0+dGltZXJf
aWQgPSBnX3RpbWVvdXRfYWRkKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5tbV90aW1lIC0gbm93
LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpc3BsYXlf
ZnJhbWUsIGRlY29kZXIpOworICAgICAgICB9IGVsc2UgaWYgKGRlY29kZXItPmRpc3BsYXlfZnJh
bWUgJiYgIWRlY29kZXItPnBlbmRpbmdfc2FtcGxlcykgeworICAgICAgICAgICAgLyogU3RpbGwg
YXR0ZW1wdCB0byBkaXNwbGF5IHRoZSBsZWFzdCBvdXQgb2YgZGF0ZSBmcmFtZSBzbyB0aGUKKyAg
ICAgICAgICAgICAqIHZpZGVvIGlzIG5vdCBjb21wbGV0ZWx5IGZyb3plbiBmb3IgYW4gZXh0ZW5k
ZWQgcGVyaW9kIG9mIHRpbWUuCisgICAgICAgICAgICAgKi8KKyAgICAgICAgICAgIGRlY29kZXIt
PnRpbWVyX2lkID0gZ190aW1lb3V0X2FkZCgwLCBkaXNwbGF5X2ZyYW1lLCBkZWNvZGVyKTsKKyAg
ICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIlczogcmVuZGVyaW5nIHRv
byBsYXRlIGJ5ICV1IG1zICh0czogJXUsIG1tdGltZTogJXUpLCBkcm9wcGluZyIsCisgICAgICAg
ICAgICAgICAgICAgICAgICBfX0ZVTkNUSU9OX18sIG5vdyAtIGdzdGZyYW1lLT5lbmNvZGVkX2Zy
YW1lLT5tbV90aW1lLAorICAgICAgICAgICAgICAgICAgICAgICAgZ3N0ZnJhbWUtPmVuY29kZWRf
ZnJhbWUtPm1tX3RpbWUsIG5vdyk7CisgICAgICAgICAgICBzdHJlYW1fZHJvcHBlZF9mcmFtZV9v
bl9wbGF5YmFjayhkZWNvZGVyLT5iYXNlLnN0cmVhbSk7CisgICAgICAgICAgICBkZWNvZGVyLT5k
aXNwbGF5X2ZyYW1lID0gTlVMTDsKKyAgICAgICAgICAgIGZyZWVfZ3N0X2ZyYW1lKGdzdGZyYW1l
KTsKKyAgICAgICAgfQorICAgIH0KKworICAgIGdfbXV0ZXhfdW5sb2NrKCZkZWNvZGVyLT5xdWV1
ZXNfbXV0ZXgpOworfQorCiAvKiBHU3RyZWFtZXIgdGhyZWFkCiAgKgogICogV2UgY2Fubm90IHVz
ZSBHU3RyZWFtZXIncyBzaWduYWxzIGJlY2F1c2UgdGhleSBhcmUgbm90IGFsd2F5cyBydW4gaW4K
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
