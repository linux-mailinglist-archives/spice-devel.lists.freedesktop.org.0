Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF27C2FDA4
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E0E6E36B;
	Thu, 30 May 2019 14:23:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A82A6E369
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BB194C130719
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:08 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E23491001E93;
 Thu, 30 May 2019 14:23:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:48 +0100
Message-Id: <20190530142254.28937-7-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 30 May 2019 14:23:08 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 07/13] cache-item: Remove only
 written fields
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

Y3Vyc29yX2NhY2hlX2l0ZW1zIGFuZCBwYWxldHRlX2NhY2hlX2l0ZW1zIHdoZXJlIG9ubHkgd3Jp
dHRlbgpidXQgbmV2ZXIgdXNlZC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9jYWNoZS1pdGVtLnRtcGwuYyAgICAgICB8IDMg
LS0tCiBzZXJ2ZXIvY3Vyc29yLWNoYW5uZWwtY2xpZW50LmMgfCAxIC0KIHNlcnZlci9kY2MtcHJp
dmF0ZS5oICAgICAgICAgICB8IDEgLQogMyBmaWxlcyBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYyBiL3NlcnZlci9jYWNoZS1pdGVt
LnRtcGwuYwppbmRleCBmMTE5YTllZTQuLjY5NjhkMjBkYiAxMDA2NDQKLS0tIGEvc2VydmVyL2Nh
Y2hlLWl0ZW0udG1wbC5jCisrKyBiL3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYwpAQCAtNzIsNyAr
NzIsNiBAQCBzdGF0aWMgdm9pZCBGVU5DX05BTUUocmVtb3ZlKShDSEFOTkVMQ0xJRU5UICpjaGFu
bmVsX2NsaWVudCwgUmVkQ2FjaGVJdGVtICppdGVtKQogICAgICAgICBub3cgPSAmKCpub3cpLT51
LmNhY2hlX2RhdGEubmV4dDsKICAgICB9CiAgICAgcmluZ19yZW1vdmUoJml0ZW0tPnUuY2FjaGVf
ZGF0YS5scnVfbGluayk7Ci0gICAgY2hhbm5lbF9jbGllbnQtPnByaXYtPlZBUl9OQU1FKGl0ZW1z
KS0tOwogICAgIGNoYW5uZWxfY2xpZW50LT5wcml2LT5WQVJfTkFNRShhdmFpbGFibGUpICs9IGl0
ZW0tPnUuY2FjaGVfZGF0YS5zaXplOwogCiAgICAgcmVkX3BpcGVfaXRlbV9pbml0KCZpdGVtLT51
LnBpcGVfZGF0YSwgUkVEX1BJUEVfSVRFTV9UWVBFX0lOVkFMX09ORSk7CkBAIC05Nyw3ICs5Niw2
IEBAIHN0YXRpYyBpbnQgRlVOQ19OQU1FKGFkZCkoQ0hBTk5FTENMSUVOVCAqY2hhbm5lbF9jbGll
bnQsIHVpbnQ2NF90IGlkLCBzaXplX3Qgc2l6CiAgICAgICAgIH0KICAgICAgICAgRlVOQ19OQU1F
KHJlbW92ZSkoY2hhbm5lbF9jbGllbnQsIHRhaWwpOwogICAgIH0KLSAgICArK2NoYW5uZWxfY2xp
ZW50LT5wcml2LT5WQVJfTkFNRShpdGVtcyk7CiAgICAgaXRlbS0+dS5jYWNoZV9kYXRhLm5leHQg
PSBjaGFubmVsX2NsaWVudC0+cHJpdi0+Q0FDSEVfTkFNRVsoa2V5ID0gQ0FDSEVfSEFTSF9LRVko
aWQpKV07CiAgICAgY2hhbm5lbF9jbGllbnQtPnByaXYtPkNBQ0hFX05BTUVba2V5XSA9IGl0ZW07
CiAgICAgcmluZ19pdGVtX2luaXQoJml0ZW0tPnUuY2FjaGVfZGF0YS5scnVfbGluayk7CkBAIC0x
MjAsNyArMTE4LDYgQEAgc3RhdGljIHZvaWQgRlVOQ19OQU1FKHJlc2V0KShDSEFOTkVMQ0xJRU5U
ICpjaGFubmVsX2NsaWVudCwgbG9uZyBzaXplKQogICAgIH0KICAgICByaW5nX2luaXQoJmNoYW5u
ZWxfY2xpZW50LT5wcml2LT5WQVJfTkFNRShscnUpKTsKICAgICBjaGFubmVsX2NsaWVudC0+cHJp
di0+VkFSX05BTUUoYXZhaWxhYmxlKSA9IHNpemU7Ci0gICAgY2hhbm5lbF9jbGllbnQtPnByaXYt
PlZBUl9OQU1FKGl0ZW1zKSA9IDA7CiB9CiAKIApkaWZmIC0tZ2l0IGEvc2VydmVyL2N1cnNvci1j
aGFubmVsLWNsaWVudC5jIGIvc2VydmVyL2N1cnNvci1jaGFubmVsLWNsaWVudC5jCmluZGV4IGZl
YzI2YzA5Ny4uYTE1Zjc4Y2VlIDEwMDY0NAotLS0gYS9zZXJ2ZXIvY3Vyc29yLWNoYW5uZWwtY2xp
ZW50LmMKKysrIGIvc2VydmVyL2N1cnNvci1jaGFubmVsLWNsaWVudC5jCkBAIC0zOCw3ICszOCw2
IEBAIHN0cnVjdCBDdXJzb3JDaGFubmVsQ2xpZW50UHJpdmF0ZQogICAgIFJlZENhY2hlSXRlbSAq
Y3Vyc29yX2NhY2hlW0NVUlNPUl9DQUNIRV9IQVNIX1NJWkVdOwogICAgIFJpbmcgY3Vyc29yX2Nh
Y2hlX2xydTsKICAgICBsb25nIGN1cnNvcl9jYWNoZV9hdmFpbGFibGU7Ci0gICAgdWludDMyX3Qg
Y3Vyc29yX2NhY2hlX2l0ZW1zOwogfTsKIAogR19ERUZJTkVfVFlQRV9XSVRIX1BSSVZBVEUoQ3Vy
c29yQ2hhbm5lbENsaWVudCwgY3Vyc29yX2NoYW5uZWxfY2xpZW50LApkaWZmIC0tZ2l0IGEvc2Vy
dmVyL2RjYy1wcml2YXRlLmggYi9zZXJ2ZXIvZGNjLXByaXZhdGUuaAppbmRleCA4NDhkNDI3MDIu
LjBjOGVmYzRiNiAxMDA2NDQKLS0tIGEvc2VydmVyL2RjYy1wcml2YXRlLmgKKysrIGIvc2VydmVy
L2RjYy1wcml2YXRlLmgKQEAgLTQ0LDcgKzQ0LDYgQEAgc3RydWN0IERpc3BsYXlDaGFubmVsQ2xp
ZW50UHJpdmF0ZQogICAgIFJlZENhY2hlSXRlbSAqcGFsZXR0ZV9jYWNoZVtQQUxFVFRFX0NBQ0hF
X0hBU0hfU0laRV07CiAgICAgUmluZyBwYWxldHRlX2NhY2hlX2xydTsKICAgICBsb25nIHBhbGV0
dGVfY2FjaGVfYXZhaWxhYmxlOwotICAgIHVpbnQzMl90IHBhbGV0dGVfY2FjaGVfaXRlbXM7CiAK
ICAgICBzdHJ1Y3QgewogICAgICAgICBGcmVlTGlzdCBmcmVlX2xpc3Q7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
