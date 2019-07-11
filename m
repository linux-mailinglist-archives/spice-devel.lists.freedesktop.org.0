Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EBD65EE5
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 19:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24A56E26C;
	Thu, 11 Jul 2019 17:43:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D1EC6E26C
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 17:43:50 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hld78-0000g5-Mi; Thu, 11 Jul 2019 12:44:15 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:43:17 -0700
Message-Id: <20190711174317.3095-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When launching with no config file or arguments, the "You
 must provide some authentication method" dialog appears. Clicking the Close
 button would hang the application and it would never quit.
 s->draw_command_in_progress
 was uninitialized, and flush_and_lock() would get stuck in an infinite loop
 waiting for it to be 0. 
 Content analysis details:   (-106.0 points, 5.0 required)
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
 bh=RDFlUgPIkMyuLuSFXmrFb6LM32J303c+TqGfQof9Blo=; b=m6GNMwT85//2Un2zYTc/R/kd3U
 qROLZGgwYABWcsUvWkP+3dACd1Rqd1t4/3IkA014IxduDhGHY2vJGO/1ZbrXmM6Vl7JQzb0331UXg
 lKQRqvHKYAfYhlSIAY8VcFaIU2aFukZIM1DHmEjvAmxGSOfHNuyE4WFYfHTe5peb/34A=;
Subject: [Spice-devel] [PATCH x11spice] Fix hang when launching with invalid
 config
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

V2hlbiBsYXVuY2hpbmcgd2l0aCBubyBjb25maWcgZmlsZSBvciBhcmd1bWVudHMsIHRoZSAiWW91
IG11c3QgcHJvdmlkZQpzb21lIGF1dGhlbnRpY2F0aW9uIG1ldGhvZCIgZGlhbG9nIGFwcGVhcnMu
IENsaWNraW5nIHRoZSBDbG9zZSBidXR0b24Kd291bGQgaGFuZyB0aGUgYXBwbGljYXRpb24gYW5k
IGl0IHdvdWxkIG5ldmVyIHF1aXQuCgpzLT5kcmF3X2NvbW1hbmRfaW5fcHJvZ3Jlc3Mgd2FzIHVu
aW5pdGlhbGl6ZWQsIGFuZCBmbHVzaF9hbmRfbG9jaygpCndvdWxkIGdldCBzdHVjayBpbiBhbiBp
bmZpbml0ZSBsb29wIHdhaXRpbmcgZm9yIGl0IHRvIGJlIDAuCgpJbml0aWFsaXplIHMtPmRyYXdf
Y29tbWFuZF9pbl9wcm9ncmVzcyB0byAwLgoKU2lnbmVkLW9mZi1ieTogQnJlbmRhbiBTaGFua3Mg
PGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgotLS0KIHNyYy9zZXNzaW9uLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3NyYy9zZXNzaW9uLmMgYi9z
cmMvc2Vzc2lvbi5jCmluZGV4IDFlNTk0MTUuLmM1YTQzOWMgMTAwNjQ0Ci0tLSBhL3NyYy9zZXNz
aW9uLmMKKysrIGIvc3JjL3Nlc3Npb24uYwpAQCAtMzA2LDYgKzMwNiw3IEBAIGludCBzZXNzaW9u
X2NyZWF0ZShzZXNzaW9uX3QgKnMpCiAgICAgcy0+Y29ubmVjdGVkID0gRkFMU0U7CiAgICAgcy0+
Y29ubmVjdF9waWQgPSAwOwogICAgIHMtPmRpc2Nvbm5lY3RfcGlkID0gMDsKKyAgICBzLT5kcmF3
X2NvbW1hbmRfaW5fcHJvZ3Jlc3MgPSAwOwogCiAgICAgaWYgKHMtPm9wdGlvbnMuYXVkaXQpCiAg
ICAgICAgIHJjID0gYmVnaW5fYXVkaXQocyk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
