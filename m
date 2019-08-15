Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD3C8E659
	for <lists+spice-devel@lfdr.de>; Thu, 15 Aug 2019 10:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B4E6E28C;
	Thu, 15 Aug 2019 08:31:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6A36E28C
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:31:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7657930BEBEB
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:31:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC8AD429BA;
 Thu, 15 Aug 2019 08:31:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 15 Aug 2019 09:30:55 +0100
Message-Id: <20190815083055.13634-2-fziglio@redhat.com>
In-Reply-To: <20190815083055.13634-1-fziglio@redhat.com>
References: <20190815083055.13634-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 15 Aug 2019 08:31:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] Remove reference to removed ABI
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

c3BpY2Vfc2VydmVyX21pZ3JhdGVfY2xpZW50X3N0YXRlIHdhcyByZW1vdmVkIGJ5CgogIGNvbW1p
dCAzYzZiNGU0MTVmYTFlMmNlMjEyZDA5YmExNWM5MGNkNThiNGVjNGI0CiAgQXV0aG9yOiBNYXJj
LUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAZ21haWwuY29tPgogIERhdGU6ICAgRnJp
IE9jdCAyNCAxNzoxNjozNSAyMDE0ICswMjAwCgogICAgUmVtb3ZlIHNwaWNlLWV4cGVyaW1lbnRh
bAoKICAgIFJlbW92ZSB1bm5lZGVkIHN5bWJvbHMgdGhhdCBub2JvZHkgc2hvdWxkIGJlIHVzaW5n
IGFueXdheS4KICAgIEFCSSBpcyBtb2RpZmllZCB3aXRoIHRoaXMgcGF0Y2gsIGJ1dCB0aGUgbGli
cmFyeSB2ZXJzaW9uIGlzIG5vdCBidW1wZWQuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvc3BpY2Utc2VydmVyLnN5bXMgfCAx
IC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Nw
aWNlLXNlcnZlci5zeW1zIGIvc2VydmVyL3NwaWNlLXNlcnZlci5zeW1zCmluZGV4IGUzMzUyNmYz
MS4uOGRhNDZjMjBjIDEwMDY0NAotLS0gYS9zZXJ2ZXIvc3BpY2Utc2VydmVyLnN5bXMKKysrIGIv
c2VydmVyL3NwaWNlLXNlcnZlci5zeW1zCkBAIC0xMCw3ICsxMCw2IEBAIGdsb2JhbDoKICAgICBz
cGljZV9zZXJ2ZXJfZ2V0X3NvY2tfaW5mbzsKICAgICBzcGljZV9zZXJ2ZXJfaW5pdDsKICAgICBz
cGljZV9zZXJ2ZXJfa2JkX2xlZHM7Ci0gICAgc3BpY2Vfc2VydmVyX21pZ3JhdGVfY2xpZW50X3N0
YXRlOwogICAgIHNwaWNlX3NlcnZlcl9taWdyYXRlX2VuZDsKICAgICBzcGljZV9zZXJ2ZXJfbWln
cmF0ZV9pbmZvOwogICAgIHNwaWNlX3NlcnZlcl9taWdyYXRlX3N0YXJ0OwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
