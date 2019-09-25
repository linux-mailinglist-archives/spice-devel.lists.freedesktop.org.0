Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54199BDBC5
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 12:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F77F6EB86;
	Wed, 25 Sep 2019 10:03:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D786EB78
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 27B7618C4292
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A625C5D721
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 10:03:03 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 12:02:55 +0200
Message-Id: <20190925100300.30019-4-victortoso@redhat.com>
In-Reply-To: <20190925100300.30019-1-victortoso@redhat.com>
References: <20190925100300.30019-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Wed, 25 Sep 2019 10:03:04 +0000 (UTC)
Subject: [Spice-devel] [spice v2 3/8] tests: migrate: add support to run
 with remote-viewer
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU2lnbmVkLW9mZi1ieTogVmlj
dG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL21pZ3JhdGUucHkgfCA1ICsrKystCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKaW5kZXggNWEwZjU5MzAuLjFl
MTVmZmE3IDEwMDc1NQotLS0gYS90ZXN0cy9taWdyYXRlLnB5CisrKyBiL3Rlc3RzL21pZ3JhdGUu
cHkKQEAgLTU4LDcgKzU4LDcgQEAgZGVmIGdldF9hcmdzKCk6CiAgICAgcGFyc2VyLmFkZF9hcmd1
bWVudCgnLS1xZW11JywgZGVzdD0ncWVtdScsIGRlZmF1bHQ9Jy4uLy4uL3FlbXUveDg2XzY0LXNv
ZnRtbXUvcWVtdS1zeXN0ZW0teDg2XzY0JykKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWxv
Z19maWxlbmFtZScsIGRlc3Q9J2xvZ19maWxlbmFtZScsIGRlZmF1bHQ9J21pZ3JhdGUubG9nJykK
ICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWltYWdlJywgZGVzdD0naW1hZ2UnLCBkZWZhdWx0
PScnKQotICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0tY2xpZW50JywgZGVzdD0nY2xpZW50Jywg
ZGVmYXVsdD0nc3BpY3knLCBjaG9pY2VzPVsnc3BpY3knXSkKKyAgICBwYXJzZXIuYWRkX2FyZ3Vt
ZW50KCctLWNsaWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywgY2hvaWNlcz1b
J3NwaWN5JywgJ3JlbW90ZS12aWV3ZXInXSkKICAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLXZk
YWdlbnQnLCBjaG9pY2VzPVsnb24nLCAnb2ZmJ10sIGRlZmF1bHQ9J29uJykKICAgICBhcmdzID0g
cGFyc2VyLnBhcnNlX2FyZ3Moc3lzLmFyZ3ZbMTpdKQogICAgIGlmIG9zLnBhdGguZXhpc3RzKGFy
Z3MucWVtdSk6CkBAIC05Nyw2ICs5Nyw5IEBAIGRlZiBzdGFydF9xZW11KHFlbXVfZXhlYywgaW1h
Z2UsIHNwaWNlX3BvcnQsIHFtcF9maWxlbmFtZSwgaW5jb21pbmdfcG9ydD1Ob25lLCBlCiAKIGRl
ZiBzdGFydF9jbGllbnQoY2xpZW50LCBzcGljZV9wb3J0KToKICAgICBjbGllbnRfY21kID0gInNw
aWN5IC0tdXJpIHNwaWNlOi8vbG9jYWxob3N0OiVzIiAlIChzcGljZV9wb3J0KQorICAgIGlmIGNs
aWVudCA9PSAicmVtb3RlLXZpZXdlciI6CisgICAgICAgIGNsaWVudF9jbWQgPSAicmVtb3RlLXZp
ZXdlciBzcGljZTovL2xvY2FsaG9zdDolcyIgJSAoc3BpY2VfcG9ydCkKKwogICAgIHJldHVybiBQ
b3BlbihjbGllbnRfY21kLnNwbGl0KCksIGV4ZWN1dGFibGU9Y2xpZW50KQogCiBkZWYgd2FpdF9h
Y3RpdmUocSwgYWN0aXZlKToKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
