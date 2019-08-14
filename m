Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703CF8D959
	for <lists+spice-devel@lfdr.de>; Wed, 14 Aug 2019 19:08:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8EA6E788;
	Wed, 14 Aug 2019 17:08:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DD86E788
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 17:08:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A02262D6E4F
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 17:08:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1C360100194E;
 Wed, 14 Aug 2019 17:08:36 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 14 Aug 2019 18:08:25 +0100
Message-Id: <20190814170825.11903-2-fziglio@redhat.com>
In-Reply-To: <20190814170825.11903-1-fziglio@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 14 Aug 2019 17:08:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] codegen: Add 'chunk' to the
 output attributes
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

T3V0cHV0IGF0dHJpYnV0ZXMgYXJlIHRoZSBhdHRyaWJ1dGVzIHRoYXQgc3BlY2lmeSBob3cgdG8g
c3RvcmUKdGhhdCBmaWVsZCBpbiB0aGUgQyBzdHJ1Y3R1cmUuClRoZXJlIGNhbiBiZSBvbmx5IG9u
ZSBvdXRwdXQgdHlwZSBzcGVjaWZpZWQuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBweXRob25fbW9kdWxlcy9wdHlwZXMucHkgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkgYi9weXRob25fbW9kdWxlcy9wdHlwZXMucHkK
aW5kZXggZWJlMDAxYy4uNzk2YTQzNiAxMDA2NDQKLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5cGVz
LnB5CisrKyBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQpAQCAtOTgsNyArOTgsNyBAQCBkZWYg
Zml4X2F0dHJpYnV0ZXMoYXR0cmlidXRlX2xpc3QpOgogICAgICAgICBhdHRyc1tuYW1lXSA9IGxz
dAogCiAgICAgIyB0aGVzZSBhdHRyaWJ1dGVzIHNwZWNpZnkgb3V0cHV0IGZvcm1hdCwgb25seSBv
bmUgY2FuIGJlIHNldAotICAgIG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHInLCAn
YXNfcHRyJywgJ3B0cl9hcnJheScsICd6ZXJvJ10pCisgICAgb3V0cHV0X2F0dHJzID0gc2V0KFsn
ZW5kJywgJ3RvX3B0cicsICdhc19wdHInLCAncHRyX2FycmF5JywgJ3plcm8nLCAnY2h1bmsnXSkK
ICAgICBpZiBsZW4ob3V0cHV0X2F0dHJzLmludGVyc2VjdGlvbihhdHRycy5rZXlzKCkpKSA+IDE6
CiAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiTXVsdGlwbGUgb3V0cHV0IHR5cGUgYXR0cmlidXRl
cyBzcGVjaWZpZWQgJXMiICUgb3V0cHV0X2F0dHJzKQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
