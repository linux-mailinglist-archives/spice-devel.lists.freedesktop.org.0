Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 785EF60699
	for <lists+spice-devel@lfdr.de>; Fri,  5 Jul 2019 15:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0118F6E4B3;
	Fri,  5 Jul 2019 13:31:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BB76E4B3
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:31:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6D42A3086202
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:31:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6593E1B482
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:31:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E50A18184AD
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:31:15 +0000 (UTC)
Date: Fri, 5 Jul 2019 09:31:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <824031730.26515593.1562333475331.JavaMail.zimbra@redhat.com>
In-Reply-To: <297374572.23872965.1561102465194.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-6-fziglio@redhat.com>
 <297374572.23872965.1561102465194.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.13, 10.4.195.2]
Thread-Topic: red-channel: Inline red_channel_pipes_create_batch
Thread-Index: gmWxtUSwKR8lDtBeC0m6mS0ZE+RvUet58uzL
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 05 Jul 2019 13:31:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 06/13] red-channel: Inline
 red_channel_pipes_create_batch
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IFRoZSBmdW5jdGlvbiBpcyBjYWxsZWQgb25seSBi
eSByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVk
aWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNlcnZlci9yZWQt
Y2hhbm5lbC5jIHwgMjAgKysrKy0tLS0tLS0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci9yZWQtY2hhbm5lbC5jIGIvc2VydmVyL3JlZC1jaGFubmVsLmMKPiA+IGluZGV4IDgyZTUy
MjM5NS4uNDg3MmQyODA3IDEwMDY0NAo+ID4gLS0tIGEvc2VydmVyL3JlZC1jaGFubmVsLmMKPiA+
ICsrKyBiL3NlcnZlci9yZWQtY2hhbm5lbC5jCj4gPiBAQCAtNTk4LDMyICs1OTgsMjcgQEAgc3Rh
dGljIGJvb2wgcmVkX2NoYW5uZWxfbm9faXRlbV9iZWluZ19zZW50KFJlZENoYW5uZWwKPiA+ICpj
aGFubmVsKQo+ID4gICAqIFRPRE8gLSBpbmxpbmU/IG1hY3JvPyByaWdodCBub3cgdGhpcyBpcyB0
aGUgc2ltcGxlc3QgZnJvbSBjb2RlIGFtb3VudAo+ID4gICAqLwo+ID4gIAo+ID4gLXR5cGVkZWYg
dm9pZCAoKnJjY19pdGVtX3QpKFJlZENoYW5uZWxDbGllbnQgKnJjYywgUmVkUGlwZUl0ZW0gKml0
ZW0pOwo+ID4gLQo+ID4gIC8qKgo+ID4gLSAqIHJlZF9jaGFubmVsX3BpcGVzX2NyZWF0ZV9iYXRj
aDoKPiA+ICsgKiByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkOgo+ID4gICAqIEBjaGFubmVsOiBh
IGNoYW5uZWwKPiA+ICAgKiBAY3JlYXRvcjogYSBjYWxsYmFjayB0byBjcmVhdGUgcGlwZSBpdGVt
IChub3QgbnVsbCkKPiA+ICAgKiBAZGF0YTogdGhlIGRhdGEgdG8gcGFzcyB0byB0aGUgY3JlYXRv
cgo+ID4gLSAqIEBwaXBlX2FkZDogYSBjYWxsYmFjayB0byBhZGQgbm9uLW51bGwgcGlwZSBpdGVt
cyAobm90IG51bGwpCj4gPiAgICoKPiA+ICAgKiBSZXR1cm5zOiB0aGUgbnVtYmVyIG9mIGFkZGVk
IGl0ZW1zCj4gPiAgICoqLwo+ID4gLXN0YXRpYyBpbnQgcmVkX2NoYW5uZWxfcGlwZXNfY3JlYXRl
X2JhdGNoKFJlZENoYW5uZWwgKmNoYW5uZWwsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBuZXdfcGlwZV9pdGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0YSwKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJjY19pdGVtX3QgcGlwZV9hZGQpCj4gPiAraW50IHJl
ZF9jaGFubmVsX3BpcGVzX25ld19hZGQoUmVkQ2hhbm5lbCAqY2hhbm5lbCwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9pdGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0
YSkKPiA+ICB7Cj4gPiAgICAgIFJlZENoYW5uZWxDbGllbnQgKnJjYzsKPiA+ICAgICAgUmVkUGlw
ZUl0ZW0gKml0ZW07Cj4gPiAgICAgIGludCBudW0gPSAwLCBuID0gMDsKPiA+ICAKPiA+ICAgICAg
c3BpY2VfYXNzZXJ0KGNyZWF0b3IgIT0gTlVMTCk7Cj4gPiAtICAgIHNwaWNlX2Fzc2VydChwaXBl
X2FkZCAhPSBOVUxMKTsKPiA+ICAKPiA+ICAgICAgRk9SRUFDSF9DTElFTlQoY2hhbm5lbCwgcmNj
KSB7Cj4gPiAgICAgICAgICBpdGVtID0gKCpjcmVhdG9yKShyY2MsIGRhdGEsIG51bSsrKTsKPiA+
ICAgICAgICAgIGlmIChpdGVtKSB7Cj4gPiAtICAgICAgICAgICAgKCpwaXBlX2FkZCkocmNjLCBp
dGVtKTsKPiA+ICsgICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGQocmNjLCBp
dGVtKTsKPiA+ICAgICAgICAgICAgICBuKys7Cj4gPiAgICAgICAgICB9Cj4gPiAgICAgIH0KPiA+
IEBAIC02MzEsMTMgKzYyNiw2IEBAIHN0YXRpYyBpbnQgcmVkX2NoYW5uZWxfcGlwZXNfY3JlYXRl
X2JhdGNoKFJlZENoYW5uZWwKPiA+ICpjaGFubmVsLAo+ID4gICAgICByZXR1cm4gbjsKPiA+ICB9
Cj4gPiAgCj4gPiAtaW50IHJlZF9jaGFubmVsX3BpcGVzX25ld19hZGQoUmVkQ2hhbm5lbCAqY2hh
bm5lbCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9pdGVtX3Qg
Y3JlYXRvciwgdm9pZCAqZGF0YSkKPiA+IC17Cj4gPiAtICAgIHJldHVybiByZWRfY2hhbm5lbF9w
aXBlc19jcmVhdGVfYmF0Y2goY2hhbm5lbCwgY3JlYXRvciwgZGF0YSwKPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9h
ZGQpOwo+ID4gLX0KPiA+IC0KPiA+ICB1aW50MzJfdCByZWRfY2hhbm5lbF9tYXhfcGlwZV9zaXpl
KFJlZENoYW5uZWwgKmNoYW5uZWwpCj4gPiAgewo+ID4gICAgICBSZWRDaGFubmVsQ2xpZW50ICpy
Y2M7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
