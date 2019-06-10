Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E394F3B138
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 10:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E380D88EF5;
	Mon, 10 Jun 2019 08:49:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7C088EF5
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 08:49:33 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1haG0I-0003Gg-1V
 for spice-devel@lists.freedesktop.org; Mon, 10 Jun 2019 03:50:10 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1haFzd-000108-F3
 for spice-devel@lists.freedesktop.org; Mon, 10 Jun 2019 10:49:29 +0200
Date: Mon, 10 Jun 2019 10:49:29 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1haFzd-000108-F3@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The mm_time is an unsigned 32 bit int but spice_mmtime_diff()
 returns a signed 32 bit int. That's reasonable because we normally substract
 frame times which should be at most seconds apart. But last_m [...] 
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
 bh=IGQ4UhKj8VA5EJRE0+8qjz0vrdLebNlhOgsUeqUadLs=; b=VjdQMbwp8GMueJCN3pBBaEpbVo
 krhgyH+/QTD6OYhC7ykFvdMq49tlBnPErfYSvXDPqP3IxhvSQJ0MscWAqK59pwfFZ56UBsOAo37kv
 YGvM7cDxSFowatatVarBNG5wouFOa3YtMn1jQwYQuh15d9RnQ2eXn1GIWBNzMCrpWQa4=;
Subject: [Spice-devel] [client] gstreamer: Initialize last_mm_time to avoid
 an overflow
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

VGhlIG1tX3RpbWUgaXMgYW4gdW5zaWduZWQgMzIgYml0IGludCBidXQgc3BpY2VfbW10aW1lX2Rp
ZmYoKSByZXR1cm5zIGEKc2lnbmVkIDMyIGJpdCBpbnQuIFRoYXQncyByZWFzb25hYmxlIGJlY2F1
c2Ugd2Ugbm9ybWFsbHkgc3Vic3RyYWN0CmZyYW1lIHRpbWVzIHdoaWNoIHNob3VsZCBiZSBhdCBt
b3N0IHNlY29uZHMgYXBhcnQuCkJ1dCBsYXN0X21tX3RpbWUgd2FzIHplcm8gb24gc3RyZWFtIHN0
YXJ0dXAsIHJlc3VsdGluZyBpbiBhbiBvdmVyZmxvdwphbmQgYW4gdW5jYWxsZWQgZm9yIHdhcm5p
bmcgZm9yIHRoZSBmaXJzdCBmcmFtZSBpbgpzcGljZV9nc3RfZGVjb2Rlcl9xdWV1ZV9mcmFtZSgp
IGlmIHRoZSB1cHRpbWUgd2FzIGdyZWF0ZXIgdGhhbiBhYm91dAoyNSBkYXlzLgoKU2lnbmVkLW9m
Zi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMv
Y2hhbm5lbC1kaXNwbGF5LWdzdC5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5uZWwt
ZGlzcGxheS1nc3QuYwppbmRleCA4ODkxOGYxMC4uODU4ZThhZWIgMTAwNjQ0Ci0tLSBhL3NyYy9j
aGFubmVsLWRpc3BsYXktZ3N0LmMKKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwpAQCAt
NzQwLDYgKzc0MCw3IEBAIFZpZGVvRGVjb2RlciogY3JlYXRlX2dzdHJlYW1lcl9kZWNvZGVyKGlu
dCBjb2RlY190eXBlLCBkaXNwbGF5X3N0cmVhbSAqc3RyZWFtKQogICAgICAgICBkZWNvZGVyLT5i
YXNlLnF1ZXVlX2ZyYW1lID0gc3BpY2VfZ3N0X2RlY29kZXJfcXVldWVfZnJhbWU7CiAgICAgICAg
IGRlY29kZXItPmJhc2UuY29kZWNfdHlwZSA9IGNvZGVjX3R5cGU7CiAgICAgICAgIGRlY29kZXIt
PmJhc2Uuc3RyZWFtID0gc3RyZWFtOworICAgICAgICBkZWNvZGVyLT5sYXN0X21tX3RpbWUgPSBz
dHJlYW1fZ2V0X3RpbWUoc3RyZWFtKTsKICAgICAgICAgZ19tdXRleF9pbml0KCZkZWNvZGVyLT5x
dWV1ZXNfbXV0ZXgpOwogICAgICAgICBkZWNvZGVyLT5kZWNvZGluZ19xdWV1ZSA9IGdfcXVldWVf
bmV3KCk7CiAKLS0gCjIuMjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
