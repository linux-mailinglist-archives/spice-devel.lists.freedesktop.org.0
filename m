Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E6D13A95
	for <lists+spice-devel@lfdr.de>; Sat,  4 May 2019 16:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C89388FD2;
	Sat,  4 May 2019 14:32:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CC288FD2
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 14:32:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C2BAE8665A
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 14:32:42 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A4C580D8
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 14:32:42 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sat,  4 May 2019 14:32:39 +0000
Message-Id: <20190504143241.28352-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Sat, 04 May 2019 14:32:42 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk 0/2] channel-usbredir ifdef USE_USBREDIR
 fixes
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpBIGNvbXBpbGVyIHdh
cm5pbmcgZml4IG9uIGZpcnN0IHBhdGNoLiBJIGNhbiB0cmlnZ2VyIHRoYXQgd2FybmluZyB3aGVu
IEkKZGlzYWJsZSB1c2JyZWRpci4gSSdtIHVzaW5nIGdjYyA4LjMuMSBidXQgSSB0aGluayBJIHNh
dyBpdCBsb25nIHRpbWUKYWdvIHRvby4KClNlY29uZCBwYXRjaCBpcyBzZWxmIGV4cGxhbmF0b3J5
LCBJIGhvcGUgaXQgc291bmRzIHJlYXNvbmFibGUuCgpnaXRsYWItY2k6IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy92aWN0b3J0b3NvL3NwaWNlLWd0ay9waXBlbGluZXMvMzUwNzcKCkNo
ZWVycywKClZpY3RvciBUb3NvICgyKToKICBjaGFubmVsLXVzYnJlZGlyOiBpZiBkaXNhYmxlZCwg
ZGVmaW5lIHR5cGUgd2l0aG91dCBwcml2YXRlCiAgY2hhbm5lbC11c2JyZWRpcjogcmVkdWNlIGFt
b3VudCBvZiAjaWZkZWYgVVNFX1VTQlJFRElSCgogc3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8IDMy
ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
