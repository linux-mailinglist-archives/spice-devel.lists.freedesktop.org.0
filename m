Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C619CBC7
	for <lists+spice-devel@lfdr.de>; Mon, 26 Aug 2019 10:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414B789C94;
	Mon, 26 Aug 2019 08:39:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80EE89AB6
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Aug 2019 08:39:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 653E418C426C
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Aug 2019 08:39:54 +0000 (UTC)
Received: from localhost.localdomain.com (unknown [10.35.4.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C963719C70
 for <spice-devel@lists.freedesktop.org>; Mon, 26 Aug 2019 08:39:53 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:39:48 +0300
Message-Id: <20190826083948.29309-3-ssheribe@redhat.com>
In-Reply-To: <20190826083948.29309-1-ssheribe@redhat.com>
References: <20190826083948.29309-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Mon, 26 Aug 2019 08:39:54 +0000 (UTC)
Subject: [Spice-devel] [RFC spice-streaming-agent 3/3] gst-plugin: Use Xlib
 capture helper
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

LS0tCiBzcmMvTWFrZWZpbGUuYW0gICAgfCAgMiArKwogc3JjL2dzdC1wbHVnaW4uY3BwIHwgNDMg
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFu
Z2VkLCAyMSBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMv
TWFrZWZpbGUuYW0gYi9zcmMvTWFrZWZpbGUuYW0KaW5kZXggMzFiOGFmMS4uMWRlOGY5YSAxMDA2
NDQKLS0tIGEvc3JjL01ha2VmaWxlLmFtCisrKyBiL3NyYy9NYWtlZmlsZS5hbQpAQCAtOTgsNiAr
OTgsOCBAQCBnc3RfcGx1Z2luX2xhX0xJQkFERCA9IFwKIAogZ3N0X3BsdWdpbl9sYV9TT1VSQ0VT
ID0gXAogCWdzdC1wbHVnaW4uY3BwIFwKKwl4bGliLWNhcHR1cmUuY3BwIFwKKwl4bGliLWNhcHR1
cmUuaHBwIFwKIAkkKE5VTEwpCiAKIGdzdF9wbHVnaW5fbGFfQ1BQRkxBR1MgPSBcCmRpZmYgLS1n
aXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKaW5kZXggNzBiYzZj
OC4uODNhNTRkNSAxMDA2NDQKLS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCisrKyBiL3NyYy9nc3Qt
cGx1Z2luLmNwcApAQCAtMTcsNiArMTcsNyBAQAogI2RlZmluZSBYTElCX0NBUFRVUkUgMQogI2lm
IFhMSUJfQ0FQVFVSRQogI2luY2x1ZGUgPGdzdC9hcHAvZ3N0YXBwc3JjLmg+CisjaW5jbHVkZSAi
eGxpYi1jYXB0dXJlLmhwcCIKICNlbmRpZgogCiAjaW5jbHVkZSA8c3BpY2Utc3RyZWFtaW5nLWFn
ZW50L3BsdWdpbi5ocHA+CkBAIC03MSw2ICs3Miw3IEBAIHByaXZhdGU6CiAgICAgRGlzcGxheSAq
Y29uc3QgZHB5OwogI2lmIFhMSUJfQ0FQVFVSRQogICAgIHZvaWQgeGxpYl9jYXB0dXJlKCk7Cisg
ICAgWGxpYkNhcHR1cmUgKnhjOwogI2VuZGlmCiAgICAgR3N0RWxlbWVudFVQdHIgcGlwZWxpbmUs
IGNhcHR1cmUsIHNpbms7CiAgICAgR3N0U2FtcGxlVVB0ciBzYW1wbGU7CkBAIC0yODEsNiArMjgz
LDcgQEAgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpHc3RyZWFtZXJGcmFtZUNhcHR1cmUoY29uc3Qg
R3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXQKICAgICBpZiAoIWRweSkgewogICAgICAgICB0
aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIlVuYWJsZSB0byBpbml0aWFsaXplIFgxMSIpOwogICAg
IH0KKyAgICB4YyA9IG5ldyBYbGliQ2FwdHVyZShkcHkpOwogICAgIHBpcGVsaW5lX2luaXQoc2V0
dGluZ3MpOwogfQogCkBAIC0yOTYsNiArMjk5LDcgQEAgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjp+
R3N0cmVhbWVyRnJhbWVDYXB0dXJlKCkKIHsKICAgICBmcmVlX3NhbXBsZSgpOwogICAgIGdzdF9l
bGVtZW50X3NldF9zdGF0ZShwaXBlbGluZS5nZXQoKSwgR1NUX1NUQVRFX05VTEwpOworICAgIGRl
bGV0ZSB4YzsKICAgICBYQ2xvc2VEaXNwbGF5KGRweSk7CiB9CiAKQEAgLTMwNSwyNyArMzA5LDIz
IEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpSZXNldCgpCiB9CiAKICNpZiBYTElCX0NB
UFRVUkUKLXZvaWQgZnJlZV94aW1hZ2UoZ3BvaW50ZXIgZGF0YSkKK3ZvaWQgZnJlZV94aW1nKGdw
b2ludGVyIGRhdGEpCiB7Ci0gICAgWEltYWdlICppbWFnZSA9IChYSW1hZ2UqKWRhdGE7Ci0gICAg
aW1hZ2UtPmYuZGVzdHJveV9pbWFnZShpbWFnZSk7CisgICAgZGVsZXRlIChYSW1nICopIGRhdGE7
CiB9CiAKIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjp4bGliX2NhcHR1cmUoKQogewotICAg
IGludCBzY3JlZW4gPSBYRGVmYXVsdFNjcmVlbihkcHkpOwogCi0gICAgV2luZG93IHdpbiA9IFJv
b3RXaW5kb3coZHB5LCBzY3JlZW4pOwotICAgIFhXaW5kb3dBdHRyaWJ1dGVzIHdpbl9pbmZvOwot
ICAgIFhHZXRXaW5kb3dBdHRyaWJ1dGVzKGRweSwgd2luLCAmd2luX2luZm8pOworICAgIFhJbWcg
KmltYWdlID0geGMtPmNhcHR1cmUoKTsKKyAgICBpZiAoIWltYWdlKSB7CisgICAgICAgIHRocm93
IHN0ZDo6cnVudGltZV9lcnJvcigiQ2Fubm90IGNhcHR1cmUgZnJvbSBYIik7CisgICAgfQogCiAg
ICAgLyogU29tZSBlbmNvZGVycyBjYW5ub3QgaGFuZGxlIG9kZCByZXNvbHV0aW9uIG1ha2Ugc3Vy
ZSBpdCdzIGV2ZW4gbnVtYmVyIG9mIHBpeGVscyAqLwotICAgIGN1cl93aWR0aCA9IHdpbl9pbmZv
LndpZHRoIC0gd2luX2luZm8ud2lkdGggJSAyOwotICAgIGN1cl9oZWlnaHQgPSAgd2luX2luZm8u
aGVpZ2h0IC0gd2luX2luZm8uaGVpZ2h0ICUgMjsKLQotICAgIGlmIChjdXJfd2lkdGggIT0gbGFz
dF93aWR0aCB8fCBjdXJfaGVpZ2h0ICE9IGxhc3RfaGVpZ2h0KSB7Ci0gICAgICAgIGxhc3Rfd2lk
dGggPSBjdXJfd2lkdGg7Ci0gICAgICAgIGxhc3RfaGVpZ2h0ID0gY3VyX2hlaWdodDsKKyAgICBp
ZiAoaW1hZ2UtPm5ld19yZXNvbHV0aW9uKCkpIHsKKyAgICAgICAgbGFzdF93aWR0aCA9IGN1cl93
aWR0aCA9IGltYWdlLT53aWR0aCgpOyAvLyBUT0RPOiBkcm9wPworICAgICAgICBsYXN0X2hlaWdo
dCA9IGN1cl9oZWlnaHQgPSBpbWFnZS0+aGVpZ2h0KCk7CiAgICAgICAgIGlzX2ZpcnN0ID0gdHJ1
ZTsKIAogICAgICAgICBnc3RfYXBwX3NyY19lbmRfb2Zfc3RyZWFtKEdTVF9BUFBfU1JDKGNhcHR1
cmUuZ2V0KCkpKTsKQEAgLTMzMywyNCArMzMzLDE5IEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0
dXJlOjp4bGliX2NhcHR1cmUoKQogICAgICAgICBnc3RfZWxlbWVudF9zZXRfc3RhdGUocGlwZWxp
bmUuZ2V0KCksIEdTVF9TVEFURV9QTEFZSU5HKTsKICAgICB9CiAKLSAgICBYSW1hZ2UgKmltYWdl
ID0gWEdldEltYWdlKGRweSwgd2luLCAwLCAwLAotICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY3VyX3dpZHRoLCBjdXJfaGVpZ2h0LCBBbGxQbGFuZXMsIFpQaXhtYXApOwotICAgIGlmICgh
aW1hZ2UpIHsKLSAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJDYW5ub3QgY2FwdHVy
ZSBmcm9tIFgiKTsKLSAgICB9CisgICAgR3N0QnVmZmVyVVB0ciBidWYoZ3N0X2J1ZmZlcl9uZXdf
d3JhcHBlZF9mdWxsKEdTVF9NRU1PUllfRkxBR19QSFlTSUNBTExZX0NPTlRJR1VPVVMsIGltYWdl
LT5nZXRfZGF0YSgpLAorICAgICAgICAgICAgICAgICAgICAgIGltYWdlLT5kYXRhX3NpemUoKSwg
MCwKKyAgICAgICAgICAgICAgICAgICAgICBpbWFnZS0+ZGF0YV9zaXplKCksIGltYWdlLAorICAg
ICAgICAgICAgICAgICAgICAgIGZyZWVfeGltZykpOwogCi0gICAgR3N0QnVmZmVyVVB0ciBidWYo
Z3N0X2J1ZmZlcl9uZXdfd3JhcHBlZF9mdWxsKEdTVF9NRU1PUllfRkxBR19QSFlTSUNBTExZX0NP
TlRJR1VPVVMsIGltYWdlLT5kYXRhLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbWFnZS0+aGVpZ2h0ICogaW1hZ2UtPmJ5dGVzX3Blcl9saW5lLCAw
LAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbWFn
ZS0+aGVpZ2h0ICogaW1hZ2UtPmJ5dGVzX3Blcl9saW5lLCBpbWFnZSwKLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnJlZV94aW1hZ2UpKTsKICAgICBp
ZiAoIWJ1ZikgewogICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkZhaWxlZCB0byB3
cmFwIGltYWdlIGluIGdzdHJlYW1lciBidWZmZXIiKTsKICAgICB9CiAKICAgICBHc3RDYXBzVVB0
ciBjYXBzKGdzdF9jYXBzX25ld19zaW1wbGUoInZpZGVvL3gtcmF3IiwKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgImZvcm1hdCIsIEdfVFlQRV9TVFJJTkcsICJCR1J4
IiwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIndpZHRoIiwgR19U
WVBFX0lOVCwgaW1hZ2UtPndpZHRoLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAiaGVpZ2h0IiwgR19UWVBFX0lOVCwgaW1hZ2UtPmhlaWdodCwKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIndpZHRoIiwgR19UWVBFX0lOVCwgaW1hZ2Ut
PndpZHRoKCksCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJoZWln
aHQiLCBHX1RZUEVfSU5ULCBpbWFnZS0+aGVpZ2h0KCksCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJmcmFtZXJhdGUiLCBHU1RfVFlQRV9GUkFDVElPTiwgc2V0dGlu
Z3MuZnBzLCAxLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBudWxs
cHRyKSk7CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
