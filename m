Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E14D587CB6
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4D06EE2A;
	Fri,  9 Aug 2019 14:28:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E4AE6EE36
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9BC21308421A
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:20 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E1F421001284;
 Fri,  9 Aug 2019 14:28:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:43 +0100
Message-Id: <20190809142651.2967-26-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 09 Aug 2019 14:28:20 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 25/33] fixup! usb-redir: add
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

Rml4IGNvbXBpbGUsIHVwZGF0ZSBmdW5jdGlvbiBkZWZpbml0aW9uIGR1ZSB0byBhbm90aGVyCnBy
ZXZpb3VzIGZvbGxvdyB1cCBvZiBhbm90aGVyIGNvbW1pdC4KLS0tCiBzcmMvdXNiLWRldmljZS1j
ZC5jIHwgMiArLQogc3JjL3VzYi1kZXZpY2UtY2QuaCB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2
aWNlLWNkLmMgYi9zcmMvdXNiLWRldmljZS1jZC5jCmluZGV4IGI1MTkzZDFlLi4zYzU3MTg1ZiAx
MDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtY2QuYworKysgYi9zcmMvdXNiLWRldmljZS1jZC5j
CkBAIC03NzksNyArNzc5LDcgQEAgc3RhdGljIFVzYkNkKiB1c2JfY2RfY3JlYXRlKFNwaWNlVXNi
QmFja2VuZCAqYmUsCiAgICAgcmV0dXJuIGQ7CiB9CiAKLVNwaWNlVXNiQmFja2VuZERldmljZSoK
K2dib29sZWFuCiBjcmVhdGVfZW11bGF0ZWRfY2QoU3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICAg
ICAgICAgICAgICAgICBDZEVtdWxhdGlvblBhcmFtcyAqcGFyYW0sCiAgICAgICAgICAgICAgICAg
ICAgR0Vycm9yICoqZXJyKQpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtY2QuaCBiL3NyYy91
c2ItZGV2aWNlLWNkLmgKaW5kZXggZWIwODJiNzguLjE1MjRkY2JlIDEwMDY0NAotLS0gYS9zcmMv
dXNiLWRldmljZS1jZC5oCisrKyBiL3NyYy91c2ItZGV2aWNlLWNkLmgKQEAgLTI5LDcgKzI5LDcg
QEAgdHlwZWRlZiBzdHJ1Y3QgQ2RFbXVsYXRpb25QYXJhbXMgewogICAgIHVpbnQzMl90IGRlbGV0
ZV9vbl9lamVjdCA6IDE7CiB9IENkRW11bGF0aW9uUGFyYW1zOwogCi1TcGljZVVzYkJhY2tlbmRE
ZXZpY2UqCitnYm9vbGVhbgogY3JlYXRlX2VtdWxhdGVkX2NkKFNwaWNlVXNiQmFja2VuZCAqYmUs
CiAgICAgICAgICAgICAgICAgICAgQ2RFbXVsYXRpb25QYXJhbXMgKnBhcmFtLAogICAgICAgICAg
ICAgICAgICAgIEdFcnJvciAqKmVycik7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
