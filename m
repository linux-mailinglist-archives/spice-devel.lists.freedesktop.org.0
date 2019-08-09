Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CBE87CB8
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A892A6EE34;
	Fri,  9 Aug 2019 14:28:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221836EE34
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C2676C074111
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:28 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A15A81000182;
 Fri,  9 Aug 2019 14:28:24 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:45 +0100
Message-Id: <20190809142651.2967-28-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 09 Aug 2019 14:28:28 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 27/33] fixup! usb-redir: add
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

QXZvaWRzIGRvdWJsZSBzZXR0aW5nIGEgdmFyaWFibGUuClNvbWUgY29kZSBhbmFseXplcnMgY291
bGQgY29tcGxhaW4gYWJvdXQgaXQKLS0tCiBzcmMvdXNiLWRldmljZS1jZC5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
c3JjL3VzYi1kZXZpY2UtY2QuYyBiL3NyYy91c2ItZGV2aWNlLWNkLmMKaW5kZXggYjAzZDY4Mzgu
LjAzYjhmNWVlIDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1jZC5jCisrKyBiL3NyYy91c2It
ZGV2aWNlLWNkLmMKQEAgLTM0MSw3ICszNDEsNyBAQCBzdGF0aWMgaW50IGNkX2RldmljZV9jaGVj
ayhTcGljZUNkTFUgKnVuaXQpCiAKIHN0YXRpYyBnYm9vbGVhbiBvcGVuX3N0cmVhbShTcGljZUNk
TFUgKnVuaXQsIGNvbnN0IGNoYXIgKmZpbGVuYW1lKQogewotICAgIGdib29sZWFuIGIgPSBGQUxT
RTsKKyAgICBnYm9vbGVhbiBiOwogICAgIGIgPSBjZF9kZXZpY2Vfb3Blbl9zdHJlYW0odW5pdCwg
ZmlsZW5hbWUpID09IDA7CiAgICAgcmV0dXJuIGI7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
