Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C9E8BF0C
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 18:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABB16E17B;
	Tue, 13 Aug 2019 16:56:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324606E17B
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D453433886D
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1056B1001959;
 Tue, 13 Aug 2019 16:56:17 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 13 Aug 2019 17:56:06 +0100
Message-Id: <20190813165608.32249-2-fziglio@redhat.com>
In-Reply-To: <20190813165608.32249-1-fziglio@redhat.com>
References: <20190813165608.32249-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 13 Aug 2019 16:56:19 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common 2/4] codegen: Add a check for C
 structure fields
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

VGhpcyBjaGVjayBtYWtlIHN1cmUgdGhhdCBvdXRwdXQgZmllbGRzIGZvciBtZW1iZXIgd2l0aCBA
ZW5kIChhcnJheXMpCmFyZSBkZWNsYXJlZCBhcyBlbXB0eSBhcnJheXMgaW4gb3V0cHV0IEMgc3Ry
dWN0dXJlLgpUaGlzIGF2b2lkcyBvdXRwdXQgZmllbGRzIHRvIGJlIGRlY2xhcmVkIGFzIHBvaW50
ZXIgb3Igb3RoZXIKaW52YWxpZCB0eXBlcy4KVGhlIGNoZWNrIGlzIGEgY29tcGlsZSB0aW1lIGNo
ZWNrIHNvIG5vIGNvZGUgaW4gb2JqZWN0IGZpbGUKaXMgZ2VuZXJhdGVkLgoKU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogcHl0aG9uX21vZHVs
ZXMvZGVtYXJzaGFsLnB5IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkgYi9weXRob25fbW9kdWxl
cy9kZW1hcnNoYWwucHkKaW5kZXggNmQ4ZGJkZC4uYWNkNGI2ZiAxMDA2NDQKLS0tIGEvcHl0aG9u
X21vZHVsZXMvZGVtYXJzaGFsLnB5CisrKyBiL3B5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weQpA
QCAtODA1LDYgKzgwNSw5IEBAIGRlZiB3cml0ZV9hcnJheV9wYXJzZXIod3JpdGVyLCBtZW1iZXIs
IG5lbGVtZW50cywgYXJyYXksIGRlc3QsIHNjb3BlKToKICAgICBpZiBtZW1iZXI6CiAgICAgICAg
IGFycmF5X3N0YXJ0ID0gZGVzdC5nZXRfcmVmKG1lbWJlci5uYW1lKQogICAgICAgICBhdF9lbmQg
PSBtZW1iZXIuaGFzX2VuZF9hdHRyKCkKKyAgICAgICAgIyB0aGUgZmllbGQgaXMgc3VwcG9zZWQg
dG8gYmUgYSBbMF0gYXJyYXksIGNoZWNrIGl0CisgICAgICAgIGlmIGF0X2VuZDoKKyAgICAgICAg
ICAgIHdyaXRlci5zdGF0ZW1lbnQoJ3ZlcmlmeShzaXplb2YoJXMpID09IDApJyAlIGFycmF5X3N0
YXJ0KQogICAgIGVsc2U6CiAgICAgICAgIGFycmF5X3N0YXJ0ID0gImVuZCIKICAgICAgICAgYXRf
ZW5kID0gVHJ1ZQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
