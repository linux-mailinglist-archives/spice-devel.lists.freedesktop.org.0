Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B19433E6
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA828901E;
	Thu, 13 Jun 2019 07:55:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E82897C3
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:55:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 88B5A6EB8C
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:55:31 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-51.brq.redhat.com [10.40.204.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D55DF452E;
 Thu, 13 Jun 2019 07:55:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 13 Jun 2019 08:55:23 +0100
Message-Id: <20190613075523.11868-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 13 Jun 2019 07:55:31 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] build: Disable Celt support by
 default
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

V2Ugc3RhcnRlZCBkaXNhYmxpbmcgQ2VsdCBzdXBwb3J0IG1ha2luZyB0aGUgb3B0aW9uIHJlcXVp
cmVkLgpBZnRlciAyIHJlbGVhc2VzIHN0YXJ0IG1ha2luZyBpdCBkaXNhYmxlZCB1bmxlc3MgZXhw
bGljaXRseQplbmFibGVkLgoKVGhpcyBtYWtlcyBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvc3BpY2Uvc3BpY2UvbWVyZ2VfcmVxdWVzdHMvMgpvYnNvbGV0ZS4KClNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIG1lc29uX29wdGlvbnMu
dHh0ICAgICAgICB8IDEgKwogc3VicHJvamVjdHMvc3BpY2UtY29tbW9uIHwgMiArLQogMiBmaWxl
cyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9t
ZXNvbl9vcHRpb25zLnR4dCBiL21lc29uX29wdGlvbnMudHh0CmluZGV4IGQxOWNhY2IyNS4uYTA1
ZTFlZWM2IDEwMDY0NAotLS0gYS9tZXNvbl9vcHRpb25zLnR4dAorKysgYi9tZXNvbl9vcHRpb25z
LnR4dApAQCAtMTUsNiArMTUsNyBAQCBvcHRpb24oJ3Nhc2wnLAogCiBvcHRpb24oJ2NlbHQwNTEn
LAogICAgIHR5cGUgOiAnZmVhdHVyZScsCisgICAgdmFsdWUgOiAnZGlzYWJsZWQnLAogICAgIGRl
c2NyaXB0aW9uOiAnRW5hYmxlIGNlbHQwNTEgYXVkaW8gY29kZWMnKQogCiBvcHRpb24oJ29wdXMn
LApkaWZmIC0tZ2l0IGEvc3VicHJvamVjdHMvc3BpY2UtY29tbW9uIGIvc3VicHJvamVjdHMvc3Bp
Y2UtY29tbW9uCmluZGV4IGNjMTA5YTgzYi4uZmYyZTk5ZDg5IDE2MDAwMAotLS0gYS9zdWJwcm9q
ZWN0cy9zcGljZS1jb21tb24KKysrIGIvc3VicHJvamVjdHMvc3BpY2UtY29tbW9uCkBAIC0xICsx
IEBACi1TdWJwcm9qZWN0IGNvbW1pdCBjYzEwOWE4M2I2YzZhOTIwNWEyMjllODQyNDYwNzlkYmY1
NDBhYmY3CitTdWJwcm9qZWN0IGNvbW1pdCBmZjJlOTlkODkzMmRiNmIzMGIyNDUwMWFlZjA3ODk4
NTM1YWMwYmI0Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
