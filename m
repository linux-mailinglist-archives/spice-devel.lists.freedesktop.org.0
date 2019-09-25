Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC00BDBC4
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF3D6EB85;
	Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA746EB72
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 60EC33082E10
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:03 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E0C3F61F27
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:02 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:54 +0200
Message-Id: <20190925100300.30019-3-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 25 Sep 2019 10:03:03 +0000 (UTC)
Subject: [Spice-devel] [spice v2 2/8] tests: migrate: use uri for default's
 spicy client
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2lnbmVkLW9mZi1ieTogVmlj
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL21pZ3JhdGUucHkgfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKaW5kZXggMGMzMDJjOTIuLjVh
MGY1OTMwIDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5CisrKyBiL3Rlc3RzL21pZ3JhdGUu
cHkKQEAgLTk2LDggKzk2LDggQEAgZGVmIHN0YXJ0X3FlbXUocWVtdV9leGVjLCBpbWFnZSwgc3Bp
Y2VfcG9ydCwgcW1wX2ZpbGVuYW1lLCBpbmNvbWluZ19wb3J0PU5vbmUsIGUKICAgICByZXR1cm4g
cHJvYwogCiBkZWYgc3RhcnRfY2xpZW50KGNsaWVudCwgc3BpY2VfcG9ydCk6Ci0gICAgcmV0dXJu
IFBvcGVuKCgiJShjbGllbnQpcyAtaCBsb2NhbGhvc3QgLXAgJShwb3J0KWQiICUgZGljdChwb3J0
PXNwaWNlX3BvcnQsCi0gICAgICAgIGNsaWVudD1jbGllbnQpKS5zcGxpdCgpLCBleGVjdXRhYmxl
PWNsaWVudCkKKyAgICBjbGllbnRfY21kID0gInNwaWN5IC0tdXJpIHNwaWNlOi8vbG9jYWxob3N0
OiVzIiAlIChzcGljZV9wb3J0KQorICAgIHJldHVybiBQb3BlbihjbGllbnRfY21kLnNwbGl0KCks
IGV4ZWN1dGFibGU9Y2xpZW50KQogCiBkZWYgd2FpdF9hY3RpdmUocSwgYWN0aXZlKToKICAgICBl
dmVudHMgPSBbIlJFU1VNRSJdIGlmIGFjdGl2ZSBlbHNlIFsiU1RPUCJdCi0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
