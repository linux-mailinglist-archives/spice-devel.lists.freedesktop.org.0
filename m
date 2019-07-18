Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF9B6CA27
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9236E33D;
	Thu, 18 Jul 2019 07:43:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539E16E33D
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:43:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F033D59440
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:43:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E723360C4C
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:43:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E0AB31800205
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:43:07 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:43:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1355493655.688340.1563435787889.JavaMail.zimbra@redhat.com>
In-Reply-To: <824031730.26515593.1562333475331.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-6-fziglio@redhat.com>
 <297374572.23872965.1561102465194.JavaMail.zimbra@redhat.com>
 <824031730.26515593.1562333475331.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: red-channel: Inline red_channel_pipes_create_batch
Thread-Index: gmWxtUSwKR8lDtBeC0m6mS0ZE+RvUet58uzLkSBV5co=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 18 Jul 2019 07:43:08 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gVGhlIGZ1
bmN0aW9uIGlzIGNhbGxlZCBvbmx5IGJ5IHJlZF9jaGFubmVsX3BpcGVzX25ld19hZGQuCj4gPiA+
IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KPiA+ID4gLS0tCj4gPiA+ICBzZXJ2ZXIvcmVkLWNoYW5uZWwuYyB8IDIwICsrKystLS0tLS0t
LS0tLS0tLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxNiBkZWxl
dGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwuYyBi
L3NlcnZlci9yZWQtY2hhbm5lbC5jCj4gPiA+IGluZGV4IDgyZTUyMjM5NS4uNDg3MmQyODA3IDEw
MDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvcmVkLWNoYW5uZWwuYwo+ID4gPiArKysgYi9zZXJ2ZXIv
cmVkLWNoYW5uZWwuYwo+ID4gPiBAQCAtNTk4LDMyICs1OTgsMjcgQEAgc3RhdGljIGJvb2wKPiA+
ID4gcmVkX2NoYW5uZWxfbm9faXRlbV9iZWluZ19zZW50KFJlZENoYW5uZWwKPiA+ID4gKmNoYW5u
ZWwpCj4gPiA+ICAgKiBUT0RPIC0gaW5saW5lPyBtYWNybz8gcmlnaHQgbm93IHRoaXMgaXMgdGhl
IHNpbXBsZXN0IGZyb20gY29kZSBhbW91bnQKPiA+ID4gICAqLwo+ID4gPiAgCj4gPiA+IC10eXBl
ZGVmIHZvaWQgKCpyY2NfaXRlbV90KShSZWRDaGFubmVsQ2xpZW50ICpyY2MsIFJlZFBpcGVJdGVt
ICppdGVtKTsKPiA+ID4gLQo+ID4gPiAgLyoqCj4gPiA+IC0gKiByZWRfY2hhbm5lbF9waXBlc19j
cmVhdGVfYmF0Y2g6Cj4gPiA+ICsgKiByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRkOgo+ID4gPiAg
ICogQGNoYW5uZWw6IGEgY2hhbm5lbAo+ID4gPiAgICogQGNyZWF0b3I6IGEgY2FsbGJhY2sgdG8g
Y3JlYXRlIHBpcGUgaXRlbSAobm90IG51bGwpCj4gPiA+ICAgKiBAZGF0YTogdGhlIGRhdGEgdG8g
cGFzcyB0byB0aGUgY3JlYXRvcgo+ID4gPiAtICogQHBpcGVfYWRkOiBhIGNhbGxiYWNrIHRvIGFk
ZCBub24tbnVsbCBwaXBlIGl0ZW1zIChub3QgbnVsbCkKPiA+ID4gICAqCj4gPiA+ICAgKiBSZXR1
cm5zOiB0aGUgbnVtYmVyIG9mIGFkZGVkIGl0ZW1zCj4gPiA+ICAgKiovCj4gPiA+IC1zdGF0aWMg
aW50IHJlZF9jaGFubmVsX3BpcGVzX2NyZWF0ZV9iYXRjaChSZWRDaGFubmVsICpjaGFubmVsLAo+
ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfcGlwZV9pdGVtX3QgY3Jl
YXRvciwgdm9pZCAqZGF0YSwKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmNjX2l0ZW1fdCBwaXBlX2FkZCkKPiA+ID4gK2ludCByZWRfY2hhbm5lbF9waXBlc19uZXdfYWRk
KFJlZENoYW5uZWwgKmNoYW5uZWwsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBuZXdfcGlwZV9pdGVtX3QgY3JlYXRvciwgdm9pZCAqZGF0YSkKPiA+ID4gIHsKPiA+ID4gICAg
ICBSZWRDaGFubmVsQ2xpZW50ICpyY2M7Cj4gPiA+ICAgICAgUmVkUGlwZUl0ZW0gKml0ZW07Cj4g
PiA+ICAgICAgaW50IG51bSA9IDAsIG4gPSAwOwo+ID4gPiAgCj4gPiA+ICAgICAgc3BpY2VfYXNz
ZXJ0KGNyZWF0b3IgIT0gTlVMTCk7Cj4gPiA+IC0gICAgc3BpY2VfYXNzZXJ0KHBpcGVfYWRkICE9
IE5VTEwpOwo+ID4gPiAgCj4gPiA+ICAgICAgRk9SRUFDSF9DTElFTlQoY2hhbm5lbCwgcmNjKSB7
Cj4gPiA+ICAgICAgICAgIGl0ZW0gPSAoKmNyZWF0b3IpKHJjYywgZGF0YSwgbnVtKyspOwo+ID4g
PiAgICAgICAgICBpZiAoaXRlbSkgewo+ID4gPiAtICAgICAgICAgICAgKCpwaXBlX2FkZCkocmNj
LCBpdGVtKTsKPiA+ID4gKyAgICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2FkZChy
Y2MsIGl0ZW0pOwo+ID4gPiAgICAgICAgICAgICAgbisrOwo+ID4gPiAgICAgICAgICB9Cj4gPiA+
ICAgICAgfQo+ID4gPiBAQCAtNjMxLDEzICs2MjYsNiBAQCBzdGF0aWMgaW50IHJlZF9jaGFubmVs
X3BpcGVzX2NyZWF0ZV9iYXRjaChSZWRDaGFubmVsCj4gPiA+ICpjaGFubmVsLAo+ID4gPiAgICAg
IHJldHVybiBuOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+IC1pbnQgcmVkX2NoYW5uZWxfcGlwZXNf
bmV3X2FkZChSZWRDaGFubmVsICpjaGFubmVsLAo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgbmV3X3BpcGVfaXRlbV90IGNyZWF0b3IsIHZvaWQgKmRhdGEpCj4gPiA+IC17Cj4g
PiA+IC0gICAgcmV0dXJuIHJlZF9jaGFubmVsX3BpcGVzX2NyZWF0ZV9iYXRjaChjaGFubmVsLCBj
cmVhdG9yLCBkYXRhLAo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkKTsKPiA+ID4gLX0KPiA+ID4gLQo+ID4g
PiAgdWludDMyX3QgcmVkX2NoYW5uZWxfbWF4X3BpcGVfc2l6ZShSZWRDaGFubmVsICpjaGFubmVs
KQo+ID4gPiAgewo+ID4gPiAgICAgIFJlZENoYW5uZWxDbGllbnQgKnJjYzsKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
