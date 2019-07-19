Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F9B6E347
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2019 11:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7146A6E5DB;
	Fri, 19 Jul 2019 09:18:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874266E5DB
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 09:18:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3156219CF7A
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2019 09:18:35 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A0CF620A3;
 Fri, 19 Jul 2019 09:18:34 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 19 Jul 2019 10:18:27 +0100
Message-Id: <20190719091827.30413-3-fziglio@redhat.com>
In-Reply-To: <20190719091827.30413-1-fziglio@redhat.com>
References: <20190719091827.30413-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 19 Jul 2019 09:18:35 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 2/2] red-parse-qxl: Fix QUIC
 images from QXL
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

VGhlIGRlY29kaW5nIGlzIHdyb25nLCB0aGUgUmVkIGFuZCBRWEwgc3RydWN0dXJlcyBhcmUgZGlm
ZmVyZW50IHNvCmNvZGUgaXMgbm90IGRvaW5nIHdoYXQgaXMgZXhwZWN0ZWQuIHJlZC1wYXJzZS1x
eGwgdHJhbnNsYXRlIGZyb20gUVhMCnRvIFJlZCBzdHJ1Y3R1cmVzLCByZWQtcmVjb3JkLXF4bCBz
YXZlcyBSZWQgc3RydWN0dXJlIHRvIGZpbGUsCnJlZC1yZXBsYXktcXhsIGlzIHN1cHBvc2VkIHRv
IHJlYWQgZnJvbSBmaWxlIGludG8gUVhMIGRpcmVjdGx5LgoKTm90IGVhc3kgdG8gcmVwcm9kdWNl
LCB0aGUgb25seSBkcml2ZXIgaXMgWERETSB3aGljaCBtZWFucyBXaW5kb3dzIFhQCm9yIHNpbWls
YXJzLCBJIGdvdCBubyByZWNvcmRpbmcgd2l0aCBzdWNoIGltYWdlcy4KClNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9yZWQtcmVw
bGF5LXF4bC5jIHwgMTcgKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtcmVwbGF5
LXF4bC5jIGIvc2VydmVyL3JlZC1yZXBsYXktcXhsLmMKaW5kZXggNjc0ZmVhZTJmLi43MTA0Yzgx
Y2QgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtcmVwbGF5LXF4bC5jCisrKyBiL3NlcnZlci9yZWQt
cmVwbGF5LXF4bC5jCkBAIC00MTYsNyArNDE2LDcgQEAgc3RhdGljIHVpbnQ4X3QgKnJlZF9yZXBs
YXlfaW1hZ2VfZGF0YV9mbGF0KFNwaWNlUmVwbGF5ICpyZXBsYXksIHNpemVfdCAqc2l6ZSkKIAog
c3RhdGljIFFYTEltYWdlICpyZWRfcmVwbGF5X2ltYWdlKFNwaWNlUmVwbGF5ICpyZXBsYXksIHVp
bnQzMl90IGZsYWdzKQogewotICAgIFFYTEltYWdlKiBxeGwgPSBOVUxMOworICAgIFFYTEltYWdl
KiBxeGwgPSBOVUxMLCAqZGF0YTsKICAgICBzaXplX3QgYml0bWFwX3NpemU7CiAgICAgc3NpemVf
dCBzaXplOwogICAgIHVpbnQ4X3QgcXhsX2ZsYWdzOwpAQCAtNDk3LDEwICs0OTcsMTUgQEAgc3Rh
dGljIFFYTEltYWdlICpyZWRfcmVwbGF5X2ltYWdlKFNwaWNlUmVwbGF5ICpyZXBsYXksIHVpbnQz
Ml90IGZsYWdzKQogICAgICAgICBpZiAocmVwbGF5LT5lcnJvcikgewogICAgICAgICAgICAgcmV0
dXJuIE5VTEw7CiAgICAgICAgIH0KLSAgICAgICAgcXhsID0gcmVwbGF5X3JlYWxsb2MocmVwbGF5
LCBxeGwsIHNpemVvZihRWExJbWFnZURlc2NyaXB0b3IpICsgc2l6ZW9mKFFYTFFVSUNEYXRhKSAr
Ci0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHF4bC0+cXVpYy5kYXRhX3NpemUpOwotICAg
ICAgICBzaXplID0gcmVkX3JlcGxheV9kYXRhX2NodW5rcyhyZXBsYXksICJxdWljLmRhdGEiLCAo
dWludDhfdCoqKSZxeGwtPnF1aWMuZGF0YSwgMCk7CisgICAgICAgIGRhdGEgPSBOVUxMOworICAg
ICAgICBzaXplID0gcmVkX3JlcGxheV9kYXRhX2NodW5rcyhyZXBsYXksICJxdWljLmRhdGEiLCAo
dWludDhfdCoqKSZkYXRhLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
aXplb2YoUVhMSW1hZ2VEZXNjcmlwdG9yKSArIHNpemVvZihRWExRVUlDRGF0YSkgKworICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2YoUVhMRGF0YUNodW5rKSk7CiAg
ICAgICAgIHNwaWNlX2Fzc2VydChzaXplID09IHF4bC0+cXVpYy5kYXRhX3NpemUpOworICAgICAg
ICBkYXRhLT5kZXNjcmlwdG9yID0gcXhsLT5kZXNjcmlwdG9yOworICAgICAgICBkYXRhLT5xdWlj
LmRhdGFfc2l6ZSA9IHF4bC0+cXVpYy5kYXRhX3NpemU7CisgICAgICAgIHJlcGxheV9mcmVlKHJl
cGxheSwgcXhsKTsKKyAgICAgICAgcXhsID0gZGF0YTsKICAgICAgICAgYnJlYWs7CiAgICAgZGVm
YXVsdDoKICAgICAgICAgc3BpY2Vfd2Fybl9pZl9yZWFjaGVkKCk7CkBAIC01MjYsNyArNTMxLDkg
QEAgc3RhdGljIHZvaWQgcmVkX3JlcGxheV9pbWFnZV9mcmVlKFNwaWNlUmVwbGF5ICpyZXBsYXks
IFFYTFBIWVNJQ0FMIHAsIHVpbnQzMl90IGYKICAgICBjYXNlIFNQSUNFX0lNQUdFX1RZUEVfU1VS
RkFDRToKICAgICAgICAgYnJlYWs7CiAgICAgY2FzZSBTUElDRV9JTUFHRV9UWVBFX1FVSUM6Ci0g
ICAgICAgIHJlZF9yZXBsYXlfZGF0YV9jaHVua3NfZnJlZShyZXBsYXksIHF4bCwgMCk7CisgICAg
ICAgIHJlZF9yZXBsYXlfZGF0YV9jaHVua3NfZnJlZShyZXBsYXksIHF4bCwKKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihRWExJbWFnZURlc2NyaXB0b3IpICsgc2l6
ZW9mKFFYTFFVSUNEYXRhKSArCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
aXplb2YoUVhMRGF0YUNodW5rKSk7CiAgICAgICAgIHF4bCA9IE5VTEw7CiAgICAgICAgIGJyZWFr
OwogICAgIGRlZmF1bHQ6Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
