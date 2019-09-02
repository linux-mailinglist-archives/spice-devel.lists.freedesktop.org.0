Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98545A5B0D
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:04:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77EA8916F;
	Mon,  2 Sep 2019 16:04:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734768916F
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13C7686663
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:51 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 92FC35D9C3
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:50 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 18:04:43 +0200
Message-Id: <20190902160449.19589-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 02 Sep 2019 16:04:51 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 0/6] Initialize GStreamer on
 SpiceSession
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpDb25zaWRlcmluZyB0
aGF0IHdlIGRlcGVuZCBvbiBHU3RyZWFtZXIsIGxldCdzIG1vdmUgdGhlIGluaXRpYWxpemF0aW9u
CnRvIFNwaWNlU2Vzc2lvbiBzbyB3ZSBjYW4gZ3VhcmFudGVlIG9uZSBpbml0IGFuZCBvbmUgZGVp
bml0IG9uIHNwaWNlLWd0awpsZXZlbC4gV29ya3MgYXMgd2VsbCBpZiBnc3RfaW5pdCgpIHdhcyBj
YWxsZWQgb3V0c2lkZSBzcGljZS1ndGsuCgpUZXN0ZWQgd2l0aCBzcGljeSB3aGljaCBkb2VzIGNh
bGwgZ3N0X2luaXQoKSBhbmQgZ3N0X2RlaW5pdCgpIGFuZCB3aXRoCnJlbW90ZS12aWV3ZXIgdGhh
dCBkb24ndCBjYWxsIGFueSBnc3RyZWFtZXIgZnVuY3Rpb24gYXQgYWxsLgoKU29tZSBvdGhlciBp
bXByb3ZlbWVudHMsIGxlYWsgZml4IGFuZCBwb3NzaWJsZSB0ZXN0IGFzIHdlbGwuCgpDSTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3ZpY3RvcnRvc28vc3BpY2UtZ3RrL3BpcGVsaW5l
cy82MDYxMgoKQ2hlZXJzLAoKVmljdG9yIFRvc28gKDYpOgogIHNlc3Npb246IGluaXRpYWxpemUg
Z3N0cmVhbWVyIG9uY2UKICBkaXNwbGF5LWdzdDogcmVseSBvbiBTcGljZVNlc3Npb24gaW5pdCBv
ZiBHU3RyZWFtZXIKICBnc3RhdWRpbzogcmVseSBvbiBTcGljZVNlc3Npb24gaW5pdCBvZiBHU3Ry
ZWFtZXIKICBzZXNzaW9uOiBnc3RfZGVpbml0KCkgR1N0cmVhbWVyIGlmIHdlIGluaXRpYWxpemUg
aXQKICBzcGljZS1nc3RhdWRpbzogZml4IEdUYXNrIGxlYWsgb24gcXVlcnkgZm9yIHZvbHVtZQog
IFJGQzogdGVzdDogc2Vzc2lvbjogZ3N0cmVhbWVyIGluaXQgYnkgdXMgb3IgY2xpZW50Cgogc3Jj
L2NoYW5uZWwtZGlzcGxheS1nc3QuYyB8IDIzICsrKystLS0tLS0tLS0tLQogc3JjL3NwaWNlLWdz
dGF1ZGlvLmMgICAgICB8IDYxICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LQogc3JjL3NwaWNlLXNlc3Npb24uYyAgICAgICB8IDMwICsrKysrKysrKysrKysrKysrKysKIHRl
c3RzL3Nlc3Npb24uYyAgICAgICAgICAgfCA0OSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiA0IGZpbGVzIGNoYW5nZWQsIDExMyBpbnNlcnRpb25zKCspLCA1MCBkZWxldGlvbnMoLSkK
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
