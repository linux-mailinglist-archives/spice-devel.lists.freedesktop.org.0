Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E45F8C6
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7AF1891F2;
	Tue, 30 Apr 2019 12:24:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4675589208
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E2B70308FEC1
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:36 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2F122B3D9;
 Tue, 30 Apr 2019 12:24:35 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:07 +0100
Message-Id: <20190430122419.16241-8-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 30 Apr 2019 12:24:36 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 07/19] net-utils: Port to
 Windows
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
c2VydmVyL25ldC11dGlscy5jIHwgMTEgKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc2VydmVyL25ldC11dGlscy5jIGIvc2VydmVyL25l
dC11dGlscy5jCmluZGV4IDcxOTEyNzI4Li4xNDRiZmQ4ZiAxMDA2NDQKLS0tIGEvc2VydmVyL25l
dC11dGlscy5jCisrKyBiL3NlcnZlci9uZXQtdXRpbHMuYwpAQCAtMzMsNiArMzMsNyBAQAogI2lu
Y2x1ZGUgPGNvbW1vbi9sb2cuaD4KIAogI2luY2x1ZGUgIm5ldC11dGlscy5oIgorI2luY2x1ZGUg
InN5cy1zb2NrZXQuaCIKIAogLyoqCiAgKiByZWRfc29ja2V0X3NldF9rZWVwYWxpdmU6CkBAIC05
OSw2ICsxMDAsMTUgQEAgYm9vbCByZWRfc29ja2V0X3NldF9ub19kZWxheShpbnQgZmQsIGJvb2wg
bm9fZGVsYXkpCiAgKi8KIGJvb2wgcmVkX3NvY2tldF9zZXRfbm9uX2Jsb2NraW5nKGludCBmZCwg
Ym9vbCBub25fYmxvY2tpbmcpCiB7CisjaWZkZWYgX1dJTjMyCisgICAgdV9sb25nIGlvY3RsX25v
bmJsb2NraW5nID0gMTsKKworICAgIGlmIChpb2N0bHNvY2tldChmZCwgRklPTkJJTywgJmlvY3Rs
X25vbmJsb2NraW5nKSAhPSAwKSB7CisgICAgICAgIHNwaWNlX3dhcm5pbmcoImlvY3Rsc29ja2V0
KEZJT05CSU8pIGZhaWxlZCwgJWQiLCBXU0FHZXRMYXN0RXJyb3IoKSk7CisgICAgICAgIHJldHVy
biBmYWxzZTsKKyAgICB9CisgICAgcmV0dXJuIHRydWU7CisjZWxzZQogICAgIGludCBmbGFnczsK
IAogICAgIGlmICgoZmxhZ3MgPSBmY250bChmZCwgRl9HRVRGTCkpID09IC0xKSB7CkBAIC0xMTgs
NiArMTI4LDcgQEAgYm9vbCByZWRfc29ja2V0X3NldF9ub25fYmxvY2tpbmcoaW50IGZkLCBib29s
IG5vbl9ibG9ja2luZykKICAgICB9CiAKICAgICByZXR1cm4gdHJ1ZTsKKyNlbmRpZgogfQogCiAv
KioKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
