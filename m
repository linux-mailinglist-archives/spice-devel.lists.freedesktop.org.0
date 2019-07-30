Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 836D47A788
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C735489173;
	Tue, 30 Jul 2019 12:04:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A0188CFA
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 343664A6FB
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:22 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E9265D6B0;
 Tue, 30 Jul 2019 12:04:21 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:17 +0100
Message-Id: <20190730120331.17967-29-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 30 Jul 2019 12:04:22 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 29/44] fixup! usb-redir: add files
 for SCSI and USB MSC implementation
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

QmV0dGVyIGNoZWNrIG9mIGNtZF9sZW4sIGF2b2lkcyBwb3NzaWJsZSBvdmVyZmxvdyBvciBmYWls
aW5nIGFzc2VydHMsCnNwZWNpZmljYXRpb24gc3RhdGUgdGhhdCByYW5nZSBzaG91bGQgYmUgMS0x
Ni4KLS0tCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgfCA2ICsrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9jZC11c2It
YnVsay1tc2QuYyBiL3NyYy9jZC11c2ItYnVsay1tc2QuYwppbmRleCBhYjY2NDRmMy4uOTUzNjUx
NjMgMTAwNjQ0Ci0tLSBhL3NyYy9jZC11c2ItYnVsay1tc2QuYworKysgYi9zcmMvY2QtdXNiLWJ1
bGstbXNkLmMKQEAgLTI3Miw2ICsyNzIsMTAgQEAgc3RhdGljIGludCBwYXJzZV91c2JfbXNkX2Nt
ZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50OF90ICpidWYsIHVpbnQzMl90IGNid18KICAg
ICAgICAgU1BJQ0VfRVJST1IoIkNNRDogQmFkIENCVyBzaWduYXR1cmU6JTA4eCIsIGxlMzJ0b2go
Y2J3LT5zaWcpKTsKICAgICAgICAgcmV0dXJuIC0xOwogICAgIH0KKyAgICBpZiAoY2J3LT5jbWRf
bGVuIDwgMSB8fCBjYnctPmNtZF9sZW4gPj0gMTYpIHsKKyAgICAgICAgU1BJQ0VfRVJST1IoIkNN
RDogQmFkIENCVyBjb21tYW5kIGxlbjolMDh4IiwgY2J3LT5jbWRfbGVuKTsKKyAgICAgICAgcmV0
dXJuIC0xOworICAgIH0KIAogICAgIHVzYl9yZXEtPmx1biA9IGNidy0+bHVuOwogICAgIHVzYl9y
ZXEtPnVzYl90YWcgPSBsZTMydG9oKGNidy0+dGFnKTsKQEAgLTI5NSw3ICsyOTksNyBAQCBzdGF0
aWMgaW50IHBhcnNlX3VzYl9tc2RfY21kKFVzYkNkQnVsa01zZERldmljZSAqY2QsIHVpbnQ4X3Qg
KmJ1ZiwgdWludDMyX3QgY2J3XwogICAgICAgICBzY3NpX3JlcS0+YnVmX2xlbiA9IDA7CiAgICAg
fQogCi0gICAgc2NzaV9yZXEtPmNkYl9sZW4gPSAoKHVpbnQzMl90KWNidy0+Y21kX2xlbikgJiAw
eDFGOworICAgIHNjc2lfcmVxLT5jZGJfbGVuID0gY2J3LT5jbWRfbGVuOwogICAgIGdfYXNzZXJ0
KHNjc2lfcmVxLT5jZGJfbGVuIDw9IHNpemVvZihzY3NpX3JlcS0+Y2RiKSk7CiAgICAgbWVtY3B5
KHNjc2lfcmVxLT5jZGIsIGNidy0+Y21kLCBzY3NpX3JlcS0+Y2RiX2xlbik7CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
