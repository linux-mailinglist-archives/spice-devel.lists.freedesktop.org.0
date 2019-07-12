Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A324669AC
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 11:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 337FB6E31A;
	Fri, 12 Jul 2019 09:12:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051206E31A
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 993FC308FEC6
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:43 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2202C1001B34
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 09:12:42 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:12:35 +0200
Message-Id: <20190712091242.13214-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 12 Jul 2019 09:12:43 +0000 (UTC)
Subject: [Spice-devel] [linux/vd-agent v1 0/7] minor fixes
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpTdGFydGVkIHRoaXMg
c2VyaWVzIHNvbWUgdGltZSBhZ28gYW5kIHdhcyBsYXlpbmcgbG93IGhlcmUuIFJlYWxpemVkIHRo
YXQKdGhlcmUgYXJlIHNvbWUgYWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyIHdhcm5pbmdzIGFuZCBk
ZWNpZGVkIHRvIGFkZCB0bwp0aGUgZW5kIGFuZCBzZW5kIGl0LgoKQ2hlZXJzLAoKVmljdG9yIFRv
c28gKDcpOgogIGRldmljZS1pbmZvOiByZW1vdmUgZ19saXN0X2xlbmd0aCgpIG9uIGNvbXBhcmVf
YWRkcmVzc2VzKCkKICB2ZGFnZW50OiBmaXggbWVtb3J5IGxlYWsgb2YgZ19tZW1kdXAoKQogIGNv
dnNjYW46IGNoZWNrIHJldHVybiB2YWx1ZSBvZiBmcHJpbnRmCiAgeDExLXJhbmRyOiB1c2UgZ2xp
YidzIE1BWCBhbmQgTUlOCiAgY292ZXJpdHk6IGFsbG93IHBhc3MgYnkgdmFsdWUgd2l0aCBYRXZl
bnQKICB4MTEtcmFuZHI6IHNpbXBsZXN0IGZpeCBmb3IgYWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVy
CiAgdmRhZ2VudDogc2ltcGxlIGZpeCBmb3IgYWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyCgogc3Jj
L3ZkYWdlbnQvZGV2aWNlLWluZm8uYyB8IDEzICsrKysrKystLS0tLS0KIHNyYy92ZGFnZW50L3Zk
YWdlbnQuYyAgICAgfCAgOSArKysrKysrLS0KIHNyYy92ZGFnZW50L3gxMS1yYW5kci5jICAgfCAz
NiArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIHNyYy92ZGFnZW50L3gxMS5j
ICAgICAgICAgfCAgMSArCiBzcmMvdmRhZ2VudGQvdmRhZ2VudGQuYyAgIHwgIDYgKysrKystCiA1
IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
