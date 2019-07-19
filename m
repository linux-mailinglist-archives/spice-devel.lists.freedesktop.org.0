Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472CF6E345
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2019 11:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C716E5D8;
	Fri, 19 Jul 2019 09:18:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B4686E5D8
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 09:18:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 83415308620E
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 09:18:32 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7440D620BB;
 Fri, 19 Jul 2019 09:18:31 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 19 Jul 2019 10:18:25 +0100
Message-Id: <20190719091827.30413-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 19 Jul 2019 09:18:32 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 0/2] Remove last warnings from
 CI build
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

VGhpcyBzbWFsbCBzZXJpZXMgcmVtb3ZlcyBsYXN0IGNvbXBpbGUgd2FybmluZ3MgZnJvbSBDSSBi
dWlsZC4KU2VlIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9memlnbGlvL3NwaWNlL3Bp
cGVsaW5lcy80OTgzNC4KU2Vjb25kIHBhdGNoIHJlbW92ZSBhbHNvIGJ1ZyByZWFkaW5nIHJlY29y
ZCBmaWxlIGZvciBRVUlDIGltYWdlcwppbnN0ZWFkIG9mIGp1c3QgcmVtb3ZpbmcgdGhlIHdhcm5p
bmcuCgpGcmVkaWFubyBaaWdsaW8gKDIpOgogIHJlZC1yZXBsYXktcXhsOiBGaXggc29tZSBpc3N1
ZSBvZiBhbGlnbm1lbnQKICByZWQtcGFyc2UtcXhsOiBGaXggUVVJQyBpbWFnZXMgZnJvbSBRWEwK
CiBzZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYyB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
