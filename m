Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E026148A30
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 19:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701428926C;
	Mon, 17 Jun 2019 17:34:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E30989268
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 17:33:59 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hcvWa-00079R-Rm
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 12:34:33 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hcvW0-0008Bs-Mo
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 19:33:56 +0200
Date: Mon, 17 Jun 2019 19:33:56 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <cover.1560790607.git.fgouget@free.fr>
Message-ID: <80842530005e7f5601d067c4cbb7268de82dd999.1560790607.git.fgouget@free.fr>
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
 Content preview: The point of the mmtime timestamps is that they are the same
 on the server and client thanks to the client running its own mmtime clock
 synchronized, modulo a server-controlled offset, to the server's [...] 
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
 bh=aTGMNYc5dQF5dshm2iU5NP+0iJ2Ph+5p7lN2KcJ8MoI=; b=nZV6JGweqVtP3U9vEIxQJYGzA
 y98RJDlE/vgTbm35H09XNCOSxcDNrUq717BydVTGwrkK8mvOZeMv84MCn6l6SChsMXi7Kcw3q8ctr
 /XGR2p9NV4JH8mhM7MSd//kOk4nXlWdVHs6shgea2XTZmpDgAsGHedcCcSrhLCD/2VxNI=;
Subject: [Spice-devel] [client v2 06/12] channel-display: Rename the frame
 mmtime variables
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

