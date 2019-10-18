Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BBEDC7F4
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 16:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EDA36EB6D;
	Fri, 18 Oct 2019 14:59:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C7566EB67
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 14:59:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D50C030842AF
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 14:59:13 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F9365D9CC;
 Fri, 18 Oct 2019 14:59:11 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 15:59:06 +0100
Message-Id: <20191018145907.11122-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 18 Oct 2019 14:59:13 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] codegen: Ignore path generating
 include guards
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

TWFrZSBzdXJlIHRoYXQgZ3VhcmQgZG8gbm8gY2hhbmdlIGJ1aWxkaW5nIG91dC1vZi10cmVlIG9y
CndpdGggTWVzb24uCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVk
aGF0LmNvbT4KLS0tCiBweXRob25fbW9kdWxlcy9tYXJzaGFsLnB5IHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9weXRo
b25fbW9kdWxlcy9tYXJzaGFsLnB5IGIvcHl0aG9uX21vZHVsZXMvbWFyc2hhbC5weQppbmRleCBh
MDliNjE0Li5lOTEzMGYzIDEwMDY0NAotLS0gYS9weXRob25fbW9kdWxlcy9tYXJzaGFsLnB5Cisr
KyBiL3B5dGhvbl9tb2R1bGVzL21hcnNoYWwucHkKQEAgLTIsMTMgKzIsMTQgQEAKIGZyb20gLiBp
bXBvcnQgcHR5cGVzCiBmcm9tIC4gaW1wb3J0IGNvZGVnZW4KIGltcG9ydCByZQoraW1wb3J0IG9z
CiAKIGRlZiB3cml0ZV9pbmNsdWRlcyh3cml0ZXIpOgogICAgIHdyaXRlci5oZWFkZXIud3JpdGVs
bigiI2luY2x1ZGUgPHNwaWNlL3Byb3RvY29sLmg+IikKICAgICB3cml0ZXIuaGVhZGVyLndyaXRl
bG4oJyNpbmNsdWRlICJjb21tb24vbWFyc2hhbGxlci5oIicpCiAgICAgd3JpdGVyLmhlYWRlci5u
ZXdsaW5lKCkKICAgICBpZiB3cml0ZXIuaGVhZGVyLmhhc19vcHRpb24oImRlc3RfZmlsZSIpOgot
ICAgICAgICBzcmMgPSB3cml0ZXIuaGVhZGVyLm9wdGlvbnNbImRlc3RfZmlsZSJdCisgICAgICAg
IHNyYyA9IG9zLnBhdGguYmFzZW5hbWUod3JpdGVyLmhlYWRlci5vcHRpb25zWyJkZXN0X2ZpbGUi
XSkKICAgICBlbHNlOgogICAgICAgICBzcmMgPSAiZ2VuZXJhdGVkX2hlYWRlcnMuaCIKICAgICBz
cmMgPSByZS5zdWIocicoP2kpW15hLXowLTldKycsICdfJywgc3JjKQotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
