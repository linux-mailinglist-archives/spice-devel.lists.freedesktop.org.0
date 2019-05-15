Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC8A1FCAA
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 01:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C462A89220;
	Wed, 15 May 2019 23:10:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B61789220
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 23:10:48 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hR33d-0001qx-FG
 for spice-devel@lists.freedesktop.org; Wed, 15 May 2019 18:11:34 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hR32r-0008Hu-IO
 for spice-devel@lists.freedesktop.org; Thu, 16 May 2019 01:10:45 +0200
Date: Thu, 16 May 2019 01:10:45 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hR32r-0008Hu-IO@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The source framerate is as important as the resolution when
 trying to understand if the system should be fast enough to encode the video
 stream in real time. Signed-off-by: Francois Gouget <fgouget@codeweavers.com>
 --- server/gstreamer-encoder.c | 2 +- 1 file changed, 1 insertion(+),
 1 deletion(-)
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
 bh=com+/fCdbRIhiW/2zjt/u04oTCp9SL5Neg4PkM7AAuQ=; b=bsERsqzKaCCep2dKeHom/DYg2E
 uTZR636MIUQy+jIWkc3dimfX4kdB/FSzQLhKgE0lC3J2veSnQAnKYFnSejWRZrpJxRBqigfSKKg30
 FA4NFqiSfX4wuebJPOOjLVl++mtWYj0UQcahIvuzBE0+j+0yb6I5FWFwrvCazE7ciAJo=;
Subject: [Spice-devel] [spice] gstreamer-encoder: Show the source fps when
 the system is too slow
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

VGhlIHNvdXJjZSBmcmFtZXJhdGUgaXMgYXMgaW1wb3J0YW50IGFzIHRoZSByZXNvbHV0aW9uIHdo
ZW4gdHJ5aW5nIHRvCnVuZGVyc3RhbmQgaWYgdGhlIHN5c3RlbSBzaG91bGQgYmUgZmFzdCBlbm91
Z2ggdG8gZW5jb2RlIHRoZSB2aWRlbwpzdHJlYW0gaW4gcmVhbCB0aW1lLgoKU2lnbmVkLW9mZi1i
eTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzZXJ2ZXIv
Z3N0cmVhbWVyLWVuY29kZXIuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5j
IGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKaW5kZXggMTdkOTgyMmMwLi4zZGZhMmJhZTIg
MTAwNjQ0Ci0tLSBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCisrKyBiL3NlcnZlci9nc3Ry
ZWFtZXItZW5jb2Rlci5jCkBAIC01NDIsNyArNTQyLDcgQEAgc3RhdGljIHZvaWQgdXBkYXRlX25l
eHRfZnJhbWVfbW1fdGltZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIpCiAgICAgdWludDY0X3Qg
cGVyaW9kX25zID0gTlNFQ19QRVJfU0VDIC8gZ2V0X3NvdXJjZV9mcHMoZW5jb2Rlcik7CiAgICAg
dWludDY0X3QgbWluX2RlbGF5X25zID0gZ2V0X2F2ZXJhZ2VfZW5jb2RpbmdfdGltZShlbmNvZGVy
KTsKICAgICBpZiAobWluX2RlbGF5X25zID4gcGVyaW9kX25zKSB7Ci0gICAgICAgIHNwaWNlX3dh
cm5pbmcoInlvdXIgc3lzdGVtIHNlZW1zIHRvIGJlIHRvbyBzbG93IHRvIGVuY29kZSB0aGlzICVk
eCVkIHZpZGVvIGluIHJlYWwgdGltZSIsIGVuY29kZXItPndpZHRoLCBlbmNvZGVyLT5oZWlnaHQp
OworICAgICAgICBzcGljZV93YXJuaW5nKCJ5b3VyIHN5c3RlbSBzZWVtcyB0byBiZSB0b28gc2xv
dyB0byBlbmNvZGUgdGhpcyAlZHglZCAlZCBmcHMgdmlkZW8gaW4gcmVhbCB0aW1lIiwgZW5jb2Rl
ci0+d2lkdGgsIGVuY29kZXItPmhlaWdodCwgZ2V0X3NvdXJjZV9mcHMoZW5jb2RlcikpOwogICAg
IH0KIAogICAgIG1pbl9kZWxheV9ucyA9IE1JTihtaW5fZGVsYXlfbnMsIFNQSUNFX0dTVF9NQVhf
UEVSSU9EKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
