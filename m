Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA7A2FDAA
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045806E378;
	Thu, 30 May 2019 14:23:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E5E6E369
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 15CED308FC47
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0AC311001E86;
 Thu, 30 May 2019 14:23:16 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:54 +0100
Message-Id: <20190530142254.28937-13-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 30 May 2019 14:23:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 13/13] red-channel-client: Add
 some comment on the flush code
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMg
Yi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKaW5kZXggM2ZkNTFkNzhiLi4zMzc3MzNkNWQg
MTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYworKysgYi9zZXJ2ZXIvcmVk
LWNoYW5uZWwtY2xpZW50LmMKQEAgLTEzMTksNiArMTMxOSw5IEBAIHZvaWQgcmVkX2NoYW5uZWxf
Y2xpZW50X3B1c2goUmVkQ2hhbm5lbENsaWVudCAqcmNjKQogICAgIC8qIHByZXBhcmVfcGlwZV9h
ZGQoKSB3aWxsIHJlZW5hYmxlIFdSSVRFIGV2ZW50cyB3aGVuIHRoZSByY2MtPnByaXYtPnBpcGUg
aXMgZW1wdHkKICAgICAgKiByZWRfY2hhbm5lbF9jbGllbnRfYWNrX3plcm9fbWVzc2FnZXNfd2lu
ZG93KCkgd2lsbCByZWVuYWJsZSBXUklURSBldmVudHMKICAgICAgKiBpZiB3ZSB3ZXJlIHdhaXRp
bmcgZm9yIGFja3MgdG8gYmUgcmVjZWl2ZWQKKyAgICAgKiBJZiB3ZSBkb24ndCByZW1vdmUgV1JJ
VEUgaWYgd2UgYXJlIHdhaXRpbmcgZm9yIGFjayB3ZSB3aWxsIGJlIGtlZXAKKyAgICAgKiBub3Rp
ZmllZCB0aGF0IHdlIGNhbiB3cml0ZSBhbmQgd2UgdGhlbiBleGl0IChzZWUgcGlwZV9pdGVtX2dl
dCkgYXMgd2UKKyAgICAgKiBhcmUgd2FpdGluZyBmb3IgdGhlIGFjayBjb25zdW1pbmcgQ1BVIGlu
IGEgdGlnaHQgbG9vcAogICAgICAqLwogICAgIGlmICgocmVkX2NoYW5uZWxfY2xpZW50X25vX2l0
ZW1fYmVpbmdfc2VudChyY2MpICYmIGdfcXVldWVfaXNfZW1wdHkoJnJjYy0+cHJpdi0+cGlwZSkp
IHx8CiAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF93YWl0aW5nX2Zvcl9hY2socmNjKSkgewpA
QCAtMTMyNiw2ICsxMzI5LDkgQEAgdm9pZCByZWRfY2hhbm5lbF9jbGllbnRfcHVzaChSZWRDaGFu
bmVsQ2xpZW50ICpyY2MpCiAgICAgICAgIC8qIGNoYW5uZWwgaGFzIG5vIHBlbmRpbmcgZGF0YSB0
byBzZW5kIHNvIG5vdyB3ZSBjYW4gZmx1c2ggZGF0YSBpbgogICAgICAgICAgKiBvcmRlciB0byBh
dm9pZCBkYXRhIHN0YWxsIGludG8gYnVmZmVycyBpbiBjYXNlIG9mIG1hbnVhbAogICAgICAgICAg
KiBmbHVzaGluZworICAgICAgICAgKiBXZSBuZWVkIHRvIGZsdXNoIGFsc28gaW4gY2FzZSBvZiBh
Y2sgYXMgaXQgaXMgcG9zc2libGUKKyAgICAgICAgICogdGhhdCBmb3IgYSBsb25nIHRyYWluIG9m
IHNtYWxsIG1lc3NhZ2VzIHRoZSBtZXNzYWdlIHRoYXQgd291bGQKKyAgICAgICAgICogY2F1c2Ug
dGhlIGNsaWVudCB0byBzZW5kIHRoZSBhY2sgaXMgc3RpbGwgaW4gdGhlIHF1ZXVlCiAgICAgICAg
ICAqLwogICAgICAgICByZWRfc3RyZWFtX2ZsdXNoKHJjYy0+cHJpdi0+c3RyZWFtKTsKICAgICB9
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
