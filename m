Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74553BB84A
	for <lists+spice-devel@lfdr.de>; Mon, 23 Sep 2019 17:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2ED66E95A;
	Mon, 23 Sep 2019 15:46:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395B26E95A
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:46:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D8A4F51EFB
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:46:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CFB5B5C1B2
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Sep 2019 15:46:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C4FC318089C8;
 Mon, 23 Sep 2019 15:46:08 +0000 (UTC)
Date: Mon, 23 Sep 2019 11:46:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1659376343.2957380.1569253568444.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190923154120.12322-1-victortoso@redhat.com>
References: <20190923154120.12322-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.19]
Thread-Topic: main-channel-client: style fixup, indentation of return
Thread-Index: ckk/DVqqUIrYw84SEPthTY+Zx09Acg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 23 Sep 2019 15:46:08 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] main-channel-client: style fixup,
 indentation of return
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gRm91bmQgd2hp
bGUgcmVhZGluZyB0aGUgY29kZS4KCk5vdCBzdXJlIGlmIHRoaXMgaXMgaW1wb3J0YW50IGJ1dCBm
aW5lIGZvciBtZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0By
ZWRoYXQuY29tPgoKT3RoZXJ3aXNlLAogICBBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemln
bGlvQHJlZGhhdC5jb20+Cgo+IC0tLQo+ICBzZXJ2ZXIvbWFpbi1jaGFubmVsLWNsaWVudC5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL21haW4tY2hhbm5lbC1jbGllbnQuYyBiL3NlcnZlci9tYWlu
LWNoYW5uZWwtY2xpZW50LmMKPiBpbmRleCAxMjYxYWQ3OC4uZWY2ZTA2NWYgMTAwNjQ0Cj4gLS0t
IGEvc2VydmVyL21haW4tY2hhbm5lbC1jbGllbnQuYwo+ICsrKyBiL3NlcnZlci9tYWluLWNoYW5u
ZWwtY2xpZW50LmMKPiBAQCAtNTY2LDcgKzU2Niw3IEBAIHZvaWQKPiBtYWluX2NoYW5uZWxfY2xp
ZW50X2hhbmRsZV9taWdyYXRlX2VuZChNYWluQ2hhbm5lbENsaWVudCAqbWNjKQo+ICAgICAgICAg
IHJlZF9jaGFubmVsX3dhcm5pbmcocmVkX2NoYW5uZWxfY2xpZW50X2dldF9jaGFubmVsKFJFRF9D
SEFOTkVMX0NMSUVOVChtY2MpKSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ1bmV4
cGVjdGVkIFNQSUNFX01TR0NfTUlHUkFURV9FTkQsICIKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJjbGllbnQgZG9lcyBub3Qgc3VwcG9ydCBzZW1pLXNlYW1sZXNzCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBtaWdyYXRpb24iKTsKPiAtICAgICAgICAgICAgcmV0dXJuOwo+
ICsgICAgICAgIHJldHVybjsKPiAgICAgIH0KPiAgICAgIHJlZF9jbGllbnRfc2VtaV9zZWFtbGVz
c19taWdyYXRlX2NvbXBsZXRlKGNsaWVudCk7Cj4gIH0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
