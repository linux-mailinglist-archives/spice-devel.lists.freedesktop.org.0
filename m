Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E419A48793
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 17:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A3D891A1;
	Mon, 17 Jun 2019 15:40:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8A88919A
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 15:40:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7A731C045770
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 15:40:25 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C70817E5B1;
 Mon, 17 Jun 2019 15:40:23 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 17 Jun 2019 16:40:10 +0100
Message-Id: <20190617154011.20310-3-fziglio@redhat.com>
In-Reply-To: <20190617154011.20310-1-fziglio@redhat.com>
References: <20190617154011.20310-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 17 Jun 2019 15:40:25 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 3/4] red-channel-client: Allows
 to block receiving data
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

SWYgdGhlIGNsaWVudCBpcyBrZWVwaW5nIHNlbmRpbmcgZGF0YSB3aGlsZSB3ZSBjYW4ndCBoYW5k
bGUgdGhlbQooZm9yIGluc3RhbmNlIGJlY2F1c2Ugd2UgbmVlZCB0byBmb3J3YXJkIHRvIGEgZGV2
aWNlIGJ1dCB0aGUKZGV2aWNlIGlzIG5vdCBmYXN0IGVub3VnaCB0byByZWNlaXZlIHRoYXQgYW1v
dW50IG9mIGRhdGEpIGFsbG93cwp0byBzdG9wIFJlZENoYW5uZWxDbGllbnQgdG8gcmVhZCBkYXRh
LgpUaGlzIGFmdGVyIGEgYml0IHdpbGwgc3RvcCB0aGUgY2xpZW50IHNlbmRpbmcgZGF0YSBhcyBp
dHMgb3V0cHV0CmJ1ZmZlciB3aWxsIGJlY29tZSBmdWxsLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3JlZC1jaGFubmVsLWNs
aWVudC5jIHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogc2VydmVyL3JlZC1jaGFu
bmVsLWNsaWVudC5oIHwgIDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3JlZC1j
aGFubmVsLWNsaWVudC5jCmluZGV4IDQ5NzhmMzU2Ny4uMDNkNTY1YmU4IDEwMDY0NAotLS0gYS9z
ZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKKysrIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVu
dC5jCkBAIC0xNDUsNiArMTQ1LDcgQEAgc3RydWN0IFJlZENoYW5uZWxDbGllbnRQcml2YXRlCiAg
ICAgICAgIH0gdXJnZW50OwogICAgIH0gc2VuZF9kYXRhOwogCisgICAgYm9vbCBibG9ja19yZWFk
OwogICAgIGJvb2wgZHVyaW5nX3NlbmQ7CiAgICAgR1F1ZXVlIHBpcGU7CiAKQEAgLTk3NCwxMCAr
OTc1LDMyIEBAIHJlZF9jaGFubmVsX2NsaWVudF93YXRjaF91cGRhdGVfbWFzayhSZWRDaGFubmVs
Q2xpZW50ICpyY2MsIGludCBldmVudF9tYXNrKQogICAgICAgICByZXR1cm47CiAgICAgfQogCisg
ICAgaWYgKHJjYy0+cHJpdi0+YmxvY2tfcmVhZCkgeworICAgICAgICBldmVudF9tYXNrICY9IH5T
UElDRV9XQVRDSF9FVkVOVF9SRUFEOworICAgIH0KKwogICAgIGNvcmUgPSByZWRfY2hhbm5lbF9n
ZXRfY29yZV9pbnRlcmZhY2UocmNjLT5wcml2LT5jaGFubmVsKTsKICAgICBjb3JlLT53YXRjaF91
cGRhdGVfbWFzayhjb3JlLCByY2MtPnByaXYtPnN0cmVhbS0+d2F0Y2gsIGV2ZW50X21hc2spOwog
fQogCit2b2lkIHJlZF9jaGFubmVsX2NsaWVudF9ibG9ja19yZWFkKFJlZENoYW5uZWxDbGllbnQg
KnJjYykKK3sKKyAgICBpZiAocmNjLT5wcml2LT5ibG9ja19yZWFkKSB7CisgICAgICAgIHJldHVy
bjsKKyAgICB9CisgICAgcmNjLT5wcml2LT5ibG9ja19yZWFkID0gdHJ1ZTsKKyAgICByZWRfY2hh
bm5lbF9jbGllbnRfd2F0Y2hfdXBkYXRlX21hc2socmNjLCBTUElDRV9XQVRDSF9FVkVOVF9XUklU
RSk7Cit9CisKK3ZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X3VuYmxvY2tfcmVhZChSZWRDaGFubmVs
Q2xpZW50ICpyY2MpCit7CisgICAgaWYgKCFyY2MtPnByaXYtPmJsb2NrX3JlYWQpIHsKKyAgICAg
ICAgcmV0dXJuOworICAgIH0KKyAgICByY2MtPnByaXYtPmJsb2NrX3JlYWQgPSBmYWxzZTsKKyAg
ICByZWRfY2hhbm5lbF9jbGllbnRfd2F0Y2hfdXBkYXRlX21hc2socmNjLCBTUElDRV9XQVRDSF9F
VkVOVF9SRUFEfFNQSUNFX1dBVENIX0VWRU5UX1dSSVRFKTsKK30KKwogc3RhdGljIHZvaWQgcmVk
X2NoYW5uZWxfY2xpZW50X3NlYW1sZXNzX21pZ3JhdGlvbl9kb25lKFJlZENoYW5uZWxDbGllbnQg
KnJjYykKIHsKICAgICByY2MtPnByaXYtPndhaXRfbWlncmF0ZV9kYXRhID0gRkFMU0U7CkBAIC0x
MjIxLDYgKzEyNDQsMTEgQEAgc3RhdGljIHZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X2hhbmRsZV9p
bmNvbWluZyhSZWRDaGFubmVsQ2xpZW50ICpyY2MpCiAgICAgICAgIGlmIChidWZmZXItPm1zZ19w
b3MgPCBtc2dfc2l6ZSkgewogICAgICAgICAgICAgaWYgKCFidWZmZXItPm1zZykgewogICAgICAg
ICAgICAgICAgIGJ1ZmZlci0+bXNnID0gcmVkX2NoYW5uZWxfY2xpZW50X2FsbG9jX21zZ19idWYo
cmNjLCBtc2dfdHlwZSwgbXNnX3NpemUpOworICAgICAgICAgICAgICAgIGlmIChidWZmZXItPm1z
ZyA9PSBOVUxMICYmIHJjYy0+cHJpdi0+YmxvY2tfcmVhZCkgeworICAgICAgICAgICAgICAgICAg
ICAvLyBpZiB3ZSBhcmUgYmxvY2tlZCBieSBmbG93IGNvbnRyb2wganVzdCByZXR1cm4sIG1lc3Nh
Z2Ugd2lsbCBiZSByZWFkCisgICAgICAgICAgICAgICAgICAgIC8vIHdoZW4gZGF0YSB3aWxsIGJl
IGF2YWlsYWJsZQorICAgICAgICAgICAgICAgICAgICByZXR1cm47CisgICAgICAgICAgICAgICAg
fQogICAgICAgICAgICAgICAgIGlmIChidWZmZXItPm1zZyA9PSBOVUxMKSB7CiAgICAgICAgICAg
ICAgICAgICAgIHJlZF9jaGFubmVsX3dhcm5pbmcoY2hhbm5lbCwgIkVSUk9SOiBjaGFubmVsIHJl
ZnVzZWQgdG8gYWxsb2NhdGUgYnVmZmVyLiIpOwogICAgICAgICAgICAgICAgICAgICByZWRfY2hh
bm5lbF9jbGllbnRfZGlzY29ubmVjdChyY2MpOwpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFu
bmVsLWNsaWVudC5oIGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5oCmluZGV4IDFjYTBhZDcx
Ny4uNTZlMDA2ZWM1IDEwMDY0NAotLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmgKKysr
IGIvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5oCkBAIC0xMzcsNiArMTM3LDEwIEBAIGdib29s
ZWFuIHJlZF9jaGFubmVsX2NsaWVudF9zZXRfbWlncmF0aW9uX3NlYW1sZXNzKFJlZENoYW5uZWxD
bGllbnQgKnJjYyk7CiB2b2lkIHJlZF9jaGFubmVsX2NsaWVudF9zZXRfZGVzdHJveWluZyhSZWRD
aGFubmVsQ2xpZW50ICpyY2MpOwogYm9vbCByZWRfY2hhbm5lbF9jbGllbnRfaXNfZGVzdHJveWlu
ZyhSZWRDaGFubmVsQ2xpZW50ICpyY2MpOwogCisvKiBhbGxvdyB0byBibG9jayBvciB1bmJsb2Nr
IHJlYWRpbmcgKi8KK3ZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X2Jsb2NrX3JlYWQoUmVkQ2hhbm5l
bENsaWVudCAqcmNjKTsKK3ZvaWQgcmVkX2NoYW5uZWxfY2xpZW50X3VuYmxvY2tfcmVhZChSZWRD
aGFubmVsQ2xpZW50ICpyY2MpOworCiBzdHJ1Y3QgUmVkQ2hhbm5lbENsaWVudAogewogICAgIEdP
YmplY3QgcGFyZW50OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
