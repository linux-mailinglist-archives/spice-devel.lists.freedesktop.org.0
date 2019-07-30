Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD35B7A790
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154C66E4FB;
	Tue, 30 Jul 2019 12:04:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C847D6E4F9
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 70E4130BD1CB
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:30 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A88E95D6B2;
 Tue, 30 Jul 2019 12:04:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:23 +0100
Message-Id: <20190730120331.17967-35-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 30 Jul 2019 12:04:30 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 36/44] fixup! usb-redir: add
 implementation of emulated CD device
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

VXNlIGdfY2xlYXJfb2JqZWN0IHdoZXJlIHBvc3NpYmxlCi0tLQogc3JjL3VzYi1kZXZpY2UtY2Qu
YyB8IDE2ICsrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLWNkLmMgYi9zcmMv
dXNiLWRldmljZS1jZC5jCmluZGV4IDk1NTRhODJmLi5lNDgyMzZiNCAxMDA2NDQKLS0tIGEvc3Jj
L3VzYi1kZXZpY2UtY2QuYworKysgYi9zcmMvdXNiLWRldmljZS1jZC5jCkBAIC0xMzEsOCArMTMx
LDcgQEAgc3RhdGljIGludCBjZF9kZXZpY2Vfb3Blbl9zdHJlYW0oU3BpY2VDZExVICp1bml0LCBj
b25zdCBjaGFyICpmaWxlbmFtZSkKICAgICAgICAgfQogICAgICAgICBpZiAoIXVuaXQtPnN0cmVh
bSkgewogICAgICAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBjYW4ndCBvcGVuIHN0cmVhbSBvbiAl
cyIsIF9fRlVOQ1RJT05fXywgdW5pdC0+ZmlsZW5hbWUpOwotICAgICAgICAgICAgZ19vYmplY3Rf
dW5yZWYodW5pdC0+ZmlsZV9vYmplY3QpOwotICAgICAgICAgICAgdW5pdC0+ZmlsZV9vYmplY3Qg
PSBOVUxMOworICAgICAgICAgICAgZ19jbGVhcl9vYmplY3QoJnVuaXQtPmZpbGVfb2JqZWN0KTsK
ICAgICAgICAgICAgIGVycm9yID0gLTE7CiAgICAgICAgIH0KICAgICB9CkBAIC0yODYsOCArMjg1
LDcgQEAgc3RhdGljIGludCBjZF9kZXZpY2Vfb3Blbl9zdHJlYW0oU3BpY2VDZExVICp1bml0LCBj
b25zdCBjaGFyICpmaWxlbmFtZSkKICAgICAgICAgfQogICAgICAgICBpZiAoIXVuaXQtPnN0cmVh
bSkgewogICAgICAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiBjYW4ndCBvcGVuIHN0cmVhbSBvbiAl
cyIsIF9fRlVOQ1RJT05fXywgdW5pdC0+ZmlsZW5hbWUpOwotICAgICAgICAgICAgZ19vYmplY3Rf
dW5yZWYodW5pdC0+ZmlsZV9vYmplY3QpOwotICAgICAgICAgICAgdW5pdC0+ZmlsZV9vYmplY3Qg
PSBOVUxMOworICAgICAgICAgICAgZ19jbGVhcl9vYmplY3QoJnVuaXQtPmZpbGVfb2JqZWN0KTsK
ICAgICAgICAgICAgIGVycm9yID0gLTE7CiAgICAgICAgIH0KICAgICB9IGVsc2UgewpAQCAtMzUz
LDE0ICszNTEsOCBAQCBzdGF0aWMgZ2Jvb2xlYW4gb3Blbl9zdHJlYW0oU3BpY2VDZExVICp1bml0
LCBjb25zdCBjaGFyICpmaWxlbmFtZSkKIAogc3RhdGljIHZvaWQgY2xvc2Vfc3RyZWFtKFNwaWNl
Q2RMVSAqdW5pdCkKIHsKLSAgICBpZiAodW5pdC0+c3RyZWFtKSB7Ci0gICAgICAgIGdfb2JqZWN0
X3VucmVmKHVuaXQtPnN0cmVhbSk7Ci0gICAgICAgIHVuaXQtPnN0cmVhbSA9IE5VTEw7Ci0gICAg
fQotICAgIGlmICh1bml0LT5maWxlX29iamVjdCkgewotICAgICAgICBnX29iamVjdF91bnJlZih1
bml0LT5maWxlX29iamVjdCk7Ci0gICAgICAgIHVuaXQtPmZpbGVfb2JqZWN0ID0gTlVMTDsKLSAg
ICB9CisgICAgZ19jbGVhcl9vYmplY3QoJnVuaXQtPnN0cmVhbSk7CisgICAgZ19jbGVhcl9vYmpl
Y3QoJnVuaXQtPmZpbGVfb2JqZWN0KTsKIH0KIAogc3RhdGljIGdib29sZWFuIGxvYWRfbHVuKFVz
YkNkICpkLCBpbnQgdW5pdCwgZ2Jvb2xlYW4gbG9hZCkKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
