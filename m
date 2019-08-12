Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F568976F
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 08:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A9D6E4A5;
	Mon, 12 Aug 2019 06:57:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E20A6E4A5
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 06:57:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AE2CB301D671
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 06:57:40 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-153.brq.redhat.com [10.40.204.153])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7F50660872;
 Mon, 12 Aug 2019 06:57:33 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 07:56:56 +0100
Message-Id: <20190812065656.6875-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 12 Aug 2019 06:57:40 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] style: Specify the possibility
 of "pragma once" usage
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
ZG9jcy9zcGljZV9zdHlsZS50eHQgfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RvY3Mvc3BpY2Vfc3R5bGUudHh0IGIvZG9jcy9zcGlj
ZV9zdHlsZS50eHQKaW5kZXggZTRkN2ZjNmQxLi44OWE1NTBmYjggMTAwNjQ0Ci0tLSBhL2RvY3Mv
c3BpY2Vfc3R5bGUudHh0CisrKyBiL2RvY3Mvc3BpY2Vfc3R5bGUudHh0CkBAIC0zNzIsNiArMzcy
LDE1IEBAIFRoZSBtYWNybyBtYXkgaW5jbHVkZSBhZGRpdGlvbmFsIGluZm9ybWF0aW9uLCBlLmcu
IGEgY29tcG9uZW50LiBGb3IgZXhhbXBsZSBhIGZpCiAKIEhpc3RvcmljYWxseSwgc29tZSBoZWFk
ZXJzIGFkZGVkIHVuZGVyc2NvcmVzIGxpYmVyYWxseSwgZS5nLiBNWV9NT0RVTEVfSF8uIFRoaXMg
aXMgbmVpdGhlciBuZWNlc3Nhcnkgbm9yIGRpc2NvdXJhZ2VkLCBhbHRob3VnaCBhcyBhIHJlbWlu
ZGVyLCBhIGxlYWRpbmcgdW5kZXJzY29yZSBmb2xsb3dlZCBieSBhIGNhcGl0YWwgbGV0dGVyIGlz
IHJlc2VydmVkIGZvciB0aGUgaW1wbGVtZW50YXRpb24gYW5kIHNob3VsZCBub3QgYmUgdXNlZCwg
c28gX01ZX01PRFVMRV9IIGlzLCB0ZWNobmljYWxseSBzcGVha2luZywgaW52YWxpZCBDLgogCitB
bHRlcm5hdGl2ZWx5IChyZWNvbW1lbmRlZCBvbiBuZXdlciBjb2RlKSB5b3UgY2FuIHVzZSB0aGUg
YHByYWdtYSBvbmNlYCBkaXJlY3RpdmUsIGFzOgorCitbc291cmNlLGNdCistLS0tCisjcHJhZ21h
IG9uY2UKKworLi4uCistLS0tCisKIEhlYWRlciBpbmNsdXNpb24KIC0tLS0tLS0tLS0tLS0tLS0K
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
