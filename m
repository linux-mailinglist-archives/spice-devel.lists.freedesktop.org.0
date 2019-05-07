Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81F516165
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 11:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0777589FAD;
	Tue,  7 May 2019 09:49:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A93289FAD
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:48:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D1017C057F32
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:48:58 +0000 (UTC)
Received: from lub.com (dhcp-4-231.tlv.redhat.com [10.35.4.231])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4101780FF
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:48:58 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  7 May 2019 12:48:55 +0300
Message-Id: <20190507094855.20634-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 07 May 2019 09:48:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] build: do not warn about
 address-of-packed-member
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

VGhlIGdjYyB3YXJuaW5nIGFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlciBpcyBuZXcgYW5kIG9uIGJ5
CmRlZmF1bHQgaW4gZ2NjIDkuCgpNYW55IG9mIHRoZSBzdHJ1Y3R1cmVzIHNlbnQgb3ZlciB0aGUg
bmV0d29yayBhcmUgcGFja2VkCmFuZCB3aXRoIHVuYWxpZ25lZCBmaWVsZHMuCgpUaGlzIGJyZWFr
cyB0aGUgYnVpbGQgLS0gZHVlIHRvIC1XZXJyb3IuClRlbGwgZ2NjIHRvIG5vdCB3YXJuIGFib3V0
IGl0LgoKU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgotLS0KIG00
L21hbnl3YXJuaW5ncy5tNCB8IDEgKwogbWVzb24uYnVpbGQgICAgICAgIHwgMSArCiAyIGZpbGVz
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL200L21hbnl3YXJuaW5ncy5t
NCBiL200L21hbnl3YXJuaW5ncy5tNAppbmRleCA0ZjcwMWY0ZWEuLjIwNTQzZDRhNCAxMDA2NDQK
LS0tIGEvbTQvbWFueXdhcm5pbmdzLm00CisrKyBiL200L21hbnl3YXJuaW5ncy5tNApAQCAtMTc0
LDYgKzE3NCw3IEBAIEFDX0RFRlVOKFtnbF9NQU5ZV0FSTl9BTExfR0NDXSwKICAgICAtV211bHRp
Y2hhciBcCiAgICAgLVduYXJyb3dpbmcgXAogICAgIC1XbmVzdGVkLWV4dGVybnMgXAorICAgIC1X
bm8tYWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyIFwKICAgICAtV25vbm51bGwgXAogICAgIC1Xbm9u
bnVsbC1jb21wYXJlIFwKICAgICAtV251bGwtZGVyZWZlcmVuY2UgXApkaWZmIC0tZ2l0IGEvbWVz
b24uYnVpbGQgYi9tZXNvbi5idWlsZAppbmRleCA5M2ZiZGZmZjkuLmI4ZGRlOTZhOCAxMDA2NDQK
LS0tIGEvbWVzb24uYnVpbGQKKysrIGIvbWVzb24uYnVpbGQKQEAgLTQyLDYgKzQyLDcgQEAgc3Bp
Y2Vfc2VydmVyX2dsb2JhbF9jZmxhZ3MgPSBbJy1EU1BJQ0VfU0VSVkVSX0lOVEVSTkFMJywKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICctV2FsbCcsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAnLVdleHRyYScsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAnLVdu
by1zaWduLWNvbXBhcmUnLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1Xbm8tYWRk
cmVzcy1vZi1wYWNrZWQtbWVtYmVyJywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICct
V25vLXVudXNlZC1wYXJhbWV0ZXInXQogCiBjb21waWxlciA9IG1lc29uLmdldF9jb21waWxlcign
YycpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
