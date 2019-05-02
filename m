Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D011806
	for <lists+spice-devel@lfdr.de>; Thu,  2 May 2019 13:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC04893BC;
	Thu,  2 May 2019 11:13:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B929893BC
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 11:13:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 04D3B3680B
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 11:13:45 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C78F039C1;
 Thu,  2 May 2019 11:13:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  2 May 2019 12:13:37 +0100
Message-Id: <20190502111339.27405-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 02 May 2019 11:13:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent v3 0/2] Add possibility
 to log
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

Q2hhbmdlcyBzaW5jZSB2MjoKLSBjaGFuZ2Ugc29tZSBtZXNzYWdlOwotIGJ1bXAgcGx1Z2luIHZl
cnNpb247Ci0gcmV3cml0ZSBsb2dfc3RhdCB1c2luZyBuZXcgbG9nX3N0YXR2LgoKRnJlZGlhbm8g
WmlnbGlvICgyKToKICBNYWtlICJhZ2VudCIgb2JqZWN0IG5vdCBzdGF0aWMKICBBZGQgc3VwcG9y
dCBsb2cgbG9nZ2luZyBzdGF0aXN0aWNzIGZyb20gcGx1Z2lucwoKIGluY2x1ZGUvc3BpY2Utc3Ry
ZWFtaW5nLWFnZW50L3BsdWdpbi5ocHAgfCAgNyArKysrKy0KIHNyYy9jb25jcmV0ZS1hZ2VudC5j
cHAgICAgICAgICAgICAgICAgICAgfCAyOCArKysrKysrKysrKysrKystLS0tLS0tLS0KIHNyYy9j
b25jcmV0ZS1hZ2VudC5ocHAgICAgICAgICAgICAgICAgICAgfCAxMCArKysrKystLS0KIHNyYy9m
cmFtZS1sb2cuY3BwICAgICAgICAgICAgICAgICAgICAgICAgfCAxMSArKysrKysrLS0tCiBzcmMv
ZnJhbWUtbG9nLmhwcCAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKysKIHNyYy9zcGljZS1z
dHJlYW1pbmctYWdlbnQuY3BwICAgICAgICAgICAgfCAxNiArKysrKysrKy0tLS0tLQogNiBmaWxl
cyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
