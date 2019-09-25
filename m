Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E76A6BDBC7
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626796EB88;
	Wed, 25 Sep 2019 10:03:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDC66EB78
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 36C7410DCCA3
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B39385D721
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:06 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:59 +0200
Message-Id: <20190925100300.30019-8-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Wed, 25 Sep 2019 10:03:07 +0000 (UTC)
Subject: [Spice-devel] [spice v2 7/8] tests: migrate: add option
 --wait-user-input
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhlIGl0ZXJhdGUoKSBtZXRo
b2QgYWxyZWFkeSBjb25zaWRlcnMgaXQuIFRoaXMgaXMgdXNlZnVsIGlmIG9uZSB3YW50cwp0byBh
dHRhY2ggZ2RiIG9uIHFlbXUgZm9yIGluc3RhbmNlLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRv
c28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL21pZ3JhdGUucHkgfCA0ICsrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0
cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5weQppbmRleCBkMGVkYTA5OS4uYjc2YmM4Nzcg
MTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3JhdGUucHkKKysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAt
NjAsNiArNjAsOCBAQCBkZWYgZ2V0X2FyZ3MoKToKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCct
LWNsaWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywgY2hvaWNlcz1bJ3NwaWN5
JywgJ3JlbW90ZS12aWV3ZXInXSkKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXZkYWdlbnQn
LCBkZXN0PSJ2ZGFnZW50IiwgYWN0aW9uPSdzdG9yZV90cnVlJywgZGVmYXVsdD1GYWxzZSwKICAg
ICAgICAgICAgICAgICAgICAgICAgIGhlbHA9IkFwcGVuZCBvcHRpb25zIGZvciBhZ2VudCdzIHZp
cnRzZXJpYWxwb3J0IikKKyAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXdhaXQtdXNlci1pbnB1
dCcsIGRlc3Q9IndhaXRfdXNlcl9pbnB1dCIsIGFjdGlvbj0nc3RvcmVfdHJ1ZScsIGRlZmF1bHQ9
RmFsc2UsCisgICAgICAgICAgICAgICAgICAgICAgICBoZWxwPSJXYWl0IHVzZXIncyBpbnB1dCB0
byBzdGFydCBtaWdyYXRpb24gdGVzdCIpCiAgICAgYXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5
cy5hcmd2WzE6XSkKICAgICBpZiBvcy5wYXRoLmV4aXN0cyhhcmdzLnFlbXUpOgogICAgICAgICBh
cmdzLnFlbXVfZXhlYyA9IGFyZ3MucWVtdQpAQCAtMjEzLDcgKzIxNSw3IEBAIGRlZiBtYWluKCk6
CiAgICAgICAgIGFyZ3Muc3BpY2VfcG9ydDJdLCB2ZGFnZW50PWFyZ3MudmRhZ2VudCkKICAgICBh
dGV4aXQucmVnaXN0ZXIoY2xlYW51cCwgbWlncmF0b3IpCiAgICAgd2hpbGUgVHJ1ZToKLSAgICAg
ICAgbWlncmF0b3IuaXRlcmF0ZSgpCisgICAgICAgIG1pZ3JhdG9yLml0ZXJhdGUoYXJncy53YWl0
X3VzZXJfaW5wdXQpCiAKIGlmIF9fbmFtZV9fID09ICdfX21haW5fXyc6CiAgICAgbWFpbigpCi0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
