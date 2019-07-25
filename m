Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8D774BF2
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C956E6E0;
	Thu, 25 Jul 2019 10:42:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F636E6E0
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:42:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2B3B130A7C67
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:42:53 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABCFF620CE
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 10:42:52 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 25 Jul 2019 12:42:51 +0200
Message-Id: <20190725104251.18425-1-victortoso@redhat.com>
In-Reply-To: <20190725101947.17341-1-victortoso@redhat.com>
References: <20190725101947.17341-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 25 Jul 2019 10:42:53 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v2] spice-option: warn on command line
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
IHNpbGVudGx5IGlnbm9yZSBpdCBhbmQgaXRzIGVycm9yLgoKU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvc3BpY2Utb3B0aW9uLmMgfCAy
NCArKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1vcHRpb24uYyBiL3Ny
Yy9zcGljZS1vcHRpb24uYwppbmRleCBjMmIwNTllLi4wOGQ0NDllIDEwMDY0NAotLS0gYS9zcmMv
c3BpY2Utb3B0aW9uLmMKKysrIGIvc3JjL3NwaWNlLW9wdGlvbi5jCkBAIC0yMTIsNiArMjEyLDE4
IEBAIEdPcHRpb25Hcm91cCogc3BpY2VfZ2V0X29wdGlvbl9ncm91cCh2b2lkKQogICAgIHJldHVy
biBncnA7CiB9CiAKK1NwaWNlVXNiRGV2aWNlTWFuYWdlciAqCitnZXRfdXNiX2RldmljZV9tYW5h
Z2VyX2Zvcl9vcHRpb24oU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBjb25zdCBjaGFyICpvcHRpb24p
Cit7CisgICAgR0Vycm9yICplcnIgPSBOVUxMOworICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAq
bSA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwgJmVycik7CisgICAgaWYg
KCFtKSB7CisgICAgICAgIGdfd2FybmluZygiT3B0aW9uICVzIGlzIHNldCBidXQgZmFpbGVkOiAl
cyIsIG9wdGlvbiwgZXJyLT5tZXNzYWdlKTsKKyAgICAgICAgZ19lcnJvcl9mcmVlKGVycik7Cisg
ICAgfQorICAgIHJldHVybiBtOworfQorCiAvKioKICAqIHNwaWNlX3NldF9zZXNzaW9uX29wdGlv
bjoKICAqIEBzZXNzaW9uOiBhICNTcGljZVNlc3Npb24gdG8gc2V0IG9wdGlvbiB1cG9uCkBAIC0y
NjEsMTYgKzI3MywyMCBAQCB2b2lkIHNwaWNlX3NldF9zZXNzaW9uX29wdGlvbihTcGljZVNlc3Np
b24gKnNlc3Npb24pCiAgICAgICAgICAgICBnX29iamVjdF9zZXQoc2Vzc2lvbiwgInNtYXJ0Y2Fy
ZC1kYiIsIHNtYXJ0Y2FyZF9kYiwgTlVMTCk7CiAgICAgfQogICAgIGlmICh1c2JyZWRpcl9hdXRv
X3JlZGlyZWN0X2ZpbHRlcikgewotICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPSBz
cGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0KHNlc3Npb24sIE5VTEwpOwotICAgICAgICBpZiAo
bSkKKyAgICAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptID0KKyAgICAgICAgICAgICAgICBn
ZXRfdXNiX2RldmljZV9tYW5hZ2VyX2Zvcl9vcHRpb24oc2Vzc2lvbiwgIi0tc3BpY2UtdXNicmVk
aXItYXV0by1yZWRpcmVjdC1maWx0ZXIiKTsKKyAgICAgICAgaWYgKG0pIHsKICAgICAgICAgICAg
IGdfb2JqZWN0X3NldChtLCAiYXV0by1jb25uZWN0LWZpbHRlciIsCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgdXNicmVkaXJfYXV0b19yZWRpcmVjdF9maWx0ZXIsIE5VTEwpOworICAgICAgICB9
CiAgICAgfQogICAgIGlmICh1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0KSB7Ci0gICAgICAg
IFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbSA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9nZXQo
c2Vzc2lvbiwgTlVMTCk7Ci0gICAgICAgIGlmIChtKQorICAgICAgICBTcGljZVVzYkRldmljZU1h
bmFnZXIgKm0gPQorICAgICAgICAgICAgICAgIGdldF91c2JfZGV2aWNlX21hbmFnZXJfZm9yX29w
dGlvbihzZXNzaW9uLCAiLS1zcGljZS11c2JyZWRpci1yZWRpcmVjdC1vbi1jb25uZWN0Iik7Cisg
ICAgICAgIGlmIChtKSB7CiAgICAgICAgICAgICBnX29iamVjdF9zZXQobSwgInJlZGlyZWN0LW9u
LWNvbm5lY3QiLAogICAgICAgICAgICAgICAgICAgICAgICAgIHVzYnJlZGlyX3JlZGlyZWN0X29u
X2Nvbm5lY3QsIE5VTEwpOworICAgICAgICB9CiAgICAgfQogICAgIGlmIChkaXNhYmxlX3VzYnJl
ZGlyKQogICAgICAgICBnX29iamVjdF9zZXQoc2Vzc2lvbiwgImVuYWJsZS11c2JyZWRpciIsIEZB
TFNFLCBOVUxMKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
