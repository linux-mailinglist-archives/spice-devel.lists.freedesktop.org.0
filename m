Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E34C055418
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1556E16D;
	Tue, 25 Jun 2019 16:11:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682256E16B
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 12C76C18B2F3
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:56 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4278F5D70D;
 Tue, 25 Jun 2019 16:11:55 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:28 +0100
Message-Id: <20190625161147.25211-5-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 25 Jun 2019 16:11:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 04/23] websocket: Simplify and
 fix constrain_iov
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

VXNlIGdfbWVtZHVwIGluc3RlYWQgb2YgbWFudWFsIGNvcHkuClRyaW0gdGhlIG9yaWdpbmFsIGlv
diBpZiBuZWNlc3NhcnkuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvd2Vic29ja2V0LmMgfCAyNCArKysrKysrKysrKy0tLS0t
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvd2Vic29ja2V0LmMgYi9zZXJ2ZXIvd2Vic29ja2V0LmMK
aW5kZXggNThmMzZkYTBhLi5mYzFkODJjMjggMTAwNjQ0Ci0tLSBhL3NlcnZlci93ZWJzb2NrZXQu
YworKysgYi9zZXJ2ZXIvd2Vic29ja2V0LmMKQEAgLTMxMCwyNiArMzEwLDI0IEBAIHN0YXRpYyB2
b2lkIGNvbnN0cmFpbl9pb3Yoc3RydWN0IGlvdmVjICppb3YsIGludCBpb3ZjbnQsCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpb3ZlYyAqKmlvdl9vdXQsIGludCAqaW92X291dF9j
bnQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ2NF90IG1heGxlbikKIHsKLSAgICBp
bnQgaSwgajsKLQotICAgICppb3Zfb3V0ID0gaW92OwotICAgICppb3Zfb3V0X2NudCA9IGlvdmNu
dDsKKyAgICBpbnQgaTsKIAogICAgIGZvciAoaSA9IDA7IGkgPCBpb3ZjbnQgJiYgbWF4bGVuID4g
MDsgaSsrKSB7CiAgICAgICAgIGlmIChpb3ZbaV0uaW92X2xlbiA+IG1heGxlbikgewogICAgICAg
ICAgICAgLyogVE9ETyAtIFRoaXMgY29kZSBoYXMgbmV2ZXIgdHJpZ2dlcmVkIGFmYWlrLi4uICov
Ci0gICAgICAgICAgICAqaW92X291dF9jbnQgPSBpICsgMTsKLSAgICAgICAgICAgICppb3Zfb3V0
ID0gZ19tYWxsb2MoKCppb3Zfb3V0X2NudCkgKiBzaXplb2YgKCoqaW92X291dCkpOwotICAgICAg
ICAgICAgZm9yIChqID0gMDsgaiA8IGk7IGorKykgewotICAgICAgICAgICAgICAgICgqaW92X291
dClbal0uaW92X2Jhc2UgPSBpb3Zbal0uaW92X2Jhc2U7Ci0gICAgICAgICAgICAgICAgKCppb3Zf
b3V0KVtqXS5pb3ZfbGVuID0gaW92W2pdLmlvdl9sZW47Ci0gICAgICAgICAgICB9Ci0gICAgICAg
ICAgICAoKmlvdl9vdXQpW2pdLmlvdl9iYXNlID0gaW92W2pdLmlvdl9iYXNlOwotICAgICAgICAg
ICAgKCppb3Zfb3V0KVtqXS5pb3ZfbGVuID0gbWF4bGVuOwotICAgICAgICAgICAgYnJlYWs7Cisg
ICAgICAgICAgICAqaW92X291dF9jbnQgPSArK2k7CisgICAgICAgICAgICAqaW92X291dCA9IGdf
bWVtZHVwKGlvdiwgaSAqIHNpemVvZiAoKmlvdikpOworICAgICAgICAgICAgKCppb3Zfb3V0KVtp
LTFdLmlvdl9sZW4gPSBtYXhsZW47CisgICAgICAgICAgICByZXR1cm47CiAgICAgICAgIH0KICAg
ICAgICAgbWF4bGVuIC09IGlvdltpXS5pb3ZfbGVuOwogICAgIH0KKworICAgIC8qIHdlIG11c3Qg
dHJpbSB0aGUgaW92IGluIGNhc2UgbWF4bGVuIGluaXRpYWxseSBtYXRjaGVzIHNvbWUgY2h1bmtz
CisgICAgICogRm9yIGluc3RhbmNlIGlmIGluaXRpYWxseSB3ZSBoYWQgMiBjaHVua3MgMjU2IGFu
ZCAxMjggYnl0ZXMgcmVzcGVjdGl2ZWx5CisgICAgICogYW5kIGEgbWF4bGVuIG9mIDI1NiB3ZSBz
aG91bGQganVzdCByZXR1cm4gdGhlIGZpcnN0IGNodW5rICovCisgICAgKmlvdl9vdXRfY250ID0g
aTsKKyAgICAqaW92X291dCA9IGlvdjsKIH0KIAogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
