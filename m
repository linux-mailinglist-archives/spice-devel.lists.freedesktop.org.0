Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC8C961E2
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 16:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B332B6E7F5;
	Tue, 20 Aug 2019 14:05:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800786E7F5
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 14:05:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2AA5D307D921
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 14:05:53 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-23.brq.redhat.com
 [10.40.204.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4AD345D9D5;
 Tue, 20 Aug 2019 14:05:52 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:05:47 +0200
Message-Id: <20190820140547.15251-2-jjanku@redhat.com>
In-Reply-To: <20190820140547.15251-1-jjanku@redhat.com>
References: <20190820140547.15251-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 20 Aug 2019 14:05:53 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/2] webdav: ref client when demuxing
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

VGhlIGNsaWVudCBjYW4gYmUgdW5yZWZlZCBiZWZvcmUgdGhlIGRlbXV4X3RvX2NsaWVudF9jYigp
IGlzIGNhbGxlZAp3aGljaCBjb3VsZCBsZWFkIHRvIHNlZ2ZhdWx0LiBTbyByZWYgaXQgZmlyc3Qg
YmVmb3JlIHN0YXJ0aW5nIHRoZQphc3luYyB3cml0ZS4KClNpZ25lZC1vZmYtYnk6IEpha3ViIEph
bmvFryA8amphbmt1QHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtd2ViZGF2LmMgfCAzICsr
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL3NyYy9jaGFubmVsLXdlYmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKaW5kZXgg
MDllZjlmNy4uZmIyNTA4NCAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMKKysrIGIv
c3JjL2NoYW5uZWwtd2ViZGF2LmMKQEAgLTMyOSw2ICszMjksNyBAQCBzdGF0aWMgdm9pZCBkZW11
eF90b19jbGllbnRfY2IoR09iamVjdCAqc291cmNlLCBHQXN5bmNSZXN1bHQgKnJlc3VsdCwgZ3Bv
aW50ZXIgdQogICAgIGZhaWwgPSAoc2l6ZSAhPSBjLT5kZW11eC5zaXplKTsKICAgICBnX3dhcm5f
aWZfZmFpbChzaXplID09IGMtPmRlbXV4LnNpemUpOwogICAgIGRlbXV4X3RvX2NsaWVudF9maW5p
c2goY2xpZW50LCBmYWlsKTsKKyAgICBjbGllbnRfdW5yZWYoY2xpZW50KTsKIH0KICNlbmRpZgog
CkBAIC0zNDgsNyArMzQ5LDcgQEAgc3RhdGljIHZvaWQgZGVtdXhfdG9fY2xpZW50KENsaWVudCAq
Y2xpZW50KQogCiAgICAgZ19vdXRwdXRfc3RyZWFtX3dyaXRlX2FsbF9hc3luYyhnX2lvX3N0cmVh
bV9nZXRfb3V0cHV0X3N0cmVhbShjbGllbnQtPnBpcGUpLAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYy0+ZGVtdXguYnVmLCBzaXplLCBHX1BSSU9SSVRZX0RFRkFVTFQsCi0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjLT5jYW5jZWxsYWJsZSwgZGVtdXhf
dG9fY2xpZW50X2NiLCBjbGllbnQpOworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYy0+Y2FuY2VsbGFibGUsIGRlbXV4X3RvX2NsaWVudF9jYiwgY2xpZW50X3JlZihjbGllbnQp
KTsKICNlbmRpZgogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
