Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6792E5E21C
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 12:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D436E115;
	Wed,  3 Jul 2019 10:34:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C546E115
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 10:34:09 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hicaz-00046k-53
 for spice-devel@lists.freedesktop.org; Wed, 03 Jul 2019 05:34:38 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hicaU-00076f-Nf
 for spice-devel@lists.freedesktop.org; Wed, 03 Jul 2019 12:34:06 +0200
Date: Wed, 3 Jul 2019 12:34:06 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hicaU-00076f-Nf@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Code dealing with nanosecond timestamps normally uses 64 bit
 integers and not long long ints. So this makes it easier to print the value
 of expressions using these constants. Signed-off-by: Francois Gouget
 <fgouget@codeweavers.com> --- 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mg/sBGFjgMCeFs+QUob1KTPMgGOH6bNl9yYrSLOC/pU=; b=e5al9VhXXgIjpoNkdadNfB6MEd
 N2+Ux4uTR9Ghg7qTpmKzmzYCTHr2d5g1TbazajcI3FlfYps+Md2aJQMz0FlyuPvtQjpkT8/Q8+gwD
 N3zGtPO6O67fhUT38oyhp6nOtFb49TYgv/xxxPhWfduf1pQKT2sX2Yh3ngFdAxxperc4=;
Subject: [Spice-devel] [spice v4] utils: Make all the NSEC_PER_XXX constants
 64 bit
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

Q29kZSBkZWFsaW5nIHdpdGggbmFub3NlY29uZCB0aW1lc3RhbXBzIG5vcm1hbGx5IHVzZXMgNjQg
Yml0IGludGVnZXJzCmFuZCBub3QgbG9uZyBsb25nIGludHMuIFNvIHRoaXMgbWFrZXMgaXQgZWFz
aWVyIHRvIHByaW50IHRoZSB2YWx1ZSBvZgpleHByZXNzaW9ucyB1c2luZyB0aGVzZSBjb25zdGFu
dHMuCgpTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgotLS0KCnYzOiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9zcGlj
ZS1kZXZlbC8yMDE5LUp1bmUvMDQ5MzYxLmh0bWwKdjQ6IEZvbGxvd2luZyB0aGUgZGlzY3Vzc2lv
biBhYm92ZSwgc3dpdGNoIHRvIHVzaW5nIElOVDY0X0MoKS4KICAgIFRoaXMgZG9lcyBub3QgbW9k
aWZ5IE1TRUNfUEVSX1NFQy4KCiBzZXJ2ZXIvdXRpbHMuaCB8IDYgKysrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZl
ci91dGlscy5oIGIvc2VydmVyL3V0aWxzLmgKaW5kZXggNTRiYzlkNDkwLi4yY2JkNzc5YzMgMTAw
NjQ0Ci0tLSBhL3NlcnZlci91dGlscy5oCisrKyBiL3NlcnZlci91dGlscy5oCkBAIC01Miw5ICs1
Miw5IEBAIHN0YXRpYyBpbmxpbmUgaW50IHRlc3RfYml0KGludCBpbmRleCwgdWludDMyX3QgdmFs
KQogCiB0eXBlZGVmIGludDY0X3QgcmVkX3RpbWVfdDsKIAotI2RlZmluZSBOU0VDX1BFUl9TRUMg
ICAgICAxMDAwMDAwMDAwTEwKLSNkZWZpbmUgTlNFQ19QRVJfTUlMTElTRUMgMTAwMDAwMAotI2Rl
ZmluZSBOU0VDX1BFUl9NSUNST1NFQyAxMDAwCisjZGVmaW5lIE5TRUNfUEVSX1NFQyAgICAgIElO
VDY0X0MoMTAwMDAwMDAwMCkKKyNkZWZpbmUgTlNFQ19QRVJfTUlMTElTRUMgSU5UNjRfQygxMDAw
MDAwKQorI2RlZmluZSBOU0VDX1BFUl9NSUNST1NFQyBJTlQ2NF9DKDEwMDApCiAKIC8qIGdfZ2V0
X21vbm90b25pY190aW1lKCkgZG9lcyBub3QgaGF2ZSBlbm91Z2ggcHJlY2lzaW9uICovCiBzdGF0
aWMgaW5saW5lIHJlZF90aW1lX3Qgc3BpY2VfZ2V0X21vbm90b25pY190aW1lX25zKHZvaWQpCi0t
IAoyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
