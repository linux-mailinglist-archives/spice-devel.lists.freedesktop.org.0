Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2908B3C735
	for <lists+spice-devel@lfdr.de>; Tue, 11 Jun 2019 11:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA45E88F9A;
	Tue, 11 Jun 2019 09:30:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317B288E84
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Jun 2019 09:30:34 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1had7V-00022S-Tb
 for spice-devel@lists.freedesktop.org; Tue, 11 Jun 2019 04:31:10 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1had6s-0004ka-6n
 for spice-devel@lists.freedesktop.org; Tue, 11 Jun 2019 11:30:30 +0200
Date: Tue, 11 Jun 2019 11:30:30 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1had6s-0004ka-6n@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  schedule_frame() was expecting to be called at least 1 ms
 before having to display the frame which is wrong: being called 0 ms before
 is acceptable too. Thankfully the frame would usually be the last [...] 
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
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FYRDSZhHtP1QoXUgKCpBorJ6dZRnYrTvCAZMk2WJje8=; b=xwIWsiYUQ2Txt1KKGnI3gHIlqQ
 qr5uFNv7VzR+RSWVFjvhrUcAgH8Jy+Dd5bYwavh7I42AHz1me4WbB1ZlBfY5e+15QlNsMq5nsdQzY
 9U7DAaKMdi2/K4AoLWHMz54fwIvDM8ztZsHXbFhU5j04+UhBlQFp2AewweR7sdMYHzcM=;
Subject: [Spice-devel] [client] gstreamer: A frame is not late if it should
 be displayed immediately
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

c2NoZWR1bGVfZnJhbWUoKSB3YXMgZXhwZWN0aW5nIHRvIGJlIGNhbGxlZCBhdCBsZWFzdCAxIG1z
IGJlZm9yZSBoYXZpbmcKdG8gZGlzcGxheSB0aGUgZnJhbWUgd2hpY2ggaXMgd3Jvbmc6IGJlaW5n
IGNhbGxlZCAwIG1zIGJlZm9yZSBpcwphY2NlcHRhYmxlIHRvby4gVGhhbmtmdWxseSB0aGUgZnJh
bWUgd291bGQgdXN1YWxseSBiZSB0aGUgbGFzdCBkZWNvZGVkCmZyYW1lIGFuZCB3b3VsZCB0aHVz
IGJlIGRpc3BsYXllZCBhbnl3YXkuCkFsc28gcmV2ZXJzZSB0aGUgaW5lcXVhbGl0eSB0byBtYWtl
IGl0IGVhc2llciB0byB1bmRlcnN0YW5kLgoKU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0
IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5j
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyBiL3NyYy9jaGFubmVsLWRpc3Bs
YXktZ3N0LmMKaW5kZXggODU4ZThhZWIuLjkxZWNlMGZhIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5l
bC1kaXNwbGF5LWdzdC5jCisrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKQEAgLTIwMCw3
ICsyMDAsNyBAQCBzdGF0aWMgdm9pZCBzY2hlZHVsZV9mcmFtZShTcGljZUdzdERlY29kZXIgKmRl
Y29kZXIpCiAgICAgICAgICAgICBicmVhazsKICAgICAgICAgfQogCi0gICAgICAgIGlmIChzcGlj
ZV9tbXRpbWVfZGlmZihub3csIGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5tbV90aW1lKSA8IDAp
IHsKKyAgICAgICAgaWYgKHNwaWNlX21tdGltZV9kaWZmKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1l
LT5tbV90aW1lLCBub3cpID49IDApIHsKICAgICAgICAgICAgIGRlY29kZXItPnRpbWVyX2lkID0g
Z190aW1lb3V0X2FkZChnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSAtIG5vdywKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkaXNwbGF5X2ZyYW1l
LCBkZWNvZGVyKTsKICAgICAgICAgfSBlbHNlIGlmIChkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lICYm
ICFkZWNvZGVyLT5wZW5kaW5nX3NhbXBsZXMpIHsKLS0gCjIuMjAuMQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
