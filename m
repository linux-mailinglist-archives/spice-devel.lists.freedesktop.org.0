Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8247C880
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 18:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D8989D8E;
	Wed, 31 Jul 2019 16:23:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838EA89D8E
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 16:23:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2D15B308FEDF;
 Wed, 31 Jul 2019 16:23:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 23235600C4;
 Wed, 31 Jul 2019 16:23:16 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 19FFE264C8;
 Wed, 31 Jul 2019 16:23:16 +0000 (UTC)
Date: Wed, 31 Jul 2019 12:23:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1290420616.4035412.1564590196057.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190731153507.26085-2-jwhite@codeweavers.com>
References: <20190731153507.26085-1-jwhite@codeweavers.com>
 <20190731153507.26085-2-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.9]
Thread-Topic: Including missing header for inlined clock functions.
Thread-Index: bHYx+SwEmuaDSPRNcP/+J5p4mtcL5w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 31 Jul 2019 16:23:16 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice 2/2] Including missing header for
 inlined clock functions.
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

PiAKPiBGaXhlcyBjb21waWxhdGlvbiBvbiBSSEVMIDcuMy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBK
ZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+CgpBY2tlZAoKPiAtLS0KPiAgc3Bp
Y2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmggfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NwaWNlLXZpZGVvLWR1bW15L3NyYy9kdW1teS5o
IGIvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmgKPiBpbmRleCBhZjc3YzE3Ny4uY2I4YWZj
MzcgMTAwNjQ0Cj4gLS0tIGEvc3BpY2UtdmlkZW8tZHVtbXkvc3JjL2R1bW15LmgKPiArKysgYi9z
cGljZS12aWRlby1kdW1teS9zcmMvZHVtbXkuaAo+IEBAIC0xMCw2ICsxMCw3IEBACj4gICNpbmNs
dWRlIDxYMTEvZXh0ZW5zaW9ucy9Ydi5oPgo+ICAjZW5kaWYKPiAgI2luY2x1ZGUgPHN0cmluZy5o
Pgo+ICsjaW5jbHVkZSA8dGltZS5oPgo+ICAKPiAgI2RlZmluZSBHTEFNT1JfRk9SX1hPUkcgMQo+
ICAjaW5jbHVkZSAiZ2xhbW9yLmgiCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
