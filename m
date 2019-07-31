Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ADF7BAAD
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 09:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A55D6E2A9;
	Wed, 31 Jul 2019 07:27:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB9E6E2A9
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 07:27:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B3B324627A
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 07:27:33 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 950C05D9C5;
 Wed, 31 Jul 2019 07:27:32 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 31 Jul 2019 08:27:27 +0100
Message-Id: <20190731072728.4437-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 31 Jul 2019 07:27:33 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2] build: Remove obsolete comments
 referring to Autotools
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

QXV0b3Rvb2xzIHN1cHBvcnQgd2VyZSByZW1vdmVkIGJ5IGNvbW1pdAo5ODM3Zjk3NGNjMzIxODVm
M2JkYjFkNDEwMmZkNWI2NTYwN2MzZTAyICgiRHJvcCBhdXRvdG9vbHMiKS4KClNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy9tZXNvbi5i
dWlsZCB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAppbmRleCA0YmFiMDg3ZC4uYTBiZGJj
MmEgMTAwNjQ0Ci0tLSBhL3NyYy9tZXNvbi5idWlsZAorKysgYi9zcmMvbWVzb24uYnVpbGQKQEAg
LTE4NCw3ICsxODQsNiBAQCBpZiBub3Qgc3BpY2VfZ3RrX2hhc192ZXJzaW9uX3NjcmlwdAogZW5k
aWYKIAogIyBzb3ZlcnNpb24KLSMgWFhYOiBLRUVQIElOIFNZTkMgV0lUSCBzcmMvTWFrZWZpbGUu
YW0gRklMRQogIyBodHRwOi8vd3d3LmdudS5vcmcvc29mdHdhcmUvbGlidG9vbC9tYW51YWwvaHRt
bF9ub2RlL1VwZGF0aW5nLXZlcnNpb24taW5mby5odG1sCiBzcGljZV9jbGllbnRfZ2xpYl9jdXJy
ZW50ID0gMTQKIHNwaWNlX2NsaWVudF9nbGliX3JldmlzaW9uID0gMApAQCAtMzMzLDcgKzMzMiw2
IEBAIGlmIHNwaWNlX2d0a19oYXNfZ3RrCiAgIGVuZGlmCiAKICAgIyBzb3ZlcnNpb24KLSAgIyBY
WFg6IEtFRVAgSU4gU1lOQyBXSVRIIHNyYy9NYWtlZmlsZS5hbSBGSUxFCiAgICMgaHR0cDovL3d3
dy5nbnUub3JnL3NvZnR3YXJlL2xpYnRvb2wvbWFudWFsL2h0bWxfbm9kZS9VcGRhdGluZy12ZXJz
aW9uLWluZm8uaHRtbAogICBzcGljZV9jbGllbnRfZ3RrX2N1cnJlbnQgPSA1CiAgIHNwaWNlX2Ns
aWVudF9ndGtfcmV2aXNpb24gPSAwCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
