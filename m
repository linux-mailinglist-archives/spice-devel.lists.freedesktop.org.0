Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C61C4713DC
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 10:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5D86E270;
	Tue, 23 Jul 2019 08:22:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C0B6E248
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:22:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 12ABCC18B2D9
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:22:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A6EA5D9C5;
 Tue, 23 Jul 2019 08:22:37 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 09:22:30 +0100
Message-Id: <20190723082230.10381-4-fziglio@redhat.com>
In-Reply-To: <20190723082230.10381-1-fziglio@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 23 Jul 2019 08:22:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] red-replay-qxl: Fix replay on 32
 bit systems
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

T24gMzIgc3lzdGVtcyBwb2ludGVycyBhcmUgMzIgYml0IHdoaWxlIFFYTFBIWVNJQ0FMIGlzIGFs
d2F5cwo2NCBiaXQuClVzaW5nIHBvaW50ZXIgLT4gaW50cHRyX3QgLT4gUVhMUEhZU0lDQUwgY29u
dmVyc2lvbiBjYXVzZSBwb2ludGVycwp0byBoYXZlIGhpZ2hlciAzMiBiaXQgc2V0IHRvIDEgaWYg
dGhlIGFkZHJlc3MgaXMgPj0gMHg4MDAwMDAwMC4KVGhpcyBpcyBwb3NzaWJsZSBkZXBlbmRpbmcg
b24gYWRkcmVzcyBzcGFjZS4KVGhlIFFYTFBIWVNJQ0FMIGlzIHNwbGl0IGluIDMgc2VjdGlvbnM6
Ci0gc2xvdCBJRDsKLSBnZW5lcmF0aW9uOwotIHZpcnR1YWwgYWRkcmVzcy4KQ3VycmVudCB1dGls
aXR5IHVzaW5nIHJlY29yZCBmaWxlIChzcGljZS1zZXJ2ZXItcmVwbGF5KSBzZXQgc2xvdCBJRAph
bmQgZ2VuZXJhdGlvbiB0byAwIHNvIGlmIHRoZSBoaWdoZXIgYml0cyBiZWNvbWUgYWxsIDEgc2xv
dCBJRCBhbmQKZ2VuZXJhdGlvbiB3b24ndCBiZSAwIGNhdXNpbmcgdGhlIHV0aWxpdHkgdG8gZmFp
bC4KVXNlIHBvaW50ZXIgLT4gdWludHB0cl90IC0+IFFYTFBIWVNJQ0FMIGNvbnZlcnNpb24gdG8g
YXZvaWQgdGhpcwppc3N1ZS4KTm90ZSB0aGF0IGZvciBvcHBvc2l0ZSBjb252ZXJzaW9uIChRWExQ
SFlTSUNBTF9UT19QVFIpIHRoZSBjb252ZXJzaW9uCmRvZXMgbm90IGNoYW5nZSwgdHlwZSBpcyBj
aGFuZ2VkIGp1c3QgZm9yIGNvbnNpc3RlbmN5LgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmln
bGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3JlZC1yZXBsYXktcXhsLmMgfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1yZXBsYXktcXhsLmMgYi9zZXJ2ZXIvcmVkLXJlcGxheS1x
eGwuYwppbmRleCA2NzRmZWFlMmYuLmIzOGM0Y2RiZCAxMDA2NDQKLS0tIGEvc2VydmVyL3JlZC1y
ZXBsYXktcXhsLmMKKysrIGIvc2VydmVyL3JlZC1yZXBsYXktcXhsLmMKQEAgLTI5LDggKzI5LDgg
QEAKICNpbmNsdWRlICJtZW1zbG90LmgiCiAjaW5jbHVkZSAicmVkLXBhcnNlLXF4bC5oIgogCi0j
ZGVmaW5lIFFYTFBIWVNJQ0FMX0ZST01fUFRSKHB0cikgKChRWExQSFlTSUNBTCkoaW50cHRyX3Qp
KHB0cikpCi0jZGVmaW5lIFFYTFBIWVNJQ0FMX1RPX1BUUihwaHkpICgodm9pZCopKGludHB0cl90
KShwaHkpKQorI2RlZmluZSBRWExQSFlTSUNBTF9GUk9NX1BUUihwdHIpICgoUVhMUEhZU0lDQUwp
KHVpbnRwdHJfdCkocHRyKSkKKyNkZWZpbmUgUVhMUEhZU0lDQUxfVE9fUFRSKHBoeSkgKCh2b2lk
KikodWludHB0cl90KShwaHkpKQogCiB0eXBlZGVmIGVudW0gewogICAgIFJFUExBWV9PSyA9IDAs
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
