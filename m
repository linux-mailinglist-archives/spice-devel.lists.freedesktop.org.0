Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA0B7A792
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EB66E4BB;
	Tue, 30 Jul 2019 12:04:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F356E4FE
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D78A33D3B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:33 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD51E5D6A7;
 Tue, 30 Jul 2019 12:04:30 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:24 +0100
Message-Id: <20190730120331.17967-36-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 30 Jul 2019 12:04:33 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 37/44] fixup! usb-redir: add
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

Rml4IGluZGVudGF0aW9uIG9mIHNvbWUgZGVjbGFyYXRpb24KLS0tCiBzcmMvdXNiLWRldmljZS1j
ZC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLWNkLmMgYi9zcmMvdXNiLWRldmljZS1j
ZC5jCmluZGV4IGU0ODIzNmI0Li5hMjI5OGI4MCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Ut
Y2QuYworKysgYi9zcmMvdXNiLWRldmljZS1jZC5jCkBAIC01NTgsNyArNTU4LDcgQEAgc3RhdGlj
IHZvaWQgdXNiX2NkX2J1bGtfb3V0X3JlcXVlc3QoVXNiQ2QgKmRldmljZSwKIH0KIAogdm9pZCBj
ZF91c2JfYnVsa19tc2RfcmVhZF9jb21wbGV0ZSh2b2lkICp1c2VyX2RhdGEsCi0gICAgdWludDhf
dCAqZGF0YSwgdWludDMyX3QgbGVuZ3RoLCBDZFVzYkJ1bGtTdGF0dXMgc3RhdHVzKQorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpkYXRhLCB1aW50MzJfdCBsZW5n
dGgsIENkVXNiQnVsa1N0YXR1cyBzdGF0dXMpCiB7CiAgICAgVXNiQ2QgKmQgPSAoVXNiQ2QgKil1
c2VyX2RhdGE7CiAKQEAgLTYyNiw3ICs2MjYsNyBAQCB2b2lkIGNkX3VzYl9idWxrX21zZF9yZXNl
dF9jb21wbGV0ZSh2b2lkICp1c2VyX2RhdGEsIGludCBzdGF0dXMpCiB9CiAKIHN0YXRpYyBnYm9v
bGVhbiB1c2JfY2RfYnVsa19pbl9yZXF1ZXN0KFVzYkNkICpkLCB1aW50NjRfdCBpZCwKLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHVzYl9yZWRpcl9idWxrX3BhY2tl
dF9oZWFkZXIgKmgpCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgdXNiX3JlZGlyX2J1bGtfcGFja2V0X2hlYWRlciAqaCkKIHsKICAgICBpbnQgcmVzOwogICAg
IHVpbnQzMl90IGxlbiA9IChoLT5sZW5ndGhfaGlnaCA8PCAxNikgfCBoLT5sZW5ndGg7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
