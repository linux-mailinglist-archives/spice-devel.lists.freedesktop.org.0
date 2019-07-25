Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3456748C5
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 10:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7DD6E67F;
	Thu, 25 Jul 2019 08:06:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E63D6E67F
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 08:06:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AAF8481F2F
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 08:06:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A2E845F9B0
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 08:06:48 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99AF741F40
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 08:06:48 +0000 (UTC)
Date: Thu, 25 Jul 2019 04:06:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1205636038.2944793.1564042008462.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190717094851.14923-1-fziglio@redhat.com>
References: <20190717094851.14923-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.23]
Thread-Topic: test-websocket: Some Windows compatibility
Thread-Index: bBUciw6zEbm29DKLKv2snskp3GD/LA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 25 Jul 2019 08:06:48 +0000 (UTC)
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IERvbid0IGNhbGwgY2xvc2UgYnV0IHNvY2tldF9jbG9zZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
PiAtLS0KPiAgc2VydmVyL3Rlc3RzL3Rlc3Qtd2Vic29ja2V0LmMgfCA0ICsrLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBDdXJyZW50bHkg
dGhlIGV4ZWN1dGFibGUgY2Fubm90IHJ1biBvbiBXaW5kb3dzIGJ1dCBpdCBkb2VzIG5vdCBodXJ0
Cj4gdG8gbWFrZSB0aGUgc291cmNlIG1vcmUgY29tcGF0aWJsZSB3aXRoIHRoYXQgc3lzdGVtLgo+
IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQuYyBiL3NlcnZlci90
ZXN0cy90ZXN0LXdlYnNvY2tldC5jCj4gaW5kZXggZGM3YjdkMzQyLi5lNzRjYjU0OTcgMTAwNjQ0
Cj4gLS0tIGEvc2VydmVyL3Rlc3RzL3Rlc3Qtd2Vic29ja2V0LmMKPiArKysgYi9zZXJ2ZXIvdGVz
dHMvdGVzdC13ZWJzb2NrZXQuYwo+IEBAIC0xOTMsMTAgKzE5MywxMCBAQCBtYWluKGludCBhcmdj
LCBjaGFyICoqYXJndikKPiAgICAgICAgICArK251bV9jb25uZWN0aW9uczsKPiAgICAgICAgICBo
YW5kbGVfY2xpZW50KG5ld19zb2NrKTsKPiAgCj4gLSAgICAgICAgY2xvc2UobmV3X3NvY2spOwo+
ICsgICAgICAgIHNvY2tldF9jbG9zZShuZXdfc29jayk7Cj4gICAgICB9Cj4gIAo+IC0gICAgY2xv
c2Uoc29jayk7Cj4gKyAgICBzb2NrZXRfY2xvc2Uoc29jayk7Cj4gICAgICBwcmludGYoImhhbmRs
ZWQgJXUgY29ubmVjdGlvbnNcbiIsIG51bV9jb25uZWN0aW9ucyk7Cj4gICAgICByZXR1cm4gMDsK
PiAgfQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
