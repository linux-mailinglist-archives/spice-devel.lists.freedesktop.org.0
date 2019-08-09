Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6411087CA6
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9456EE20;
	Fri,  9 Aug 2019 14:27:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881BC6EE27
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 31A0F14AFA9
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:37 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4432A10018F9;
 Fri,  9 Aug 2019 14:27:33 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:29 +0100
Message-Id: <20190809142651.2967-12-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 09 Aug 2019 14:27:37 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 11/33] fixup! usb-redir: add
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

RmlsdGVyIGNtZF9sZW4gYml0cywgc3BlY2lmaWNhdGlvbnMgc3RhdGUgaXQncyBhIDUgYml0IGZp
ZWxkCgpBbHRob3VnaCBoaWdoZXIgYml0cyBvZiB0aGUgYnl0ZSBhcmUgcmVzZXJ2ZWQgYW5kIHNo
b3VsZCBiZSB6ZXJvCmZpbHRlciB0aGVtIG91dC4KQWxzbyBhY2NlcHQgMTYgYXMgbGVuZ3RoLgot
LS0KIHNyYy9jZC11c2ItYnVsay1tc2QuYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2QtdXNiLWJ1
bGstbXNkLmMgYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKaW5kZXggY2IwYWQ5MWMuLjQ5ZTAxZWI2
IDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKKysrIGIvc3JjL2NkLXVzYi1idWxr
LW1zZC5jCkBAIC0yNzEsOCArMjcxLDkgQEAgc3RhdGljIGludCBwYXJzZV91c2JfbXNkX2NtZChV
c2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50OF90ICpidWYsIHVpbnQzMl90IGNid18KICAgICAg
ICAgU1BJQ0VfRVJST1IoIkNNRDogQmFkIENCVyBzaWduYXR1cmU6JTA4eCIsIGxlMzJ0b2goY2J3
LT5zaWcpKTsKICAgICAgICAgcmV0dXJuIC0xOwogICAgIH0KLSAgICBpZiAoY2J3LT5jbWRfbGVu
IDwgMSB8fCBjYnctPmNtZF9sZW4gPj0gMTYpIHsKLSAgICAgICAgU1BJQ0VfRVJST1IoIkNNRDog
QmFkIENCVyBjb21tYW5kIGxlbjolMDh4IiwgY2J3LT5jbWRfbGVuKTsKKyAgICBjb25zdCB1aW50
OF90IGNtZF9sZW4gPSBjYnctPmNtZF9sZW4gJiAweDFGOworICAgIGlmIChjbWRfbGVuIDwgMSB8
fCBjbWRfbGVuID4gMTYpIHsKKyAgICAgICAgU1BJQ0VfRVJST1IoIkNNRDogQmFkIENCVyBjb21t
YW5kIGxlbjolMDh4IiwgY21kX2xlbik7CiAgICAgICAgIHJldHVybiAtMTsKICAgICB9CiAKQEAg
LTI5Nyw3ICsyOTgsNyBAQCBzdGF0aWMgaW50IHBhcnNlX3VzYl9tc2RfY21kKFVzYkNkQnVsa01z
ZERldmljZSAqY2QsIHVpbnQ4X3QgKmJ1ZiwgdWludDMyX3QgY2J3XwogICAgICAgICBzY3NpX3Jl
cS0+YnVmX2xlbiA9IDA7CiAgICAgfQogCi0gICAgc2NzaV9yZXEtPmNkYl9sZW4gPSBjYnctPmNt
ZF9sZW47CisgICAgc2NzaV9yZXEtPmNkYl9sZW4gPSBjbWRfbGVuOwogICAgIGdfYXNzZXJ0KHNj
c2lfcmVxLT5jZGJfbGVuIDw9IHNpemVvZihzY3NpX3JlcS0+Y2RiKSk7CiAgICAgbWVtY3B5KHNj
c2lfcmVxLT5jZGIsIGNidy0+Y21kLCBzY3NpX3JlcS0+Y2RiX2xlbik7CiAKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
