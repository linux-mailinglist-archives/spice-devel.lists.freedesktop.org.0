Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DD165F31
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 19:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F24B6E290;
	Thu, 11 Jul 2019 17:56:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278C86E28E
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 17:56:27 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hldJL-0000r8-NE; Thu, 11 Jul 2019 12:56:52 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:56:05 -0700
Message-Id: <20190711175605.3220-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Quitting with the Quit button or closing the window always
 causes a segfault for me. Destroying the surface before removing the interface
 seems to resolve the problem. log from valgrind: ==7741== Invalid read of
 size 8 ==7741== at 0x6943517: red_qxl_destroy_primary_surface_sync
 (red-qxl.c:313)
 ==7741== by 0x6943517: red_qxl_destroy_primary_surface (red-qxl.c:338) ==
 [...] Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CM8dSX+LkB0hjkbYxbBYid/ee91aY5/RAYtP3QJPikE=; b=wk0DlGjtCm+ahUtxDsjT6wppwU
 rqf8Z9rx1UhQ1NdSOGazm2Z/1QVRSfHt49wEkCajOxQF5KpC2n9ql4nCUK3oDuXSq0LXVWyg+bCPr
 YgkcgELbBnCRExcFImOaCYf3WXUKK7v7xTfDQhrSzcjcDEEq9IxLd/dyHlU3R1rYJ+MY=;
Subject: [Spice-devel] [PATCH x11spice] Fix segfault when quitting with Quit
 button
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

UXVpdHRpbmcgd2l0aCB0aGUgUXVpdCBidXR0b24gb3IgY2xvc2luZyB0aGUgd2luZG93IGFsd2F5
cyBjYXVzZXMgYQpzZWdmYXVsdCBmb3IgbWUuIERlc3Ryb3lpbmcgdGhlIHN1cmZhY2UgYmVmb3Jl
IHJlbW92aW5nIHRoZSBpbnRlcmZhY2UKc2VlbXMgdG8gcmVzb2x2ZSB0aGUgcHJvYmxlbS4KCmxv
ZyBmcm9tIHZhbGdyaW5kOgo9PTc3NDE9PSBJbnZhbGlkIHJlYWQgb2Ygc2l6ZSA4Cj09Nzc0MT09
ICAgIGF0IDB4Njk0MzUxNzogcmVkX3F4bF9kZXN0cm95X3ByaW1hcnlfc3VyZmFjZV9zeW5jIChy
ZWQtcXhsLmM6MzEzKQo9PTc3NDE9PSAgICBieSAweDY5NDM1MTc6IHJlZF9xeGxfZGVzdHJveV9w
cmltYXJ5X3N1cmZhY2UgKHJlZC1xeGwuYzozMzgpCj09Nzc0MT09ICAgIGJ5IDB4Njk0MzUxNzog
c3BpY2VfcXhsX2Rlc3Ryb3lfcHJpbWFyeV9zdXJmYWNlIChyZWQtcXhsLmM6Njk2KQo9PTc3NDE9
PSAgICBieSAweDExMUY2MDogc3BpY2VfZGVzdHJveV9wcmltYXJ5IChzcGljZS5jOjUwNikKPT03
NzQxPT0gICAgYnkgMHgxMTFGNjA6IHNwaWNlX2VuZCAoc3BpY2UuYzo2OTQpCj09Nzc0MT09ICAg
IGJ5IDB4MTBDQkRBOiBtYWluIChtYWluLmM6MTU0KQo9PTc3NDE9PSAgQWRkcmVzcyAweDg4IGlz
IG5vdCBzdGFjaydkLCBtYWxsb2MnZCBvciAocmVjZW50bHkpIGZyZWUnZAo9PTc3NDE9PQo9PTc3
NDE9PQo9PTc3NDE9PSBQcm9jZXNzIHRlcm1pbmF0aW5nIHdpdGggZGVmYXVsdCBhY3Rpb24gb2Yg
c2lnbmFsIDExIChTSUdTRUdWKQo9PTc3NDE9PSAgQWNjZXNzIG5vdCB3aXRoaW4gbWFwcGVkIHJl
Z2lvbiBhdCBhZGRyZXNzIDB4ODgKPT03NzQxPT0gICAgYXQgMHg2OTQzNTE3OiByZWRfcXhsX2Rl
c3Ryb3lfcHJpbWFyeV9zdXJmYWNlX3N5bmMgKHJlZC1xeGwuYzozMTMpCj09Nzc0MT09ICAgIGJ5
IDB4Njk0MzUxNzogcmVkX3F4bF9kZXN0cm95X3ByaW1hcnlfc3VyZmFjZSAocmVkLXF4bC5jOjMz
OCkKPT03NzQxPT0gICAgYnkgMHg2OTQzNTE3OiBzcGljZV9xeGxfZGVzdHJveV9wcmltYXJ5X3N1
cmZhY2UgKHJlZC1xeGwuYzo2OTYpCj09Nzc0MT09ICAgIGJ5IDB4MTExRjYwOiBzcGljZV9kZXN0
cm95X3ByaW1hcnkgKHNwaWNlLmM6NTA2KQo9PTc3NDE9PSAgICBieSAweDExMUY2MDogc3BpY2Vf
ZW5kIChzcGljZS5jOjY5NCkKPT03NzQxPT0gICAgYnkgMHgxMENCREE6IG1haW4gKG1haW4uYzox
NTQpCgpTaWduZWQtb2ZmLWJ5OiBCcmVuZGFuIFNoYW5rcyA8YnNoYW5rc0Bjb2Rld2VhdmVycy5j
b20+Ci0tLQogc3JjL3NwaWNlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvc3BpY2UuYyBiL3NyYy9zcGljZS5j
CmluZGV4IDhlYzBiMDcuLmQ5NjY2NDQgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS5jCisrKyBiL3Ny
Yy9zcGljZS5jCkBAIC02ODksOSArNjg5LDkgQEAgdm9pZCBzcGljZV9lbmQoc3BpY2VfdCAqcykK
IHsKICAgICBzcGljZV9zZXJ2ZXJfcmVtb3ZlX2ludGVyZmFjZSgmcy0+dGFibGV0X3Npbi5iYXNl
KTsKICAgICBzcGljZV9zZXJ2ZXJfcmVtb3ZlX2ludGVyZmFjZSgmcy0+a2V5Ym9hcmRfc2luLmJh
c2UpOwotICAgIHNwaWNlX3NlcnZlcl9yZW1vdmVfaW50ZXJmYWNlKCZzLT5kaXNwbGF5X3Npbi5i
YXNlKTsKIAogICAgIHNwaWNlX2Rlc3Ryb3lfcHJpbWFyeShzKTsKKyAgICBzcGljZV9zZXJ2ZXJf
cmVtb3ZlX2ludGVyZmFjZSgmcy0+ZGlzcGxheV9zaW4uYmFzZSk7CiAKICAgICBzcGljZV9zZXJ2
ZXJfZGVzdHJveShzLT5zZXJ2ZXIpOwogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
