Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE241CCE8
	for <lists+spice-devel@lfdr.de>; Tue, 14 May 2019 18:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CB1891D2;
	Tue, 14 May 2019 16:26:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66BFB891D2
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 12FF846233
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:04 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8EDB35C553
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:03 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 16:25:58 +0000
Message-Id: <20190514162602.3529-2-victortoso@redhat.com>
In-Reply-To: <20190514162602.3529-1-victortoso@redhat.com>
References: <20190514162602.3529-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 14 May 2019 16:26:04 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 1/5] Rename README to README.md
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW4gb3JkZXIgdG8gaGF2ZSBn
aXRsYWIgaW50ZXJmYWNlIHRvIGhhbmRsZSB0aGlzIGZpbGUgYXMgTWFya2Rvd24uCkFkZCB0byBF
WFRSQV9ESVNUIHRvIGluY2x1ZGUgdGhlIHJlbmFtZWQgZmlsZSB0byByZWxlYXNlJ3MgdGFyYmFs
bC4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0t
LQogTWFrZWZpbGUuYW0gICAgICAgICB8IDEgKwogUkVBRE1FID0+IFJFQURNRS5tZCB8IDAKIDIg
ZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKIHJlbmFtZSBSRUFETUUgPT4gUkVBRE1FLm1k
ICgxMDAlKQoKZGlmZiAtLWdpdCBhL01ha2VmaWxlLmFtIGIvTWFrZWZpbGUuYW0KaW5kZXggNGZj
MzEyNC4uZGY2NWM0NiAxMDA2NDQKLS0tIGEvTWFrZWZpbGUuYW0KKysrIGIvTWFrZWZpbGUuYW0K
QEAgLTIxLDYgKzIxLDcgQEAgZW5kaWYKIERJU1RDTEVBTkZJTEVTID0gJChwa2djb25maWdfREFU
QSkKIAogRVhUUkFfRElTVCA9CQkJCQlcCisJUkVBRE1FLm1kCQkJCVwKIAltZXNvbi5idWlsZAkJ
CQlcCiAJbWVzb25fb3B0aW9ucy50eHQJCQlcCiAJcG8vbWVzb24uYnVpbGQJCQkJXApkaWZmIC0t
Z2l0IGEvUkVBRE1FIGIvUkVBRE1FLm1kCnNpbWlsYXJpdHkgaW5kZXggMTAwJQpyZW5hbWUgZnJv
bSBSRUFETUUKcmVuYW1lIHRvIFJFQURNRS5tZAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
