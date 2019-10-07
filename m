Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC9CE16E
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 14:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7EC16E5C0;
	Mon,  7 Oct 2019 12:19:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DD56E5C0
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6C0AF101BE93
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:37 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E9BD4A214
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:36 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 14:19:29 +0200
Message-Id: <20191007121935.22567-2-victortoso@redhat.com>
In-Reply-To: <20191007121935.22567-1-victortoso@redhat.com>
References: <20191007121935.22567-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Mon, 07 Oct 2019 12:19:37 +0000 (UTC)
Subject: [Spice-devel] [spice v1 2/8] tests: migrate: migrate count starts
 with 1
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQXMgdGhpcyBpcyBub3Qgc29t
ZSBpbmRleCBidXQgYSBjb3VudGVyLiBUaGUgZmlyc3QgcHJpbnQgaGFwcGVucyBhZnRlcgpmaXJz
dCBtaWdyYXRpb24gd2FzIGRvbmUsIG1lYW5pbmcgMSBpbnN0ZWFkIG9mIDAKClNpZ25lZC1vZmYt
Ynk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogdGVzdHMvbWlncmF0
ZS5weSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5CmluZGV4
IGUyODNhZDBmLi5mNDcxZGRmYyAxMDA3NTUKLS0tIGEvdGVzdHMvbWlncmF0ZS5weQorKysgYi90
ZXN0cy9taWdyYXRlLnB5CkBAIC0yMjEsOCArMjIxLDggQEAgY2xhc3MgTWlncmF0b3Iob2JqZWN0
KToKICAgICAgICAgICAgICAgICAgICAgICAgICAgICBxbXBfZmlsZW5hbWU9bmV3X3FtcF9maWxl
bmFtZSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3aXRoX2FnZW50PXNlbGYudmRhZ2Vu
dCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbmNvbWluZ19wb3J0PXNlbGYubWlncmF0
aW9uX3BvcnQpCi0gICAgICAgIHByaW50IHNlbGYubWlncmF0aW9uX2NvdW50CiAgICAgICAgIHNl
bGYubWlncmF0aW9uX2NvdW50ICs9IDEKKyAgICAgICAgcHJpbnQgc2VsZi5taWdyYXRpb25fY291
bnQKIAogZGVmIG1haW4oKToKICAgICBhcmdzID0gZ2V0X2FyZ3MoKQotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
