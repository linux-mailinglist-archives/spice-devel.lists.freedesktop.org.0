Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E09DBDA80
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2DF6EB4A;
	Wed, 25 Sep 2019 09:07:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783DE6EB48
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 241694E92A
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:09 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A05DD10013A1
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:08 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:07:01 +0200
Message-Id: <20190925090701.19130-9-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Wed, 25 Sep 2019 09:07:09 +0000 (UTC)
Subject: [Spice-devel] [spice 8/8] tests: migrate: add counter for tests
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2lnbmVkLW9mZi1ieTogVmlj
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdyYXRlLnB5IHwg
NiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5weQppbmRleCBm
Y2Y1MWJkYi4uZTgzYTYxNTkgMTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3JhdGUucHkKKysrIGIvdGVz
dHMvbWlncmF0ZS5weQpAQCAtNjIsNiArNjIsOCBAQCBkZWYgZ2V0X2FyZ3MoKToKICAgICAgICAg
ICAgICAgICAgICAgICAgIGhlbHA9IkFwcGVuZCBvcHRpb25zIGZvciBhZ2VudCdzIHZpcnRzZXJp
YWxwb3J0IikKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXdhaXQtdG8tc3RhcnQnLCBkZXN0
PSJ3YWl0X3VzZXJfaW5wdXQiLCBhY3Rpb249J3N0b3JlX3RydWUnLCBkZWZhdWx0PUZhbHNlLAog
ICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0iV2FpdCB1c2VyJ3MgaW5wdXQgdG8gc3RhcnQg
bWlncmF0aW9uIHRlc3QiKQorICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tY291bnQnLCBkZXN0
PSdjb3VudGVyJywgdHlwZT1pbnQsIGRlZmF1bHQ9MTAwLAorICAgICAgICAgICAgICAgICAgICAg
ICAgaGVscD0iTnVtYmVyIG9mIG1pZ3JhdGlvbnMgdG8gcnVuIChzZXQgMCBmb3IgaW5maW5pdGUp
IikKICAgICBhcmdzID0gcGFyc2VyLnBhcnNlX2FyZ3Moc3lzLmFyZ3ZbMTpdKQogICAgIGlmIG9z
LnBhdGguZXhpc3RzKGFyZ3MucWVtdSk6CiAgICAgICAgIGFyZ3MucWVtdV9leGVjID0gYXJncy5x
ZW11CkBAIC0yMTUsOCArMjE3LDEwIEBAIGRlZiBtYWluKCk6CiAgICAgICAgIG1pZ3JhdGlvbl9w
b3J0PWFyZ3MubWlncmF0ZV9wb3J0LCBzcGljZV9wb3J0cz1bYXJncy5zcGljZV9wb3J0MSwKICAg
ICAgICAgYXJncy5zcGljZV9wb3J0Ml0sIHZkYWdlbnQ9YXJncy52ZGFnZW50KQogICAgIGF0ZXhp
dC5yZWdpc3RlcihjbGVhbnVwLCBtaWdyYXRvcikKLSAgICB3aGlsZSBUcnVlOgorICAgIGNvdW50
ZXIgPSAwCisgICAgd2hpbGUgYXJncy5jb3VudGVyID09IDAgb3IgY291bnRlciA8IGFyZ3MuY291
bnRlcjoKICAgICAgICAgbWlncmF0b3IuaXRlcmF0ZShhcmdzLndhaXRfdXNlcl9pbnB1dCkKKyAg
ICAgICAgY291bnRlciArPSAxCiAKIGlmIF9fbmFtZV9fID09ICdfX21haW5fXyc6CiAgICAgbWFp
bigpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
