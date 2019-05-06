Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1917314859
	for <lists+spice-devel@lfdr.de>; Mon,  6 May 2019 12:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE55897EF;
	Mon,  6 May 2019 10:31:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757EE897EF
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:31:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ECB16C05B1CD
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:31:57 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 747CF611C0
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 10:31:57 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  6 May 2019 10:31:55 +0000
Message-Id: <20190506103156.14925-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 06 May 2019 10:31:57 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 1/2] channel-webdav: avoid possible
 crash
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSW4gY2FzZSBQaG9kYXZTZXJ2
ZXIgb3IgU291cFNlcnZlciBhcmUgTlVMTCwgd2Ugc2hvdWxkIHN0b3AgYW5kCnJldHVybi4KClNp
Z25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L2NoYW5uZWwtd2ViZGF2LmMgfCA3ICsrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC13ZWJkYXYuYyBi
L3NyYy9jaGFubmVsLXdlYmRhdi5jCmluZGV4IDhlNGRiMWEuLjE5NWFlMzQgMTAwNjQ0Ci0tLSBh
L3NyYy9jaGFubmVsLXdlYmRhdi5jCisrKyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCkBAIC0zNTUs
MTIgKzM1NSwxNyBAQCBzdGF0aWMgdm9pZCBzdGFydF9jbGllbnQoU3BpY2VXZWJkYXZDaGFubmVs
ICpzZWxmKQogICAgIEdJT1N0cmVhbSAqcGVlciA9IE5VTEw7CiAgICAgU3BpY2VTZXNzaW9uICpz
ZXNzaW9uOwogICAgIFNvdXBTZXJ2ZXIgKnNlcnZlcjsKKyAgICBQaG9kYXZTZXJ2ZXIqIHBob2Rh
dl9zZXJ2ZXI7CiAgICAgR1NvY2tldEFkZHJlc3MgKmFkZHI7CiAgICAgR0Vycm9yICplcnJvciA9
IE5VTEw7CiAgICAgYm9vbCBzdGFydGVkOwogCiAgICAgc2Vzc2lvbiA9IHNwaWNlX2NoYW5uZWxf
Z2V0X3Nlc3Npb24oU1BJQ0VfQ0hBTk5FTChzZWxmKSk7Ci0gICAgc2VydmVyID0gcGhvZGF2X3Nl
cnZlcl9nZXRfc291cF9zZXJ2ZXIoc3BpY2Vfc2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcihzZXNz
aW9uKSk7CisgICAgcGhvZGF2X3NlcnZlciA9IHNwaWNlX3Nlc3Npb25fZ2V0X3dlYmRhdl9zZXJ2
ZXIoc2Vzc2lvbik7CisgICAgZ19yZXR1cm5faWZfZmFpbChwaG9kYXZfc2VydmVyICE9IE5VTEwp
OworCisgICAgc2VydmVyID0gcGhvZGF2X3NlcnZlcl9nZXRfc291cF9zZXJ2ZXIocGhvZGF2X3Nl
cnZlcik7CisgICAgZ19yZXR1cm5faWZfZmFpbChzZXJ2ZXIgIT0gTlVMTCk7CiAKICAgICBDSEFO
TkVMX0RFQlVHKHNlbGYsICJzdGFydGluZyBjbGllbnQgJSIgR19HSU5UNjRfRk9STUFULCBjLT5k
ZW11eC5jbGllbnQpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
