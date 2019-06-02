Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD9F32480
	for <lists+spice-devel@lfdr.de>; Sun,  2 Jun 2019 19:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F1F489362;
	Sun,  2 Jun 2019 17:54:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F110289362
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 17:54:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 809DC3082E03
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 17:54:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7ECE017CCB;
 Sun,  2 Jun 2019 17:54:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  2 Jun 2019 18:53:58 +0100
Message-Id: <20190602175359.24499-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Sun, 02 Jun 2019 17:54:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-parse-qxl: Reset mask
 attributes if brush image is missing
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

VGhlIGF0dHJpYnV0ZXMgaW4gdGhpcyBjYXNlIGFyZSBub3QgdXNlZCB0byBhcHBseSB0aGUgbWFz
ay4KRG9pbmcgc28gYXZvaWQgc2VuZGluZyBnYXJiYWdlIGZyb20gdGhlIGd1ZXN0IHdoaWNoIHVz
dWFsbHkKZG9uJ3QgaW5pdGlhbGlzZSB0aGUgbWVtb3J5IGluIGNhc2UgdGhlIG1hc2sgaXMgbWlz
c2luZy4KR3Vlc3Qgc2hvdWxkIGhhdmUgY2xlYXJlZCB0aGVzZSBieXRlcyBieSBpdHMgb3duIGhv
d2V2ZXIgZG9pbmcgc28Kb24gdGhlIHNlcnZlciBmaXhlcyB0aGUgcHJvYmxlbSB0b28uIENvbnNp
ZGVyaW5nIHRoYXQgdGhlc2UKY29tbWFuZCBzaG91bGQgbm90IGFwcGVhcnMgaW4gbmV3ZXIgT1Nl
cyBpdCdzIHN1cmVseSBub3QgYSBob3QgcGF0aApjb2RlLgpUaGVzZSBnYXJiYWdlIGNhbWUgZnJv
bSB2aWRlbyBtZW1vcnkgb2YgdGhlIGd1ZXN0IHNvIHRoZXkgZG9uJ3QKY29udGFpbiBzZW5zaXRp
dmUgZGF0YS4KClRoaXMgZml4ZXMgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNl
L3NwaWNlLXNlcnZlci9pc3N1ZXMvMjUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jIHwgMTAgKysr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jIGIvc2VydmVyL3JlZC1wYXJzZS1x
eGwuYwppbmRleCBhZmFlOTQzMTYuLmE0YWM2YTQ3MyAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZC1w
YXJzZS1xeGwuYworKysgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCkBAIC02MjYsOSArNjI2LDE1
IEBAIHN0YXRpYyB2b2lkIHJlZF9wdXRfYnJ1c2goU3BpY2VCcnVzaCAqcmVkKQogc3RhdGljIHZv
aWQgcmVkX2dldF9xbWFza19wdHIoUmVkTWVtU2xvdEluZm8gKnNsb3RzLCBpbnQgZ3JvdXBfaWQs
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZVFNYXNrICpyZWQsIFFYTFFNYXNr
ICpxeGwsIHVpbnQzMl90IGZsYWdzKQogewotICAgIHJlZC0+ZmxhZ3MgID0gcXhsLT5mbGFnczsK
LSAgICByZWRfZ2V0X3BvaW50X3B0cigmcmVkLT5wb3MsICZxeGwtPnBvcyk7CiAgICAgcmVkLT5i
aXRtYXAgPSByZWRfZ2V0X2ltYWdlKHNsb3RzLCBncm91cF9pZCwgcXhsLT5iaXRtYXAsIGZsYWdz
LCB0cnVlKTsKKyAgICBpZiAocmVkLT5iaXRtYXApIHsKKyAgICAgICAgcmVkLT5mbGFncyAgPSBx
eGwtPmZsYWdzOworICAgICAgICByZWRfZ2V0X3BvaW50X3B0cigmcmVkLT5wb3MsICZxeGwtPnBv
cyk7CisgICAgfSBlbHNlIHsKKyAgICAgICAgcmVkLT5mbGFncyAgPSAwOworICAgICAgICByZWQt
PnBvcy54ID0gMDsKKyAgICAgICAgcmVkLT5wb3MueSA9IDA7CisgICAgfQogfQogCiBzdGF0aWMg
dm9pZCByZWRfcHV0X3FtYXNrKFNwaWNlUU1hc2sgKnJlZCkKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
