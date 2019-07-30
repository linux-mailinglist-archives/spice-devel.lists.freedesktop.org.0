Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC617A794
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B3389237;
	Tue, 30 Jul 2019 12:04:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA7B6E4E3
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ABA8730A6986
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:39 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D185B5D6B7;
 Tue, 30 Jul 2019 12:04:38 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:26 +0100
Message-Id: <20190730120331.17967-38-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 30 Jul 2019 12:04:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 39/44] fixup! usb-redir: add
 implementation of emulated CD device
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

VXNlIEdMaWIgc3RyaW5nIGZvcm1hdHRpbmcgc3ludGF4IHRvIGZpeCBhIHdhcm5pbmcgb24gV2lu
ZG93cwotLS0KIHNyYy91c2ItZGV2aWNlLWNkLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZp
Y2UtY2QuYyBiL3NyYy91c2ItZGV2aWNlLWNkLmMKaW5kZXggN2VmNWJjYTQuLmJhOGUxYmZmIDEw
MDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1jZC5jCisrKyBiL3NyYy91c2ItZGV2aWNlLWNkLmMK
QEAgLTM3NSw3ICszNzUsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4gbG9hZF9sdW4oVXNiQ2QgKmQsIGlu
dCB1bml0LCBnYm9vbGVhbiBsb2FkKQogICAgICAgICAgICAgbWVkaWFfcGFyYW1zLnNpemUgJSBE
VkRfREVWX0JMT0NLX1NJWkUgPT0gMCkgewogICAgICAgICAgICAgbWVkaWFfcGFyYW1zLmJsb2Nr
X3NpemUgPSBEVkRfREVWX0JMT0NLX1NJWkU7CiAgICAgICAgIH0KLSAgICAgICAgU1BJQ0VfREVC
VUcoIiVzOiBsb2FkaW5nICVzLCBzaXplICUiIFBSSXU2NCAiLCBibG9jayAldSIsCisgICAgICAg
IFNQSUNFX0RFQlVHKCIlczogbG9hZGluZyAlcywgc2l6ZSAlIiBHX0dVSU5UNjRfRk9STUFUICIs
IGJsb2NrICV1IiwKICAgICAgICAgICAgICAgICAgICAgX19GVU5DVElPTl9fLCBkLT51bml0c1t1
bml0XS5maWxlbmFtZSwgbWVkaWFfcGFyYW1zLnNpemUsIG1lZGlhX3BhcmFtcy5ibG9ja19zaXpl
KTsKIAogICAgICAgICBiID0gIWNkX3VzYl9idWxrX21zZF9sb2FkKGQtPm1zYywgdW5pdCwgJm1l
ZGlhX3BhcmFtcyk7CkBAIC01OTMsNyArNTkzLDcgQEAgdm9pZCBjZF91c2JfYnVsa19tc2RfcmVh
ZF9jb21wbGV0ZSh2b2lkICp1c2VyX2RhdGEsCiAgICAgICAgICAgICAgICAgYnJlYWs7CiAgICAg
ICAgICAgICB9CiAKLSAgICAgICAgICAgIFNQSUNFX0RFQlVHKCIlczogcmVzcG9uZGluZyAlIiBQ
Ukl1NjQgIiB3aXRoIGxlbiAldSBvdXQgb2YgJXUsIHN0YXR1cyAlZCIsCisgICAgICAgICAgICBT
UElDRV9ERUJVRygiJXM6IHJlc3BvbmRpbmcgJSIgR19HVUlOVDY0X0ZPUk1BVCAiIHdpdGggbGVu
ICV1IG91dCBvZiAldSwgc3RhdHVzICVkIiwKICAgICAgICAgICAgICAgICAgICAgICAgIF9fRlVO
Q1RJT05fXywgZC0+cmVhZF9idWxrW25yZWFkXS5pZCwgbWF4X2xlbiwKICAgICAgICAgICAgICAg
ICAgICAgICAgIGxlbmd0aCwgZC0+cmVhZF9idWxrW25yZWFkXS5ob3V0LnN0YXR1cyk7CiAgICAg
ICAgICAgICB1c2JyZWRpcnBhcnNlcl9zZW5kX2J1bGtfcGFja2V0KGQtPnBhcnNlciwgZC0+cmVh
ZF9idWxrW25yZWFkXS5pZCwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
