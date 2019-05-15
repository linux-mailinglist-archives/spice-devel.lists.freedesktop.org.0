Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D03F01FCA9
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 01:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C151789204;
	Wed, 15 May 2019 23:10:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6D189204
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 23:10:35 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hR33Q-0001qO-3m
 for spice-devel@lists.freedesktop.org; Wed, 15 May 2019 18:11:21 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hR32e-0008Aj-4w
 for spice-devel@lists.freedesktop.org; Thu, 16 May 2019 01:10:32 +0200
Date: Thu, 16 May 2019 01:10:32 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hR32e-0008Aj-4w@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This way all the minimum delay calculation is in one place
 and this makes gstreamer's implementation closer to the mjpeg one.
 Signed-off-by:
 Francois Gouget <fgouget@codeweavers.com> --- server/gstreamer-encoder.c
 | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-) 
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
 bh=f5fhj0sKSLW1wdzcsIfXp+hPBCjrQ0gfUgUyRKjqS04=; b=wf+XNbYSW2obx09C6ssczsPJX9
 rKgZIx/upBbJU5v4dHBIbGb6fjG4uZJv50b/RO6OFxIQu1/1E12CeBhw5+WL9T6ILsvey11g0R4fL
 On5FojN0pywPzfWVpU1mNelGzqgdD/+2o8nU7Ldu47a+e0uVgPIewKZkm+F7xuLZrv2Q=;
Subject: [Spice-devel] [spice] gstreamer-encoder: Include encoding time in
 get_min_playback_delay()
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

VGhpcyB3YXkgYWxsIHRoZSBtaW5pbXVtIGRlbGF5IGNhbGN1bGF0aW9uIGlzIGluIG9uZSBwbGFj
ZSBhbmQgdGhpcwptYWtlcyBnc3RyZWFtZXIncyBpbXBsZW1lbnRhdGlvbiBjbG9zZXIgdG8gdGhl
IG1qcGVnIG9uZS4KClNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rl
d2VhdmVycy5jb20+Ci0tLQogc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIu
YwppbmRleCA2MTMwNzgxZGEuLjE3ZDk4MjJjMCAxMDA2NDQKLS0tIGEvc2VydmVyL2dzdHJlYW1l
ci1lbmNvZGVyLmMKKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKQEAgLTUyNiwxMyAr
NTI2LDEzIEBAIHN0YXRpYyB1aW50MzJfdCBnZXRfbWluX3BsYXliYWNrX2RlbGF5KFNwaWNlR3N0
RW5jb2RlciAqZW5jb2RlcikKICAgICAvKiBBbHNvIGZhY3RvciBpbiB0aGUgbmV0d29yayBsYXRl
bmN5IHdpdGggYSBtYXJnaW4gZm9yIGppdHRlci4gKi8KICAgICB1aW50MzJfdCBuZXRfbGF0ZW5j
eSA9IGdldF9uZXR3b3JrX2xhdGVuY3koZW5jb2RlcikgKiAoMS4wICsgU1BJQ0VfR1NUX0xBVEVO
Q1lfTUFSR0lOKTsKIAotICAgIHJldHVybiBzZW5kX3RpbWUgKyBuZXRfbGF0ZW5jeTsKKyAgICBy
ZXR1cm4gc2VuZF90aW1lICsgbmV0X2xhdGVuY3kgKyBnZXRfYXZlcmFnZV9lbmNvZGluZ190aW1l
KGVuY29kZXIpIC8gTlNFQ19QRVJfTUlMTElTRUM7CiB9CiAKIHN0YXRpYyB2b2lkIHVwZGF0ZV9j
bGllbnRfcGxheWJhY2tfZGVsYXkoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVyKQogewogICAgIGlm
IChlbmNvZGVyLT5jYnMudXBkYXRlX2NsaWVudF9wbGF5YmFja19kZWxheSkgewotICAgICAgICB1
aW50MzJfdCBtaW5fZGVsYXkgPSBnZXRfbWluX3BsYXliYWNrX2RlbGF5KGVuY29kZXIpICsgZ2V0
X2F2ZXJhZ2VfZW5jb2RpbmdfdGltZShlbmNvZGVyKSAvIE5TRUNfUEVSX01JTExJU0VDOworICAg
ICAgICB1aW50MzJfdCBtaW5fZGVsYXkgPSBnZXRfbWluX3BsYXliYWNrX2RlbGF5KGVuY29kZXIp
OwogICAgICAgICBlbmNvZGVyLT5jYnMudXBkYXRlX2NsaWVudF9wbGF5YmFja19kZWxheShlbmNv
ZGVyLT5jYnMub3BhcXVlLCBtaW5fZGVsYXkpOwogICAgIH0KIH0KLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
