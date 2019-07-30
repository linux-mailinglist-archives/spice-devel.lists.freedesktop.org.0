Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6057A789
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269FB89193;
	Tue, 30 Jul 2019 12:04:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FCC6E4F1
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C94B57FDF4
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EDC5E5D6B2;
 Tue, 30 Jul 2019 12:04:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:15 +0100
Message-Id: <20190730120331.17967-27-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 30 Jul 2019 12:04:19 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 27/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

QWRkIHNvbWUgY29tbWVudHMgdG8gY29kZQotLS0KIHNyYy9jZC11c2ItYnVsay1tc2QuYyB8IDQg
KysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9j
ZC11c2ItYnVsay1tc2QuYyBiL3NyYy9jZC11c2ItYnVsay1tc2QuYwppbmRleCA0MWUyMTBmMC4u
NjFjMTVhNzUgMTAwNjQ0Ci0tLSBhL3NyYy9jZC11c2ItYnVsay1tc2QuYworKysgYi9zcmMvY2Qt
dXNiLWJ1bGstbXNkLmMKQEAgLTQ0LDYgKzQ0LDcgQEAgdHlwZWRlZiBlbnVtIFVzYkNkU3RhdGUg
ewogICAgIFVTQl9DRF9TVEFURV9UQVJHRVRfUkVTRVQgLyogcmVzZXQgb2YgZW50aXJlIHRhcmdl
dCAqLwogfSBVc2JDZFN0YXRlOwogCisvKiBVU0IgTVNEIENvbW1hbmQgQmxvY2sgV3JhcHBlciAq
Lwogc3RydWN0IF9fYXR0cmlidXRlX18oKF9fcGFja2VkX18pKSBVc2JDZENCVyB7CiAgICAgdWlu
dDMyX3Qgc2lnOwogICAgIHVpbnQzMl90IHRhZzsKQEAgLTU0LDYgKzU1LDcgQEAgc3RydWN0IF9f
YXR0cmlidXRlX18oKF9fcGFja2VkX18pKSBVc2JDZENCVyB7CiAgICAgdWludDhfdCBjbWRbMTZd
OyAvKiBzY3NpIGNvbW1hbmQgdG8gcGVyZm9ybSAqLwogfTsKIAorLyogVVNCIE1TRCBDb21tYW5k
IFN0YXR1cyBXcmFwcGVyICovCiBzdHJ1Y3QgX19hdHRyaWJ1dGVfXygoX19wYWNrZWRfXykpIFVz
YkNkQ1NXIHsKICAgICB1aW50MzJfdCBzaWc7CiAgICAgdWludDMyX3QgdGFnOwpAQCAtNjEsNiAr
NjMsNyBAQCBzdHJ1Y3QgX19hdHRyaWJ1dGVfXygoX19wYWNrZWRfXykpIFVzYkNkQ1NXIHsKICAg
ICB1aW50OF90IHN0YXR1czsKIH07CiAKKy8qIFVzYkNkQ1NXOjpzdGF0dXMgKi8KIHR5cGVkZWYg
ZW51bSBVc2JNc2RTdGF0dXMgewogICAgIFVTQl9NU0RfU1RBVFVTX0dPT0QgPSAwLAogICAgIFVT
Ql9NU0RfU1RBVFVTX0ZBSUxFRCA9IDEsCkBAIC0xNTgsNiArMTYxLDcgQEAgaW50IGNkX3VzYl9i
dWxrX21zZF9yZWFsaXplKFVzYkNkQnVsa01zZERldmljZSAqY2QsIHVpbnQzMl90IGx1biwKICAg
ICB9CiAKICAgICBpZiAoY2QtPnN0YXRlID09IFVTQl9DRF9TVEFURV9JTklUKSB7CisgICAgICAg
IC8qIHdhaXQgbmV4dCByZXF1ZXN0ICovCiAgICAgICAgIGNkX3VzYl9idWxrX21zZF9zZXRfc3Rh
dGUoY2QsIFVTQl9DRF9TVEFURV9DQlcpOwogICAgICAgICBjZF9zY3NpX2Rldl9yZXF1ZXN0X3Jl
bGVhc2UoY2QtPnNjc2lfdGFyZ2V0LCAmY2QtPnVzYl9yZXEuc2NzaV9yZXEpOwogICAgIH0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
