Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77399D0001
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 19:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FD66E87F;
	Tue,  8 Oct 2019 17:39:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A1146E883
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 451258771B
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:34 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8D05719C7F;
 Tue,  8 Oct 2019 17:39:31 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  8 Oct 2019 18:39:19 +0100
Message-Id: <20191008173924.12388-3-fziglio@redhat.com>
In-Reply-To: <20191008173924.12388-1-fziglio@redhat.com>
References: <20191008173924.12388-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Tue, 08 Oct 2019 17:39:34 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 2/7] smartcard-channel-client:
 Use log instead of printf
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

TW9yZSBjb2hlcmVudC4gQWxzbyBpdCdzIG5vdCBnb29kIGZvciBhIGxpYnJhcnkgdG8gb3V0cHV0
IG9uCnN0YW5kYXJkIG91dHB1dC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9zbWFydGNhcmQtY2hhbm5lbC1jbGllbnQuYyB8
IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3Nt
YXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jCmluZGV4IGQ0N2I0NDJlNC4uNDNkZjkwMmY1IDEwMDY0
NAotLS0gYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKKysrIGIvc2VydmVyL3Nt
YXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jCkBAIC0yNzYsNyArMjc2LDggQEAgYm9vbCBzbWFydGNh
cmRfY2hhbm5lbF9jbGllbnRfaGFuZGxlX21lc3NhZ2UoUmVkQ2hhbm5lbENsaWVudCAqcmNjLAog
ICAgICAgICBjYXNlIFZTQ19BUERVOgogICAgICAgICAgICAgYnJlYWs7IC8vIHBhc3NlZCBvbiB0
byBkZXZpY2UKICAgICAgICAgZGVmYXVsdDoKLSAgICAgICAgICAgIHByaW50ZigiRVJST1I6IHVu
ZXhwZWN0ZWQgbWVzc2FnZSBvbiBzbWFydGNhcmQgY2hhbm5lbFxuIik7CisgICAgICAgICAgICBy
ZWRfY2hhbm5lbF93YXJuaW5nKHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2hhbm5lbChyY2MpLAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiRVJST1I6IHVuZXhwZWN0ZWQgbWVzc2Fn
ZSBvbiBzbWFydGNhcmQgY2hhbm5lbCIpOwogICAgICAgICAgICAgcmV0dXJuIFRSVUU7CiAgICAg
fQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
