Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F55541D
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8856F6E178;
	Tue, 25 Jun 2019 16:12:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44A1E6E174
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E31FCC05B1CA
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:02 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E467D5D70D;
 Tue, 25 Jun 2019 16:12:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:34 +0100
Message-Id: <20190625161147.25211-11-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 25 Jun 2019 16:12:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 10/23] websocket: Detect and
 handle some header error
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
c2VydmVyL3dlYnNvY2tldC5jIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc2VydmVyL3dlYnNvY2tldC5jIGIvc2VydmVyL3dlYnNvY2tldC5jCmluZGV4
IDAxYmNlZjgyZS4uOWE5NDAwMzc1IDEwMDY0NAotLS0gYS9zZXJ2ZXIvd2Vic29ja2V0LmMKKysr
IGIvc2VydmVyL3dlYnNvY2tldC5jCkBAIC00Niw3ICs0Niw5IEBACiAvKiBDb25zdGFudHMgLyBt
YXNrcyBhbGwgZnJvbSBSRkMgNjQ1NSAqLwogCiAjZGVmaW5lIEZJTl9GTEFHICAgICAgICAweDgw
CisjZGVmaW5lIFJTVl9NQVNLICAgICAgICAweDcwCiAjZGVmaW5lIFRZUEVfTUFTSyAgICAgICAw
eDBGCisjZGVmaW5lIENPTlRST0xfRlJBTUVfTUFTSyAweDgKIAogI2RlZmluZSBDT05USU5VQVRJ
T05fRlJBTUUgIDB4MAogI2RlZmluZSBURVhUX0ZSQU1FICAgICAgMHgxCkBAIC0yMDYsMjEgKzIw
OCwzMyBAQCBzdGF0aWMgdm9pZCB3ZWJzb2NrZXRfY2xlYXJfZnJhbWUod2Vic29ja2V0X2ZyYW1l
X3QgKmZyYW1lKQogfQogCiAvKiBFeHRyYWN0IGEgZnJhbWUgaGVhZGVyIG9mIGRhdGEgZnJvbSBh
IHNldCBvZiBkYXRhIHRyYW5zbWl0dGVkIGJ5Ci0gICAgYSBXZWJTb2NrZXQgY2xpZW50LiAqLwot
c3RhdGljIHZvaWQgd2Vic29ja2V0X2dldF9mcmFtZV9oZWFkZXIod2Vic29ja2V0X2ZyYW1lX3Qg
KmZyYW1lKQorICAgIGEgV2ViU29ja2V0IGNsaWVudC4gUmV0dXJucyBzdWNjZXNzIG9yIGVycm9y
ICovCitzdGF0aWMgYm9vbCB3ZWJzb2NrZXRfZ2V0X2ZyYW1lX2hlYWRlcih3ZWJzb2NrZXRfZnJh
bWVfdCAqZnJhbWUpCiB7CiAgICAgaW50IGZpbjsKICAgICBpbnQgdXNlZCA9IDA7CiAKICAgICBp
ZiAoZnJhbWVfYnl0ZXNfbmVlZGVkKGZyYW1lKSA+IDApIHsKLSAgICAgICAgcmV0dXJuOworICAg
ICAgICByZXR1cm4gdHJ1ZTsKICAgICB9CiAKICAgICBmaW4gPSBmcmFtZS0+aGVhZGVyWzBdICYg
RklOX0ZMQUc7CiAgICAgZnJhbWUtPnR5cGUgPSBmcmFtZS0+aGVhZGVyWzBdICYgVFlQRV9NQVNL
OwogICAgIHVzZWQrKzsKIAotICAgIGZyYW1lLT5tYXNrZWQgPSBmcmFtZS0+aGVhZGVyWzFdICYg
TUFTS19GTEFHOworICAgIC8vIHJlc2VydmVkIGJpdHMgYXJlIG5vdCBleHBlY3RlZAorICAgIGlm
IChmcmFtZS0+aGVhZGVyWzBdICYgUlNWX01BU0spIHsKKyAgICAgICAgcmV0dXJuIGZhbHNlOwor
ICAgIH0KKyAgICAvLyBjb250cm9sIGNvbW1hbmRzIGNhbm5vdCBiZSBzcGxpdAorICAgIGlmICgh
ZmluICYmIChmcmFtZS0+dHlwZSAmIENPTlRST0xfRlJBTUVfTUFTSykgIT0gMCkgeworICAgICAg
ICByZXR1cm4gZmFsc2U7CisgICAgfQorICAgIGlmICgoZnJhbWUtPnR5cGUgJiB+Q09OVFJPTF9G
UkFNRV9NQVNLKSA+PSAzKSB7CisgICAgICAgIHJldHVybiBmYWxzZTsKKyAgICB9CisKKyAgICBm
cmFtZS0+bWFza2VkID0gISEoZnJhbWUtPmhlYWRlclsxXSAmIE1BU0tfRkxBRyk7CiAKICAgICAv
KiBUaGlzIGlzIGEgU3BpY2Ugc3BlY2lmaWMgb3B0aW1pemF0aW9uLiAgV2UgZG9uJ3QgcmVhbGx5
CiAgICAgICAgY2FyZSBhYm91dCBhc3NlbWJsaW5nIGZyYW1lcyBmdWxseSwgc28gd2UgdHJlYXQK
QEAgLTIzNSw4ICsyNDksMTUgQEAgc3RhdGljIHZvaWQgd2Vic29ja2V0X2dldF9mcmFtZV9oZWFk
ZXIod2Vic29ja2V0X2ZyYW1lX3QgKmZyYW1lKQogICAgICAgICBtZW1jcHkoZnJhbWUtPm1hc2ss
IGZyYW1lLT5oZWFkZXIgKyB1c2VkLCA0KTsKICAgICB9CiAKKyAgICAvKiBjb250cm9sIGZyYW1l
cyBjYW5ub3QgaGF2ZSBtb3JlIHRoYW4gMTI1IGJ5dGVzIG9mIGRhdGEgKi8KKyAgICBpZiAoKGZy
YW1lLT50eXBlICYgQ09OVFJPTF9GUkFNRV9NQVNLKSAhPSAwICYmCisgICAgICAgIGZyYW1lLT5l
eHBlY3RlZF9sZW4gPj0gTEVOR1RIXzE2QklUKSB7CisgICAgICAgIHJldHVybiBmYWxzZTsKKyAg
ICB9CisKICAgICBmcmFtZS0+cmVsYXllZCA9IDA7Ci0gICAgZnJhbWUtPmZyYW1lX3JlYWR5ID0g
MTsKKyAgICBmcmFtZS0+ZnJhbWVfcmVhZHkgPSB0cnVlOworICAgIHJldHVybiB0cnVlOwogfQog
CiBzdGF0aWMgaW50IHJlbGF5X2RhdGEodWludDhfdCogYnVmLCBzaXplX3Qgc2l6ZSwgd2Vic29j
a2V0X2ZyYW1lX3QgKmZyYW1lKQpAQCAtMjc1LDcgKzI5NiwxMSBAQCBpbnQgd2Vic29ja2V0X3Jl
YWQoUmVkc1dlYlNvY2tldCAqd3MsIHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90IHNpemUpCiAgICAgICAg
ICAgICB9CiAgICAgICAgICAgICBmcmFtZS0+aGVhZGVyX3BvcyArPSByYzsKIAotICAgICAgICAg
ICAgd2Vic29ja2V0X2dldF9mcmFtZV9oZWFkZXIoZnJhbWUpOworICAgICAgICAgICAgaWYgKCF3
ZWJzb2NrZXRfZ2V0X2ZyYW1lX2hlYWRlcihmcmFtZSkpIHsKKyAgICAgICAgICAgICAgICB3cy0+
Y2xvc2VkID0gdHJ1ZTsKKyAgICAgICAgICAgICAgICBlcnJubyA9IEVJTzsKKyAgICAgICAgICAg
ICAgICByZXR1cm4gLTE7CisgICAgICAgICAgICB9CiAgICAgICAgIH0gZWxzZSBpZiAoZnJhbWUt
PnR5cGUgPT0gQ0xPU0VfRlJBTUUpIHsKICAgICAgICAgICAgIHdlYnNvY2tldF9hY2tfY2xvc2Uo
b3BhcXVlLCB3cml0ZV9jYik7CiAgICAgICAgICAgICB3ZWJzb2NrZXRfY2xlYXJfZnJhbWUoZnJh
bWUpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
