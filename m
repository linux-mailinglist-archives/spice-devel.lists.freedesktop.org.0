Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B92C9B32F
	for <lists+spice-devel@lfdr.de>; Sat, 27 Apr 2019 12:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30358914A;
	Sat, 27 Apr 2019 10:46:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BC88914A
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 10:46:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7F8578535C
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2019 10:46:25 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-83.brq.redhat.com [10.40.204.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99AA76A959;
 Sat, 27 Apr 2019 10:46:23 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sat, 27 Apr 2019 11:46:16 +0100
Message-Id: <20190427104617.26860-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Sat, 27 Apr 2019 10:46:25 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] syntax-check: Remove exclude
 rules of now compliant code
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
Y2ZnLm1rIHwgNiAtLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2NmZy5tayBiL2NmZy5tawppbmRleCA5M2Q3MDQwYy4uM2I3MTFjOGIgMTAwNjQ0Ci0t
LSBhL2NmZy5taworKysgYi9jZmcubWsKQEAgLTEzMiw4ICsxMzIsNiBAQCBzY19jaGVja19hdXRo
b3JfbGlzdDoKICMgWFhYIHNvbWUgb2YgdGhlc2UgdG9vbHMvIHByb2dyYW1zIHByb2JhYmx5IG91
Z2h0IHRvIGJpbmR0ZXh0ZG9tYWluID8KIGV4Y2x1ZGVfZmlsZV9uYW1lX3JlZ2V4cC0tc2NfYmlu
ZHRleHRkb21haW4gPSBec2VydmVyL3Rlc3RzfGNvbW1vbi9yZWdpb24uY3x0b29scy8oYml0bWFw
X3RvX2MuY3xpY29uX3RvX2MuY3xyZWRzX3N0YXQuYykKIAotZXhjbHVkZV9maWxlX25hbWVfcmVn
ZXhwLS1zY19wcmVwcm9jZXNzb3JfaW5kZW50YXRpb24gPSBeKi8qLltjaF0KLQogZXhjbHVkZV9m
aWxlX25hbWVfcmVnZXhwLS1zY19wcm9oaWJpdF9lbXB0eV9saW5lc19hdF9FT0YgPSBkb2NzLy4q
Lm9kdHxzZXJ2ZXIvdGVzdHMvYmFzZV90ZXN0LnBwbXxkb2NzL21hbnVhbC9pbWFnZXMvLioucG5n
CiAKICMgWFhYIHRoaXMgc2hvdWxkIGJlIHJlbW92ZWQgJiBhbGwgY2FzZXMgZml4ZWQKQEAgLTE0
MiwxMCArMTQwLDYgQEAgZXhjbHVkZV9maWxlX25hbWVfcmVnZXhwLS1zY19wcm9oaWJpdF9oYXZl
X2NvbmZpZ19oID0gXiovLiooY3xjcHB8aCkKIAogZXhjbHVkZV9maWxlX25hbWVfcmVnZXhwLS1z
Y191bm1hcmtlZF9kaWFnbm9zdGljcyA9IF4uKlwuKGN8cHl8aCkKIAotZXhjbHVkZV9maWxlX25h
bWVfcmVnZXhwLS1zY19wcm9oaWJpdF9wYXRoX21heF9hbGxvY2F0aW9uID0gc2VydmVyL3Rlc3Rz
L3Rlc3QtZGlzcGxheS1iYXNlLmMKLQotZXhjbHVkZV9maWxlX25hbWVfcmVnZXhwLS1zY19jYXN0
X29mX2FyZ3VtZW50X3RvX2ZyZWUgPSBzZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYwotCiBleGNsdWRl
X2ZpbGVfbmFtZV9yZWdleHAtLXNjX2F2b2lkX2F0dHJpYnV0ZV91bnVzZWRfaW5faGVhZGVyID0g
c2VydmVyL3N0YXQuaAogCiAjIHRoaXMgY29udGFpbnMgYSBWQUxHUklORF9DSEVDS19SVUxFUyBv
Y2N1cnJlbmNlIHdyYXBwZWQgaW4gQCB3aGljaCBpcyBleHBlY3RlZAotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
