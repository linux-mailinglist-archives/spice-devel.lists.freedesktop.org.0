Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 852B061E17
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 14:00:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077D089CC4;
	Mon,  8 Jul 2019 12:00:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2160C89CC4
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:00:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A4F18E23A
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 12:00:29 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FA882D22F;
 Mon,  8 Jul 2019 12:00:21 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  8 Jul 2019 13:00:14 +0100
Message-Id: <20190708120016.27270-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 08 Jul 2019 12:00:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 0/2] Drop autotools
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

VGhpcyBzZXJpZXMgaXMgZnJvbSBNYXJjLUFuZHLDqSwgSSBqdXN0IHJlYmFzZWQgaXQgb24gY3Vy
cmVudCBtYXN0ZXIuCk5vdCBtdWNoIGxlZnQgb2YgdGhlIG9yaWdpbmFsIHNlcmllcy4KSSB0aGlu
ayBpdCdzIHRpbWUgdG8gZ2V0IGJhY2sgdG8gaXQuCgpNYXJjLUFuZHLDqSBMdXJlYXUgKDIpOgog
IERyb3AgYXV0b3Rvb2xzCiAgbWVzb246IHVzZSBndGstZG9jIC0tcmVidWlsZC10eXBlcwoKIC5n
aXRsYWItY2kueW1sICAgICAgICAgICAgICAgIHwgIDY2ICstLS0KIE1ha2VmaWxlLmFtICAgICAg
ICAgICAgICAgICAgIHwgIDc0IC0tLS0tCiBSRUFETUUubWQgICAgICAgICAgICAgICAgICAgICB8
ICAxMSArLQogYXV0b2dlbi5zaCAgICAgICAgICAgICAgICAgICAgfCAgMjAgLS0KIGJ1aWxkLWF1
eC9naXQtdmVyc2lvbi1nZW4gICAgIHwgMTU4IC0tLS0tLS0tLQogY29uZmlndXJlLmFjICAgICAg
ICAgICAgICAgICAgfCA1NDcgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZGF0YS9N
YWtlZmlsZS5hbSAgICAgICAgICAgICAgfCAgMTEgLQogZG9jL01ha2VmaWxlLmFtICAgICAgICAg
ICAgICAgfCAgIDUgLQogZG9jL3JlZmVyZW5jZS9NYWtlZmlsZS5hbSAgICAgfCAgODAgLS0tLS0K
IGRvYy9yZWZlcmVuY2UvbWVzb24uYnVpbGQgICAgIHwgICAyICstCiBkb2MvcmVmZXJlbmNlL3Nw
aWNlLWd0ay50eXBlcyB8ICA0OSAtLS0KIGdpdC5tayAgICAgICAgICAgICAgICAgICAgICAgIHwg
NDAwIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBtNC9sZC12ZXJzaW9uLm00ICAgICAgICAgICAg
ICB8ICAzNCAtLQogbTQvbWFueXdhcm5pbmdzLm00ICAgICAgICAgICAgfCAyNzMgLS0tLS0tLS0t
LS0tLS0tLQogbTQvc3BpY2UtY29tcGlsZS13YXJuaW5ncy5tNCAgfCAxNDYgLS0tLS0tLS0tCiBt
NC93YXJuaW5ncy5tNCAgICAgICAgICAgICAgICB8ICA3OSAtLS0tLQogbWFuL01ha2VmaWxlLmFt
ICAgICAgICAgICAgICAgfCAgMTcgLQogcG8vQ2hhbmdlTG9nICAgICAgICAgICAgICAgICAgfCAg
IDggLQogcG8vTWFrZXZhcnMgICAgICAgICAgICAgICAgICAgfCAgOTUgLS0tLS0tCiBwby97UE9U
RklMRVMuaW4gPT4gUE9URklMRVN9ICB8ICAgMAogcG8vUE9URklMRVMuc2tpcCAgICAgICAgICAg
ICAgfCAgIDIgLQogc3BpY2UtY2xpZW50LWdsaWItMi4wLnBjLmluICAgfCAgMTQgLQogc3BpY2Ut
Y2xpZW50LWd0ay0zLjAucGMuaW4gICAgfCAgMTIgLQogc3JjL01ha2VmaWxlLmFtICAgICAgICAg
ICAgICAgfCA1OTMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogdGVzdHMvTWFr
ZWZpbGUuYW0gICAgICAgICAgICAgfCAgNDkgLS0tCiB0b29scy9NYWtlZmlsZS5hbSAgICAgICAg
ICAgICB8ICA3NyAtLS0tLQogdmFwaS9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgfCAgNDMgLS0t
CiAyNyBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDI4NTkgZGVsZXRpb25zKC0pCiBk
ZWxldGUgbW9kZSAxMDA2NDQgTWFrZWZpbGUuYW0KIGRlbGV0ZSBtb2RlIDEwMDc1NSBhdXRvZ2Vu
LnNoCiBkZWxldGUgbW9kZSAxMDA3NTUgYnVpbGQtYXV4L2dpdC12ZXJzaW9uLWdlbgogZGVsZXRl
IG1vZGUgMTAwNjQ0IGNvbmZpZ3VyZS5hYwogZGVsZXRlIG1vZGUgMTAwNjQ0IGRhdGEvTWFrZWZp
bGUuYW0KIGRlbGV0ZSBtb2RlIDEwMDY0NCBkb2MvTWFrZWZpbGUuYW0KIGRlbGV0ZSBtb2RlIDEw
MDY0NCBkb2MvcmVmZXJlbmNlL01ha2VmaWxlLmFtCiBkZWxldGUgbW9kZSAxMDA2NDQgZG9jL3Jl
ZmVyZW5jZS9zcGljZS1ndGsudHlwZXMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBnaXQubWsKIGRlbGV0
ZSBtb2RlIDEwMDY0NCBtNC9sZC12ZXJzaW9uLm00CiBkZWxldGUgbW9kZSAxMDA2NDQgbTQvbWFu
eXdhcm5pbmdzLm00CiBkZWxldGUgbW9kZSAxMDA2NDQgbTQvc3BpY2UtY29tcGlsZS13YXJuaW5n
cy5tNAogZGVsZXRlIG1vZGUgMTAwNjQ0IG00L3dhcm5pbmdzLm00CiBkZWxldGUgbW9kZSAxMDA2
NDQgbWFuL01ha2VmaWxlLmFtCiBkZWxldGUgbW9kZSAxMDA2NDQgcG8vQ2hhbmdlTG9nCiBkZWxl
dGUgbW9kZSAxMDA2NDQgcG8vTWFrZXZhcnMKIHJlbmFtZSBwby97UE9URklMRVMuaW4gPT4gUE9U
RklMRVN9ICgxMDAlKQogZGVsZXRlIG1vZGUgMTAwNjQ0IHBvL1BPVEZJTEVTLnNraXAKIGRlbGV0
ZSBtb2RlIDEwMDY0NCBzcGljZS1jbGllbnQtZ2xpYi0yLjAucGMuaW4KIGRlbGV0ZSBtb2RlIDEw
MDY0NCBzcGljZS1jbGllbnQtZ3RrLTMuMC5wYy5pbgogZGVsZXRlIG1vZGUgMTAwNjQ0IHNyYy9N
YWtlZmlsZS5hbQogZGVsZXRlIG1vZGUgMTAwNjQ0IHRlc3RzL01ha2VmaWxlLmFtCiBkZWxldGUg
bW9kZSAxMDA2NDQgdG9vbHMvTWFrZWZpbGUuYW0KIGRlbGV0ZSBtb2RlIDEwMDY0NCB2YXBpL01h
a2VmaWxlLmFtCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
