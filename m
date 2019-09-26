Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B7FBF7CE
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 19:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323916EDB5;
	Thu, 26 Sep 2019 17:45:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59CD6ECEE
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 17:45:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6C1CF18C4269
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 17:45:39 +0000 (UTC)
Received: from wingsuit.redhat.com (ovpn-116-93.ams2.redhat.com [10.36.116.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0E8A5D6A7
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 17:45:38 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 26 Sep 2019 19:45:36 +0200
Message-Id: <20190926174536.19730-2-victortoso@redhat.com>
In-Reply-To: <20190926174536.19730-1-victortoso@redhat.com>
References: <20190926174536.19730-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Thu, 26 Sep 2019 17:45:39 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 2/2] channel-main: abort migration on
 bogus server message
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW4gY2FzZSBzZXJ2ZXIgc2Vu
ZHMgc3RhcnQgbWlncmF0aW9uIHdpdGhvdXQgY2FuY2VsaW5nIHByZXZpb3VzIG9uZSwKYWJvcnQg
bWlncmF0aW9uOyBBbHNvIGFib3J0cyBtaWdyYXRpb24gaWYgZmFpbGVkIHRvIGNyZWF0ZSB0aGUK
U3BpY2VTZXNzaW9uIGZvciB0YXJnZXQgaG9zdC4KCk5vdGUgdGhhdCB0aGUgY2hlY2sgZm9yIHRo
ZSBuZXcgU3BpY2VTZXNzaW9uIG9uIHRhcmdldCBob3N0IGlzIGRvbmUgaW4Kc3BpY2Vfc2Vzc2lv
bl9zZXRfbWlncmF0aW9uX3Nlc3Npb24oKSBhbHJlYWR5LgoKU2lnbmVkLW9mZi1ieTogVmljdG9y
IFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC1tYWluLmMgfCA2
ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1tYWluLmMgYi9zcmMvY2hhbm5lbC1tYWluLmMKaW5k
ZXggNDMwNWRjZC4uNDVmZGQ1OCAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtbWFpbi5jCisrKyBi
L3NyYy9jaGFubmVsLW1haW4uYwpAQCAtMjM1NiwxMCArMjM1NiwxMCBAQCBzdGF0aWMgdm9pZCBt
YWluX21pZ3JhdGVfY29ubmVjdChTcGljZUNoYW5uZWwgKmNoYW5uZWwsCiAgICAgQ0hBTk5FTF9E
RUJVRyhjaGFubmVsLCAibWlncmF0ZSBjb25uZWN0Iik7CiAgICAgc2Vzc2lvbiA9IHNwaWNlX2No
YW5uZWxfZ2V0X3Nlc3Npb24oY2hhbm5lbCk7CiAgICAgbWlnLnNlc3Npb24gPSBzcGljZV9zZXNz
aW9uX25ld19mcm9tX3Nlc3Npb24oc2Vzc2lvbik7Ci0gICAgaWYgKG1pZy5zZXNzaW9uID09IE5V
TEwpCi0gICAgICAgIGdvdG8gZW5kOwotICAgIGlmICghc3BpY2Vfc2Vzc2lvbl9zZXRfbWlncmF0
aW9uX3Nlc3Npb24oc2Vzc2lvbiwgbWlnLnNlc3Npb24pKQorICAgIGlmICghc3BpY2Vfc2Vzc2lv
bl9zZXRfbWlncmF0aW9uX3Nlc3Npb24oc2Vzc2lvbiwgbWlnLnNlc3Npb24pKSB7CisgICAgICAg
IHNwaWNlX3Nlc3Npb25fYWJvcnRfbWlncmF0aW9uKHNlc3Npb24pOwogICAgICAgICBnb3RvIGVu
ZDsKKyAgICB9CiAKICAgICBtYWluX3ByaXYtPm1pZ3JhdGVfZGF0YSA9ICZtaWc7CiAKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
