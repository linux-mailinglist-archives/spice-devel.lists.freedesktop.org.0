Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8420B58524
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 17:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246A06E040;
	Thu, 27 Jun 2019 15:04:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EFFF6E040
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:04:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ABD5E309267B
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:04:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 00C1C60BE0;
 Thu, 27 Jun 2019 15:04:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 16:03:58 +0100
Message-Id: <20190627150358.16534-2-fziglio@redhat.com>
In-Reply-To: <20190627150358.16534-1-fziglio@redhat.com>
References: <20190627150358.16534-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 27 Jun 2019 15:04:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] websocket: Make header
 self-independent
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
c2VydmVyL3dlYnNvY2tldC5oIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3dlYnNvY2tldC5oIGIvc2VydmVyL3dlYnNvY2tldC5o
CmluZGV4IDc3MDdlNjgwNC4uZWM0NTIwMzhiIDEwMDY0NAotLS0gYS9zZXJ2ZXIvd2Vic29ja2V0
LmgKKysrIGIvc2VydmVyL3dlYnNvY2tldC5oCkBAIC0xOCw2ICsxOCwxMCBAQAogI2lmbmRlZiBX
RUJTT0NLRVRfSF8KICNkZWZpbmUgV0VCU09DS0VUX0hfCiAKKyNpbmNsdWRlIDxpbnR0eXBlcy5o
PgorCisjaW5jbHVkZSAic3lzLXNvY2tldC5oIgorCiB0eXBlZGVmIHNzaXplX3QgKCp3ZWJzb2Nr
ZXRfcmVhZF9jYl90KSh2b2lkICpvcGFxdWUsIHZvaWQgKmJ1Ziwgc2l6ZV90IG5ieXRlKTsKIHR5
cGVkZWYgc3NpemVfdCAoKndlYnNvY2tldF93cml0ZV9jYl90KSh2b2lkICpvcGFxdWUsIGNvbnN0
IHZvaWQgKmJ1Ziwgc2l6ZV90IG5ieXRlKTsKIHR5cGVkZWYgc3NpemVfdCAoKndlYnNvY2tldF93
cml0ZXZfY2JfdCkodm9pZCAqb3BhcXVlLCBzdHJ1Y3QgaW92ZWMgKmlvdiwgaW50IGlvdmNudCk7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
