Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC83FD5EB6
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 11:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386326E1F7;
	Mon, 14 Oct 2019 09:22:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89D026E1F5
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3419510C092A
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:32 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC71360605;
 Mon, 14 Oct 2019 09:22:30 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:22:16 +0100
Message-Id: <20191014092217.24405-7-fziglio@redhat.com>
In-Reply-To: <20191014092217.24405-1-fziglio@redhat.com>
References: <20191014092217.24405-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Mon, 14 Oct 2019 09:22:32 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 6/7] test-smartcard: Test
 invalid reader closes the channel
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
Cc: cfergeau@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMgYi9zZXJ2ZXIvdGVz
dHMvdGVzdC1zbWFydGNhcmQuYwppbmRleCBmMTAyNDUyZjQuLjI1YTFiYzJiYyAxMDA2NDQKLS0t
IGEvc2VydmVyL3Rlc3RzL3Rlc3Qtc21hcnRjYXJkLmMKKysrIGIvc2VydmVyL3Rlc3RzL3Rlc3Qt
c21hcnRjYXJkLmMKQEAgLTQ4LDYgKzQ4LDcgQEAgc3RhdGljIFNwaWNlQnVmZmVyIGNoYW5uZWxf
YnVmOwogc3RhdGljIFNwaWNlQnVmZmVyIGNoYW5uZWxfZXhwZWN0ZWQ7CiAvLyBleHBlY3RlZCBi
dWZmZXIgaW4gZGV2aWNlCiBzdGF0aWMgU3BpY2VCdWZmZXIgZGV2aWNlX2V4cGVjdGVkOworc3Rh
dGljIFNwaWNlV2F0Y2ggKndhdGNoOwogCiBzdGF0aWMgdm9pZCBuZXh0X3Rlc3Qodm9pZCk7CiAK
QEAgLTE0OCw2ICsxNDksMTMgQEAgc3RhdGljIHZvaWQgZGF0YV9mcm9tX2NoYW5uZWwoaW50IGZk
LCBpbnQgZXZlbnQsIHZvaWQgKm9wYXF1ZSkKICAgICB1aW50OF90IGJ1ZlsxMjhdOwogICAgIHNz
aXplX3QgcmV0ID0gc29ja2V0X3JlYWQoZmQsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOwogICAgIGlmIChy
ZXQgPD0gMCkgeworICAgICAgICBnX2Fzc2VydChyZXQgPT0gMCB8fCBlcnJubyA9PSBFQUdBSU4g
fHwgZXJybm8gPT0gRUlOVFIpOworICAgICAgICBpZiAocmV0ID09IDApIHsKKyAgICAgICAgICAg
IGdfd2FybmluZygiVEVTVDogY29ubmVjdGlvbiBjbG9zZWQiKTsKKyAgICAgICAgICAgIGNvcmUt
PndhdGNoX3JlbW92ZSh3YXRjaCk7CisgICAgICAgICAgICB3YXRjaCA9IE5VTEw7CisgICAgICAg
ICAgICBuZXh0X3Rlc3QoKTsKKyAgICAgICAgfQogICAgICAgICByZXR1cm47CiAgICAgfQogICAg
IHNwaWNlX2J1ZmZlcl9hcHBlbmQoJmNoYW5uZWxfYnVmLCBidWYsIHJldCk7CkBAIC0yOTQsNyAr
MzAyLDE5IEBAIHN0YXRpYyB2b2lkIG5leHRfdGVzdCh2b2lkKQogCiAgICAgICAgIHNwaWNlX3Nl
cnZlcl9jaGFyX2RldmljZV93YWtldXAoJnZtYy0+aW5zdGFuY2UpOwogICAgICAgICB9IGJyZWFr
OwotICAgIGNhc2UgODoKKyAgICAvLyBFaWdodGggdGVzdCwgYSBtZXNzYWdlIHdpdGggaW52YWxp
ZCByZWFkZXIgSUQgZnJvbSBkZXZpY2UgY2F1c2VkIHRoZSBjaGFubmVsCisgICAgLy8gdG8gYmUg
Y2xvc2VkCisgICAgY2FzZSA4OiB7CisgICAgICAgIGdfdGVzdF9hc3NlcnRfZXhwZWN0ZWRfbWVz
c2FnZXMoKTsKKworICAgICAgICBnX3Rlc3RfZXhwZWN0X21lc3NhZ2UoR19MT0dfRE9NQUlOLCBH
X0xPR19MRVZFTF9XQVJOSU5HLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIipFUlJP
UjogcmVjZWl2ZWQgbWVzc2FnZSBmb3Igbm9uIGV4aXN0aW5nIHJlYWRlcioiKTsKKyAgICAgICAg
Z190ZXN0X2V4cGVjdF9tZXNzYWdlKEdfTE9HX0RPTUFJTiwgR19MT0dfTEVWRUxfV0FSTklORywK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIqVEVTVDogY29ubmVjdGlvbiBjbG9zZWQq
Iik7CisKKyAgICAgICAgc2VuZF9kYXRhKGNsaWVudF9zb2NrZXQsIFZTQ19BUERVLCAweGFiY2Qp
OworICAgICAgICB9IGJyZWFrOworICAgIGNhc2UgOToKICAgICAgICAgZ190ZXN0X2Fzc2VydF9l
eHBlY3RlZF9tZXNzYWdlcygpOwogICAgICAgICBiYXNpY19ldmVudF9sb29wX3F1aXQoKTsKICAg
ICAgICAgYnJlYWs7CkBAIC0zNTAsOCArMzcwLDcgQEAgc3RhdGljIHZvaWQgdGVzdF9zbWFydGNh
cmQoVGVzdEZpeHR1cmUgKmZpeHR1cmUsIGdjb25zdHBvaW50ZXIgdXNlcl9kYXRhKQogICAgIHNl
bmRfYWNrX3N5bmMoY2xpZW50X3NvY2tldCwgMSk7CiAKICAgICAvLyBjaGVjayBkYXRhIGFyZSBw
cm9jZXNzZWQKLSAgICBTcGljZVdhdGNoICp3YXRjaCA9IGNvcmUtPndhdGNoX2FkZChjbGllbnRf
c29ja2V0LCBTUElDRV9XQVRDSF9FVkVOVF9SRUFELAotICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRhdGFfZnJvbV9jaGFubmVsLCBOVUxMKTsKKyAgICB3YXRjaCA9IGNv
cmUtPndhdGNoX2FkZChjbGllbnRfc29ja2V0LCBTUElDRV9XQVRDSF9FVkVOVF9SRUFELCBkYXRh
X2Zyb21fY2hhbm5lbCwgTlVMTCk7CiAgICAgdm1jLT5kYXRhX3dyaXR0ZW5fY2IgPSBjaGVja19k
YXRhOwogCiAgICAgLy8gc3RhcnQgYWxsIHRlc3QKQEAgLTM2MSw3ICszODAsOSBAQCBzdGF0aWMg
dm9pZCB0ZXN0X3NtYXJ0Y2FyZChUZXN0Rml4dHVyZSAqZml4dHVyZSwgZ2NvbnN0cG9pbnRlciB1
c2VyX2RhdGEpCiAgICAgYWxhcm0oMCk7CiAKICAgICAvLyBjbGVhbnVwCi0gICAgY29yZS0+d2F0
Y2hfcmVtb3ZlKHdhdGNoKTsKKyAgICBpZiAod2F0Y2gpIHsKKyAgICAgICAgY29yZS0+d2F0Y2hf
cmVtb3ZlKHdhdGNoKTsKKyAgICB9CiAgICAgcmVkX2NsaWVudF9kZXN0cm95KGNsaWVudCk7CiAg
ICAgZ19vYmplY3RfdW5yZWYobWFpbl9jaGFubmVsKTsKICAgICBnX29iamVjdF91bnJlZihjaGFu
bmVsKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
