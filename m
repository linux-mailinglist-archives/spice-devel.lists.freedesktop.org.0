Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ACF583B1
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 15:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3935D6E388;
	Thu, 27 Jun 2019 13:37:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E19D6E36D
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 13:37:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AC81A308213C
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 13:37:25 +0000 (UTC)
Received: from dhcp-4-93.tlv.redhat.com (dhcp-4-93.tlv.redhat.com [10.35.4.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1CF905D707
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 13:37:24 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 16:37:22 +0300
Message-Id: <20190627133722.15613-2-ssheribe@redhat.com>
In-Reply-To: <20190627133722.15613-1-ssheribe@redhat.com>
References: <20190627133722.15613-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 27 Jun 2019 13:37:25 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent v2 2/2] gst-plugin: Use
 autovideoconvert element for color space conversion
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

V2hlbiBWQUFQSSBiYXNlZCBlbmNvZGVyIGlzIHVzZWQgaXQncyBsaWtlbHkgdGhhdCBhbHNvIFZB
QVBJIGJhc2VkCmNvbnZlcnNpb24gaXMgYXZhaWxhYmxlICh1c2luZyB0aGUgdmFhcGlwb3N0cHJv
YyBlbGVtZW50KS4KTW92aW5nIHRvIGF1dG92aWRlb2NvbnZlcnQgd2lsbCBhdXRvbWF0aWNhbGx5
IGNob29zZSBhIHN1aXRhYmxlCmNvbnZlcnQgZWxlbWVudCBhY2NvcmRpbmcgdG8gZWxlbWVudHMg
YXZhaWxhYmlsaXR5IChlLmcuIGluIHRoZQpWQUFQSSBjYXNlIGl0IHdvdWxkIHNlbGVjdCB2YWFw
aXBvc3Rwcm9jIGR1ZSB0byBpdHMgaGlnaCByYW5rKS4KClNpZ25lZC1vZmYtYnk6IFNuaXIgU2hl
cmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KLS0tCkJhc2ljYWxseSBBY2tlZCwgZm9yIHRoZSByZWNvcmQgSSdt
IHNlbmRpbmcgaXQgYWdhaW4gd2l0aCB0aGUgbWlub3IgY2hhbmdlcwotLS0KIHNyYy9nc3QtcGx1
Z2luLmNwcCB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdp
bi5jcHAKaW5kZXggMGRkNzc5Ni4uMzg4N2I0NyAxMDA2NDQKLS0tIGEvc3JjL2dzdC1wbHVnaW4u
Y3BwCisrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcApAQCAtMjE2LDkgKzIxNiw5IEBAIHZvaWQgR3N0
cmVhbWVyRnJhbWVDYXB0dXJlOjpwaXBlbGluZV9pbml0KGNvbnN0IEdzdHJlYW1lckVuY29kZXJT
ZXR0aW5ncyAmc2V0dGluCiAgICAgaWYgKCFjYXB0dXJlKSB7CiAgICAgICAgIHRocm93IHN0ZDo6
cnVudGltZV9lcnJvcigiR3N0cmVhbWVyJ3MgY2FwdHVyZSBlbGVtZW50IGNhbm5vdCBiZSBjcmVh
dGVkIik7CiAgICAgfQotICAgIEdzdE9iamVjdFVQdHI8R3N0RWxlbWVudD4gY29udmVydChnc3Rf
ZWxlbWVudF9mYWN0b3J5X21ha2UoInZpZGVvY29udmVydCIsICJjb252ZXJ0IikpOworICAgIEdz
dE9iamVjdFVQdHI8R3N0RWxlbWVudD4gY29udmVydChnc3RfZWxlbWVudF9mYWN0b3J5X21ha2Uo
ImF1dG92aWRlb2NvbnZlcnQiLCAiY29udmVydCIpKTsKICAgICBpZiAoIWNvbnZlcnQpIHsKLSAg
ICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJHc3RyZWFtZXIncyAndmlkZW9jb252ZXJ0
JyBlbGVtZW50IGNhbm5vdCBiZSBjcmVhdGVkIik7CisgICAgICAgIHRocm93IHN0ZDo6cnVudGlt
ZV9lcnJvcigiR3N0cmVhbWVyJ3MgJ2F1dG92aWRlb2NvbnZlcnQnIGVsZW1lbnQgY2Fubm90IGJl
IGNyZWF0ZWQiKTsKICAgICB9CiAgICAgR3N0Q2Fwc1VQdHIgc2lua19jYXBzOwogICAgIEdzdE9i
amVjdFVQdHI8R3N0RWxlbWVudD4gZW5jb2RlcihnZXRfZW5jb2Rlcl9wbHVnaW4oc2V0dGluZ3Ms
IHNpbmtfY2FwcykpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
