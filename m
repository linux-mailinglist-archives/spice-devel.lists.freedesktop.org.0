Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC76C9F6
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87716E315;
	Thu, 18 Jul 2019 07:32:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997026E315
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:32:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 37F1C308338F
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:32:31 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6623E608C2;
 Thu, 18 Jul 2019 07:32:30 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 18 Jul 2019 08:32:22 +0100
Message-Id: <20190718073225.13190-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 18 Jul 2019 07:32:31 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 0/3] Update Valgrind suppression
 files
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

VGhpcyBzZXJpZXMgc3BsaXQgYW5kIHVwZGF0ZSBWYWxncmluZCBzdXBwcmVzc2lvbiBmaWxlcyBp
bgpvcmRlciBmb3IgbWFrZSBHaXRsYWIgQ0kgcGFzcy4KClJlc3VsdHMgYXQKaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UvLS9qb2JzLzQzMDAwNi4KTm90ZSB0aGF0
IHRvIHBhc3MgVmFsZ3JpbmQgY2hlY2tzIHNvbWUgb3RoZXIgcGF0Y2hlcyBhcmUgbmVlZGVkCmJ1
dCB0aGVzZSBzZXJpZXMgaXMgY29tcGxldGUgZm9yIHRoZSBzdXBwcmVzc2lvbiBwYXJ0LgoKRnJl
ZGlhbm8gWmlnbGlvICgzKToKICBjaTogU2VwYXJhdGUgU1BJQ0Ugc3BlY2lmaWMgVmFsZ3JpbmQg
c3VwcHJlc3Npb24KICBjaTogVXBkYXRlIGdsaWIuc3VwcCBmaWxlCiAgY2k6IEFkZCBzb21lIFZh
bGdyaW5kIHN1cHByZXNzaW9ucyBmb3IgRmVkb3JhIDMwCgogc2VydmVyL3Rlc3RzL01ha2VmaWxl
LmFtICAgICAgICAgfCAgIDIgKy0KIHNlcnZlci90ZXN0cy92YWxncmluZC9nbGliLnN1cHAgIHwg
MjA3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KIHNlcnZlci90ZXN0cy92YWxncmlu
ZC9zcGljZS5zdXBwIHwgIDYzICsrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjU3IGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNlcnZlci90ZXN0
cy92YWxncmluZC9zcGljZS5zdXBwCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
