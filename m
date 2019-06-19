Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FC84BD15
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 17:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1626E43A;
	Wed, 19 Jun 2019 15:38:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F250C6E3FB
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2AB083001A66
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:38:12 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-26.brq.redhat.com
 [10.40.204.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 590CB5C205;
 Wed, 19 Jun 2019 15:38:11 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 19 Jun 2019 17:37:49 +0200
Message-Id: <20190619153750.29921-4-jjanku@redhat.com>
In-Reply-To: <20190619153750.29921-1-jjanku@redhat.com>
References: <20190619153750.29921-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 19 Jun 2019 15:38:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 4/5] webdav: remove client on
 empty message
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

TWVzc2FnZSB3aXRoIG5vIGRhdGEgZnJvbSBzcGljZS13ZWJkYXYgZGFlbW9uIG1lYW5zCnRoZSBj
bGllbnQgZGlzY29ubmVjdGVkLgoKSW4gdGhpcyBjYXNlLCB0aGUgY2xpZW50IGNvbm5lY3Rpb24g
dG8gcGhvZGF2CnNob3VsZCBiZSBjbG9zZWQgYXMgd2VsbC4KClRoaXMgY2FuIGhhcHBlbiBlLmcu
IHdoZW4gZmlsZSB0cmFuc2ZlciBnZXRzIGNhbmNlbGxlZC4KCkFsc28sIHdoaWxlIHdlJ3JlIGF0
IGl0LCByZW9yZGVyIHRoZSBjb2RlIGEgYml0LgoKU2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8Wv
IDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC13ZWJkYXYuYyB8IDE0ICsrKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2
LmMKaW5kZXggNGUwOGVmYS4uYThjZGNiYyAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtd2ViZGF2
LmMKKysrIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKQEAgLTMzNSwxNSArMzM1LDE1IEBAIHN0YXRp
YyB2b2lkIGRlbXV4X3RvX2NsaWVudChDbGllbnQgKmNsaWVudCkKIAogICAgIENIQU5ORUxfREVC
VUcoY2xpZW50LT5zZWxmLCAicHVzaGluZyAlIkdfR1NJWkVfRk9STUFUIiB0byBjbGllbnQgJXAi
LCBzaXplLCBjbGllbnQpOwogCi0gICAgaWYgKHNpemUgPiAwKSB7Ci0gICAgICAgIGdfb3V0cHV0
X3N0cmVhbV93cml0ZV9hbGxfYXN5bmMoZ19pb19zdHJlYW1fZ2V0X291dHB1dF9zdHJlYW0oY2xp
ZW50LT5waXBlKSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjLT5k
ZW11eC5idWYsIHNpemUsIEdfUFJJT1JJVFlfREVGQVVMVCwKLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjLT5jYW5jZWxsYWJsZSwgZGVtdXhfdG9fY2xpZW50X2NiLCBj
bGllbnQpOworICAgIGlmIChzaXplID09IDApIHsKKyAgICAgICAgLyogQ2xpZW50IGRpc2Nvbm5l
Y3RlZCAqLworICAgICAgICBkZW11eF90b19jbGllbnRfZmluaXNoKGNsaWVudCwgVFJVRSk7CiAg
ICAgICAgIHJldHVybjsKLSAgICB9IGVsc2UgewotICAgICAgICAvKiBOb3RoaW5nIHRvIHdyaXRl
ICovCi0gICAgICAgIGRlbXV4X3RvX2NsaWVudF9maW5pc2goY2xpZW50LCBGQUxTRSk7CiAgICAg
fQorCisgICAgZ19vdXRwdXRfc3RyZWFtX3dyaXRlX2FsbF9hc3luYyhnX2lvX3N0cmVhbV9nZXRf
b3V0cHV0X3N0cmVhbShjbGllbnQtPnBpcGUpLAorICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgYy0+ZGVtdXguYnVmLCBzaXplLCBHX1BSSU9SSVRZX0RFRkFVTFQsCisgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjLT5jYW5jZWxsYWJsZSwgZGVtdXhfdG9fY2xp
ZW50X2NiLCBjbGllbnQpOwogI2VuZGlmCiB9CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
