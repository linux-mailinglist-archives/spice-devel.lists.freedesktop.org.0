Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FDEAA426
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B3736E0D1;
	Thu,  5 Sep 2019 13:17:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751386E0D1
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:17:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2041331752A9
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:17:13 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2DA3860127;
 Thu,  5 Sep 2019 13:17:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Sep 2019 14:17:07 +0100
Message-Id: <20190905131707.7394-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 05 Sep 2019 13:17:13 +0000 (UTC)
Subject: [Spice-devel] [RFC PATCH spice-gtk] spice-session: Fix SWAP_STR
 macro
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

UmVhbGx5IHN3YXAgIngiIGFuZCAieSIsIG5vdCB0ZW1wb3JhcnkgY29waWVzLgoKU2lnbmVkLW9m
Zi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3JjL3NwaWNl
LXNlc3Npb24uYyB8IDkgKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKSSBkaWRuJ3QgdGVzdC4gVGhlIG1haW4gcXVlc3Rpb24gaXMgd2h5
IHRoZSBjdXJyZW50IGNvZGUgaXMgd29ya2luZz8KT3IgaXMgbWlncmF0aW9uIGJyb2tlbj8gT3Ig
d2UgYXJlIG5vdCB0ZXN0aW5nIHRoZSB0eXBlIG9mIG1pZ3JhdGlvbgp0aGUgb3JpZ2luYWwgc3dh
cHBpbmcgY29kZSAobWFudWFsKSB3YXMgc3VwcG9zZWQgdG8gbWFrZSBpdCB3b3JrPwoKZGlmZiAt
LWdpdCBhL3NyYy9zcGljZS1zZXNzaW9uLmMgYi9zcmMvc3BpY2Utc2Vzc2lvbi5jCmluZGV4IDA0
YmExMjRhLi5kMGQ5ZTU0MSAxMDA2NDQKLS0tIGEvc3JjL3NwaWNlLXNlc3Npb24uYworKysgYi9z
cmMvc3BpY2Utc2Vzc2lvbi5jCkBAIC0xNzQyLDEyICsxNzQyLDkgQEAgdm9pZCBzcGljZV9zZXNz
aW9uX3N3aXRjaGluZ19kaXNjb25uZWN0KFNwaWNlU2Vzc2lvbiAqc2VsZikKIH0KIAogI2RlZmlu
ZSBTV0FQX1NUUih4LCB5KSBHX1NUTVRfU1RBUlQgeyBcCi0gICAgY29uc3QgZ2NoYXIgKnRtcDsg
ICAgICAgICAgICAgICAgIFwKLSAgICBjb25zdCBnY2hhciAqYSA9IHg7ICAgICAgICAgICAgICAg
XAotICAgIGNvbnN0IGdjaGFyICpiID0geTsgICAgICAgICAgICAgICBcCi0gICAgdG1wID0gYTsg
ICAgICAgICAgICAgICAgICAgICAgICAgIFwKLSAgICBhID0gYjsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXAotICAgIGIgPSB0bXA7ICAgICAgICAgICAgICAgICAgICAgICAgICBcCisgICAg
Z2NoYXIgKnRtcCA9IHg7ICAgICAgICAgICAgICAgICAgIFwKKyAgICB4ID0geTsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAorICAgIHkgPSB0bXA7ICAgICAgICAgICAgICAgICAgICAgICAg
ICBcCiB9IEdfU1RNVF9FTkQKIAogR19HTlVDX0lOVEVSTkFMCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
