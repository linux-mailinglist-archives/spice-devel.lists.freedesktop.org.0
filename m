Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C58096C9F9
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463016E318;
	Thu, 18 Jul 2019 07:32:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D915B6E318
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:32:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8068530917EF
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:32:35 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8FBD4608C2;
 Thu, 18 Jul 2019 07:32:34 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 08:32:25 +0100
Message-Id: <20190718073225.13190-4-fziglio@redhat.com>
In-Reply-To: <20190718073225.13190-1-fziglio@redhat.com>
References: <20190718073225.13190-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 18 Jul 2019 07:32:35 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 3/3] ci: Add some Valgrind
 suppressions for Fedora 30
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
c2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAgfCAyNSArKysrKysrKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Nl
cnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBwIGIvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3Nw
aWNlLnN1cHAKaW5kZXggMWJmZTgxMDA2Li5kZDM2NjNjNjggMTAwNjQ0Ci0tLSBhL3NlcnZlci90
ZXN0cy92YWxncmluZC9zcGljZS5zdXBwCisrKyBiL3NlcnZlci90ZXN0cy92YWxncmluZC9zcGlj
ZS5zdXBwCkBAIC0zNiwzICszNiwyOCBAQAogCS4uLgogCWZ1bjpwMTFfa2l0X21vZHVsZXNfbG9h
ZAogfQorCit7CisJZ251dGxzX3g1MDlfZXh0X2ltcG9ydF9zdWJqZWN0X2FsdF9uYW1lcworCU1l
bWNoZWNrOkNvbmQKKwkuLi4KKwlmdW46Z251dGxzX3g1MDlfZXh0X2ltcG9ydF9zdWJqZWN0X2Fs
dF9uYW1lcworCWZ1bjpnbnV0bHNfeDUwOV9jcnRfaW1wb3J0CisJZnVuOmdudXRsc194NTA5X3Ry
dXN0X2xpc3RfaXRlcl9nZXRfY2EKKwkuLi4KKwlmdW46Z19pbml0YWJsZV9uZXdfdmFsaXN0CisJ
ZnVuOmdfaW5pdGFibGVfbmV3CisJLi4uCit9CisKK3sKKwlnbGliX2dfc29ja2V0X2NsaWVudF9j
bGFzc19pbml0CisJTWVtY2hlY2s6TGVhaworCWZ1bjpjYWxsb2MKKwkuLi4KKwlmdW46dHlwZV9j
bGFzc19pbml0X1dtCisJLi4uCisJZnVuOmdfc29ja2V0X2NsaWVudF9jbGFzc19pbml0CisJLi4u
CisJZnVuOnR5cGVfY2xhc3NfaW5pdF9XbQorfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
