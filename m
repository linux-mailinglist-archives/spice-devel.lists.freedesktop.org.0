Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A32B87CA5
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C2B6EE21;
	Fri,  9 Aug 2019 14:27:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB1E6EE21
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7A4403084212
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:33 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2C58510018F9;
 Fri,  9 Aug 2019 14:27:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:28 +0100
Message-Id: <20190809142651.2967-11-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 09 Aug 2019 14:27:33 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 10/33] fixup! usb-redir: add
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

UmVtb3ZlIHNvbWUgd3JpdHRlbiBvbmx5IGZpZWxkcwotLS0KIHNyYy9jZC1zY3NpLmggICAgICAg
ICB8IDEgLQogc3JjL2NkLXVzYi1idWxrLW1zZC5jIHwgNSArLS0tLQogMiBmaWxlcyBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvY2Qtc2Nz
aS5oIGIvc3JjL2NkLXNjc2kuaAppbmRleCA2NTI0MjQ0NC4uYzA1OGE2NmUgMTAwNjQ0Ci0tLSBh
L3NyYy9jZC1zY3NpLmgKKysrIGIvc3JjL2NkLXNjc2kuaApAQCAtNTgsNyArNTgsNiBAQCB0eXBl
ZGVmIHN0cnVjdCBDZFNjc2lSZXF1ZXN0IHsKICAgICB1aW50OF90IGNkYltTQ1NJX0NEQl9CVUZf
U0laRV07CiAgICAgdWludDMyX3QgY2RiX2xlbjsKIAotICAgIHVpbnQzMl90IHRhZzsKICAgICB1
aW50MzJfdCBsdW47CiAKICAgICB1aW50OF90ICpidWY7CmRpZmYgLS1naXQgYS9zcmMvY2QtdXNi
LWJ1bGstbXNkLmMgYi9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKaW5kZXggMzg3YTQyYTcuLmNiMGFk
OTFjIDEwMDY0NAotLS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKKysrIGIvc3JjL2NkLXVzYi1i
dWxrLW1zZC5jCkBAIC03NCw3ICs3NCw2IEBAIHR5cGVkZWYgc3RydWN0IFVzYkNkQnVsa01zZFJl
cXVlc3QgewogICAgIENkU2NzaVJlcXVlc3Qgc2NzaV9yZXE7CiAKICAgICB1aW50MzJfdCBsdW47
Ci0gICAgdWludDMyX3QgdXNiX3RhZzsKICAgICB1aW50MzJfdCB1c2JfcmVxX2xlbjsgLyogbGVu
Z3RoIG9mIGRhdGEgcmVxdWVzdGVkIGJ5IHVzYiAqLwogICAgIHVpbnQzMl90IHNjc2lfaW5fbGVu
OyAvKiBsZW5ndGggb2YgZGF0YSByZXR1cm5lZCBieSBzY3NpIGxpbWl0ZWQgYnkgdXNiIHJlcXVl
c3QgKi8KIApAQCAtMjc4LDcgKzI3Nyw2IEBAIHN0YXRpYyBpbnQgcGFyc2VfdXNiX21zZF9jbWQo
VXNiQ2RCdWxrTXNkRGV2aWNlICpjZCwgdWludDhfdCAqYnVmLCB1aW50MzJfdCBjYndfCiAgICAg
fQogCiAgICAgdXNiX3JlcS0+bHVuID0gY2J3LT5sdW47Ci0gICAgdXNiX3JlcS0+dXNiX3RhZyA9
IGxlMzJ0b2goY2J3LT50YWcpOwogICAgIHVzYl9yZXEtPnVzYl9yZXFfbGVuID0gbGUzMnRvaChj
YnctPmV4cF9kYXRhX2xlbik7CiAKICAgICB1c2JfcmVxLT5zY3NpX2luX2xlbiA9IDA7IC8qIG5v
IGRhdGEgZnJvbSBzY3NpIHlldCAqLwpAQCAtMzAzLDEyICszMDEsMTEgQEAgc3RhdGljIGludCBw
YXJzZV91c2JfbXNkX2NtZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLCB1aW50OF90ICpidWYsIHVp
bnQzMl90IGNid18KICAgICBnX2Fzc2VydChzY3NpX3JlcS0+Y2RiX2xlbiA8PSBzaXplb2Yoc2Nz
aV9yZXEtPmNkYikpOwogICAgIG1lbWNweShzY3NpX3JlcS0+Y2RiLCBjYnctPmNtZCwgc2NzaV9y
ZXEtPmNkYl9sZW4pOwogCi0gICAgc2NzaV9yZXEtPnRhZyA9IHVzYl9yZXEtPnVzYl90YWc7CiAg
ICAgc2NzaV9yZXEtPmx1biA9IHVzYl9yZXEtPmx1bjsKIAogICAgIFNQSUNFX0RFQlVHKCJDTUQg
bHVuOiUiIEdfR1VJTlQzMl9GT1JNQVQgIiB0YWc6JSN4IGZsYWdzOiUwOHggIgogICAgICAgICAi
Y2RiX2xlbjolIiBHX0dVSU5UMzJfRk9STUFUICIgcmVxX2xlbjolIiBHX0dVSU5UMzJfRk9STUFU
LAotICAgICAgICB1c2JfcmVxLT5sdW4sIHVzYl9yZXEtPnVzYl90YWcsIGNidy0+ZmxhZ3MsCisg
ICAgICAgIHVzYl9yZXEtPmx1biwgbGUzMnRvaChjYnctPnRhZyksIGNidy0+ZmxhZ3MsCiAgICAg
ICAgIHNjc2lfcmVxLT5jZGJfbGVuLCB1c2JfcmVxLT51c2JfcmVxX2xlbik7CiAKICAgICAvKiBw
cmVwYXJlIHN0YXR1cyAtIENTVyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
