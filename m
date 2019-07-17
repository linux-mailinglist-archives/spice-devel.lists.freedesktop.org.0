Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036626BA73
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 12:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1212589FA5;
	Wed, 17 Jul 2019 10:41:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E46289FA5
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 10:41:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1A7F83082134
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 10:41:40 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BCCE25D9CA;
 Wed, 17 Jul 2019 10:41:38 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 17 Jul 2019 11:41:33 +0100
Message-Id: <20190717104133.30186-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 17 Jul 2019 10:41:40 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] reds: Fix use-after-free
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

dmlkZW9fY29kZWNzIGNhbiBiZSBmcmVlZCBzbyB1c2UgaXQgYmVmb3JlLgoKU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3JlZHMu
YyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZHMuYyBiL3NlcnZlci9yZWRzLmMKaW5kZXgg
ODE3ZmRkNDIzLi43OGJiZTVhMGYgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWRzLmMKKysrIGIvc2Vy
dmVyL3JlZHMuYwpAQCAtMzg1MSw2ICszODUxLDEwIEBAIHN0YXRpYyBpbnQgcmVkc19zZXRfdmlk
ZW9fY29kZWNzX2Zyb21fc3RyaW5nKFJlZHNTdGF0ZSAqcmVkcywgY29uc3QgY2hhciAqY29kZWNz
CiAgICAgICAgIGNvZGVjcyA9IGM7CiAgICAgfQogCisgICAgaWYgKGluc3RhbGxlZCkgeworICAg
ICAgICAqaW5zdGFsbGVkID0gdmlkZW9fY29kZWNzLT5sZW47CisgICAgfQorCiAgICAgaWYgKHZp
ZGVvX2NvZGVjcy0+bGVuID09IDApIHsKICAgICAgICAgc3BpY2Vfd2FybmluZygiRmFpbGVkIHRv
IHNldCB2aWRlbyBjb2RlY3MsIGlucHV0IHN0cmluZzogJyVzJyIsIGNvZGVjcyk7CiAgICAgICAg
IGdfYXJyYXlfdW5yZWYodmlkZW9fY29kZWNzKTsKQEAgLTM4NjAsMTAgKzM4NjQsNiBAQCBzdGF0
aWMgaW50IHJlZHNfc2V0X3ZpZGVvX2NvZGVjc19mcm9tX3N0cmluZyhSZWRzU3RhdGUgKnJlZHMs
IGNvbnN0IGNoYXIgKmNvZGVjcwogCiAgICAgZ19mcmVlKGNvZGVjc19jb3B5KTsKIAotICAgIGlm
IChpbnN0YWxsZWQpIHsKLSAgICAgICAgKmluc3RhbGxlZCA9IHZpZGVvX2NvZGVjcy0+bGVuOwot
ICAgIH0KLQogICAgIHJldHVybiBpbnZhbGlkX2NvZGVjczsKIH0KIAotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
