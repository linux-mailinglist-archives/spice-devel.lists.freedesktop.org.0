Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C2D71406
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 10:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1469489EBD;
	Tue, 23 Jul 2019 08:31:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808A089EBD
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:31:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 28C5B81F0F
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:31:29 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6284B5D9C5;
 Tue, 23 Jul 2019 08:31:28 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 09:31:25 +0100
Message-Id: <20190723083125.10571-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 23 Jul 2019 08:31:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH vd_agent_linux] x11: Change check to make code
 scanners not giving warning
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

U29tZSBjb2RlIHNjYW5uZXJzIChib3RoIENvdmVyaXR5IGFuZCBjbGFuZyBvbmUpIHJlcG9ydCB0
aGF0CnByZXZfc2VsL3ByZXZfY29uZCBjb3VsZCBiZSB1bnJlZmVyZW5jZWQgd2hpbGUgTlVMTC4K
Q2hhbmdlIGNvbmRpdGlvbiB0byBtYWtlIGNsZWFyIGEgTlVMTCBwb2ludGVyIGlzIG5vdCB1c2Vk
LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0t
LQogc3JjL3ZkYWdlbnQveDExLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudC94MTEuYyBi
L3NyYy92ZGFnZW50L3gxMS5jCmluZGV4IDk2NmVhNjIuLjZmODM4NDkgMTAwNjQ0Ci0tLSBhL3Ny
Yy92ZGFnZW50L3gxMS5jCisrKyBiL3NyYy92ZGFnZW50L3gxMS5jCkBAIC0zOTIsNyArMzkyLDcg
QEAgc3RhdGljIHZvaWQgdmRhZ2VudF94MTFfc2V0X2NsaXBib2FyZF9vd25lcihzdHJ1Y3QgdmRh
Z2VudF94MTEgKngxMSwKICAgICAgICAgICAgICAgICBvbmNlID0gMDsKICAgICAgICAgICAgIH0K
ICAgICAgICAgICAgIHZkYWdlbnRfeDExX3NlbmRfc2VsZWN0aW9uX25vdGlmeSh4MTEsIE5vbmUs
IGN1cnJfc2VsKTsKLSAgICAgICAgICAgIGlmIChjdXJyX3NlbCA9PSB4MTEtPnNlbGVjdGlvbl9y
ZXEpIHsKKyAgICAgICAgICAgIGlmIChwcmV2X3NlbCA9PSBOVUxMKSB7CiAgICAgICAgICAgICAg
ICAgeDExLT5zZWxlY3Rpb25fcmVxID0gbmV4dF9zZWw7CiAgICAgICAgICAgICAgICAgZnJlZSh4
MTEtPnNlbGVjdGlvbl9yZXFfZGF0YSk7CiAgICAgICAgICAgICAgICAgeDExLT5zZWxlY3Rpb25f
cmVxX2RhdGEgPSBOVUxMOwpAQCAtNDAwLDcgKzQwMCw2IEBAIHN0YXRpYyB2b2lkIHZkYWdlbnRf
eDExX3NldF9jbGlwYm9hcmRfb3duZXIoc3RydWN0IHZkYWdlbnRfeDExICp4MTEsCiAgICAgICAg
ICAgICAgICAgeDExLT5zZWxlY3Rpb25fcmVxX2RhdGFfc2l6ZSA9IDA7CiAgICAgICAgICAgICAg
ICAgeDExLT5zZWxlY3Rpb25fcmVxX2F0b20gPSBOb25lOwogICAgICAgICAgICAgfSBlbHNlIHsK
LSAgICAgICAgICAgICAgICAvLyBjb3Zlcml0eVt2YXJfZGVyZWZfb3BdIGlmIGl0IGlzIG5vdCB0
aGUgZmlyc3QgdGhlcmUncyBhIHByZXZpb3VzCiAgICAgICAgICAgICAgICAgcHJldl9zZWwtPm5l
eHQgPSBuZXh0X3NlbDsKICAgICAgICAgICAgIH0KICAgICAgICAgICAgIGZyZWUoY3Vycl9zZWwp
OwpAQCAtNDI0LDEyICs0MjMsMTEgQEAgc3RhdGljIHZvaWQgdmRhZ2VudF94MTFfc2V0X2NsaXBi
b2FyZF9vd25lcihzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSwKICAgICAgICAgICAgIGlmICh4MTEt
PnZkYWdlbnRkKQogICAgICAgICAgICAgICAgIHVkc2NzX3dyaXRlKHgxMS0+dmRhZ2VudGQsIFZE
QUdFTlREX0NMSVBCT0FSRF9EQVRBLCBzZWxlY3Rpb24sCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgVkRfQUdFTlRfQ0xJUEJPQVJEX05PTkUsIE5VTEwsIDApOwotICAgICAgICAgICAgaWYg
KGN1cnJfY29udiA9PSB4MTEtPmNvbnZlcnNpb25fcmVxKSB7CisgICAgICAgICAgICBpZiAocHJl
dl9jb252ID09IE5VTEwpIHsKICAgICAgICAgICAgICAgICB4MTEtPmNvbnZlcnNpb25fcmVxID0g
bmV4dF9jb252OwogICAgICAgICAgICAgICAgIHgxMS0+Y2xpcGJvYXJkX2RhdGFfc2l6ZSA9IDA7
CiAgICAgICAgICAgICAgICAgeDExLT5leHBlY3RfcHJvcGVydHlfbm90aWZ5ID0gMDsKICAgICAg
ICAgICAgIH0gZWxzZSB7Ci0gICAgICAgICAgICAgICAgLy8gY292ZXJpdHlbdmFyX2RlcmVmX29w
XSBpZiBpdCBpcyBub3QgdGhlIGZpcnN0IHRoZXJlJ3MgYSBwcmV2aW91cwogICAgICAgICAgICAg
ICAgIHByZXZfY29udi0+bmV4dCA9IG5leHRfY29udjsKICAgICAgICAgICAgIH0KICAgICAgICAg
ICAgIGZyZWUoY3Vycl9jb252KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
