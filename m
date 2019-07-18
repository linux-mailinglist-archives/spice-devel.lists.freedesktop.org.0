Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F56D162
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1066E41D;
	Thu, 18 Jul 2019 15:50:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD6E6E41D
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:50:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5ED39811D8
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:50:46 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 838E760637;
 Thu, 18 Jul 2019 15:50:45 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 16:50:40 +0100
Message-Id: <20190718155040.28082-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 18 Jul 2019 15:50:46 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol] start-packet: Correct
 misleading comment
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
c3BpY2Uvc3RhcnQtcGFja2VkLmggfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3BpY2Uvc3RhcnQtcGFja2VkLmgg
Yi9zcGljZS9zdGFydC1wYWNrZWQuaAppbmRleCBkZTBjNTk1Li5kMWQwOTBlIDEwMDY0NAotLS0g
YS9zcGljZS9zdGFydC1wYWNrZWQuaAorKysgYi9zcGljZS9zdGFydC1wYWNrZWQuaApAQCAtMzAs
OCArMzAsOCBAQAogKi8KIAogLyogSWRlYWxseSB0aGlzIHNob3VsZCBhbGwgaGF2ZSBiZWVuIG1h
Y3JvcyBpbiBhIGNvbW1vbiBoZWFkZXJzLCBidXQKLSAqIGl0cyBub3QgcG9zc2libGUgdG8gcHV0
IHByYWdtYXMgaW50byBoZWFkZXIgZmlsZXMsIHNvIHdlIGhhdmUKLSAqIHRvIHVzZSBpbmNsdWRl
IG1hZ2ljLgorICogaXRzIG5vdCBwb3NzaWJsZSB0byBwdXQgcHJhZ21hcyBpbnRvIG1hY3Jvcywg
c28gd2UgaGF2ZSB0byB1c2UKKyAqIGluY2x1ZGUgbWFnaWMuCiAgKgogICogVXNlIGl0IGxpa2Ug
dGhpczoKICAqCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
