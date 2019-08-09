Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D28B887CAE
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF356EE2D;
	Fri,  9 Aug 2019 14:28:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355896EE2D
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D7680306041F
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:58 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 02E8B10016EA;
 Fri,  9 Aug 2019 14:27:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:36 +0100
Message-Id: <20190809142651.2967-19-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Fri, 09 Aug 2019 14:27:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 18/33] fixup! usb-redir: add
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

UmV0YWluIHN0cmVhbSB1c2luZyByZWZlcmVuY2UgY291bnRpbmcuCkFsbG93IGNhbGxlciB0byBm
cmVlIHRoZSBvYmplY3QuCi0tLQogc3JjL2NkLXNjc2kuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2Nk
LXNjc2kuYyBiL3NyYy9jZC1zY3NpLmMKaW5kZXggZjllODQ0MWMuLjFjYjI2OGJmIDEwMDY0NAot
LS0gYS9zcmMvY2Qtc2NzaS5jCisrKyBiL3NyYy9jZC1zY3NpLmMKQEAgLTQzMyw2ICs0MzMsNyBA
QCB2b2lkIGNkX3Njc2lfdGFyZ2V0X2ZyZWUoQ2RTY3NpVGFyZ2V0ICpzdCkKICAgICAgICAgaWYg
KHVuaXQtPnJlYWxpemVkKSB7CiAgICAgICAgICAgICBjZF9zY3NpX2Rldl91bnJlYWxpemUoc3Qs
IGx1bik7CiAgICAgICAgIH0KKyAgICAgICAgZ19jbGVhcl9vYmplY3QoJnVuaXQtPnN0cmVhbSk7
CiAgICAgfQogICAgIGdfY2xlYXJfb2JqZWN0KCZzdC0+Y2FuY2VsbGFibGUpOwogICAgIGdfZnJl
ZShzdCk7CkBAIC00OTcsNyArNDk4LDcgQEAgaW50IGNkX3Njc2lfZGV2X3JlYWxpemUoQ2RTY3Np
VGFyZ2V0ICpzdCwgdWludDMyX3QgbHVuLAogc3RhdGljIHZvaWQgY2Rfc2NzaV9sdV9tZWRpYV9y
ZXNldChDZFNjc2lMVSAqZGV2KQogewogICAgIC8qIG1lZGlhX2V2ZW50IGlzIG5vdCBzZXQgaGVy
ZSwgYXMgaXQgZGVwZW5kcyBvbiB0aGUgY29udGV4dCAqLwotICAgIGRldi0+c3RyZWFtID0gTlVM
TDsKKyAgICBnX2NsZWFyX29iamVjdCgmZGV2LT5zdHJlYW0pOwogICAgIGRldi0+c2l6ZSA9IDA7
CiAgICAgZGV2LT5ibG9ja19zaXplID0gMDsKICAgICBkZXYtPm51bV9ibG9ja3MgPSAwOwpAQCAt
NTI2LDcgKzUyNyw3IEBAIHN0YXRpYyB2b2lkIGNkX3Njc2lfbHVfbG9hZChDZFNjc2lMVSAqZGV2
LAogewogICAgIGlmIChtZWRpYV9wYXJhbXMgIT0gTlVMTCkgewogICAgICAgICBkZXYtPm1lZGlh
X2V2ZW50ID0gQ0RfTUVESUFfRVZFTlRfTkVXX01FRElBOwotICAgICAgICBkZXYtPnN0cmVhbSA9
IG1lZGlhX3BhcmFtcy0+c3RyZWFtOworICAgICAgICBkZXYtPnN0cmVhbSA9IGdfb2JqZWN0X3Jl
ZihtZWRpYV9wYXJhbXMtPnN0cmVhbSk7CiAgICAgICAgIGRldi0+c2l6ZSA9IG1lZGlhX3BhcmFt
cy0+c2l6ZTsKICAgICAgICAgZGV2LT5ibG9ja19zaXplID0gbWVkaWFfcGFyYW1zLT5ibG9ja19z
aXplOwogICAgICAgICBkZXYtPm51bV9ibG9ja3MgPSBtZWRpYV9wYXJhbXMtPnNpemUgLyBtZWRp
YV9wYXJhbXMtPmJsb2NrX3NpemU7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
