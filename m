Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AA17A773
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C376E4BA;
	Tue, 30 Jul 2019 12:03:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA4A6E4BE
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DBC4946288
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:45 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C85AB5D6A7;
 Tue, 30 Jul 2019 12:03:44 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:02:55 +0100
Message-Id: <20190730120331.17967-7-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Jul 2019 12:03:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 06/44] fixup! usb-redir: define
 interfaces to support emulated devices
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

UmVtb3ZlIHVubmVlZGVkIGFkZHJlc3MgZmllbGQgZnJvbSBVc2JDcmVhdGVEZXZpY2VQYXJhbWV0
ZXJzCi0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCAxIC0KIHNyYy91c2ItYmFja2VuZC5oIHwgMiAt
LQogMiBmaWxlcyBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2It
YmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggYTQ0N2JiZmUuLmViMjI4ZTg4IDEw
MDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAt
OTI1LDcgKzkyNSw2IEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9kZXZpY2Uo
U3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICBkZXYtPmRldmljZV9pbmZvLmRldmljZV90eXBlID0g
ZGV2X3R5cGU7CiAgICAgZGV2LT5yZWZfY291bnQgPSAxOwogCi0gICAgcGFyYW0tPmFkZHJlc3Mg
PSBhZGRyZXNzOwogICAgIGlmIChiZS0+ZGV2X2luaXRbZGV2X3R5cGVdKGJlLCBkZXYsIHBhcmFt
LCAmZWRldikpIHsKICAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmKGRldik7
CiAgICAgICAgIHJldHVybiBGQUxTRTsKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIv
c3JjL3VzYi1iYWNrZW5kLmgKaW5kZXggOGEwNGVkMGQuLjc2YzU1MmY1IDEwMDY0NAotLS0gYS9z
cmMvdXNiLWJhY2tlbmQuaAorKysgYi9zcmMvdXNiLWJhY2tlbmQuaApAQCAtMTAyLDggKzEwMiw2
IEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfcmV0dXJuX3dyaXRlX2RhdGEoU3BpY2VVc2JCYWNr
ZW5kQ2hhbm5lbCAqY2gsIHZvaWQgKmRhdGEpCiB0eXBlZGVmIHN0cnVjdCBVc2JDcmVhdGVEZXZp
Y2VQYXJhbWV0ZXJzCiB7CiAgICAgR0Vycm9yICplcnJvcjsKLSAgICB1aW50MzJfdCAgICBhZGRy
ZXNzOwotICAgIHVpbnQzMl90ICAgIHJlc2VydmVkOwogICAgIHVuaW9uCiAgICAgewogICAgICAg
ICBzdHJ1Y3QKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
