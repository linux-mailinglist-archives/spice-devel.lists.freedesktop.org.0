Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02052762C9
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 11:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886BA6ED01;
	Fri, 26 Jul 2019 09:52:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66DC26ECFE
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:52:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D6DDC308FBB1
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:52:17 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F2665F9DD;
 Fri, 26 Jul 2019 09:52:16 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 10:52:07 +0100
Message-Id: <20190726095213.15655-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 26 Jul 2019 09:52:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v3 0/6] Client-side video stream lag
 reduction
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

SnVzdCByZWJhc2VkIG9uIG1hc3Rlci4gT3JpZ2luYWwgY29tbWVudCBmcm9tIHRoZSBhdXRob3Ig
KEZyYW5jb2lzCkdvdWdldCk6CgpUaGUgc2VyaWVzIG1haW4gZ29hbCBpcyB0byByZWR1Y2UgdGhl
IHZpZGVvIHN0cmVhbSBsYWcuCgpDdXJyZW50bHkgdGhlIHNlcnZlciBzZXRzIHRoZSBjbGllbnQn
cyBtbXRpbWUgb2Zmc2V0IHdoaWNoIGlzIHRoZSBzb3VyY2UKb2YgdGhlIHZpZGVvIHN0cmVhbSBs
YWcuIEJ1dCBhcyB3YXMgZGlzY3Vzc2VkIGJlZm9yZSB0aGlzIG9mZnNldCBpcwplbnRhbmdsZWQg
d2l0aCB0aGUgYXZhaWxhYmxlIG5ldHdvcmsgYmFuZHdpZHRoIGVzdGltYXRpb25zIGFzIHdlbGwg
YXMKd2l0aCB0aGUgYWN0dWFsIHZpZGVvIGJpdHJhdGUgd2hpY2ggbWFrZXMgaXQgdHJpY2t5IChh
bHRob3VnaCBtb3N0bHkKZG9hYmxlKSB0byByZWR1Y2UgaXQuIEZ1cnRoZXJtb3JlIHRoZSBzZXJ2
ZXIgaXMgNSBmcmFtZSBpbnRlcnZhbHMgYW5kIGEKbmV0d29yayByb3VuZHRyaXAgYXdheSB3aGlj
aCBkZWxheXMgYW55IGFjdGlvbiBpdCBjYW4gdGFrZS4KCkluIGNvbnRyYXN0IHRoZSBjbGllbnQg
a25vd3MgaW1tZWRpYXRlbHkgd2hlbiBhIGZyYW1lIGlzIGxhdGUgYW5kIGhhcwphbGwgdGhlIGlu
Zm9ybWF0aW9uIGl0IG5lZWRzIHRvIGZpZ3VyZSBvdXQgaG93IG11Y2ggYnVmZmVyaW5nIGlzIG5l
ZWRlZC4KU28gdGhpcyBpcyB0aGUgYXBwcm9hY2ggdGFrZW4gaW4gdGhpcyBwYXRjaHNldC4gU2Vl
IHBhdGNoIDcgYW5kIHVwIGZvcgptb3JlIGRldGFpbHMuCgpGcmFuY29pcyBHb3VnZXQgKDYpOgog
IGNoYW5uZWwtZGlzcGxheTogTWluaW1pemUgdGhlIHN0cmVhbSBsYWcgYnkgaWdub3JpbmcgdGhl
IHNlcnZlciBvbmUKICBwbGF5YmFjazogVXNlIHRoZSBhdWRpbyB0aW1lc3RhbXBzIGZvciB0aGUg
Z2xvYmFsIG1tdGltZSBjb252ZXJzaW9uCiAgY2hhbm5lbC1kaXNwbGF5OiBObyBuZWVkIHRvIHJl
Y2hlZHVsZSBvbiBtbXRpbWUgb2Zmc2V0IGNoYW5nZXMKICBjaGFubmVsLWRpc3BsYXk6IFJlbW92
ZSBwbGF5YmFja19zeW5jX2Ryb3BzX3NlcV9sZW4KICBzcGljZS1zZXNzaW9uOiBLZWVwIHRyYWNr
IG9mIHRoZSBnbG9iYWwgc3RyZWFtcyBsYWcKICBtanBlZzogVGFrZSB0aGUgZGVjb2RpbmcgdGlt
ZSBpbnRvIGFjY291bnQgdG8gZGlzcGxheSBmcmFtZXMKCiBzcmMvY2hhbm5lbC1kaXNwbGF5LWdz
dC5jICAgfCAgNTAgKysrLS0tLQogc3JjL2NoYW5uZWwtZGlzcGxheS1tanBlZy5jIHwgIDM2ICsr
Ky0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaCAgfCAgMzMgKysrKy0KIHNyYy9jaGFubmVs
LWRpc3BsYXkuYyAgICAgICB8IDI3OCArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0KIHNyYy9jaGFubmVsLWRpc3BsYXkuaCAgICAgICB8ICAgMiArCiBzcmMvY2hhbm5lbC1wbGF5
YmFjay1wcml2LmggfCAgIDQgKy0KIHNyYy9jaGFubmVsLXBsYXliYWNrLmMgICAgICB8ICAzMiAr
KystLQogc3JjL3NwaWNlLXNlc3Npb24tcHJpdi5oICAgIHwgICA4ICstCiBzcmMvc3BpY2Utc2Vz
c2lvbi5jICAgICAgICAgfCAxMDMgKysrKysrKysrKy0tLQogOSBmaWxlcyBjaGFuZ2VkLCAzNzEg
aW5zZXJ0aW9ucygrKSwgMTc1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
