Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E544552925
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 12:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EB26E0C6;
	Tue, 25 Jun 2019 10:12:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695EE6E0C6
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 10:12:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 16068300182B
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 10:12:23 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 03D4360BE5;
 Tue, 25 Jun 2019 10:12:21 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 11:12:17 +0100
Message-Id: <20190625101217.13470-2-fziglio@redhat.com>
In-Reply-To: <20190625101217.13470-1-fziglio@redhat.com>
References: <20190625101217.13470-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 25 Jun 2019 10:12:23 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] channel-main: Fix typo in comment
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

ZXhwbGljaXRlbHkgLT4gZXhwbGljaXRseQoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5uZWwtbWFpbi5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
c3JjL2NoYW5uZWwtbWFpbi5jIGIvc3JjL2NoYW5uZWwtbWFpbi5jCmluZGV4IDEwYzMxYWM0Li5h
ZmRjMWNlZiAxMDA2NDQKLS0tIGEvc3JjL2NoYW5uZWwtbWFpbi5jCisrKyBiL3NyYy9jaGFubmVs
LW1haW4uYwpAQCAtMTc1NSw3ICsxNzU1LDcgQEAgc3RhdGljIHZvaWQgbWFpbl9oYW5kbGVfY2hh
bm5lbHNfbGlzdChTcGljZUNoYW5uZWwgKmNoYW5uZWwsIFNwaWNlTXNnSW4gKmluKQogICAgICAg
ICBjLT5zZXNzaW9uID0gZ19vYmplY3RfcmVmKHNlc3Npb24pOwogICAgICAgICBjLT50eXBlID0g
bXNnLT5jaGFubmVsc1tpXS50eXBlOwogICAgICAgICBjLT5pZCA9IG1zZy0+Y2hhbm5lbHNbaV0u
aWQ7Ci0gICAgICAgIC8qIG5vIG5lZWQgdG8gZXhwbGljaXRlbHkgc3dpdGNoIHRvIG1haW4gY29u
dGV4dCwgc2luY2UKKyAgICAgICAgLyogbm8gbmVlZCB0byBleHBsaWNpdGx5IHN3aXRjaCB0byBt
YWluIGNvbnRleHQsIHNpbmNlCiAgICAgICAgICAgIHN5bmNocm9ub3VzIGNhbGwgaXMgbm90IG5l
ZWRlZC4gKi8KICAgICAgICAgLyogbm8gbmVlZCB0byB0cmFjayBpZGxlLCBzZXNzaW9uIGlzIHJl
ZmVkICovCiAgICAgICAgIGdfaWRsZV9hZGQoKEdTb3VyY2VGdW5jKV9jaGFubmVsX25ldywgYyk7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
