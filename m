Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07697BC49B
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 11:15:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B76B489BF6;
	Tue, 24 Sep 2019 09:15:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0623989B60
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A31B2308FBAC
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:06 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2B87F5D9D5
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 09:15:06 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 11:15:00 +0200
Message-Id: <20190924091502.16038-5-victortoso@redhat.com>
In-Reply-To: <20190924091502.16038-1-victortoso@redhat.com>
References: <20190924091502.16038-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 24 Sep 2019 09:15:06 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 4/6] channel-main: remove redundant if
 on SpiceSession creation
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQXMgc3BpY2Vfc2Vzc2lvbl9z
ZXRfbWlncmF0aW9uX3Nlc3Npb24oKSBkb2VzIGNoZWNrIHdpdGgKU1BJQ0VfSVNfU0VTU0lPTigp
IGFuZCB3b3VsZCBsb2cgYSBjcml0aWNhbCBpbiBjYXNlIGl0IGlzIE5VTEwsIHdoaWNoCmlzIGJl
dHRlciB0aGFuIGp1c3Qgc2lsZW50IGZhaWwgbWlncmF0aW9uCgpTaWduZWQtb2ZmLWJ5OiBWaWN0
b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgotLS0KIHNyYy9jaGFubmVsLW1haW4uYyB8
IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtbWFpbi5jIGIvc3JjL2NoYW5uZWwtbWFpbi5jCmlu
ZGV4IGEwYWI1MjAuLjNmZThkNjQgMTAwNjQ0Ci0tLSBhL3NyYy9jaGFubmVsLW1haW4uYworKysg
Yi9zcmMvY2hhbm5lbC1tYWluLmMKQEAgLTIzNTksMTAgKzIzNTksOSBAQCBzdGF0aWMgdm9pZCBt
YWluX21pZ3JhdGVfY29ubmVjdChTcGljZUNoYW5uZWwgKmNoYW5uZWwsCiAgICAgQ0hBTk5FTF9E
RUJVRyhjaGFubmVsLCAibWlncmF0ZSBjb25uZWN0Iik7CiAgICAgc2Vzc2lvbiA9IHNwaWNlX2No
YW5uZWxfZ2V0X3Nlc3Npb24oY2hhbm5lbCk7CiAgICAgbWlnLnNlc3Npb24gPSBzcGljZV9zZXNz
aW9uX25ld19mcm9tX3Nlc3Npb24oc2Vzc2lvbik7Ci0gICAgaWYgKG1pZy5zZXNzaW9uID09IE5V
TEwpCi0gICAgICAgIGdvdG8gZW5kOwotICAgIGlmICghc3BpY2Vfc2Vzc2lvbl9zZXRfbWlncmF0
aW9uX3Nlc3Npb24oc2Vzc2lvbiwgbWlnLnNlc3Npb24pKQorICAgIGlmICghc3BpY2Vfc2Vzc2lv
bl9zZXRfbWlncmF0aW9uX3Nlc3Npb24oc2Vzc2lvbiwgbWlnLnNlc3Npb24pKSB7CiAgICAgICAg
IGdvdG8gZW5kOworICAgIH0KIAogICAgIG1haW5fcHJpdi0+bWlncmF0ZV9kYXRhID0gJm1pZzsK
IAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
