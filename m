Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FB88BF0B
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 18:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4826E112;
	Tue, 13 Aug 2019 16:56:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F046E112
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 652FF316919E
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:17 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B175B1048135;
 Tue, 13 Aug 2019 16:56:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 13 Aug 2019 17:56:05 +0100
Message-Id: <20190813165608.32249-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 13 Aug 2019 16:56:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common 1/4] codegen: Use has_end_attr
 instead of has_attr("end")
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

SnVzdCBzdHlsZSwgdGhleSBkbyB0aGUgc2FtZSB0aGluZywgYnV0IGlzIG1vcmUgY29oZXJlbnQK
d2l0aCB0aGUgcmVzdCBvZiB0aGUgY29kZS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHB5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weSB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL3B5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weSBiL3B5dGhvbl9tb2R1bGVzL2Rl
bWFyc2hhbC5weQppbmRleCBkMzE0N2I3Li42ZDhkYmRkIDEwMDY0NAotLS0gYS9weXRob25fbW9k
dWxlcy9kZW1hcnNoYWwucHkKKysrIGIvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5CkBAIC04
MDQsNyArODA0LDcgQEAgZGVmIHdyaXRlX2FycmF5X3BhcnNlcih3cml0ZXIsIG1lbWJlciwgbmVs
ZW1lbnRzLCBhcnJheSwgZGVzdCwgc2NvcGUpOgogICAgIGVsZW1lbnRfdHlwZSA9IGFycmF5LmVs
ZW1lbnRfdHlwZQogICAgIGlmIG1lbWJlcjoKICAgICAgICAgYXJyYXlfc3RhcnQgPSBkZXN0Lmdl
dF9yZWYobWVtYmVyLm5hbWUpCi0gICAgICAgIGF0X2VuZCA9IG1lbWJlci5oYXNfYXR0cigiZW5k
IikKKyAgICAgICAgYXRfZW5kID0gbWVtYmVyLmhhc19lbmRfYXR0cigpCiAgICAgZWxzZToKICAg
ICAgICAgYXJyYXlfc3RhcnQgPSAiZW5kIgogICAgICAgICBhdF9lbmQgPSBUcnVlCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
