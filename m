Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349FE87CB0
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C457D6EE1F;
	Fri,  9 Aug 2019 14:28:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB696EE2F
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0BFD830A5A6D
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:05 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E7ADD10018F9;
 Fri,  9 Aug 2019 14:28:02 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:38 +0100
Message-Id: <20190809142651.2967-21-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 09 Aug 2019 14:28:05 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 20/33] fixup! usb-redir: add
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

RG8gbm90IHJldHVybiBuZWdhdGl2ZSB2YWx1ZXMgZnJvbSBzY3NpX2NkYl9sZW5ndGguClRoZSB2
YWx1ZSBnZXQgd3JpdHRlbiBpbiBjYmRfbGVuIGZpZWxkIHdpdGggaXMgdW5zaWduZWQgYW5kCnVz
ZSB0byByZXByZXNlbnQgdGhlIHVzZWQgbGVuZ3RoIG9mIGEgYnVmZmVyLCBhdm9pZCBwb3NzaWJs
ZQpwb3RlbnRpYWwgZnV0dXJlIG92ZXJmbG93cyBkdWUgdG8gaXQuCi0tLQogc3JjL2NkLXNjc2ku
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jZC1zY3NpLmMgYi9zcmMvY2Qtc2NzaS5jCmluZGV4IGQw
MzllM2M0Li4zYzFmMGIzZSAxMDA2NDQKLS0tIGEvc3JjL2NkLXNjc2kuYworKysgYi9zcmMvY2Qt
c2NzaS5jCkBAIC03MzQsOSArNzM0LDkgQEAgc3RhdGljIHZvaWQgc3RycGFkY3B5KGNoYXIgKmJ1
ZiwgaW50IGJ1Zl9zaXplLCBjb25zdCBjaGFyICpzdHIsIGNoYXIgcGFkKQogCiAvKiBTQ1NJIENE
QiAqLwogCi1zdGF0aWMgaW50IHNjc2lfY2RiX2xlbmd0aChjb25zdCB1aW50OF90ICpjZGIpCitz
dGF0aWMgdW5zaWduZWQgaW50IHNjc2lfY2RiX2xlbmd0aChjb25zdCB1aW50OF90ICpjZGIpCiB7
Ci0gICAgaW50IGNkYl9sZW47CisgICAgdW5zaWduZWQgaW50IGNkYl9sZW47CiAKICAgICBzd2l0
Y2ggKGNkYlswXSA+PiA1KSB7CiAgICAgY2FzZSAwOgpAQCAtNzUzLDcgKzc1Myw3IEBAIHN0YXRp
YyBpbnQgc2NzaV9jZGJfbGVuZ3RoKGNvbnN0IHVpbnQ4X3QgKmNkYikKICAgICAgICAgY2RiX2xl
biA9IDEyOwogICAgICAgICBicmVhazsKICAgICBkZWZhdWx0OgotICAgICAgICBjZGJfbGVuID0g
LTE7CisgICAgICAgIGNkYl9sZW4gPSAwOwogICAgIH0KICAgICByZXR1cm4gY2RiX2xlbjsKIH0K
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
