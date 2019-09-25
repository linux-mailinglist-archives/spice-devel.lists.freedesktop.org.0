Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67253BDBC3
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A98F6EB72;
	Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0694C6EB6E
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9B7EF18C8909
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:02 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 26AFA61559
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:02 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:53 +0200
Message-Id: <20190925100300.30019-2-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Wed, 25 Sep 2019 10:03:02 +0000 (UTC)
Subject: [Spice-devel] [spice v2 1/8] tests: migrate: remove spicec option
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
ClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+CkFja2Vk
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9taWdy
YXRlLnB5IHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL21pZ3JhdGUucHkgYi90ZXN0cy9taWdyYXRlLnB5
CmluZGV4IDlhM2NlZjQ3Li4wYzMwMmM5MiAxMDA3NTUKLS0tIGEvdGVzdHMvbWlncmF0ZS5weQor
KysgYi90ZXN0cy9taWdyYXRlLnB5CkBAIC0xNiw3ICsxNiw3IEBAIFdpbGwgbGVhdmUgYSBsb2cg
ZmlsZSwgbWlncmF0ZV90ZXN0LmxvZywgaW4gY3VycmVudCBkaXJlY3RvcnkuCiAiIiIKIAogIwot
IyBzdGFydCBvbmUgc3BpY2VjbGllbnQsIGhhdmUgdHdvIG1hY2hpbmVzIChhY3RpdmUgYW5kIHRh
cmdldCksCisjIHN0YXJ0IG9uZSBzcGljZSBjbGllbnQsIGhhdmUgdHdvIG1hY2hpbmVzIChhY3Rp
dmUgYW5kIHRhcmdldCksCiAjIGFuZCByZXBlYXQ6CiAjICBhY3RpdmUgd2FpdCB1bnRpbCBpdCdz
IGFjdGl2ZQogIyAgYWN0aXZlIGNsaWVudF9taWdyYXRlX2luZm8KQEAgLTU4LDcgKzU4LDcgQEAg
ZGVmIGdldF9hcmdzKCk6CiAgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1xZW11JywgZGVzdD0n
cWVtdScsIGRlZmF1bHQ9Jy4uLy4uL3FlbXUveDg2XzY0LXNvZnRtbXUvcWVtdS1zeXN0ZW0teDg2
XzY0JykKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWxvZ19maWxlbmFtZScsIGRlc3Q9J2xv
Z19maWxlbmFtZScsIGRlZmF1bHQ9J21pZ3JhdGUubG9nJykKICAgICBwYXJzZXIuYWRkX2FyZ3Vt
ZW50KCctLWltYWdlJywgZGVzdD0naW1hZ2UnLCBkZWZhdWx0PScnKQotICAgIHBhcnNlci5hZGRf
YXJndW1lbnQoJy0tY2xpZW50JywgZGVzdD0nY2xpZW50JywgZGVmYXVsdD0nc3BpY3knLCBjaG9p
Y2VzPVsnc3BpY2VjJywgJ3NwaWN5J10pCisgICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLS1jbGll
bnQnLCBkZXN0PSdjbGllbnQnLCBkZWZhdWx0PSdzcGljeScsIGNob2ljZXM9WydzcGljeSddKQog
ICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tdmRhZ2VudCcsIGNob2ljZXM9WydvbicsICdvZmYn
XSwgZGVmYXVsdD0nb24nKQogICAgIGFyZ3MgPSBwYXJzZXIucGFyc2VfYXJncyhzeXMuYXJndlsx
Ol0pCiAgICAgaWYgb3MucGF0aC5leGlzdHMoYXJncy5xZW11KToKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
