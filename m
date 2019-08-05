Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C51681E0E
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 15:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9836E459;
	Mon,  5 Aug 2019 13:52:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50EDC6E459
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:52:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ED5B88665A
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:52:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DEB5F10016F3
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:52:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D60FA18089C8
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:52:10 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:52:10 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <503304521.4733635.1565013130824.JavaMail.zimbra@redhat.com>
In-Reply-To: <1205636038.2944793.1564042008462.JavaMail.zimbra@redhat.com>
References: <20190717094851.14923-1-fziglio@redhat.com>
 <1205636038.2944793.1564042008462.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.3]
Thread-Topic: test-websocket: Some Windows compatibility
Thread-Index: bBUciw6zEbm29DKLKv2snskp3GD/LNGWRe0q
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 05 Aug 2019 13:52:10 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] test-websocket: Some
 Windows compatibility
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

cGluZwoKPiBwaW5nIHRoZSBzZXJpZXMKPiAKPiA+IAo+ID4gRG9uJ3QgY2FsbCBjbG9zZSBidXQg
c29ja2V0X2Nsb3NlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNlcnZlci90ZXN0cy90ZXN0LXdlYnNvY2tl
dC5jIHwgNCArKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gQ3VycmVudGx5IHRoZSBleGVjdXRhYmxlIGNhbm5vdCBydW4gb24g
V2luZG93cyBidXQgaXQgZG9lcyBub3QgaHVydAo+ID4gdG8gbWFrZSB0aGUgc291cmNlIG1vcmUg
Y29tcGF0aWJsZSB3aXRoIHRoYXQgc3lzdGVtLgo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L3Rlc3RzL3Rlc3Qtd2Vic29ja2V0LmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQuYwo+
ID4gaW5kZXggZGM3YjdkMzQyLi5lNzRjYjU0OTcgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvdGVz
dHMvdGVzdC13ZWJzb2NrZXQuYwo+ID4gKysrIGIvc2VydmVyL3Rlc3RzL3Rlc3Qtd2Vic29ja2V0
LmMKPiA+IEBAIC0xOTMsMTAgKzE5MywxMCBAQCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikK
PiA+ICAgICAgICAgICsrbnVtX2Nvbm5lY3Rpb25zOwo+ID4gICAgICAgICAgaGFuZGxlX2NsaWVu
dChuZXdfc29jayk7Cj4gPiAgCj4gPiAtICAgICAgICBjbG9zZShuZXdfc29jayk7Cj4gPiArICAg
ICAgICBzb2NrZXRfY2xvc2UobmV3X3NvY2spOwo+ID4gICAgICB9Cj4gPiAgCj4gPiAtICAgIGNs
b3NlKHNvY2spOwo+ID4gKyAgICBzb2NrZXRfY2xvc2Uoc29jayk7Cj4gPiAgICAgIHByaW50Zigi
aGFuZGxlZCAldSBjb25uZWN0aW9uc1xuIiwgbnVtX2Nvbm5lY3Rpb25zKTsKPiA+ICAgICAgcmV0
dXJuIDA7Cj4gPiAgfQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
