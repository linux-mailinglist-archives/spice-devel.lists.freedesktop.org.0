Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99E9204B5
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 13:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9756B89394;
	Thu, 16 May 2019 11:30:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243B389394
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:30:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 879FA3082135
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:30:01 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DAF9E19733;
 Thu, 16 May 2019 11:30:00 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 16 May 2019 11:30:00 +0000
Message-Id: <20190516113000.31578-1-victortoso@redhat.com>
In-Reply-To: <20190514162602.3529-1-victortoso@redhat.com>
References: <20190514162602.3529-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 16 May 2019 11:30:01 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk 6/5] build-sys: Ship keycodemapdb's
 meson.build on release
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKT3RoZXJ3aXNlIHdlIGJyZWFr
IG1lc29uIGJ1aWxkcyB3aXRoICJtZXNvbi5idWlsZDo0NDowOiBFUlJPUjoKU3VicHJvamVjdCBl
eGlzdHMgYnV0IGhhcyBubyBtZXNvbi5idWlsZCBmaWxlIgoKU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBNYWtlZmlsZS5hbSB8IDEgKwogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUuYW0gYi9N
YWtlZmlsZS5hbQppbmRleCAzYzYwN2M5Li5lMjUyODE5IDEwMDY0NAotLS0gYS9NYWtlZmlsZS5h
bQorKysgYi9NYWtlZmlsZS5hbQpAQCAtMjYsNiArMjYsNyBAQCBFWFRSQV9ESVNUID0JCQkJCVwK
IAltZXNvbi5idWlsZAkJCQlcCiAJbWVzb25fb3B0aW9ucy50eHQJCQlcCiAJcG8vbWVzb24uYnVp
bGQJCQkJXAorCXN1YnByb2plY3RzL2tleWNvZGVtYXBkYi9tZXNvbi5idWlsZCAgICBcCiAJYnVp
bGQtYXV4L2dpdC12ZXJzaW9uLWdlbgkJXAogCWd0ay1kb2MubWFrZQkJCQlcCiAJLnZlcnNpb24J
CQkJXAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
