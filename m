Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9760B9638D
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 17:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD8D6E415;
	Tue, 20 Aug 2019 15:00:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E3E6E404
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 15:00:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 620B33090FCB
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 15:00:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D7C418221
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 15:00:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE7384A460;
 Tue, 20 Aug 2019 15:00:23 +0000 (UTC)
Date: Tue, 20 Aug 2019 11:00:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1151381753.7962916.1566313223574.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190820145518.14854-1-kpouget@redhat.com>
References: <954100180.5882976.1565856769970.JavaMail.zimbra@redhat.com>
 <20190820145518.14854-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.218, 10.4.195.19]
Thread-Topic: channel-display: fix bug when sending preferred video codecs
Thread-Index: IlZoDd4s0ZiBKrxKv3SUwY1G8l/UfQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 20 Aug 2019 15:00:24 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] channel-display: fix bug when
 sending preferred video codecs
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

PiAKPiBUaGUgdHJhbnNmZXIgYmV0d2VlbiB0aGUgY29kZWNzIGFycmF5IGFuZCB0aGUgbWVzc2Fn
ZSBwYXlsb2FkIGNhbm5vdAo+IGJlIGRvbmUgd2l0aCBtZW1jcHkgYmVjYXVzZSB0aGUgZGF0YS10
eXBlcyBhcmUgZGlmZmVyZW50Cj4gKGdpbnQvdWludDhfdCkuCj4gCj4gU2lnbmVkLW9mZi1ieTog
S2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+CgpBY2tlZAoKPiAtLS0KPiAgc3JjL2No
YW5uZWwtZGlzcGxheS5jIHwgMTAgKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1k
aXNwbGF5LmMgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKPiBpbmRleCA0NDU1NWUzLi41OWM4MDlk
IDEwMDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYwo+ICsrKyBiL3NyYy9jaGFubmVs
LWRpc3BsYXkuYwo+IEBAIC02MTUsMTEgKzYxNSwxNyBAQCBzdGF0aWMgdm9pZAo+IHNwaWNlX2Rp
c3BsYXlfc2VuZF9jbGllbnRfcHJlZmVycmVkX3ZpZGVvX2NvZGVjcyhTcGljZUNoYW5uZWwgKmNo
YW5uCj4gIHsKPiAgICAgIFNwaWNlTXNnT3V0ICpvdXQ7Cj4gICAgICBTcGljZU1zZ2NEaXNwbGF5
UHJlZmVycmVkVmlkZW9Db2RlY1R5cGUgKm1zZzsKPiArICAgIGludCBpOwo+IAo+ICAgICAgbXNn
ID0gZ19tYWxsb2MwKHNpemVvZihTcGljZU1zZ2NEaXNwbGF5UHJlZmVycmVkVmlkZW9Db2RlY1R5
cGUpICsKPiAtICAgICAgICAgICAgICAgICAgICAoc2l6ZW9mKFNwaWNlVmlkZW9Db2RlY1R5cGUp
ICogbmNvZGVjcykpOwo+ICsgICAgICAgICAgICAgICAgICAgIChzaXplb2YobXNnLT5jb2RlY3Nb
MF0pICogbmNvZGVjcykpOwo+ICAgICAgbXNnLT5udW1fb2ZfY29kZWNzID0gbmNvZGVjczsKPiAt
ICAgIG1lbWNweShtc2ctPmNvZGVjcywgY29kZWNzLCBzaXplb2YoKmNvZGVjcykgKiBuY29kZWNz
KTsKPiArCj4gKyAgICAvKiBjYW5ub3QgbWVtY3B5IGJlY2F1c2UgY29kZWNzIGlzIGdpbnQsIGJ1
dCBtc2ctPmNvZGVjcyBpcyB1aW50OF90Cj4gKyAgICAgKiBidXQgc2FmZSBiZWNhdXNlIFNwaWNl
VmlkZW9Db2RlY1R5cGUgPD0gMjU1ICovCj4gKyAgICBmb3IgKGkgPSAwOyBpIDwgbmNvZGVjczsg
aSsrKSB7Cj4gKyAgICAgICAgbXNnLT5jb2RlY3NbaV0gPSBjb2RlY3NbaV07Cj4gKyAgICB9Cj4g
Cj4gICAgICBvdXQgPSBzcGljZV9tc2dfb3V0X25ldyhjaGFubmVsLAo+ICAgICAgU1BJQ0VfTVNH
Q19ESVNQTEFZX1BSRUZFUlJFRF9WSURFT19DT0RFQ19UWVBFKTsKPiAgICAgIG91dC0+bWFyc2hh
bGxlcnMtPm1zZ2NfZGlzcGxheV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZShvdXQtPm1hcnNo
YWxsZXIsCj4gICAgICBtc2cpOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
