Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A283463D5
	for <lists+spice-devel@lfdr.de>; Fri, 14 Jun 2019 18:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFCB289A60;
	Fri, 14 Jun 2019 16:18:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C88489A60
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jun 2019 16:18:06 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hbouW-0001OS-G6
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 11:18:41 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hbotv-0004fE-7j
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 18:18:03 +0200
Date: Fri, 14 Jun 2019 18:18:03 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
Message-ID: <7bf58569e1272722bd5c6394bcc6dcb29d01b1f2.1560528809.git.fgouget@free.fr>
References: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
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
 src/channel-display-gst.c | 81 ++++++++++++++++++++ 1 file changed,
 42 insertions(+), 
 39 deletions(-) diff --git a/src/channel-display-gst.c
 b/src/channel-display-gst.c
 index c756f916..50f29060 100644 --- a/src/channel-display-gst.c +++
 b/src/channel-display-gst.c
 @@ -120,8 +120,6 @@ static void free_ [...] 
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
 bh=CTJL1T5H4Zjj3qNJRDiysKweZiNvT9PnQaEjSPPkt4g=; b=xzkhsKFZbq7FYh3qkdt8K6FFg
 ibPMWvmTqUGRESvYiAW76S8ITMZcfxMBNqd4LWeSXURUMtgxj/6rEvUPk9knkKzJ4FcbRpdp22exw
 5wcJ64SPUhKcVGu2ld6qf2IWNFVrKW3n5DUJF+7nLbf+IzqaR7bJzdilGfGOei4e5zRMg=;
