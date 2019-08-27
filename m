Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE59E3F9
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CA0898A8;
	Tue, 27 Aug 2019 09:23:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8AF898A8
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ACF1F308A9E0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:25 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C42085D9CC;
 Tue, 27 Aug 2019 09:23:23 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:27 +0100
Message-Id: <20190827092246.10276-11-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 27 Aug 2019 09:23:25 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 10/29] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

VXBkYXRlIGd1YXJkIHN0eWxlCi0tLQogc3JjL2NkLXNjc2ktZGV2LXBhcmFtcy5oIHwgNSArLS0t
LQogc3JjL2NkLXNjc2kuaCAgICAgICAgICAgIHwgNSArLS0tLQogc3JjL2NkLXVzYi1idWxrLW1z
ZC5oICAgIHwgNSArLS0tLQogc3JjL3Njc2ktY29uc3RhbnRzLmggICAgIHwgNSArLS0tLQogNCBm
aWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3NyYy9jZC1zY3NpLWRldi1wYXJhbXMuaCBiL3NyYy9jZC1zY3NpLWRldi1wYXJhbXMuaApp
bmRleCBiNDgwYmNkYy4uMzQ0ZjcyMGMgMTAwNjQ0Ci0tLSBhL3NyYy9jZC1zY3NpLWRldi1wYXJh
bXMuaAorKysgYi9zcmMvY2Qtc2NzaS1kZXYtcGFyYW1zLmgKQEAgLTIxLDggKzIxLDcgQEAKICAg
IExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3
LmdudS5vcmcvbGljZW5zZXMvPi4KICovCiAKLSNpZm5kZWYgU1BJQ0VfR1RLX0NEX1NDU0lfREVW
X1BBUkFNU19IXwotI2RlZmluZSBTUElDRV9HVEtfQ0RfU0NTSV9ERVZfUEFSQU1TX0hfCisjcHJh
Z21hIG9uY2UKIAogI2luY2x1ZGUgPGdpby9naW8uaD4KIApAQCAtNDUsNSArNDQsMyBAQCB0eXBl
ZGVmIHN0cnVjdCBDZFNjc2lNZWRpYVBhcmFtZXRlcnMgewogICAgIHVpbnQ2NF90IHNpemU7CiAg
ICAgdWludDMyX3QgYmxvY2tfc2l6ZTsKIH0gQ2RTY3NpTWVkaWFQYXJhbWV0ZXJzOwotCi0jZW5k
aWYgLyogU1BJQ0VfR1RLX0NEX1NDU0lfREVWX1BBUkFNU19IXyAqLwpkaWZmIC0tZ2l0IGEvc3Jj
L2NkLXNjc2kuaCBiL3NyYy9jZC1zY3NpLmgKaW5kZXggYzA1OGE2NmUuLjg2ZTk1MWI4IDEwMDY0
NAotLS0gYS9zcmMvY2Qtc2NzaS5oCisrKyBiL3NyYy9jZC1zY3NpLmgKQEAgLTIxLDggKzIxLDcg
QEAKICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRw
Oi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KICovCiAKLSNpZm5kZWYgU1BJQ0VfR1RLX0NEX1ND
U0lfSF9fCi0jZGVmaW5lIFNQSUNFX0dUS19DRF9TQ1NJX0hfXworI3ByYWdtYSBvbmNlCiAKICNp
bmNsdWRlICJjZC1zY3NpLWRldi1wYXJhbXMuaCIKICNpbmNsdWRlICJjZC11c2ItYnVsay1tc2Qu
aCIKQEAgLTExNiw1ICsxMTUsMyBAQCB2b2lkIGNkX3Njc2lfZGV2X3JlcXVlc3RfY29tcGxldGUo
dm9pZCAqdGFyZ2V0X3VzZXJfZGF0YSwgQ2RTY3NpUmVxdWVzdCAqcmVxdWVzdAogdm9pZCBjZF9z
Y3NpX2Rldl9jaGFuZ2VkKHZvaWQgKnRhcmdldF91c2VyX2RhdGEsIHVpbnQzMl90IGx1bik7CiB2
b2lkIGNkX3Njc2lfZGV2X3Jlc2V0X2NvbXBsZXRlKHZvaWQgKnRhcmdldF91c2VyX2RhdGEsIHVp
bnQzMl90IGx1bik7CiB2b2lkIGNkX3Njc2lfdGFyZ2V0X3Jlc2V0X2NvbXBsZXRlKHZvaWQgKnRh
cmdldF91c2VyX2RhdGEpOwotCi0jZW5kaWYgLyogU1BJQ0VfR1RLX0NEX1NDU0lfSF9fICovCmRp
ZmYgLS1naXQgYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmggYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmgK
aW5kZXggNDkyYTQ5YjguLjg1NjYxMTY1IDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNk
LmgKKysrIGIvc3JjL2NkLXVzYi1idWxrLW1zZC5oCkBAIC0xOSw4ICsxOSw3IEBACiAgICAgTGlj
ZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251
Lm9yZy9saWNlbnNlcy8+LgogKi8KIAotI2lmbmRlZiBTUElDRV9HVEtfQ0RfVVNCX0JVTEtfTVNE
X0hfXwotI2RlZmluZSBTUElDRV9HVEtfQ0RfVVNCX0JVTEtfTVNEX0hfXworI3ByYWdtYSBvbmNl
CiAKIEdfQkVHSU5fREVDTFMKIApAQCAtMTMwLDUgKzEyOSwzIEBAIGludCBjZF91c2JfYnVsa19t
c2RfcmVhZChVc2JDZEJ1bGtNc2REZXZpY2UgKmRldmljZSwgdWludDMyX3QgbWF4X2xlbik7CiBp
bnQgY2RfdXNiX2J1bGtfbXNkX2NhbmNlbF9yZWFkKFVzYkNkQnVsa01zZERldmljZSAqZGV2aWNl
KTsKIAogR19FTkRfREVDTFMKLQotI2VuZGlmIC8qIFNQSUNFX0dUS19DRF9VU0JfQlVMS19NU0Rf
SF9fICovCmRpZmYgLS1naXQgYS9zcmMvc2NzaS1jb25zdGFudHMuaCBiL3NyYy9zY3NpLWNvbnN0
YW50cy5oCmluZGV4IGNmOGE4ODI1Li5hNmQzNGE2NSAxMDA2NDQKLS0tIGEvc3JjL3Njc2ktY29u
c3RhbnRzLmgKKysrIGIvc3JjL3Njc2ktY29uc3RhbnRzLmgKQEAgLTE3LDggKzE3LDcgQEAKICAg
IExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3
LmdudS5vcmcvbGljZW5zZXMvPi4KICovCiAKLSNpZm5kZWYgU1BJQ0VfR1RLX1NDU0lfQ09OU1RB
TlRTX0hfXwotI2RlZmluZSBTUElDRV9HVEtfU0NTSV9DT05TVEFOVFNfSF9fCisjcHJhZ21hIG9u
Y2UKIAogLyoKICAqICAgICAgU0NTSSBvcGNvZGVzCkBAIC0zMjAsNSArMzE5LDMgQEAKICNkZWZp
bmUgTU1DX1BST0ZJTEVfSEREVkRfUl9ETCAgICAgICAgICAweDAwNTgKICNkZWZpbmUgTU1DX1BS
T0ZJTEVfSEREVkRfUldfREwgICAgICAgICAweDAwNUEKICNkZWZpbmUgTU1DX1BST0ZJTEVfSU5W
QUxJRCAgICAgICAgICAgICAweEZGRkYKLQotI2VuZGlmCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