VGhlIHBvaW50IG9mIHRoZSBtbXRpbWUgdGltZXN0YW1wcyBpcyB0aGF0IHRoZXkgYXJlIHRoZSBz
YW1lIG9uIHRoZQpzZXJ2ZXIgYW5kIGNsaWVudCB0aGFua3MgdG8gdGhlIGNsaWVudCBydW5uaW5n
IGl0cyBvd24gbW10aW1lIGNsb2NrCnN5bmNocm9uaXplZCwgbW9kdWxvIGEgc2VydmVyLWNvbnRy
b2xsZWQgb2Zmc2V0LCB0byB0aGUgc2VydmVyJ3MKbW10aW1lIGNsb2NrLgpTbyB0aGUgZnJhbWUg
bW10aW1lIHRpbWVzdGFtcHMgYXJlIG5laXRoZXIgdGllZCB0byB0aGUgc2VydmVyIG5vciB0aGUK
Y2xpZW50LiBUaGV5IGFyZSBob3dldmVyIHRpZWQgdG8gdGhlIGZyYW1lLgoKU2lnbmVkLW9mZi1i
eTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMvY2hh
bm5lbC1kaXNwbGF5LmMgfCAyMCArKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFu
bmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXkuYwppbmRleCBjZGEwZmNkZC4uYjI2
MzI2ZDYgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYworKysgYi9zcmMvY2hhbm5l
bC1kaXNwbGF5LmMKQEAgLTE2MDMsMjcgKzE2MDMsMjcgQEAgc3RhdGljIHZvaWQgZGlzcGxheV9z
dHJlYW1fc3RhdHNfZGVidWcoZGlzcGxheV9zdHJlYW0gKnN0KQogCiAKIHN0YXRpYyB2b2lkIGRp
c3BsYXlfc3RyZWFtX3N0YXRzX3NhdmUoZGlzcGxheV9zdHJlYW0gKnN0LAotICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBndWludDMyIHNlcnZlcl9tbXRpbWUsCi0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIgY2xpZW50X21tdGltZSkKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ3VpbnQzMiBmcmFtZV9tbXRpbWUs
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIgY3VycmVudF9t
bXRpbWUpCiB7Ci0gICAgZ2ludDMyIG1hcmdpbiA9IHNlcnZlcl9tbXRpbWUgLSBjbGllbnRfbW10
aW1lOworICAgIGdpbnQzMiBtYXJnaW4gPSBmcmFtZV9tbXRpbWUgLSBjdXJyZW50X21tdGltZTsK
IAogICAgIGlmICghc3QtPm51bV9pbnB1dF9mcmFtZXMpIHsKLSAgICAgICAgc3QtPmZpcnN0X2Zy
YW1lX21tX3RpbWUgPSBzZXJ2ZXJfbW10aW1lOworICAgICAgICBzdC0+Zmlyc3RfZnJhbWVfbW1f
dGltZSA9IGZyYW1lX21tdGltZTsKICAgICB9CiAgICAgc3QtPm51bV9pbnB1dF9mcmFtZXMrKzsK
IAogICAgIGlmIChtYXJnaW4gPCAwKSB7CiAgICAgICAgIENIQU5ORUxfREVCVUcoc3QtPmNoYW5u
ZWwsICJzdHJlYW0gZGF0YSB0b28gbGF0ZSBieSAldSBtcyAodHM6ICV1LCBtbXRpbWU6ICV1KSIs
Ci0gICAgICAgICAgICAgICAgICAgICAgY2xpZW50X21tdGltZSAtIHNlcnZlcl9tbXRpbWUsIHNl
cnZlcl9tbXRpbWUsIGNsaWVudF9tbXRpbWUpOwotICAgICAgICBzdC0+YXJyaXZlX2xhdGVfdGlt
ZSArPSBjbGllbnRfbW10aW1lIC0gc2VydmVyX21tdGltZTsKKyAgICAgICAgICAgICAgICAgICAg
ICBjdXJyZW50X21tdGltZSAtIGZyYW1lX21tdGltZSwgZnJhbWVfbW10aW1lLCBjdXJyZW50X21t
dGltZSk7CisgICAgICAgIHN0LT5hcnJpdmVfbGF0ZV90aW1lICs9IGN1cnJlbnRfbW10aW1lIC0g
ZnJhbWVfbW10aW1lOwogICAgICAgICBzdC0+YXJyaXZlX2xhdGVfY291bnQrKzsKIAogICAgICAg
ICAvKiBMYXRlIGZyYW1lcyBhcmUgY291bnRlZCBhcyBkcm9wcyBpbiB0aGUgc3RhdHMgYnV0IGFy
ZW4ndCBuZWNlc3NhcmlseSBkcm9wcGVkIC0gZGVwZW5kcwogICAgICAgICAgKiBvbiBjb2RlYyBh
bmQgZGVjb2RlcgogICAgICAgICAgKi8KICAgICAgICAgaWYgKCFzdC0+Y3VyX2Ryb3BzX3NlcV9z
dGF0cy5sZW4pIHsKLSAgICAgICAgICAgIHN0LT5jdXJfZHJvcHNfc2VxX3N0YXRzLnN0YXJ0X21t
X3RpbWUgPSBzZXJ2ZXJfbW10aW1lOworICAgICAgICAgICAgc3QtPmN1cl9kcm9wc19zZXFfc3Rh
dHMuc3RhcnRfbW1fdGltZSA9IGZyYW1lX21tdGltZTsKICAgICAgICAgfQogICAgICAgICBzdC0+
Y3VyX2Ryb3BzX3NlcV9zdGF0cy5sZW4rKzsKICAgICAgICAgc3QtPnBsYXliYWNrX3N5bmNfZHJv
cHNfc2VxX2xlbisrOwpAQCAtMTYzMiw3ICsxNjMyLDcgQEAgc3RhdGljIHZvaWQgZGlzcGxheV9z
dHJlYW1fc3RhdHNfc2F2ZShkaXNwbGF5X3N0cmVhbSAqc3QsCiAKICAgICBDSEFOTkVMX0RFQlVH
KHN0LT5jaGFubmVsLCAidmlkZW8gbWFyZ2luOiAlZCIsIG1hcmdpbik7CiAgICAgaWYgKHN0LT5j
dXJfZHJvcHNfc2VxX3N0YXRzLmxlbikgewotICAgICAgICBzdC0+Y3VyX2Ryb3BzX3NlcV9zdGF0
cy5kdXJhdGlvbiA9IHNlcnZlcl9tbXRpbWUgLQorICAgICAgICBzdC0+Y3VyX2Ryb3BzX3NlcV9z
dGF0cy5kdXJhdGlvbiA9IGZyYW1lX21tdGltZSAtCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3QtPmN1cl9kcm9wc19zZXFfc3RhdHMuc3RhcnRfbW1fdGltZTsK
ICAgICAgICAgZ19hcnJheV9hcHBlbmRfdmFsKHN0LT5kcm9wc19zZXFzX3N0YXRzX2Fyciwgc3Qt
PmN1cl9kcm9wc19zZXFfc3RhdHMpOwogICAgICAgICBtZW1zZXQoJnN0LT5jdXJfZHJvcHNfc2Vx
X3N0YXRzLCAwLCBzaXplb2Yoc3QtPmN1cl9kcm9wc19zZXFfc3RhdHMpKTsKQEAgLTE2NDMsNyAr
MTY0Myw3IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfc3RyZWFtX3N0YXRzX3NhdmUoZGlzcGxheV9z
dHJlYW0gKnN0LAogCiBzdGF0aWMgU3BpY2VGcmFtZSAqc3BpY2VfZnJhbWVfbmV3KGRpc3BsYXlf
c3RyZWFtICpzdCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VNc2dJ
biAqaW4sCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1aW50MzIgc2VydmVy
X21tdGltZSkKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ3VpbnQzMiBmcmFt
ZV9tbXRpbWUpCiB7CiAgICAgU3BpY2VGcmFtZSAqZnJhbWU7CiAgICAgZ3VpbnQ4ICpkYXRhX3B0
cjsKQEAgLTE2NTEsNyArMTY1MSw3IEBAIHN0YXRpYyBTcGljZUZyYW1lICpzcGljZV9mcmFtZV9u
ZXcoZGlzcGxheV9zdHJlYW0gKnN0LAogICAgIGd1aW50MzIgZGF0YV9zaXplID0gc3BpY2VfbXNn
X2luX2ZyYW1lX2RhdGEoaW4sICZkYXRhX3B0cik7CiAKICAgICBmcmFtZSA9IGdfbmV3KFNwaWNl
RnJhbWUsIDEpOwotICAgIGZyYW1lLT5tbV90aW1lID0gc2VydmVyX21tdGltZTsKKyAgICBmcmFt
ZS0+bW1fdGltZSA9IGZyYW1lX21tdGltZTsKICAgICBmcmFtZS0+ZGVzdCA9ICpkZXN0X3JlY3Q7
CiAgICAgZnJhbWUtPmRhdGEgPSBkYXRhX3B0cjsKICAgICBmcmFtZS0+c2l6ZSA9IGRhdGFfc2l6
ZTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
