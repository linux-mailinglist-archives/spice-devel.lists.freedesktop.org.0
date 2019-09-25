Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F74BDA7A
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534FB6EB42;
	Wed, 25 Sep 2019 09:07:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6056E821
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB39189AC9
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50CB010018FF
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:06:54 +0200
Message-Id: <20190925090701.19130-2-victortoso@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 25 Sep 2019 09:07:03 +0000 (UTC)
Subject: [Spice-devel] [spice 1/8] tests: migrate: remove spicec option
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKUmVtb3ZlZCwgc2VlOgoKIHwg
Y29tbWl0IDE4NzY5NzE0NDJlZjgwOGI1ZGNkYWE1ZGMxMmRmNjE3ZjIxNzljYjUKIHwgQXV0aG9y
OiBDaHJpc3RvcGhlIEZlcmdlYXUgPGNmZXJnZWF1QHJlZGhhdC5jb20+CiB8IERhdGU6ICAgRnJp
IE5vdiAyMSAxMTowMToxNyAyMDE0ICswMTAwCiB8CiB8ICAgICBjbGllbnQ6IFJlbW92ZSBjbGll
bnQgY29kZQogfAogfCAgICAgVGhlIGNsaWVudCBoYXMgYmVlbiBzdXBlcnNlZGVkIGJ5IHZpcnQt
dmlld2VyICgKIHwgICAgIGh0dHA6Ly92aXJ0LW1hbmFnZXIub3JnL2Rvd25sb2FkL3NvdXJjZXMv
dmlydC12aWV3ZXIvICkKIHwgICAgIGFuZCBpcyBubyBsb25nZXIgYmVpbmcgbWFpbnRhaW5lZC4K
ClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQog
dGVzdHMvbWlncmF0ZS5weSB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMv
bWlncmF0ZS5weQppbmRleCA5YTNjZWY0Ny4uMGMzMDJjOTIgMTAwNzU1Ci0tLSBhL3Rlc3RzL21p
Z3JhdGUucHkKKysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAtMTYsNyArMTYsNyBAQCBXaWxsIGxl
YXZlIGEgbG9nIGZpbGUsIG1pZ3JhdGVfdGVzdC5sb2csIGluIGN1cnJlbnQgZGlyZWN0b3J5Lgog
IiIiCiAKICMKLSMgc3RhcnQgb25lIHNwaWNlY2xpZW50LCBoYXZlIHR3byBtYWNoaW5lcyAoYWN0
aXZlIGFuZCB0YXJnZXQpLAorIyBzdGFydCBvbmUgc3BpY2UgY2xpZW50LCBoYXZlIHR3byBtYWNo
aW5lcyAoYWN0aXZlIGFuZCB0YXJnZXQpLAogIyBhbmQgcmVwZWF0OgogIyAgYWN0aXZlIHdhaXQg
dW50aWwgaXQncyBhY3RpdmUKICMgIGFjdGl2ZSBjbGllbnRfbWlncmF0ZV9pbmZvCkBAIC01OCw3
ICs1OCw3IEBAIGRlZiBnZXRfYXJncygpOgogICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tcWVt
dScsIGRlc3Q9J3FlbXUnLCBkZWZhdWx0PScuLi8uLi9xZW11L3g4Nl82NC1zb2Z0bW11L3FlbXUt
c3lzdGVtLXg4Nl82NCcpCiAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1sb2dfZmlsZW5hbWUn
LCBkZXN0PSdsb2dfZmlsZW5hbWUnLCBkZWZhdWx0PSdtaWdyYXRlLmxvZycpCiAgICAgcGFyc2Vy
LmFkZF9hcmd1bWVudCgnLS1pbWFnZScsIGRlc3Q9J2ltYWdlJywgZGVmYXVsdD0nJykKLSAgICBw
YXJzZXIuYWRkX2FyZ3VtZW50KCctLWNsaWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3Nw
aWN5JywgY2hvaWNlcz1bJ3NwaWNlYycsICdzcGljeSddKQorICAgIHBhcnNlci5hZGRfYXJndW1l
bnQoJy0tY2xpZW50JywgZGVzdD0nY2xpZW50JywgZGVmYXVsdD0nc3BpY3knLCBjaG9pY2VzPVsn
c3BpY3knXSkKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXZkYWdlbnQnLCBjaG9pY2VzPVsn
b24nLCAnb2ZmJ10sIGRlZmF1bHQ9J29uJykKICAgICBhcmdzID0gcGFyc2VyLnBhcnNlX2FyZ3Mo
c3lzLmFyZ3ZbMTpdKQogICAgIGlmIG9zLnBhdGguZXhpc3RzKGFyZ3MucWVtdSk6Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
