Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0DC67492
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 19:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E167C6E2FF;
	Fri, 12 Jul 2019 17:46:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62CD06E2FF
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 17:46:22 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1hlzd8-00088c-Dr; Fri, 12 Jul 2019 12:46:47 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 10:46:10 -0700
Message-Id: <20190712174610.10581-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190711174317.3095-1-bshanks@codeweavers.com>
References: <20190711174317.3095-1-bshanks@codeweavers.com>
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
 d=codeweavers.com; s=6377696661; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dtgG1xnNk7ZzBO1pW9/Ul2Fy9LB2xLrInDDPCOTYOj4=; b=qtjL6KXlVMffwfreuN+yZb1In
 7e3kKfj3NRfH7IszBOfaK06snE3Fex8dPCrfI9eLr0VarpiKHBqu1pZ4DnxJJ6KF+nEOAXnNMjhBi
 4PpYnIJpxUjoP4nErx0IIXJlyJS347BSNlM8LiNSyS5LGL5gdpgLttdtIGufF1yMvQuAo=;
Subject: [Spice-devel] [PATCH x11spice v2] Fix hang when launching with
 invalid config
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
bmZpbml0ZSBsb29wIHdhaXRpbmcgZm9yIGl0IHRvIGJlIDAuCgpJbml0aWFsaXplIHRoZSBlbnRp
cmUgc2Vzc2lvbiBzdHJ1Y3QgdG8gMC4KClNpZ25lZC1vZmYtYnk6IEJyZW5kYW4gU2hhbmtzIDxi
c2hhbmtzQGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMvbWFpbi5jIHwgMiArKwogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9tYWluLmMgYi9zcmMvbWFp
bi5jCmluZGV4IDVkZGUyMzMuLjdmMzIxYWYgMTAwNjQ0Ci0tLSBhL3NyYy9tYWluLmMKKysrIGIv
c3JjL21haW4uYwpAQCAtNjMsNiArNjMsOCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJn
dltdKQogICAgIGludCBzZXNzaW9uX2NyZWF0ZWQgPSAwOwogICAgIGludCBzZXNzaW9uX3N0YXJ0
ZWQgPSAwOwogCisgICAgbWVtc2V0KCZzZXNzaW9uLCAwLCBzaXplb2Yoc2Vzc2lvbikpOworCiAg
ICAgLyotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgICAqKiAgUGFyc2UgYXJndW1lbnRzCiAgICAgKiotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tKi8KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
