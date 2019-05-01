Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 410B510778
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 13:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A40892A5;
	Wed,  1 May 2019 11:20:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8727689258
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 11:20:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2563B30832C3
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 11:20:57 +0000 (UTC)
Received: from lub.com (dhcp-4-231.tlv.redhat.com [10.35.4.231])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8A8245D706
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 11:20:56 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  1 May 2019 14:20:54 +0300
Message-Id: <20190501112054.26512-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 01 May 2019 11:20:57 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server V2] gitlab-ci: build out-of-tree
 too
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

T25lIHRlc3QgaXMgZW5vdWdoIC0tIGRvIGl0IGluIG1ha2VjaGVjay4KCk11c3QgZ2l0IGNsZWFu
IGZpcnN0IGFueSBwcmV2aW91cyBidWlsZHMuCgpTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1
cmlsQHJlZGhhdC5jb20+Ci0tLQoKU2luY2UgVjE6CiAgIC0gQWRkIGEgY29tbWVudCBhYm91dCBv
dXQtb2YtdHJlZQogICAtIGNsZWFudXAgcHJldmlvdXMgYnVpbGRzIHVzaW5nIGdpdCBjbGVhbgoK
cGlwZWxpbmUgdGFzazoKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3VyaWwvc3BpY2Uv
LS9qb2JzLzI3MjY1OQoKQlRXLCBzaG91bGQgd2UgY2xlYW51cCBiZWZvcmUvYWZ0ZXIgZXZlcnkg
dGFzayA/CiAgICAgc2hvdWxkIHdlIHJtIC1yZiBidWlsZGRpciA/IHNwaWNlLXByb3RvY29sID8K
Ci0tLQogLmdpdGxhYi1jaS55bWwgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8u
Z2l0bGFiLWNpLnltbAppbmRleCA5Y2U5NWMwMGUuLjJjMWY0NmFkZiAxMDA2NDQKLS0tIGEvLmdp
dGxhYi1jaS55bWwKKysrIGIvLmdpdGxhYi1jaS55bWwKQEAgLTE0LDEyICsxNCwxOCBAQCBiZWZv
cmVfc2NyaXB0OgogCiBtYWtlY2hlY2s6CiAgIHNjcmlwdDoKKyAgIyBBbHNvIGNoZWNrIG91dC1v
Zi10cmVlIGJ1aWxkCisgIC0gZ2l0IGNsZWFuIC1mZHggIyBjbGVhbnVwIGFmdGVyIHByZXZpb3Vz
IGJ1aWxkcworICAtIGdpdCBzdWJtb2R1bGUgZm9yZWFjaCAtLXJlY3Vyc2l2ZSBnaXQgY2xlYW4g
LWZkeAorICAtIG1rZGlyIGJ1aWxkZGlyCisgIC0gY2QgYnVpbGRkaXIKICAgLSA+CiAgICAgQ0ZM
QUdTPSctTzIgLXBpcGUgLWcgLWZzYW5pdGl6ZT1hZGRyZXNzIC1mbm8tb21pdC1mcmFtZS1wb2lu
dGVyIC1XZnJhbWUtbGFyZ2VyLXRoYW49NDA5MjAnCiAgICAgTERGTEFHUz0nLWZzYW5pdGl6ZT1h
ZGRyZXNzIC1sYXNhbicKLSAgICAuL2F1dG9nZW4uc2ggLS1lbmFibGUtY2VsdDA1MQorICAgIC4u
L2F1dG9nZW4uc2ggLS1lbmFibGUtY2VsdDA1MQogICAtIG1ha2UKICAgLSBtYWtlIC1DIHNlcnZl
ciBjaGVjayB8fCAoY2F0IHNlcnZlci90ZXN0cy90ZXN0LXN1aXRlLmxvZyAmJiBleGl0IDEpCisg
IC0gY2QgLi4KIAogbWVzb24tbWFrZWNoZWNrOgogICBzY3JpcHQ6Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
