Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4768BEE0
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 18:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DD86E10B;
	Tue, 13 Aug 2019 16:45:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D166E10B
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:45:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F3E843157676
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:45:15 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 631F688B11
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:45:15 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 13 Aug 2019 19:45:12 +0300
Message-Id: <20190813164512.30917-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 13 Aug 2019 16:45:16 +0000 (UTC)
Subject: [Spice-devel] [spice-common PATCH] test-marshallers.proto:
 ArrayMessage: make space for name
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

RG8gaXQgYnkgYWRkaW5nIEBlbmQgdGFnLgpXaXRob3V0IGl0IHRoZSBhbGxvY2F0ZWQgbWVtb3J5
IGhhcyBubyBzcGFjZSBmb3IgJ25hbWUnLgoKQWxzbyBmaXggU3BpY2VNc2dNYWluQXJyYXlNZXNz
YWdlIHRlc3RzL3Rlc3QtbWFyc2hhbGxlcnMuaCwKcmVwbGFjaW5nIGludDhfdCogbmFtZSB3aXRo
IGludDhfdCBuYW1lW10uClRoaXMgbWFrZXMgbmFtZSBhbiAiaW4tc3RydWN0dXJlIiBhcnJheSB3
aXRoIG5vIHByZS1kZWZpbmVkIHNpemUKaW5zdGVhZCBvZiBhIHBvaW50ZXIuClRoZSBzaXplIGlz
IGRlZmluZWQgYnkgdGhlIG1lc3NhZ2Ugc2l6ZS4KClNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4g
PHVyaWxAcmVkaGF0LmNvbT4KLS0tCgpTaW5jZSB2MToKICAgLSBmaXggJ25hbWUnIGluIHRlc3Rz
L3Rlc3QtbWFyc2hhbGxlcnMuaCB0b28KICAgLSBtb3JlIGluZm9ybWF0aW9uIGluIHRoZSBjb21t
aXQgbG9nCgotLS0KIHRlc3RzL3Rlc3QtbWFyc2hhbGxlcnMuaCAgICAgfCAyICstCiB0ZXN0cy90
ZXN0LW1hcnNoYWxsZXJzLnByb3RvIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvdGVzdC1tYXJzaGFsbGVy
cy5oIGIvdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5oCmluZGV4IDc2ODYwNjcuLjhjYTczNmUgMTAw
NjQ0Ci0tLSBhL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMuaAorKysgYi90ZXN0cy90ZXN0LW1hcnNo
YWxsZXJzLmgKQEAgLTEwLDcgKzEwLDcgQEAgdHlwZWRlZiBzdHJ1Y3QgewogfSBTcGljZU1zZ01h
aW5TaG9ydERhdGFTdWJNYXJzaGFsbDsKIAogdHlwZWRlZiBzdHJ1Y3QgewotICAgIGludDhfdCAq
bmFtZTsKKyAgICBpbnQ4X3QgbmFtZVswXTsKIH0gU3BpY2VNc2dNYWluQXJyYXlNZXNzYWdlOwog
CiB0eXBlZGVmIHN0cnVjdCB7CmRpZmYgLS1naXQgYS90ZXN0cy90ZXN0LW1hcnNoYWxsZXJzLnBy
b3RvIGIvdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5wcm90bwppbmRleCAzNGNjODkyLi5lYWJkNDg3
IDEwMDY0NAotLS0gYS90ZXN0cy90ZXN0LW1hcnNoYWxsZXJzLnByb3RvCisrKyBiL3Rlc3RzL3Rl
c3QtbWFyc2hhbGxlcnMucHJvdG8KQEAgLTYsNyArNiw3IEBAIGNoYW5uZWwgVGVzdENoYW5uZWwg
ewogICAgfSBTaG9ydERhdGFTdWJNYXJzaGFsbDsKIAogICAgbWVzc2FnZSB7Ci0gICAgICBpbnQ4
IG5hbWVbXTsKKyAgICAgIGludDggbmFtZVtdIEBlbmQ7CiAgICB9IEFycmF5TWVzc2FnZTsKIAog
ICAgIG1lc3NhZ2UgewotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
