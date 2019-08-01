Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DB27D8D0
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 11:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D76D6E43F;
	Thu,  1 Aug 2019 09:52:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1116E43F
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 09:52:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D52575AFD9
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 09:52:27 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CEB6B60852;
 Thu,  1 Aug 2019 09:52:26 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  1 Aug 2019 10:52:21 +0100
Message-Id: <20190801095222.17475-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 01 Aug 2019 09:52:27 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2] usb-device-manager: Fix number
 truncation by spice_usb_device_get_busnum
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

ImJ1cyIgZmllbGQgaXMgMTYgYml0IHNvIHJldHVybmluZyB1c2luZyBhIGd1aW50OCB0eXBlIHBv
dGVudGlhbGx5CnRydW5jYXRlIHRoZSB2YWx1ZS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJp
di5oIHwgMiArLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jICAgICAgfCAyICstCiAyIGZpbGVz
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9z
cmMvdXNiLWRldmljZS1tYW5hZ2VyLXByaXYuaCBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJp
di5oCmluZGV4IDY2YWNmNmQ1Li4yNTMwZDI5NCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Ut
bWFuYWdlci1wcml2LmgKKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmgKQEAgLTI5
LDcgKzI5LDcgQEAgR19CRUdJTl9ERUNMUwogdm9pZCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJf
ZGV2aWNlX2Vycm9yKAogICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbWFuYWdlciwgU3BpY2VV
c2JEZXZpY2UgKmRldmljZSwgR0Vycm9yICplcnIpOwogCi1ndWludDggc3BpY2VfdXNiX2Rldmlj
ZV9nZXRfYnVzbnVtKGNvbnN0IFNwaWNlVXNiRGV2aWNlICpkZXZpY2UpOworZ3VpbnQxNiBzcGlj
ZV91c2JfZGV2aWNlX2dldF9idXNudW0oY29uc3QgU3BpY2VVc2JEZXZpY2UgKmRldmljZSk7CiBn
dWludDggc3BpY2VfdXNiX2RldmljZV9nZXRfZGV2YWRkcihjb25zdCBTcGljZVVzYkRldmljZSAq
ZGV2aWNlKTsKIGd1aW50MTYgc3BpY2VfdXNiX2RldmljZV9nZXRfdmlkKGNvbnN0IFNwaWNlVXNi
RGV2aWNlICpkZXZpY2UpOwogZ3VpbnQxNiBzcGljZV91c2JfZGV2aWNlX2dldF9waWQoY29uc3Qg
U3BpY2VVc2JEZXZpY2UgKmRldmljZSk7CmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5h
Z2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggNTQ0ZTU2ODcuLmEwMzU2ODNk
IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKKysrIGIvc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci5jCkBAIC0xNDkwLDcgKzE0OTAsNyBAQCBzdGF0aWMgU3BpY2VVc2JEZXZpY2Ug
KnNwaWNlX3VzYl9kZXZpY2VfbmV3KFNwaWNlVXNiQmFja2VuZERldmljZSAqYmRldikKICAgICBy
ZXR1cm4gaW5mbzsKIH0KIAotZ3VpbnQ4IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X2J1c251bShjb25z
dCBTcGljZVVzYkRldmljZSAqaW5mbykKK2d1aW50MTYgc3BpY2VfdXNiX2RldmljZV9nZXRfYnVz
bnVtKGNvbnN0IFNwaWNlVXNiRGV2aWNlICppbmZvKQogewogICAgIGNvbnN0IFVzYkRldmljZUlu
Zm9ybWF0aW9uICpiX2luZm87CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
