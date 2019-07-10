Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0046C64B9B
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 19:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D17893ED;
	Wed, 10 Jul 2019 17:44:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5160F89309
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E130864123
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:38 +0000 (UTC)
Received: from lub.com (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4FBCF60C05
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 17:44:38 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 10 Jul 2019 20:44:32 +0300
Message-Id: <20190710174435.15833-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 10 Jul 2019 17:44:38 +0000 (UTC)
Subject: [Spice-devel] [spice-server PATCH v2 0/3] dcc-send: remove useless
 pipe_item assignment pipe_item
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

VGhpcyBwYXRjaC1zZXQgZml4ZXMgc29tZSBwcm9ibGVtcyBpbiBkY2Mtc2VuZCdzCnJlZF9waXBl
X3JlcGxhY2VfcmVuZGVyZWRfZHJhd2FibGVzX3dpdGhfaW1hZ2VzKCkuCgp2MS0+djI6CiAgLSBU
d28gYWRkaXRpb25hbCBwYXRjaGVzOgogICAgLSByZW1vdmUgdW51c2VkIHZhcmlhYmxlICdpbWFn
ZScgKEZyZWRpYW5vKQogICAgLSBmaXggdXNlLWFmdGVyLWZyZWUgKFVyaSkKCklmIHBlb3BsZSBw
cmVmZXIgSSBjYW4gc3F1YXNoIGFsbCB0aHJlZSBpbnRvIGEgc2luZ2xlIHBhdGNoLgoKCkZyZWRp
YW5vIFppZ2xpbyAoMSk6CiAgZGNjLXNlbmQ6IHJlbW92ZSB1bnVzZWQgdmFyaWFibGUgJ2ltYWdl
JwoKVXJpIEx1YmxpbiAoMik6CiAgZGNjLXNlbmQ6IHJlbW92ZSB1c2VsZXNzIHBpcGVfaXRlbSBh
c3NpZ25tZW50IHBpcGVfaXRlbQogIGRjYy1zZW5kOiBmaXggdXNlLWFmdGVyLWZyZWUKCiBzZXJ2
ZXIvZGNjLXNlbmQuYyB8IDEyICsrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
