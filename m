Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A964FA106F
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 06:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22B289F3B;
	Thu, 29 Aug 2019 04:26:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF7F789F3B
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 04:26:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1CCE318C426B
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 04:26:13 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F19FE1001B05;
 Thu, 29 Aug 2019 04:26:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 05:26:05 +0100
Message-Id: <20190829042606.11637-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Thu, 29 Aug 2019 04:26:13 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] meson: Bump minimum required
 meson_version to 0.50
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

VGhpcyB3aWxsIGRyb3AgdGhlIGZvbGxvd2luZyB3YXJuaW5nOgoiUHJvamVjdCB0YXJnZXR0aW5n
ICc+PSAwLjQ4JyBidXQgdHJpZWQgdG8gdXNlIGZlYXR1cmUgaW50cm9kdWNlZAppbiAnMC41MC4w
JzogaW5zdGFsbCBhcmcgaW4gY29uZmlndXJlX2ZpbGUiCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBtZXNvbi5idWlsZCB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggZTU4YzQzNmMwLi4zZTI1ZTM5NzUgMTAw
NjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC00LDcgKzQsNyBAQAog
cHJvamVjdCgnc3BpY2UnLCAnYycsCiAgICAgICAgIHZlcnNpb24gOiBydW5fY29tbWFuZCgnYnVp
bGQtYXV4L2dpdC12ZXJzaW9uLWdlbicsIG1lc29uLnNvdXJjZV9yb290KCkgKyAnLy50YXJiYWxs
LXZlcnNpb24nLCBjaGVjayA6IHRydWUpLnN0ZG91dCgpLnN0cmlwKCksCiAgICAgICAgIGxpY2Vu
c2UgOiAnTEdQTHYyLjEnLAotICAgICAgICBtZXNvbl92ZXJzaW9uIDogJz49IDAuNDgnKQorICAg
ICAgICBtZXNvbl92ZXJzaW9uIDogJz49IDAuNTAnKQogCiBtZXNzYWdlKCdVcGRhdGluZyBzdWJt
b2R1bGVzJykKIHJ1bl9jb21tYW5kKCdidWlsZC1hdXgvbWVzb24vY2hlY2stc3BpY2UtY29tbW9u
JywgY2hlY2sgOiB0cnVlKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
