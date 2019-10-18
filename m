Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFDEDC7F5
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 16:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4C96EB6E;
	Fri, 18 Oct 2019 14:59:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F596EB67
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 14:59:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7D08010F2E85
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 14:59:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5AA6C5D9CC;
 Fri, 18 Oct 2019 14:59:14 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 15:59:07 +0100
Message-Id: <20191018145907.11122-2-fziglio@redhat.com>
In-Reply-To: <20191018145907.11122-1-fziglio@redhat.com>
References: <20191018145907.11122-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Fri, 18 Oct 2019 14:59:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] codegen: Check unsafe values
 alone
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

VGhpcyBydWxlIHJlbW92ZSBwb3NzaWJsZSBpbnRlZ2VyIG92ZXJmbG93cy4KQ3VycmVudCBjb2Rl
IGdlbmVyYXRlZCBpcyBub3QgYWZmZWN0ZWQgYnkgdGhlc2UgaW50ZWdlciBvdmVyZmxvd3MKYXMg
dGhlIGNvbXB1dGF0aW9ucyBhcmUgZG9uZSB1c2luZyA2NCBiaXQgYnV0IGJldHRlciBzYWZlIHRo
ZW4gc29ycnkuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KLS0tCiBweXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkgfCA0ICsrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcHl0
aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5IGIvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cmlu
ZGV4IDM3MzY5NzYuLmIyN2ViNzUgMTAwNjQ0Ci0tLSBhL3B5dGhvbl9tb2R1bGVzL2RlbWFyc2hh
bC5weQorKysgYi9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKQEAgLTIyOSw3ICsyMjksNyBA
QCBkZWYgd3JpdGVfdmFsaWRhdGVfc3RydWN0X2Z1bmN0aW9uKHdyaXRlciwgc3RydWN0KToKICAg
ICAgICAgd3JpdGVyLnN0YXRlbWVudCgicmV0dXJuIDAiKQogCiAgICAgd3JpdGVyLm5ld2xpbmUo
KQotICAgIHdyaXRlci5lcnJvcl9jaGVjaygic3RhcnQgPj0gbWVzc2FnZV9lbmQiKQorICAgIHdy
aXRlci5lcnJvcl9jaGVjaygib2Zmc2V0ID49ICh1aW50cHRyX3QpIChtZXNzYWdlX2VuZCAtIG1l
c3NhZ2Vfc3RhcnQpIikKIAogICAgIHdyaXRlci5uZXdsaW5lKCkKICAgICB3cml0ZV92YWxpZGF0
ZV9jb250YWluZXIod3JpdGVyLCBOb25lLCBzdHJ1Y3QsICJzdGFydCIsIHNjb3BlLCBUcnVlLCBU
cnVlLCBGYWxzZSkKQEAgLTI4Myw3ICsyODMsNyBAQCBkZWYgd3JpdGVfdmFsaWRhdGVfcG9pbnRl
cl9pdGVtKHdyaXRlciwgY29udGFpbmVyLCBpdGVtLCBzY29wZSwgcGFyZW50X3Njb3BlLCBzdAog
ICAgICAgICAgICAgZWxzZToKICAgICAgICAgICAgICAgICB3cml0ZV92YWxpZGF0ZV9hcnJheV9p
dGVtKHdyaXRlciwgY29udGFpbmVyLCBhcnJheV9pdGVtLCBzY29wZSwgcGFyZW50X3Njb3BlLCBz
dGFydCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRydWUsIHdh
bnRfbWVtX3NpemU9bmVlZF9tZW1fc2l6ZSwgd2FudF9leHRyYV9zaXplPUZhbHNlKQotICAgICAg
ICAgICAgICAgIHdyaXRlci5lcnJvcl9jaGVjaygiJXMgKyAlcyA+ICh1aW50cHRyX3QpIChtZXNz
YWdlX2VuZCAtIG1lc3NhZ2Vfc3RhcnQpIiAlICh2LCBhcnJheV9pdGVtLm53X3NpemUoKSkpCisg
ICAgICAgICAgICAgICAgd3JpdGVyLmVycm9yX2NoZWNrKCIlcyA+ICh1aW50cHRyX3QpIChtZXNz
YWdlX2VuZCAtIG1lc3NhZ2Vfc3RhcnQgLSAlcykiICUgKGFycmF5X2l0ZW0ubndfc2l6ZSgpLCB2
KSkKIAogICAgICAgICAgICAgaWYgd2FudF9leHRyYV9zaXplOgogICAgICAgICAgICAgICAgIGlm
IGl0ZW0ubWVtYmVyIGFuZCBpdGVtLm1lbWJlci5oYXNfYXR0cigiY2h1bmsiKToKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