Subject: [Spice-devel] [client 2/5] gstreamer: Avoid a couple of forward
 function declarations
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
LS0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIHwgODEgKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMzkg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyBiL3Ny
Yy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKaW5kZXggYzc1NmY5MTYuLjUwZjI5MDYwIDEwMDY0NAot
LS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCisrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXkt
Z3N0LmMKQEAgLTEyMCw4ICsxMjAsNiBAQCBzdGF0aWMgdm9pZCBmcmVlX2dzdF9mcmFtZShTcGlj
ZUdzdEZyYW1lICpnc3RmcmFtZSkKIC8qIC0tLS0tLS0tLS0gR1N0cmVhbWVyIHBpcGVsaW5lIC0t
LS0tLS0tLS0gKi8KIAogc3RhdGljIHZvaWQgc2NoZWR1bGVfZnJhbWUoU3BpY2VHc3REZWNvZGVy
ICpkZWNvZGVyKTsKLXN0YXRpYyB2b2lkIGZldGNoX3BlbmRpbmdfc2FtcGxlKFNwaWNlR3N0RGVj
b2RlciAqZGVjb2Rlcik7Ci1zdGF0aWMgU3BpY2VHc3RGcmFtZSAqZ2V0X2RlY29kZWRfZnJhbWUo
U3BpY2VHc3REZWNvZGVyICpkZWNvZGVyLCBHc3RCdWZmZXIgKmJ1ZmZlcik7CiAKIFJFQ09SREVS
KGZyYW1lc19zdGF0cywgNjQsICJGcmFtZXMgc3RhdGlzdGljcyIpOwogCkBAIC0xODQsNDYgKzE4
MiwxMCBAQCBzdGF0aWMgZ2Jvb2xlYW4gZGlzcGxheV9mcmFtZShncG9pbnRlciB2aWRlb19kZWNv
ZGVyKQogICAgIHJldHVybiBHX1NPVVJDRV9SRU1PVkU7CiB9CiAKLS8qIG1haW4gbG9vcCBvciBH
U3RyZWFtZXIgc3RyZWFtaW5nIHRocmVhZCAqLwotc3RhdGljIHZvaWQgc2NoZWR1bGVfZnJhbWUo
U3BpY2VHc3REZWNvZGVyICpkZWNvZGVyKQotewotICAgIGd1aW50MzIgbm93ID0gc3RyZWFtX2dl
dF90aW1lKGRlY29kZXItPmJhc2Uuc3RyZWFtKTsKLSAgICBnX211dGV4X2xvY2soJmRlY29kZXIt
PnF1ZXVlc19tdXRleCk7Ci0KLSAgICB3aGlsZSAoIWRlY29kZXItPnRpbWVyX2lkKSB7Ci0gICAg
ICAgIHdoaWxlIChkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lID09IE5VTEwgJiYgZGVjb2Rlci0+cGVu
ZGluZ19zYW1wbGVzKSB7Ci0gICAgICAgICAgICBmZXRjaF9wZW5kaW5nX3NhbXBsZShkZWNvZGVy
KTsKLSAgICAgICAgfQotCi0gICAgICAgIFNwaWNlR3N0RnJhbWUgKmdzdGZyYW1lID0gZGVjb2Rl
ci0+ZGlzcGxheV9mcmFtZTsKLSAgICAgICAgaWYgKCFnc3RmcmFtZSkgewotICAgICAgICAgICAg
YnJlYWs7Ci0gICAgICAgIH0KLQotICAgICAgICBpZiAoc3BpY2VfbW10aW1lX2RpZmYoZ3N0ZnJh
bWUtPmVuY29kZWRfZnJhbWUtPm1tX3RpbWUsIG5vdykgPj0gMCkgewotICAgICAgICAgICAgZGVj
b2Rlci0+dGltZXJfaWQgPSBnX3RpbWVvdXRfYWRkKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5t
bV90aW1lIC0gbm93LAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRpc3BsYXlfZnJhbWUsIGRlY29kZXIpOwotICAgICAgICB9IGVsc2UgaWYgKGRlY29kZXIt
PmRpc3BsYXlfZnJhbWUgJiYgIWRlY29kZXItPnBlbmRpbmdfc2FtcGxlcykgewotICAgICAgICAg
ICAgLyogU3RpbGwgYXR0ZW1wdCB0byBkaXNwbGF5IHRoZSBsZWFzdCBvdXQgb2YgZGF0ZSBmcmFt
ZSBzbyB0aGUKLSAgICAgICAgICAgICAqIHZpZGVvIGlzIG5vdCBjb21wbGV0ZWx5IGZyb3plbiBm
b3IgYW4gZXh0ZW5kZWQgcGVyaW9kIG9mIHRpbWUuCi0gICAgICAgICAgICAgKi8KLSAgICAgICAg
ICAgIGRlY29kZXItPnRpbWVyX2lkID0gZ190aW1lb3V0X2FkZCgwLCBkaXNwbGF5X2ZyYW1lLCBk
ZWNvZGVyKTsKLSAgICAgICAgfSBlbHNlIHsKLSAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIlczog
cmVuZGVyaW5nIHRvbyBsYXRlIGJ5ICV1IG1zICh0czogJXUsIG1tdGltZTogJXUpLCBkcm9wcGlu
ZyIsCi0gICAgICAgICAgICAgICAgICAgICAgICBfX0ZVTkNUSU9OX18sIG5vdyAtIGdzdGZyYW1l
LT5lbmNvZGVkX2ZyYW1lLT5tbV90aW1lLAotICAgICAgICAgICAgICAgICAgICAgICAgZ3N0ZnJh
bWUtPmVuY29kZWRfZnJhbWUtPm1tX3RpbWUsIG5vdyk7Ci0gICAgICAgICAgICBzdHJlYW1fZHJv
cHBlZF9mcmFtZV9vbl9wbGF5YmFjayhkZWNvZGVyLT5iYXNlLnN0cmVhbSk7Ci0gICAgICAgICAg
ICBkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lID0gTlVMTDsKLSAgICAgICAgICAgIGZyZWVfZ3N0X2Zy
YW1lKGdzdGZyYW1lKTsKLSAgICAgICAgfQotICAgIH0KLQotICAgIGdfbXV0ZXhfdW5sb2NrKCZk
ZWNvZGVyLT5xdWV1ZXNfbXV0ZXgpOwotfQotCiAvKiBHZXQgdGhlIGRlY29kZWQgZnJhbWUgcmVs
YXRpdmUgdG8gYnVmZmVyIG9yIE5VTEwgaWYgbm90IGZvdW5kLgogICogRGVxdWV1ZSB0aGUgZnJh
bWUgZnJvbSBkZWNvZGluZ19xdWV1ZSBhbmQgcmV0dXJuIGl0LCBjYWxsZXIKICAqIGlzIHJlc3Bv
bnNpYmxlIHRvIGZyZWUgdGhlIHBvaW50ZXIuCisgKgogICogcXVldWVzX211dGV4IG11c3QgYmUg
aGVsZC4KICAqLwogc3RhdGljIFNwaWNlR3N0RnJhbWUgKmdldF9kZWNvZGVkX2ZyYW1lKFNwaWNl
R3N0RGVjb2RlciAqZGVjb2RlciwgR3N0QnVmZmVyICpidWZmZXIpCkBAIC0yODMsNiArMjQ1LDEw
IEBAIHN0YXRpYyBTcGljZUdzdEZyYW1lICpnZXRfZGVjb2RlZF9mcmFtZShTcGljZUdzdERlY29k
ZXIgKmRlY29kZXIsIEdzdEJ1ZmZlciAqYnVmCiAgICAgcmV0dXJuIGdzdGZyYW1lOwogfQogCisv
KiBIZWxwZXIgZm9yIHNjaGVkdWxlX2ZyYW1lKCkuCisgKgorICogcXVldWVzX211dGV4IG11c3Qg
YmUgaGVsZC4KKyAqLwogc3RhdGljIHZvaWQgZmV0Y2hfcGVuZGluZ19zYW1wbGUoU3BpY2VHc3RE
ZWNvZGVyICpkZWNvZGVyKQogewogICAgIEdzdFNhbXBsZSAqc2FtcGxlID0gZ3N0X2FwcF9zaW5r
X3B1bGxfc2FtcGxlKGRlY29kZXItPmFwcHNpbmspOwpAQCAtMzE1LDYgKzI4MSw0MyBAQCBzdGF0
aWMgdm9pZCBmZXRjaF9wZW5kaW5nX3NhbXBsZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIpCiAg
ICAgfQogfQogCisvKiBtYWluIGxvb3Agb3IgR1N0cmVhbWVyIHN0cmVhbWluZyB0aHJlYWQgKi8K
K3N0YXRpYyB2b2lkIHNjaGVkdWxlX2ZyYW1lKFNwaWNlR3N0RGVjb2RlciAqZGVjb2RlcikKK3sK
KyAgICBndWludDMyIG5vdyA9IHN0cmVhbV9nZXRfdGltZShkZWNvZGVyLT5iYXNlLnN0cmVhbSk7
CisgICAgZ19tdXRleF9sb2NrKCZkZWNvZGVyLT5xdWV1ZXNfbXV0ZXgpOworCisgICAgd2hpbGUg
KCFkZWNvZGVyLT50aW1lcl9pZCkgeworICAgICAgICB3aGlsZSAoZGVjb2Rlci0+ZGlzcGxheV9m
cmFtZSA9PSBOVUxMICYmIGRlY29kZXItPnBlbmRpbmdfc2FtcGxlcykgeworICAgICAgICAgICAg
ZmV0Y2hfcGVuZGluZ19zYW1wbGUoZGVjb2Rlcik7CisgICAgICAgIH0KKworICAgICAgICBTcGlj
ZUdzdEZyYW1lICpnc3RmcmFtZSA9IGRlY29kZXItPmRpc3BsYXlfZnJhbWU7CisgICAgICAgIGlm
ICghZ3N0ZnJhbWUpIHsKKyAgICAgICAgICAgIGJyZWFrOworICAgICAgICB9CisKKyAgICAgICAg
aWYgKHNwaWNlX21tdGltZV9kaWZmKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5tbV90aW1lLCBu
b3cpID49IDApIHsKKyAgICAgICAgICAgIGRlY29kZXItPnRpbWVyX2lkID0gZ190aW1lb3V0X2Fk
ZChnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSAtIG5vdywKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkaXNwbGF5X2ZyYW1lLCBkZWNvZGVyKTsK
KyAgICAgICAgfSBlbHNlIGlmIChkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lICYmICFkZWNvZGVyLT5w
ZW5kaW5nX3NhbXBsZXMpIHsKKyAgICAgICAgICAgIC8qIFN0aWxsIGF0dGVtcHQgdG8gZGlzcGxh
eSB0aGUgbGVhc3Qgb3V0IG9mIGRhdGUgZnJhbWUgc28gdGhlCisgICAgICAgICAgICAgKiB2aWRl
byBpcyBub3QgY29tcGxldGVseSBmcm96ZW4gZm9yIGFuIGV4dGVuZGVkIHBlcmlvZCBvZiB0aW1l
LgorICAgICAgICAgICAgICovCisgICAgICAgICAgICBkZWNvZGVyLT50aW1lcl9pZCA9IGdfdGlt
ZW91dF9hZGQoMCwgZGlzcGxheV9mcmFtZSwgZGVjb2Rlcik7CisgICAgICAgIH0gZWxzZSB7Cisg
ICAgICAgICAgICBTUElDRV9ERUJVRygiJXM6IHJlbmRlcmluZyB0b28gbGF0ZSBieSAldSBtcyAo
dHM6ICV1LCBtbXRpbWU6ICV1KSwgZHJvcHBpbmciLAorICAgICAgICAgICAgICAgICAgICAgICAg
X19GVU5DVElPTl9fLCBub3cgLSBnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSwKKyAg
ICAgICAgICAgICAgICAgICAgICAgIGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5tbV90aW1lLCBu
b3cpOworICAgICAgICAgICAgc3RyZWFtX2Ryb3BwZWRfZnJhbWVfb25fcGxheWJhY2soZGVjb2Rl
ci0+YmFzZS5zdHJlYW0pOworICAgICAgICAgICAgZGVjb2Rlci0+ZGlzcGxheV9mcmFtZSA9IE5V
TEw7CisgICAgICAgICAgICBmcmVlX2dzdF9mcmFtZShnc3RmcmFtZSk7CisgICAgICAgIH0KKyAg
ICB9CisKKyAgICBnX211dGV4X3VubG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKK30KKwog
LyogR1N0cmVhbWVyIHRocmVhZAogICoKICAqIFdlIGNhbm5vdCB1c2UgR1N0cmVhbWVyJ3Mgc2ln
bmFscyBiZWNhdXNlIHRoZXkgYXJlIG5vdCBhbHdheXMgcnVuIGluCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
