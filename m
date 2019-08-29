Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A780A2061
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9DF6E0CF;
	Thu, 29 Aug 2019 16:10:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139F86E0CF
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:10:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 80A677F742
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:10:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 324C160605;
 Thu, 29 Aug 2019 16:10:52 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 17:10:49 +0100
Message-Id: <20190829161049.13811-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Thu, 29 Aug 2019 16:10:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] meson: Fix compatibility with
 Meson 0.48
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

VGhlICJpbnN0YWxsIiBhcmd1bWVudCBmb3IgY29uZmlndXJlX2ZpbGUgaXMgYXZhaWxhYmxlIHNp
bmNlIDAuNTAuCkhvd2V2ZXIgdGhpcyBpcyBhbHJlYWR5ICJmYWxzZSIgaWYgImluc3RhbGxfZGly
IiBpcyBub3QgcHJvdmlkZWQuCgpUaGlzIHdpbGwgZHJvcCB0aGUgZm9sbG93aW5nIHdhcm5pbmc6
CiJQcm9qZWN0IHRhcmdldHRpbmcgJz49IDAuNDgnIGJ1dCB0cmllZCB0byB1c2UgZmVhdHVyZSBp
bnRyb2R1Y2VkCmluICcwLjUwLjAnOiBpbnN0YWxsIGFyZyBpbiBjb25maWd1cmVfZmlsZSIKClNp
Z25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIG1l
c29uLmJ1aWxkIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggZTU4YzQzNmMwLi4zNWViZjM4MzMg
MTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC0yMTEsNyArMjEx
LDYgQEAgaWYgaG9zdF9tYWNoaW5lLnN5c3RlbSgpID09ICd3aW5kb3dzJwogZW5kaWYKIAogY29u
ZmlndXJlX2ZpbGUob3V0cHV0IDogJ2NvbmZpZy5oJywKLSAgICAgICAgICAgICAgIGluc3RhbGwg
OiBmYWxzZSwKICAgICAgICAgICAgICAgIGNvbmZpZ3VyYXRpb24gOiBzcGljZV9zZXJ2ZXJfY29u
ZmlnX2RhdGEpCiAKICMKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
