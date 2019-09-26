Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F86CBF591
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 17:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E496ED6C;
	Thu, 26 Sep 2019 15:13:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245576ED6C
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B62FE10DCCA4
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:23 +0000 (UTC)
Received: from lub.com (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2331260F88
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:22 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 26 Sep 2019 18:13:16 +0300
Message-Id: <20190926151320.18868-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Thu, 26 Sep 2019 15:13:23 +0000 (UTC)
Subject: [Spice-devel] [spice-streaming-agent PATCH 0/4] Get ready for v0.3
 release
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

cGlwZWxpbmU6Cmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy91cmlsL3NwaWNlLXN0cmVh
bWluZy1hZ2VudC9waXBlbGluZXMvNjY3MDgKClVyaSBMdWJsaW4gKDQpOgogIGdpdGlnbm9yZTog
aWdub3JlIHRhci54egogIHNwZWM6IEJ1aWxkUmVxdWlyZXMgYXV0b2NvbmYgYW5kIGZyaWVuZHMK
ICBBZGQgYSBtYW4gcGFnZQogIFByZXBhcmUgZm9yIHYwLjMgcmVsZWFzZQoKIC5naXRpZ25vcmUg
ICAgICAgICAgICAgICAgICAgIHwgIDEgKwogTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAg
fCAgMiArCiBORVdTICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrCiBjb25m
aWd1cmUuYWMgICAgICAgICAgICAgICAgICB8ICAyICstCiBzcGljZS1zdHJlYW1pbmctYWdlbnQu
MSAgICAgICB8IDc4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBzcGljZS1z
dHJlYW1pbmctYWdlbnQuc3BlYy5pbiB8ICA4ICsrKysKIDYgZmlsZXMgY2hhbmdlZCwgMTA3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcGljZS1zdHJl
YW1pbmctYWdlbnQuMQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
