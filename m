Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D12957EED
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5926E83E;
	Thu, 27 Jun 2019 09:05:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087876E823
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:05:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A926230BBEA6
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:05:32 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E91956012D;
 Thu, 27 Jun 2019 09:05:31 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 10:05:27 +0100
Message-Id: <20190627090527.7748-2-fziglio@redhat.com>
In-Reply-To: <20190627090527.7748-1-fziglio@redhat.com>
References: <20190627090527.7748-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 27 Jun 2019 09:05:32 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] display-channel: Remove some
 useless function declaration
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

ImltYWdlX3N1cmZhY2VzX2dldCIgYW5kICJkcmF3YWJsZXNfaW5pdCIgYXJlIGFscmVhZHkgZGVm
aW5lZAppbiB0aGUgc2FtZSBmaWxlIGVhcmxpZXIuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMg
fCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2
ZXIvZGlzcGxheS1jaGFubmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKaW5kZXggZjk5
ZmQ4ZmFmLi40Njc3YzI2MTkgMTAwNjQ0Ci0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwor
KysgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKQEAgLTIyNjMsOCArMjI2Myw2IEBAIERpc3Bs
YXlDaGFubmVsKiBkaXNwbGF5X2NoYW5uZWxfbmV3KFJlZHNTdGF0ZSAqcmVkcywKICAgICByZXR1
cm4gZGlzcGxheTsKIH0KIAotc3RhdGljIFNwaWNlQ2FudmFzICppbWFnZV9zdXJmYWNlc19nZXQo
U3BpY2VJbWFnZVN1cmZhY2VzICpzdXJmYWNlcywgdWludDMyX3Qgc3VyZmFjZV9pZCk7Ci1zdGF0
aWMgdm9pZCBkcmF3YWJsZXNfaW5pdChEaXNwbGF5Q2hhbm5lbCAqZGlzcGxheSk7CiBzdGF0aWMg
dm9pZAogZGlzcGxheV9jaGFubmVsX2luaXQoRGlzcGxheUNoYW5uZWwgKnNlbGYpCiB7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
