Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 313AB24510
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 02:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328688925F;
	Tue, 21 May 2019 00:27:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6148925F
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 00:27:26 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hSsdV-0007Km-SZ
 for spice-devel@lists.freedesktop.org; Mon, 20 May 2019 19:28:10 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hSscl-0001LG-MA
 for spice-devel@lists.freedesktop.org; Tue, 21 May 2019 02:27:23 +0200
Date: Tue, 21 May 2019 02:27:23 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hSscl-0001LG-MA@amboise>
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
 --- Content analysis details:   (-103.7 points, 5.0 required)
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
 bh=uoX69SjUNyBmwd9aC6SXd2DIAc97dTeWgGi/FdCwnU0=; b=mT4+hI+4OgK6fkg5Z4rkL4sLyX
 Bnjz3Ek+rZkxoYKlbWO5F1NO218P5885P+pMvDmEg3y35ixf3JoI/mJugqjXINan9Mp8Po01GrW18
 ol5uxoogLU3XE3oZjZtmZeg6wRIUailH7eH38hVGevzoKhyfyCVzizdyO/FHH8ktxPbU=;
Subject: [Spice-devel] [spice v2] gstreamer-encoder: Show the source fps
 when the system is too slow
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
eTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCgp2MjogVHdl
YWtlZCB0aGUgbWVzc2FnZS4KCiBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMK
aW5kZXggMDEwMWIzNmZhLi5iY2NiZTA2NjAgMTAwNjQ0Ci0tLSBhL3NlcnZlci9nc3RyZWFtZXIt
ZW5jb2Rlci5jCisrKyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCkBAIC01NDIsNyArNTQy
LDcgQEAgc3RhdGljIHZvaWQgdXBkYXRlX25leHRfZnJhbWVfbW1fdGltZShTcGljZUdzdEVuY29k
ZXIgKmVuY29kZXIpCiAgICAgdWludDY0X3QgcGVyaW9kX25zID0gTlNFQ19QRVJfU0VDIC8gZ2V0
X3NvdXJjZV9mcHMoZW5jb2Rlcik7CiAgICAgdWludDY0X3QgbWluX2RlbGF5X25zID0gZ2V0X2F2
ZXJhZ2VfZW5jb2RpbmdfdGltZShlbmNvZGVyKTsKICAgICBpZiAobWluX2RlbGF5X25zID4gcGVy
aW9kX25zKSB7Ci0gICAgICAgIHNwaWNlX3dhcm5pbmcoInlvdXIgc3lzdGVtIHNlZW1zIHRvIGJl
IHRvbyBzbG93IHRvIGVuY29kZSB0aGlzICVkeCVkIHZpZGVvIGluIHJlYWwgdGltZSIsIGVuY29k
ZXItPndpZHRoLCBlbmNvZGVyLT5oZWlnaHQpOworICAgICAgICBzcGljZV93YXJuaW5nKCJ5b3Vy
IHN5c3RlbSBzZWVtcyB0byBiZSB0b28gc2xvdyB0byBlbmNvZGUgdGhpcyAlZHglZEAlZCB2aWRl
byBpbiByZWFsIHRpbWUiLCBlbmNvZGVyLT53aWR0aCwgZW5jb2Rlci0+aGVpZ2h0LCBnZXRfc291
cmNlX2ZwcyhlbmNvZGVyKSk7CiAgICAgfQogCiAgICAgbWluX2RlbGF5X25zID0gTUlOKG1pbl9k
ZWxheV9ucywgU1BJQ0VfR1NUX01BWF9QRVJJT0QpOwotLSAKMi4yMC4xCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
