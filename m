Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 617A8CDF76
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 12:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07C56E528;
	Mon,  7 Oct 2019 10:39:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAAB66E52E
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6E0D888135D
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7CAAE5D6D0;
 Mon,  7 Oct 2019 10:39:17 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:39:03 +0100
Message-Id: <20191007103906.30517-6-fziglio@redhat.com>
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Mon, 07 Oct 2019 10:39:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 5/8] smartcard: Use generated
 parse for messages
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

VGhlIGdlbmVyYXRlZCBjb2RlIGhhbmRsZSBwb3NzaWJsZSBlbmRpYW5lc3MgbWlzbWF0Y2ggYW5k
IGNoZWNrCmZvciBtZXNzYWdlIGZvcm1hdC4KVGhlIGNvcHkgYmFjayB0byAid3JpdGVfYnVmIiBh
bGxvd3MgdG8gdXNlIHRoYXQgYnVmZmVyIHRvIHNlbmQKZGF0YSBiYWNrIHRvIGRldmljZS4KClNp
Z25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNl
cnZlci9zbWFydGNhcmQtY2hhbm5lbC1jbGllbnQuYyB8IDcgKysrLS0tLQogc2VydmVyL3NtYXJ0
Y2FyZC5jICAgICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5u
ZWwtY2xpZW50LmMgYi9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKaW5kZXggMDhh
ZjQ5ZGYuLmY3MWI2NTIzIDEwMDY0NAotLS0gYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xp
ZW50LmMKKysrIGIvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jCkBAIC0yNzQsMTcg
KzI3NCwxNSBAQCBib29sIHNtYXJ0Y2FyZF9jaGFubmVsX2NsaWVudF9oYW5kbGVfbWVzc2FnZShS
ZWRDaGFubmVsQ2xpZW50ICpyY2MsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1aW50MzJfdCBzaXplLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdm9pZCAqbWVzc2FnZSkKIHsKLSAgICB1aW50OF90ICptc2cgPSBtZXNz
YWdlOwogICAgIFZTQ01zZ0hlYWRlciogdmhlYWRlciA9IG1lc3NhZ2U7CiAgICAgU21hcnRDYXJk
Q2hhbm5lbENsaWVudCAqc2NjID0gU01BUlRDQVJEX0NIQU5ORUxfQ0xJRU5UKHJjYyk7CiAKICAg
ICBpZiAodHlwZSAhPSBTUElDRV9NU0dDX1NNQVJUQ0FSRF9EQVRBKSB7CiAgICAgICAgIC8qIEhh
bmRsZXMgc2VhbWxlc3MgbWlncmF0aW9uIHByb3RvY29sLiBBbHNvIGhhbmRsZXMgYWNrJ3MsCiAg
ICAgICAgICAqIHNwaWN5IHNlbmRzIHRoZW0gd2hpbGUgc3BpY2VjIGRvZXMgbm90ICovCi0gICAg
ICAgIHJldHVybiByZWRfY2hhbm5lbF9jbGllbnRfaGFuZGxlX21lc3NhZ2UocmNjLCB0eXBlLCBz
aXplLCBtc2cpOworICAgICAgICByZXR1cm4gcmVkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNz
YWdlKHJjYywgdHlwZSwgc2l6ZSwgbWVzc2FnZSk7CiAgICAgfQogCi0gICAgc3BpY2VfYXNzZXJ0
KHNpemUgPT0gdmhlYWRlci0+bGVuZ3RoICsgc2l6ZW9mKFZTQ01zZ0hlYWRlcikpOwogICAgIHN3
aXRjaCAodmhlYWRlci0+dHlwZSkgewogICAgICAgICBjYXNlIFZTQ19SZWFkZXJBZGQ6CiAgICAg
ICAgICAgICBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfYWRkX3JlYWRlcihzY2MpOwpAQCAtMzE1
LDcgKzMxMyw4IEBAIGJvb2wgc21hcnRjYXJkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNzYWdl
KFJlZENoYW5uZWxDbGllbnQgKnJjYywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2aGVh
ZGVyLT5yZWFkZXJfaWQsIHZoZWFkZXItPnR5cGUsIHZoZWFkZXItPmxlbmd0aCk7CiAgICAgICAg
IHJldHVybiBGQUxTRTsKICAgICB9Ci0gICAgc3BpY2VfYXNzZXJ0KHNjYy0+cHJpdi0+d3JpdGVf
YnVmLT5idWYgPT0gbXNnKTsKKyAgICBzcGljZV9hc3NlcnQoc2NjLT5wcml2LT53cml0ZV9idWYt
PmJ1Zl9zaXplID49IHNpemUpOworICAgIG1lbWNweShzY2MtPnByaXYtPndyaXRlX2J1Zi0+YnVm
LCBtZXNzYWdlLCBzaXplKTsKICAgICBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfd3JpdGVfdG9f
cmVhZGVyKHNjYyk7CiAKICAgICByZXR1cm4gVFJVRTsKZGlmZiAtLWdpdCBhL3NlcnZlci9zbWFy
dGNhcmQuYyBiL3NlcnZlci9zbWFydGNhcmQuYwppbmRleCAxNzc5NGIwNi4uM2Y1MWY1MjkgMTAw
NjQ0Ci0tLSBhL3NlcnZlci9zbWFydGNhcmQuYworKysgYi9zZXJ2ZXIvc21hcnRjYXJkLmMKQEAg
LTU0Nyw2ICs1NDcsNyBAQCByZWRfc21hcnRjYXJkX2NoYW5uZWxfY2xhc3NfaW5pdChSZWRTbWFy
dGNhcmRDaGFubmVsQ2xhc3MgKmtsYXNzKQogCiAgICAgb2JqZWN0X2NsYXNzLT5jb25zdHJ1Y3Rl
ZCA9IHJlZF9zbWFydGNhcmRfY2hhbm5lbF9jb25zdHJ1Y3RlZDsKIAorICAgIGNoYW5uZWxfY2xh
c3MtPnBhcnNlciA9IHNwaWNlX2dldF9jbGllbnRfY2hhbm5lbF9wYXJzZXIoU1BJQ0VfQ0hBTk5F
TF9TTUFSVENBUkQsIE5VTEwpOwogICAgIGNoYW5uZWxfY2xhc3MtPmhhbmRsZV9tZXNzYWdlID0g
c21hcnRjYXJkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9tZXNzYWdlLAogCiAgICAgY2hhbm5lbF9j
bGFzcy0+c2VuZF9pdGVtID0gc21hcnRjYXJkX2NoYW5uZWxfc2VuZF9pdGVtOwotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
