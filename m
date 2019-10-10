Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EBAD25BF
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 11:02:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C7E6E038;
	Thu, 10 Oct 2019 09:02:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D0B6E038
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:02:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0BEA02D6A10
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 09:02:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0CDA12633A;
 Thu, 10 Oct 2019 09:02:37 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 10 Oct 2019 10:02:33 +0100
Message-Id: <20191010090234.10495-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 10 Oct 2019 09:02:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] smartcard: Fix statement
 termination
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3NtYXJ0Y2FyZC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC5jIGIvc2VydmVy
L3NtYXJ0Y2FyZC5jCmluZGV4IDM0MDExOGUxOC4uZDYyODQ3ZDYwIDEwMDY0NAotLS0gYS9zZXJ2
ZXIvc21hcnRjYXJkLmMKKysrIGIvc2VydmVyL3NtYXJ0Y2FyZC5jCkBAIC01NTksNyArNTU5LDcg
QEAgcmVkX3NtYXJ0Y2FyZF9jaGFubmVsX2NsYXNzX2luaXQoUmVkU21hcnRjYXJkQ2hhbm5lbENs
YXNzICprbGFzcykKICAgICBvYmplY3RfY2xhc3MtPmNvbnN0cnVjdGVkID0gcmVkX3NtYXJ0Y2Fy
ZF9jaGFubmVsX2NvbnN0cnVjdGVkOwogCiAgICAgY2hhbm5lbF9jbGFzcy0+cGFyc2VyID0gc3Bp
Y2VfZ2V0X2NsaWVudF9jaGFubmVsX3BhcnNlcihTUElDRV9DSEFOTkVMX1NNQVJUQ0FSRCwgTlVM
TCk7Ci0gICAgY2hhbm5lbF9jbGFzcy0+aGFuZGxlX21lc3NhZ2UgPSBzbWFydGNhcmRfY2hhbm5l
bF9jbGllbnRfaGFuZGxlX21lc3NhZ2UsCisgICAgY2hhbm5lbF9jbGFzcy0+aGFuZGxlX21lc3Nh
Z2UgPSBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfaGFuZGxlX21lc3NhZ2U7CiAKICAgICBjaGFu
bmVsX2NsYXNzLT5zZW5kX2l0ZW0gPSBzbWFydGNhcmRfY2hhbm5lbF9zZW5kX2l0ZW07CiAgICAg
Y2hhbm5lbF9jbGFzcy0+aGFuZGxlX21pZ3JhdGVfZmx1c2hfbWFyayA9IHNtYXJ0Y2FyZF9jaGFu
bmVsX2NsaWVudF9oYW5kbGVfbWlncmF0ZV9mbHVzaF9tYXJrOwotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
