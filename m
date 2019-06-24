Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA885031C
	for <lists+spice-devel@lfdr.de>; Mon, 24 Jun 2019 09:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D398982E;
	Mon, 24 Jun 2019 07:23:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCD908982E
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 07:23:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 56FE53082141
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 07:23:41 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B9BE360BF7;
 Mon, 24 Jun 2019 07:23:40 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190621094509.2212-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c6786ce0-4e40-6f50-f407-0fecd3ee1e3d@redhat.com>
Date: Mon, 24 Jun 2019 10:23:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621094509.2212-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 24 Jun 2019 07:23:41 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] dcc-send: Check some
 constants at compile time
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8yMS8xOSAxMjo0NSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKQWNrLgoKVXJpLgoKPiAt
LS0KPiAgIHNlcnZlci9kY2Mtc2VuZC5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9kY2Mtc2Vu
ZC5jIGIvc2VydmVyL2RjYy1zZW5kLmMKPiBpbmRleCBlYTIxMjhlMjcuLmIxNDYxOWEyYiAxMDA2
NDQKPiAtLS0gYS9zZXJ2ZXIvZGNjLXNlbmQuYwo+ICsrKyBiL3NlcnZlci9kY2Mtc2VuZC5jCj4g
QEAgLTE4MzQsNyArMTgzNCw3IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfY2hhbm5lbF9tYXJzaGFs
bF9taWdyYXRlX2RhdGEoUmVkQ2hhbm5lbENsaWVudCAqcmNjLAo+ICAgICAgIHNwaWNlX21hcnNo
YWxsZXJfYWRkX3VpbnQzMihiYXNlX21hcnNoYWxsZXIsIFNQSUNFX01JR1JBVEVfREFUQV9ESVNQ
TEFZX1ZFUlNJT04pOwo+ICAgCj4gICAgICAgc3BpY2VfYXNzZXJ0KGRjYy0+cHJpdi0+cGl4bWFw
X2NhY2hlKTsKPiAtICAgIHNwaWNlX2Fzc2VydChNSUdSQVRFX0RBVEFfRElTUExBWV9NQVhfQ0FD
SEVfQ0xJRU5UUyA9PSA0ICYmCj4gKyAgICBTUElDRV9WRVJJRlkoTUlHUkFURV9EQVRBX0RJU1BM
QVlfTUFYX0NBQ0hFX0NMSUVOVFMgPT0gNCAmJgo+ICAgICAgICAgICAgICAgICAgICBNSUdSQVRF
X0RBVEFfRElTUExBWV9NQVhfQ0FDSEVfQ0xJRU5UUyA9PSBNQVhfQ0FDSEVfQ0xJRU5UUyk7Cj4g
ICAKPiAgICAgICBkaXNwbGF5X2RhdGEubWVzc2FnZV9zZXJpYWwgPSByZWRfY2hhbm5lbF9jbGll
bnRfZ2V0X21lc3NhZ2Vfc2VyaWFsKHJjYyk7Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
