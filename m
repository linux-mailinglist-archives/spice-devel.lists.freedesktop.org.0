Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811ACA4A82
	for <lists+spice-devel@lfdr.de>; Sun,  1 Sep 2019 18:20:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CAC89AFF;
	Sun,  1 Sep 2019 16:20:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4284F89AFF
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Sep 2019 16:20:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 94D95307D88D
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Sep 2019 16:20:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AE61600CE
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Sep 2019 16:20:56 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E0ED4A460;
 Sun,  1 Sep 2019 16:20:56 +0000 (UTC)
Date: Sun, 1 Sep 2019 12:20:55 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <19141300.10294233.1567354855886.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190901135012.2035-1-uril@redhat.com>
References: <20190901135012.2035-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.9]
Thread-Topic: test-ssl-verify: test_generic: initialize num_entries
Thread-Index: yIUSBjqC8qmlMGgvRCOgiy24o9TKGg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Sun, 01 Sep 2019 16:20:56 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-common patch] test-ssl-verify:
 test_generic: initialize num_entries
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBJZiBuYW1lIGlzIG51bGwgbnVtX2VudHJpZXMgbWF5IGhvbGQgZ2FyYmFnZSB2YWx1ZQo+
IAo+IGNsYW5nIHdhcm5pbmc6IEFzc2lnbmVkIHZhbHVlIGlzIGdhcmJhZ2Ugb3IgdW5kZWZpbmVk
Cj4gICAgZ19hc3NlcnRfY21waW50KG51bV9lbnRyaWVzLCA9PSwgZW50cnlfY291bnQpOwo+ICAg
IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+IEFsc28g
Y2hlY2sgbmFtZSBiZWZvcmUgbnVtX2VudHJpZXMuCj4gCgpXaHkgdGhpcyBsYXN0IHNlbnRlbmNl
PwoKPiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+Cj4gLS0tCj4g
IHRlc3RzL3Rlc3Qtc3NsLXZlcmlmeS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvdGVzdC1zc2wt
dmVyaWZ5LmMgYi90ZXN0cy90ZXN0LXNzbC12ZXJpZnkuYwo+IGluZGV4IGY1YzU4ODEuLmY4MGVi
NGMgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvdGVzdC1zc2wtdmVyaWZ5LmMKPiArKysgYi90ZXN0cy90
ZXN0LXNzbC12ZXJpZnkuYwo+IEBAIC03OSw3ICs3OSw3IEBAIHN0YXRpYyB2b2lkIHRlc3RfZ2Vu
ZXJpYyhjb25zdCB2b2lkICphcmcpCj4gIHsKPiAgICAgIGNvbnN0IFRlc3RHZW5lcmljUGFyYW1z
ICpwYXJhbXMgPSBhcmc7Cj4gICAgICBYNTA5X05BTUUgKm5hbWU7Cj4gLSAgICBpbnQgbnVtX2Vu
dHJpZXM7Cj4gKyAgICBpbnQgbnVtX2VudHJpZXMgPSAtMTsKPiAgCj4gICAgICBzZXR1cF9yZXN1
bHRzKHBhcmFtcy0+b3V0cHV0KTsKPiAgICAgIG5hbWUgPSBzdWJqZWN0X3RvX3g1MDlfbmFtZShw
YXJhbXMtPmlucHV0LCAmbnVtX2VudHJpZXMpOwoKT3RoZXJ3aXNlIHBhdGNoIGlzIGZpbmUuCgpG
cmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
