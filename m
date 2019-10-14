Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0809BD5EAB
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 11:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E6C6E1E2;
	Mon, 14 Oct 2019 09:22:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF90F6E1B3
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 59C664627A
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:24 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 566B660A35;
 Mon, 14 Oct 2019 09:22:23 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:22:11 +0100
Message-Id: <20191014092217.24405-2-fziglio@redhat.com>
In-Reply-To: <20191014092217.24405-1-fziglio@redhat.com>
References: <20191014092217.24405-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 14 Oct 2019 09:22:24 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 1/7] smart-channel-client:
 Remove spicec client reference from comment
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
Cc: cfergeau@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

c3BpY2VjIGlzIGFuIG9ic29sZXRlIGNsaWVudC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9zbWFydGNhcmQtY2hhbm5lbC1j
bGllbnQuYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIGIv
c2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jCmluZGV4IDQzZGY5MDJmNS4uZGE0NzJh
MmE3IDEwMDY0NAotLS0gYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKKysrIGIv
c2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jCkBAIC0yNTIsOCArMjUyLDcgQEAgYm9v
bCBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfaGFuZGxlX21lc3NhZ2UoUmVkQ2hhbm5lbENsaWVu
dCAqcmNjLAogICAgIFNtYXJ0Q2FyZENoYW5uZWxDbGllbnQgKnNjYyA9IFNNQVJUQ0FSRF9DSEFO
TkVMX0NMSUVOVChyY2MpOwogCiAgICAgaWYgKHR5cGUgIT0gU1BJQ0VfTVNHQ19TTUFSVENBUkRf
REFUQSkgewotICAgICAgICAvKiBIYW5kbGVzIHNlYW1sZXNzIG1pZ3JhdGlvbiBwcm90b2NvbC4g
QWxzbyBoYW5kbGVzIGFjaydzLAotICAgICAgICAgKiBzcGljeSBzZW5kcyB0aGVtIHdoaWxlIHNw
aWNlYyBkb2VzIG5vdCAqLworICAgICAgICAvKiBIYW5kbGVzIHNlYW1sZXNzIG1pZ3JhdGlvbiBw
cm90b2NvbC4gQWxzbyBoYW5kbGVzIGFjaydzICovCiAgICAgICAgIHJldHVybiByZWRfY2hhbm5l
bF9jbGllbnRfaGFuZGxlX21lc3NhZ2UocmNjLCB0eXBlLCBzaXplLCBtZXNzYWdlKTsKICAgICB9
CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
