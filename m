Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5718916507
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 15:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603E66E7D6;
	Tue,  7 May 2019 13:52:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F3B6E7D6
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 13:52:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14BEBC130713
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 13:52:11 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D49491A4D9;
 Tue,  7 May 2019 13:52:09 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  7 May 2019 14:52:05 +0100
Message-Id: <20190507135205.17531-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 07 May 2019 13:52:11 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] build: Fix M4 macros quoting
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

VGhlIFBLR19DSEVDS19NT0RVTEVTIG1hY3JvIHdlcmUgbm90IGV4cGFuZGVkIGNvcnJlY3RseSBj
YXVzaW5nCnRoZSBnaW8tdW5peCBtb2R1bGUgbm90IHRvIGJlIGRldGVjdGVkIGFuZCB0aGVzZSB3
YXJuaW5nczoKCi4uL2NvbmZpZ3VyZTogbGluZSAxNTEzMzogR0lPX1VOSVhfQ0ZMQUdTOiBjb21t
YW5kIG5vdCBmb3VuZAouLi9jb25maWd1cmU6IGxpbmUgMTUxMzQ6IEM6IGNvbW1hbmQgbm90IGZv
dW5kCi4uL2NvbmZpZ3VyZTogbGluZSAxNTEzNTogR0lPX1VOSVhfTElCUzogY29tbWFuZCBub3Qg
Zm91bmQKLi4vY29uZmlndXJlOiBsaW5lIDE1MTM2OiBsaW5rZXI6IGNvbW1hbmQgbm90IGZvdW5k
CgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0t
CiBjb25maWd1cmUuYWMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKaW5k
ZXggOGJjYjIyY2UuLmUxMmQ3ZTg1IDEwMDY0NAotLS0gYS9jb25maWd1cmUuYWMKKysrIGIvY29u
ZmlndXJlLmFjCkBAIC0xOTQsNyArMTk0LDcgQEAgQVNfVkFSX0FQUEVORChbU1BJQ0VfUkVRVUlS
RVNdLCBbIiBnb2JqZWN0LTIuMCA+PSAkR0xJQjJfUkVRVUlSRUQiXSkKIAogI3VzZWQgb25seSBi
eSB0ZXN0cwogQVNfSUYoW3Rlc3QgIngkb3Nfd2luMzIiICE9ICJ4eWVzIl0sCi0gICAgICBQS0df
Q0hFQ0tfTU9EVUxFUyhbR0lPX1VOSVhdLCBbZ2lvLXVuaXgtMi4wID49ICRHTElCMl9SRVFVSVJF
RF0pKQorICAgICAgW1BLR19DSEVDS19NT0RVTEVTKFtHSU9fVU5JWF0sIFtnaW8tdW5peC0yLjAg
Pj0gJEdMSUIyX1JFUVVJUkVEXSldKQogCiBQSVhNQU5fUkVRVUlSRUQ9MC4xNy43CiBQS0dfQ0hF
Q0tfTU9EVUxFUyhQSVhNQU4sIHBpeG1hbi0xID49ICRQSVhNQU5fUkVRVUlSRUQpCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
