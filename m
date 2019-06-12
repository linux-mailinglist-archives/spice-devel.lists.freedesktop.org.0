Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C532A427BC
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 15:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01513892EE;
	Wed, 12 Jun 2019 13:37:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADA3892EE
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 13:37:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6C4F93087944
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 13:37:11 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E79AA7BE77;
 Wed, 12 Jun 2019 13:37:09 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 12 Jun 2019 14:37:04 +0100
Message-Id: <20190612133704.9864-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 12 Jun 2019 13:37:11 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] test-qxl-parsing: Fix possible
 integer overflow
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

VGhpcyBmaXhlcyBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3BpY2Utc2Vy
dmVyL2lzc3Vlcy8zMS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgotLS0KIHNlcnZlci90ZXN0cy90ZXN0LXF4bC1wYXJzaW5nLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9zZXJ2ZXIvdGVzdHMvdGVzdC1xeGwtcGFyc2luZy5jIGIvc2VydmVyL3Rlc3RzL3Rlc3QtcXhs
LXBhcnNpbmcuYwppbmRleCA2MGNhOGY4OGMuLjc2ZWFiMDZjZSAxMDA2NDQKLS0tIGEvc2VydmVy
L3Rlc3RzL3Rlc3QtcXhsLXBhcnNpbmcuYworKysgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1xeGwtcGFy
c2luZy5jCkBAIC05Niw3ICs5Niw3IEBAIHN0YXRpYyB2b2lkIHRlc3RfbWVtc2xvdF9pbnZhbGlk
X3Nsb3RfaWQodm9pZCkKICAgICBSZWRNZW1TbG90SW5mbyBtZW1faW5mbzsKICAgICBpbml0X21l
bWluZm8oJm1lbV9pbmZvKTsKIAotICAgIG1lbXNsb3RfZ2V0X3ZpcnQoJm1lbV9pbmZvLCAxIDw8
IG1lbV9pbmZvLm1lbXNsb3RfaWRfc2hpZnQsIDE2LCAwKTsKKyAgICBtZW1zbG90X2dldF92aXJ0
KCZtZW1faW5mbywgKChRWExQSFlTSUNBTCkgMSkgPDwgbWVtX2luZm8ubWVtc2xvdF9pZF9zaGlm
dCwgMTYsIDApOwogfQogCiBzdGF0aWMgdm9pZCB0ZXN0X21lbXNsb3RfaW52YWxpZF9hZGRyZXNz
ZXModm9pZCkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
