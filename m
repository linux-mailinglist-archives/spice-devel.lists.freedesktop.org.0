Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E775BDA7D
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6DD6EB46;
	Wed, 25 Sep 2019 09:07:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF7C36EB42
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B0CD309174E
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:04 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1629E10013A1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:06:55 +0200
Message-Id: <20190925090701.19130-3-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 25 Sep 2019 09:07:04 +0000 (UTC)
Subject: [Spice-devel] [spice 2/8] tests: migrate: use uri for default's
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
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdyYXRlLnB5IHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5CmluZGV4IDBj
MzAyYzkyLi41YTBmNTkzMCAxMDA3NTUKLS0tIGEvdGVzdHMvbWlncmF0ZS5weQorKysgYi90ZXN0
cy9taWdyYXRlLnB5CkBAIC05Niw4ICs5Niw4IEBAIGRlZiBzdGFydF9xZW11KHFlbXVfZXhlYywg
aW1hZ2UsIHNwaWNlX3BvcnQsIHFtcF9maWxlbmFtZSwgaW5jb21pbmdfcG9ydD1Ob25lLCBlCiAg
ICAgcmV0dXJuIHByb2MKIAogZGVmIHN0YXJ0X2NsaWVudChjbGllbnQsIHNwaWNlX3BvcnQpOgot
ICAgIHJldHVybiBQb3BlbigoIiUoY2xpZW50KXMgLWggbG9jYWxob3N0IC1wICUocG9ydClkIiAl
IGRpY3QocG9ydD1zcGljZV9wb3J0LAotICAgICAgICBjbGllbnQ9Y2xpZW50KSkuc3BsaXQoKSwg
ZXhlY3V0YWJsZT1jbGllbnQpCisgICAgY2xpZW50X2NtZCA9ICJzcGljeSAtLXVyaSBzcGljZTov
L2xvY2FsaG9zdDolcyIgJSAoc3BpY2VfcG9ydCkKKyAgICByZXR1cm4gUG9wZW4oY2xpZW50X2Nt
ZC5zcGxpdCgpLCBleGVjdXRhYmxlPWNsaWVudCkKIAogZGVmIHdhaXRfYWN0aXZlKHEsIGFjdGl2
ZSk6CiAgICAgZXZlbnRzID0gWyJSRVNVTUUiXSBpZiBhY3RpdmUgZWxzZSBbIlNUT1AiXQotLSAK
Mi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
