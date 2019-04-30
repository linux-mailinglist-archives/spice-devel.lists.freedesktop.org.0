Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCB8F8D2
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D2F8923D;
	Tue, 30 Apr 2019 12:25:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90C389232
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:25:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 849AF308623A
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:25:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F3CB2B3AB;
 Tue, 30 Apr 2019 12:25:00 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:18 +0100
Message-Id: <20190430122419.16241-19-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 30 Apr 2019 12:25:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 18/19] Add some notes for the
 Windows port
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
UkVBRE1FLldpbmRvd3MubWQgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IFJFQURN
RS5XaW5kb3dzLm1kCgpkaWZmIC0tZ2l0IGEvUkVBRE1FLldpbmRvd3MubWQgYi9SRUFETUUuV2lu
ZG93cy5tZApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMC4uOThhZGQ1ZmQKLS0t
IC9kZXYvbnVsbAorKysgYi9SRUFETUUuV2luZG93cy5tZApAQCAtMCwwICsxLDMxIEBACitTUElD
RSBzZXJ2ZXIgV2luZG93cyBzdXBwb3J0Cis9PT09PT09PT09PT09PT09PT09PT09PT09PT09CisK
K1NQSUNFIHNlcnZlciB3YXMgcG9ydGVkIGZyb20gVW5peC9MaW51eCB0byBXaW5kb3dzLgorCitN
b3N0IGZlYXR1cmVzIGFyZSBwcmVzZW50LCB3aXRoIHNvbWUgZXhjZXB0aW9uczoKKworIC0gVW5p
eCBzb2NrZXRzOworIC0gc2lnbmFsIGhhbmRsaW5nOworIC0gQ0xPRVhFQyBmbGFnIChjb21wbGV0
ZWx5IGRpZmZlcmVudCBoYW5kbGluZyBvbiBXaW5kb3dzKTsKKyAtIElQVE9TX0xPV0RFTEFZIGZs
YWcgKExpbnV4IHNwZWNpZmljKTsKKyAtIFRDUF9DT1JLIChMaW51eC8qQlNEIHNwZWNpZmljKS4K
KworU29tZSBmZWF0dXJlcyBjb3VsZCBiZSBwb3J0ZWQgYnV0IGN1cnJlbnRseSBhcmUgbm90Ogor
CisgLSBzdGF0aXN0aWNzIGV4cG9ydGVkIHRocm91Z2ggbWFwcGVkIGZpbGVzLiBEaXNhYmxlZCBi
eSBkZWZhdWx0IGFuZCBtYWlubHkKKyAgIHVzZWQgZm9yIGRldmVsb3BtZW50OworIC0gZmlsdGVy
aW5nIHdoaWxlIHJlY29yZGluZyAoU1BJQ0VfV09SS0VSX1JFQ09SRF9GSUxURVIgZW52aXJvbm1l
bnQpLgorICAgUmVjb3JkaW5nIGlzIHVzZWQgZm9yIGRlYnVnZ2luZyBvciBkZXZlbG9wbWVudCB3
b3JrOworIC0gVENQX0tFRVBJRExFIHNldHRpbmcuIERlZmF1bHQgaXMgdXNlZC4KKworVG8gY29t
cGlsZSBhbmQgdXNlIHdpdGggUWVtdSB5b3UgY2FuIGZvbGxvdyB0aGUgZ3VpZGUgYXQKK2h0dHBz
Oi8vd2lraS5xZW11Lm9yZy9Ib3N0cy9XMzIsIGp1c3QgcGFzcyBgLS1lbmFibGUtc3BpY2VgIGR1
cmluZworY29uZmlndXJhdGlvbi4KKworVG8gdGVzdCB1c2luZyBhIExpbnV4IGNyb3NzIGNvbXBp
bGVyIHlvdSBjYW4gaW5zdGFsbCBXaW5lIGFuZCBydW4gdGVzdAord2l0aAorCitgYGAKK21ha2Ug
TE9HX0NPTVBJTEU9d2luZSBjaGVjaworYGBgCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
