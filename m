Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 259BF7A777
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CD96E4CB;
	Tue, 30 Jul 2019 12:03:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DF16E4C5
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 54E0C8831F
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:03:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 87ACC5D6A7;
 Tue, 30 Jul 2019 12:03:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:00 +0100
Message-Id: <20190730120331.17967-12-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 30 Jul 2019 12:03:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 11/44] fixup! usb-redir: define
 interfaces to support emulated devices
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

UmVuYW1lIHNwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9kZXZpY2UuCk1ha2UgY2xlYXIgaXMgYWxs
b2NhdGluZyBhbiBlbXVsYXRlZCBkZXZpY2UuCi0tLQogc3JjL3VzYi1iYWNrZW5kLmMgICB8IDgg
KysrKy0tLS0KIHNyYy91c2ItZW11bGF0aW9uLmggfCA4ICsrKystLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNi
LWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IGFhODQzNDY1Li5hNmM3YjE5OSAx
MDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAg
LTkwNiwxMCArOTA2LDEwIEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0KFNw
aWNlVXNiQmFja2VuZCAqYmUsIFNwaWNlVXNiQmFja2VuZERldmljZSAqCiB9CiAKIFNwaWNlVXNi
QmFja2VuZERldmljZSoKLXNwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9kZXZpY2UoU3BpY2VVc2JC
YWNrZW5kICpiZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JFbXVs
YXRlZERldmljZUNyZWF0ZSBjcmVhdGVfcHJvYywKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdm9pZCAqY3JlYXRlX3BhcmFtcywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgR0Vycm9yICoqZXJyKQorc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxhdGVkX2Rldmlj
ZShTcGljZVVzYkJhY2tlbmQgKmJlLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlIGNyZWF0ZV9wcm9jLAorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpjcmVhdGVfcGFyYW1zLAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRXJyb3IgKiplcnIpCiB7
CiAgICAgU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZWRldjsKICAgICBTcGljZVVzYkJhY2tlbmRE
ZXZpY2UgKmRldjsKZGlmZiAtLWdpdCBhL3NyYy91c2ItZW11bGF0aW9uLmggYi9zcmMvdXNiLWVt
dWxhdGlvbi5oCmluZGV4IDZmZjU3YjgwLi45ZTYyNmEyNCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1l
bXVsYXRpb24uaAorKysgYi9zcmMvdXNiLWVtdWxhdGlvbi5oCkBAIC04MSwxMCArODEsMTAgQEAg
c3RhdGljIGlubGluZSBjb25zdCBVc2JEZXZpY2VPcHMgKmRldmljZV9vcHMoU3BpY2VVc2JFbXVs
YXRlZERldmljZSAqZGV2KQogfQogCiBTcGljZVVzYkJhY2tlbmREZXZpY2UqCi1zcGljZV91c2Jf
YmFja2VuZF9jcmVhdGVfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCi0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2VDcmVhdGUgY3JlYXRlX3By
b2MsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmNyZWF0ZV9wYXJhbXMs
Ci0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycik7CitzcGljZV91
c2JfYmFja2VuZF9jcmVhdGVfZW11bGF0ZWRfZGV2aWNlKFNwaWNlVXNiQmFja2VuZCAqYmUsCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiRW11bGF0ZWRE
ZXZpY2VDcmVhdGUgY3JlYXRlX3Byb2MsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHZvaWQgKmNyZWF0ZV9wYXJhbXMsCisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycik7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2Rl
dmljZV9lamVjdChTcGljZVVzYkJhY2tlbmQgKmJlLCBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRl
dmljZSk7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9yZXBvcnRfY2hhbmdlKFNwaWNl
VXNiQmFja2VuZCAqYmUsIFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2aWNlKTsKIAotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
