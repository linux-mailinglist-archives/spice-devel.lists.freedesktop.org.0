Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8925F59D
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 11:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81676E323;
	Thu,  4 Jul 2019 09:34:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7339E6E323
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 09:34:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0268485546
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 09:34:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12BCC79809;
 Thu,  4 Jul 2019 09:34:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  4 Jul 2019 10:33:57 +0100
Message-Id: <20190704093357.2098-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 04 Jul 2019 09:34:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] fixup! dcc-send: remove useless
 pipe_item assignment pipe_item
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

UmVtb3ZlIHVzZS1hZnRlci1mcmVlIGludHJvZHVjZWQgYnkgYTc4YTdkMjUxMDQyODkyMTgyYjE1
ODY1MDI5MWQxOWE4NWJiZDZiMQotLS0KIHNlcnZlci9kY2Mtc2VuZC5jIHwgOSArKysrKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvc2VydmVyL2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQuYwppbmRleCA1NjVhNzlm
MzMuLjQ1ODJlMzU0NSAxMDA2NDQKLS0tIGEvc2VydmVyL2RjYy1zZW5kLmMKKysrIGIvc2VydmVy
L2RjYy1zZW5kLmMKQEAgLTcyNSw3ICs3MjUsNiBAQCBzdGF0aWMgdm9pZCByZWRfcGlwZV9yZXBs
YWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hhbm5lbENsaWVudAog
ICAgICAgICBSZWRQaXBlSXRlbSAqcGlwZV9pdGVtID0gbC0+ZGF0YTsKICAgICAgICAgRHJhd2Fi
bGUgKmRyYXdhYmxlOwogICAgICAgICBSZWREcmF3YWJsZVBpcGVJdGVtICpkcGk7Ci0gICAgICAg
IFJlZEltYWdlSXRlbSAqaW1hZ2U7CiAKICAgICAgICAgaWYgKHBpcGVfaXRlbS0+dHlwZSAhPSBS
RURfUElQRV9JVEVNX1RZUEVfRFJBVykKICAgICAgICAgICAgIGNvbnRpbnVlOwpAQCAtNzQ1LDE0
ICs3NDQsMTYgQEAgc3RhdGljIHZvaWQgcmVkX3BpcGVfcmVwbGFjZV9yZW5kZXJlZF9kcmF3YWJs
ZXNfd2l0aF9pbWFnZXMoRGlzcGxheUNoYW5uZWxDbGllbnQKICAgICAgICAgICAgIGNvbnRpbnVl
OwogICAgICAgICB9CiAKLSAgICAgICAgaW1hZ2UgPSBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFn
ZShkY2MsIGRyYXdhYmxlLT5yZWRfZHJhd2FibGUtPnN1cmZhY2VfaWQsCi0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRyYXdhYmxlLT5yZWRfZHJhd2FibGUtPmJi
b3gsIGwsIFRSVUUpOworICAgICAgICBkY2NfYWRkX3N1cmZhY2VfYXJlYV9pbWFnZShkY2MsIGRy
YXdhYmxlLT5yZWRfZHJhd2FibGUtPnN1cmZhY2VfaWQsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICZkcmF3YWJsZS0+cmVkX2RyYXdhYmxlLT5iYm94LCBsLCBUUlVFKTsKICAg
ICAgICAgcmVzZW50X3N1cmZhY2VfaWRzW251bV9yZXNlbnRdID0gZHJhd2FibGUtPnJlZF9kcmF3
YWJsZS0+c3VyZmFjZV9pZDsKICAgICAgICAgcmVzZW50X2FyZWFzW251bV9yZXNlbnRdID0gZHJh
d2FibGUtPnJlZF9kcmF3YWJsZS0+YmJveDsKICAgICAgICAgbnVtX3Jlc2VudCsrOwogCi0gICAg
ICAgIHNwaWNlX2Fzc2VydChpbWFnZSk7CisgICAgICAgIEdMaXN0ICppbWFnZV9wb3MgPSBsLT5u
ZXh0OworICAgICAgICBzcGljZV9hc3NlcnQoaW1hZ2VfcG9zKTsKICAgICAgICAgcmVkX2NoYW5u
ZWxfY2xpZW50X3BpcGVfcmVtb3ZlX2FuZF9yZWxlYXNlX3BvcyhSRURfQ0hBTk5FTF9DTElFTlQo
ZGNjKSwgbCk7CisgICAgICAgIGwgPSBpbWFnZV9wb3M7CiAgICAgfQogfQogCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
