Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BCE5542E
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E32A6E186;
	Tue, 25 Jun 2019 16:12:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4F16E1A4
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 81E978E224
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:26 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C05D75D70D;
 Tue, 25 Jun 2019 16:12:25 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:47 +0100
Message-Id: <20190625161147.25211-24-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 25 Jun 2019 16:12:26 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 23/23] ci: Add test for websockets
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

LS0tCiAuZ2l0bGFiLWNpLnltbCAgICAgICAgICAgICAgICAgICAgIHwgMjAgKysrKysrKysrKysr
KysrKysrKysKIHNlcnZlci90ZXN0cy9hdXRvYmFobi1jaGVjay1yZXBvcnQgfCAxOCArKysrKysr
KysrKysrKysrKysKIHNlcnZlci90ZXN0cy9mdXp6aW5nY2xpZW50Lmpzb24gICAgfCAxMSArKysr
KysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAx
MDA3NTUgc2VydmVyL3Rlc3RzL2F1dG9iYWhuLWNoZWNrLXJlcG9ydAogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNlcnZlci90ZXN0cy9mdXp6aW5nY2xpZW50Lmpzb24KCmRpZmYgLS1naXQgYS8uZ2l0bGFi
LWNpLnltbCBiLy5naXRsYWItY2kueW1sCmluZGV4IDZlNTIwNGFmNy4uYjMwM2Q0NjU2IDEwMDY0
NAotLS0gYS8uZ2l0bGFiLWNpLnltbAorKysgYi8uZ2l0bGFiLWNpLnltbApAQCAtMTM2LDMgKzEz
NiwyMyBAQCBtYWtlY2hlY2std2luZG93czoKICAgLSBtaW5ndzY0LWNvbmZpZ3VyZSAtLWRpc2Fi
bGUtY2VsdDA1MQogICAtIG1pbmd3NjQtbWFrZQogICAtIG1pbmd3NjQtbWFrZSBMT0dfQ09NUElM
RT13aW5lIC1DIHNlcnZlciBjaGVjayB8fCAoY2F0IHNlcnZlci90ZXN0cy90ZXN0LXN1aXRlLmxv
ZyAmJiBleGl0IDEpCisKK3dlYnNvY2tldC1hdXRvYmFobjoKKyAgYmVmb3JlX3NjcmlwdDoKKyAg
LSBhcHQtZ2V0IHVwZGF0ZSB8fCB0cnVlCisgIC0gYXB0LWdldCBpbnN0YWxsIC15IHB5dGhvbi1z
aXggcHl0aG9uLXB5cGFyc2luZyBsaWJvcHVzLWRldiBsaWJzc2wtZGV2IGxpYmdsaWIyLjAtZGV2
CisgIC0gZ2l0IGNsb25lICR7Q0lfUkVQT1NJVE9SWV9VUkwvc3BpY2UuZ2l0L3NwaWNlLXByb3Rv
Y29sLmdpdH0KKyAgLSAoY2Qgc3BpY2UtcHJvdG9jb2wgJiYgLi9hdXRvZ2VuLnNoIC0tcHJlZml4
PS91c3IgJiYgbWFrZSBpbnN0YWxsKQorICBpbWFnZTogY3Jvc3NiYXJpby9hdXRvYmFobi10ZXN0
c3VpdGUKKyAgc2NyaXB0OgorICAtIC4vYXV0b2dlbi5zaAorICAtIG1ha2UgLWo0CisgIC0gLi9z
ZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQgJiBwaWQ9JCEKKyAgLSB3c3Rlc3QgLW0gZnV6emlu
Z2NsaWVudCAtcyBzZXJ2ZXIvdGVzdHMvZnV6emluZ2NsaWVudC5qc29uCisgIC0ga2lsbCAkcGlk
CisgIC0gc2VydmVyL3Rlc3RzL2F1dG9iYWhuLWNoZWNrLXJlcG9ydCByZXBvcnRzL3NlcnZlcnMv
aW5kZXguanNvbgorICAtIHJtIC1yZiByZXBvcnRzL3NlcnZlcnMKKyAgLSAuL3NlcnZlci90ZXN0
cy90ZXN0LXdlYnNvY2tldCAtbiAmIHBpZD0kIQorICAtIHdzdGVzdCAtbSBmdXp6aW5nY2xpZW50
IC1zIHNlcnZlci90ZXN0cy9mdXp6aW5nY2xpZW50Lmpzb24KKyAgLSBraWxsICRwaWQKKyAgLSBz
ZXJ2ZXIvdGVzdHMvYXV0b2JhaG4tY2hlY2stcmVwb3J0IHJlcG9ydHMvc2VydmVycy9pbmRleC5q
c29uCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvYXV0b2JhaG4tY2hlY2stcmVwb3J0IGIvc2Vy
dmVyL3Rlc3RzL2F1dG9iYWhuLWNoZWNrLXJlcG9ydApuZXcgZmlsZSBtb2RlIDEwMDc1NQppbmRl
eCAwMDAwMDAwMDAuLjllMjkxMjhjNwotLS0gL2Rldi9udWxsCisrKyBiL3NlcnZlci90ZXN0cy9h
dXRvYmFobi1jaGVjay1yZXBvcnQKQEAgLTAsMCArMSwxOCBAQAorIyEvdXNyL2Jpbi9lbnYgcHl0
aG9uCitpbXBvcnQgc3lzCitpbXBvcnQganNvbgorCitudW1fdGVzdHMgPSAwCitmb3Igc2VydmVy
IGluIGpzb24ubG9hZChvcGVuKHN5cy5hcmd2WzFdKSkudmFsdWVzKCk6CisgIGZvciB0ZXN0LCBy
ZXN1bHQgaW4gc2VydmVyLml0ZW1zKCk6CisgICAgaXNfdGVzdCA9IDAKKyAgICBmb3IgaywgdiBp
biByZXN1bHQuaXRlbXMoKToKKyAgICAgIGlmIGtbOjhdLmxvd2VyKCkgIT0gJ2JlaGF2aW9yJzoK
KyAgICAgICAgY29udGludWUKKyAgICAgIGlzX3Rlc3QgPSAxCisgICAgICBpZiB2ICE9ICdPSycg
YW5kIHYgIT0gJ0lORk9STUFUSU9OQUwnOgorICAgICAgICByYWlzZSBFeGNlcHRpb24oJ0ludmFs
aWQgJXMgJXMgZm9yIHRlc3QgJXMnICUgKGssIHYsIHRlc3QpKQorICAgIG51bV90ZXN0cyArPSBp
c190ZXN0CitpZiBudW1fdGVzdHMgPCAxMDA6CisgIHJhaXNlIEV4Y2VwdGlvbignVG9vIGZldyB0
ZXN0cyBkb25lICVzJyAlIG51bV90ZXN0cykKK3ByaW50KCdPdXRwdXQgcmVwb3J0IGlzIGZpbmUn
KQpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL2Z1enppbmdjbGllbnQuanNvbiBiL3NlcnZlci90
ZXN0cy9mdXp6aW5nY2xpZW50Lmpzb24KbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwLi44YmMxYjcxOGQKLS0tIC9kZXYvbnVsbAorKysgYi9zZXJ2ZXIvdGVzdHMvZnV6emluZ2Ns
aWVudC5qc29uCkBAIC0wLDAgKzEsMTEgQEAKK3sKKyAgICJvdXRkaXIiOiAiLi9yZXBvcnRzL3Nl
cnZlcnMiLAorICAgInNlcnZlcnMiOiBbCisgICAgICB7CisgICAgICAgICAidXJsIjogIndzOi8v
MTI3LjAuMC4xOjc3NzciCisgICAgICB9CisgICBdLAorICAgImNhc2VzIjogWyIqIl0sCisgICAi
ZXhjbHVkZS1jYXNlcyI6IFsiNi4qIiwiMTIuKiIsIjEzLioiXSwKKyAgICJleGNsdWRlLWFnZW50
LWNhc2VzIjoge30KK30KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
