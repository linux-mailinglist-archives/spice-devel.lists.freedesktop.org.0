Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F965BDA7F
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCED6EB49;
	Wed, 25 Sep 2019 09:07:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C646EB46
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5C0B6C05168C
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:08 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DA5A910018FF
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:07 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:07:00 +0200
Message-Id: <20190925090701.19130-8-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 25 Sep 2019 09:07:08 +0000 (UTC)
Subject: [Spice-devel] [spice 7/8] tests: migrate: add option to wait user
 input
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhlIGl0ZXJhdGUoKSBtZXRo
b2QgYWxyZWFkeSBjb25zaWRlcnMgaXQuIFRoaXMgaXMgdXNlZnVsIGlmIG9uZSB3YW50cwp0byBh
dHRhY2ggZ2RiIG9uIHFlbXUgZm9yIGluc3RhbmNlLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRv
c28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdyYXRlLnB5IHwgNCArKyst
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKaW5kZXggNGFjNjI4OWIu
LmZjZjUxYmRiIDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5CisrKyBiL3Rlc3RzL21pZ3Jh
dGUucHkKQEAgLTYwLDYgKzYwLDggQEAgZGVmIGdldF9hcmdzKCk6CiAgICAgcGFyc2VyLmFkZF9h
cmd1bWVudCgnLS1jbGllbnQnLCBkZXN0PSdjbGllbnQnLCBkZWZhdWx0PSdzcGljeScsIGNob2lj
ZXM9WydzcGljeScsICdyZW1vdGUtdmlld2VyJ10pCiAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgn
LS12ZGFnZW50JywgZGVzdD0idmRhZ2VudCIsIGFjdGlvbj0nc3RvcmVfdHJ1ZScsIGRlZmF1bHQ9
RmFsc2UsCiAgICAgICAgICAgICAgICAgICAgICAgICBoZWxwPSJBcHBlbmQgb3B0aW9ucyBmb3Ig
YWdlbnQncyB2aXJ0c2VyaWFscG9ydCIpCisgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS13YWl0
LXRvLXN0YXJ0JywgZGVzdD0id2FpdF91c2VyX2lucHV0IiwgYWN0aW9uPSdzdG9yZV90cnVlJywg
ZGVmYXVsdD1GYWxzZSwKKyAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IldhaXQgdXNlcidz
IGlucHV0IHRvIHN0YXJ0IG1pZ3JhdGlvbiB0ZXN0IikKICAgICBhcmdzID0gcGFyc2VyLnBhcnNl
X2FyZ3Moc3lzLmFyZ3ZbMTpdKQogICAgIGlmIG9zLnBhdGguZXhpc3RzKGFyZ3MucWVtdSk6CiAg
ICAgICAgIGFyZ3MucWVtdV9leGVjID0gYXJncy5xZW11CkBAIC0yMTQsNyArMjE2LDcgQEAgZGVm
IG1haW4oKToKICAgICAgICAgYXJncy5zcGljZV9wb3J0Ml0sIHZkYWdlbnQ9YXJncy52ZGFnZW50
KQogICAgIGF0ZXhpdC5yZWdpc3RlcihjbGVhbnVwLCBtaWdyYXRvcikKICAgICB3aGlsZSBUcnVl
OgotICAgICAgICBtaWdyYXRvci5pdGVyYXRlKCkKKyAgICAgICAgbWlncmF0b3IuaXRlcmF0ZShh
cmdzLndhaXRfdXNlcl9pbnB1dCkKIAogaWYgX19uYW1lX18gPT0gJ19fbWFpbl9fJzoKICAgICBt
YWluKCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
