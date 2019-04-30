Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86084F309
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 11:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E961288EFF;
	Tue, 30 Apr 2019 09:34:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC3B88EFF
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 09:34:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 100E2C057F32
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 09:34:02 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.166])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 324BB2A178;
 Tue, 30 Apr 2019 09:34:00 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 11:33:34 +0200
Message-Id: <20190430093339.14062-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 30 Apr 2019 09:34:02 +0000 (UTC)
Subject: [Spice-devel] [vdagent-linux v2 0/5] VDAgentConnection
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

SGksCgpmaW5hbGx5IHNlbmRpbmcgdjIgb2YgdGhlIHNlcmllcyB0aGF0IFZpY3RvciByZXZpZXdl
ZCBiYWNrIGluIERlY2VtYmVyLgoKTWFpbiBjaGFuZ2VzIHNpbmNlIHYxOgoqIHRyaWVkIHRvIGlt
cHJvdmUgdGhlIGRlc2lnbiAtLT4gdWRzY3MgYW5kIHZpcnRpb19wb3J0CiAgYXJlIG5vdyBpbXBs
ZW1lbnRlZCBhcyBzdWJjbGFzc2VzIG9mIFZEQWdlbnRDb25uZWN0aW9uCiogcmVpbXBsZW1lbnRl
ZCB3cml0ZSBpbiBWREFnZW50Q29ubmVjdGlvbiBzbyB0aGF0IGZsdXNoCiAgaXMgbm93IHN5bmNo
cm9ub3VzIChkb2Vzbid0IHVzZSB0aGUgImhhY2siIHdpdGggR01haW5Mb29wKQoKQ2hlZXJzLAoK
SmFrdWIgSmFua8WvICg1KToKICBidWlsZDogYWRkIEdJTyBkZXBlbmRlbmN5CiAgaW50cm9kdWNl
IFZEQWdlbnRDb25uZWN0aW9uCiAgdWRzY3M6IHVzZSBHT2JqZWN0IG1hY3JvCiAgdmlydGlvOiB1
c2UgR09iamVjdCBtYWNybwogIHVkc2NzLXNlcnZlcjogc3BsaXQgaW5pdGlhbGl6YXRpb24KCiBN
YWtlZmlsZS5hbSAgICAgICAgICAgICAgICB8ICAxNCArLQogY29uZmlndXJlLmFjICAgICAgICAg
ICAgICAgfCAgIDIgKy0KIHNyYy91ZHNjcy5jICAgICAgICAgICAgICAgIHwgNTc4ICsrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIHNyYy91ZHNjcy5oICAgICAgICAgICAgICAg
IHwgMTAwICsrLS0tLS0KIHNyYy92ZGFnZW50LWNvbm5lY3Rpb24uYyAgIHwgMzIyICsrKysrKysr
KysrKysrKysrKysrKwogc3JjL3ZkYWdlbnQtY29ubmVjdGlvbi5oICAgfCAxMDIgKysrKysrKwog
c3JjL3ZkYWdlbnQvY2xpcGJvYXJkLmMgICAgfCAgIDggKy0KIHNyYy92ZGFnZW50L2NsaXBib2Fy
ZC5oICAgIHwgICA0ICstCiBzcmMvdmRhZ2VudC9maWxlLXhmZXJzLmMgICB8ICAgNiArLQogc3Jj
L3ZkYWdlbnQvZmlsZS14ZmVycy5oICAgfCAgIDQgKy0KIHNyYy92ZGFnZW50L3ZkYWdlbnQuYyAg
ICAgIHwgIDMyICstCiBzcmMvdmRhZ2VudC94MTEtcHJpdi5oICAgICB8ICAgMiArLQogc3JjL3Zk
YWdlbnQveDExLmMgICAgICAgICAgfCAgIDIgKy0KIHNyYy92ZGFnZW50L3gxMS5oICAgICAgICAg
IHwgICAyICstCiBzcmMvdmRhZ2VudGQvdmRhZ2VudGQuYyAgICB8IDMwNiArKysrKysrKysrLS0t
LS0tLS0tLQogc3JjL3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMgfCA0MjAgKysrKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0tCiBzcmMvdmRhZ2VudGQvdmlydGlvLXBvcnQuaCB8ICA2MyArKy0tCiAxNyBm
aWxlcyBjaGFuZ2VkLCA5MzQgaW5zZXJ0aW9ucygrKSwgMTAzMyBkZWxldGlvbnMoLSkKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBzcmMvdmRhZ2VudC1jb25uZWN0aW9uLmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBzcmMvdmRhZ2VudC1jb25uZWN0aW9uLmgKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
