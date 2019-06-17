Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6DD4919E
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 22:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777A789FC0;
	Mon, 17 Jun 2019 20:46:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B624A89FC0
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 63B113086222
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 20:46:38 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-54.brq.redhat.com
 [10.40.204.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A20DE90AC;
 Mon, 17 Jun 2019 20:46:37 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 22:46:27 +0200
Message-Id: <20190617204630.22420-2-jjanku@redhat.com>
In-Reply-To: <20190617204630.22420-1-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 17 Jun 2019 20:46:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/5] vmcstream: finish task
 immediately when reading 0 bytes
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

VGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gZmluaXNoZXMgaXQKb25seSBhZnRlciBuZXcgZGF0
YSBhcnJpdmVzIGZyb20gdGhlIGNoYW5uZWwgKG9yIGFmdGVyIGl0IGlzIGNhbmNlbGxlZCkuCgpT
aWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgotLS0KIHNyYy92
bWNzdHJlYW0uYyB8IDE1ICsrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3ZtY3N0cmVhbS5jIGIv
c3JjL3ZtY3N0cmVhbS5jCmluZGV4IDg2Yzk0OWEuLjQ1MWQwNmUgMTAwNjQ0Ci0tLSBhL3NyYy92
bWNzdHJlYW0uYworKysgYi9zcmMvdm1jc3RyZWFtLmMKQEAgLTIwMSwxNCArMjAxLDIxIEBAIHNw
aWNlX3ZtY19pbnB1dF9zdHJlYW1fcmVhZF9hbGxfYXN5bmMoR0lucHV0U3RyZWFtICAgICAgICAq
c3RyZWFtLAogCiAgICAgLyogbm8gY29uY3VycmVudCByZWFkIHBlcm1pdHRlZCBieSBnaW5wdXRz
dHJlYW0gKi8KICAgICBnX3JldHVybl9pZl9mYWlsKHNlbGYtPnRhc2sgPT0gTlVMTCk7Ci0gICAg
c2VsZi0+YWxsID0gVFJVRTsKLSAgICBzZWxmLT5idWZmZXIgPSBidWZmZXI7Ci0gICAgc2VsZi0+
Y291bnQgPSBjb3VudDsKLSAgICBzZWxmLT5wb3MgPSAwOworCiAgICAgdGFzayA9IGdfdGFza19u
ZXcoc2VsZiwKICAgICAgICAgICAgICAgICAgICAgICBjYW5jZWxsYWJsZSwKICAgICAgICAgICAg
ICAgICAgICAgICBjYWxsYmFjaywKICAgICAgICAgICAgICAgICAgICAgICB1c2VyX2RhdGEpOwor
ICAgIGlmIChjb3VudCA9PSAwKSB7CisgICAgICAgIGdfdGFza19yZXR1cm5faW50KHRhc2ssIDAp
OworICAgICAgICBnX29iamVjdF91bnJlZih0YXNrKTsKKyAgICAgICAgcmV0dXJuOworICAgIH0K
KworICAgIHNlbGYtPmFsbCA9IFRSVUU7CisgICAgc2VsZi0+YnVmZmVyID0gYnVmZmVyOworICAg
IHNlbGYtPmNvdW50ID0gY291bnQ7CisgICAgc2VsZi0+cG9zID0gMDsKICAgICBzZWxmLT50YXNr
ID0gdGFzazsKICAgICBpZiAoY2FuY2VsbGFibGUpCiAgICAgICAgIHNlbGYtPmNhbmNlbF9pZCA9
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
