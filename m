Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6B074DA1
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 13:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C716E722;
	Thu, 25 Jul 2019 11:59:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C506E722
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 11:59:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E5B2300CA4D
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 11:59:00 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9BFE1546E0
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 11:58:59 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 25 Jul 2019 13:58:58 +0200
Message-Id: <20190725115858.21511-1-victortoso@redhat.com>
In-Reply-To: <20190725104251.18425-1-victortoso@redhat.com>
References: <20190725104251.18425-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 25 Jul 2019 11:59:00 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v3] spice-option: warn on command line
 failures of usbredir
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKQXMgc3BpY2VfdXNiX2Rldmlj
ZV9tYW5hZ2VyX2dldCgpIGNhbiBmYWlsIGZvciBkaWZmZXJlbnQgcmVhc29ucywgd2UKc2hvdWxk
IGlnbm9yZSBhbmQgY29udGludWUgYnV0IGF0IGxlYXN0IGdpdmUgYSB3YXJuaW5nIgoKU2lnbmVk
LW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvc3Bp
Y2Utb3B0aW9uLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGlj
ZS1vcHRpb24uYyBiL3NyYy9zcGljZS1vcHRpb24uYwppbmRleCBjMmIwNTllLi4wOGQ0NDllIDEw
MDY0NAotLS0gYS9zcmMvc3BpY2Utb3B0aW9uLmMKKysrIGIvc3JjL3NwaWNlLW9wdGlvbi5jCkBA
IC0yMTIsNiArMjEyLDE4IEBAIEdPcHRpb25Hcm91cCogc3BpY2VfZ2V0X29wdGlvbl9ncm91cCh2
b2lkKQogICAgIHJldHVybiBncnA7CiB9CiAKK1NwaWNlVXNiRGV2aWNlTWFuYWdlciAqCitnZXRf
dXNiX2RldmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBjb25z
dCBjaGFyICpvcHRpb24pCit7CisgICAgR0Vycm9yICplcnIgPSBOVUxMOworICAgIFNwaWNlVXNi
RGV2aWNlTWFuYWdlciAqbSA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwg
JmVycik7CisgICAgaWYgKCFtKSB7CisgICAgICAgIGdfd2FybmluZygiT3B0aW9uICVzIGlzIHNl
dCBidXQgZmFpbGVkOiAlcyIsIG9wdGlvbiwgZXJyLT5tZXNzYWdlKTsKKyAgICAgICAgZ19lcnJv
cl9mcmVlKGVycik7CisgICAgfQorICAgIHJldHVybiBtOworfQorCiAvKioKICAqIHNwaWNlX3Nl
dF9zZXNzaW9uX29wdGlvbjoKICAqIEBzZXNzaW9uOiBhICNTcGljZVNlc3Npb24gdG8gc2V0IG9w
dGlvbiB1cG9uCkBAIC0yNjEsMTYgKzI3MywyMCBAQCB2b2lkIHNwaWNlX3NldF9zZXNzaW9uX29w
dGlvbihTcGljZVNlc3Npb24gKnNlc3Npb24pCiAgICAgICAgICAgICBnX29iamVjdF9zZXQoc2Vz
c2lvbiwgInNtYXJ0Y2FyZC1kYiIsIHNtYXJ0Y2FyZF9kYiwgTlVMTCk7CiAgICAgfQogICAgIGlm
ICh1c2JyZWRpcl9hdXRvX3JlZGlyZWN0X2ZpbHRlcikgewotICAgICAgICBTcGljZVVzYkRldmlj
ZU1hbmFnZXIgKm0gPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0KHNlc3Npb24sIE5VTEwp
OwotICAgICAgICBpZiAobSkKKyAgICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0KKyAg
ICAgICAgICAgICAgICBnZXRfdXNiX2RldmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oc2Vzc2lvbiwg
Ii0tc3BpY2UtdXNicmVkaXItYXV0by1yZWRpcmVjdC1maWx0ZXIiKTsKKyAgICAgICAgaWYgKG0p
IHsKICAgICAgICAgICAgIGdfb2JqZWN0X3NldChtLCAiYXV0by1jb25uZWN0LWZpbHRlciIsCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgdXNicmVkaXJfYXV0b19yZWRpcmVjdF9maWx0ZXIsIE5V
TEwpOworICAgICAgICB9CiAgICAgfQogICAgIGlmICh1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25u
ZWN0KSB7Ci0gICAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbSA9IHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwgTlVMTCk7Ci0gICAgICAgIGlmIChtKQorICAgICAgICBT
cGljZVVzYkRldmljZU1hbmFnZXIgKm0gPQorICAgICAgICAgICAgICAgIGdldF91c2JfZGV2aWNl
X21hbmFnZXJfZm9yX29wdGlvbihzZXNzaW9uLCAiLS1zcGljZS11c2JyZWRpci1yZWRpcmVjdC1v
bi1jb25uZWN0Iik7CisgICAgICAgIGlmIChtKSB7CiAgICAgICAgICAgICBnX29iamVjdF9zZXQo
bSwgInJlZGlyZWN0LW9uLWNvbm5lY3QiLAogICAgICAgICAgICAgICAgICAgICAgICAgIHVzYnJl
ZGlyX3JlZGlyZWN0X29uX2Nvbm5lY3QsIE5VTEwpOworICAgICAgICB9CiAgICAgfQogICAgIGlm
IChkaXNhYmxlX3VzYnJlZGlyKQogICAgICAgICBnX29iamVjdF9zZXQoc2Vzc2lvbiwgImVuYWJs
ZS11c2JyZWRpciIsIEZBTFNFLCBOVUxMKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
