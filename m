Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6AC1077D
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 13:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491BE892FD;
	Wed,  1 May 2019 11:30:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E17892FD
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 11:30:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 837FE3082132
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 11:30:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 78DB25D719
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 11:30:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6DE8C41F3C;
 Wed,  1 May 2019 11:30:04 +0000 (UTC)
Date: Wed, 1 May 2019 07:30:03 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1744324258.15802457.1556710203093.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190501112054.26512-1-uril@redhat.com>
References: <20190501112054.26512-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.21]
Thread-Topic: gitlab-ci: build out-of-tree too
Thread-Index: J0mdnebspuOsahoT8PJ3RooVnSJ7bg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 01 May 2019 11:30:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server V2] gitlab-ci: build
 out-of-tree too
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

PiAKPiBPbmUgdGVzdCBpcyBlbm91Z2ggLS0gZG8gaXQgaW4gbWFrZWNoZWNrLgo+IAo+IE11c3Qg
Z2l0IGNsZWFuIGZpcnN0IGFueSBwcmV2aW91cyBidWlsZHMuCgpObywgbm90IGF0IHRoZSBiZWdp
bm5pbmcuCnNwaWNlLWd0ayBDSSBzY3JpcHQgZXhlY3V0ZSBtdWx0aXBsZSB0ZXN0IGluIGEgc2lu
Z2xlIGpvYgpzbyBiZXR3ZWVuIGpvYnMgY2xlYW4gZXZlcnl0aGluZy4KCj4gCj4gU2lnbmVkLW9m
Zi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgo+IC0tLQo+IAo+IFNpbmNlIFYxOgo+
ICAgIC0gQWRkIGEgY29tbWVudCBhYm91dCBvdXQtb2YtdHJlZQo+ICAgIC0gY2xlYW51cCBwcmV2
aW91cyBidWlsZHMgdXNpbmcgZ2l0IGNsZWFuCj4gCj4gcGlwZWxpbmUgdGFzazoKPiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdXJpbC9zcGljZS8tL2pvYnMvMjcyNjU5Cj4gCj4gQlRX
LCBzaG91bGQgd2UgY2xlYW51cCBiZWZvcmUvYWZ0ZXIgZXZlcnkgdGFzayA/Cj4gICAgICBzaG91
bGQgd2Ugcm0gLXJmIGJ1aWxkZGlyID8gc3BpY2UtcHJvdG9jb2wgPwoKV2VsbCwgd2Ugc2hvdWxk
IGNsZWFuIGJldHdlZW4sIG5vdCBhdCB0aGUgYmVnaW5uaW5nLCBhdAp0aGUgYmVnaW5uaW5nIHJl
cG9zaXRvcnkgaXMgc3VwcG9zZWQgdG8gY2FtZSBmcm9tIGEgZ2l0IGNsb25lLgoKPiAKPiAtLS0K
PiAgLmdpdGxhYi1jaS55bWwgfCA4ICsrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwg
Yi8uZ2l0bGFiLWNpLnltbAo+IGluZGV4IDljZTk1YzAwZS4uMmMxZjQ2YWRmIDEwMDY0NAo+IC0t
LSBhLy5naXRsYWItY2kueW1sCj4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiBAQCAtMTQsMTIgKzE0
LDE4IEBAIGJlZm9yZV9zY3JpcHQ6Cj4gIAo+ICBtYWtlY2hlY2s6Cj4gICAgc2NyaXB0Ogo+ICsg
ICMgQWxzbyBjaGVjayBvdXQtb2YtdHJlZSBidWlsZAo+ICsgIC0gZ2l0IGNsZWFuIC1mZHggIyBj
bGVhbnVwIGFmdGVyIHByZXZpb3VzIGJ1aWxkcwo+ICsgIC0gZ2l0IHN1Ym1vZHVsZSBmb3JlYWNo
IC0tcmVjdXJzaXZlIGdpdCBjbGVhbiAtZmR4CgpUaGVyZSAyIGxpbmVzIGhlcmUgYXJlIHVzZWxl
c3MuCgo+ICsgIC0gbWtkaXIgYnVpbGRkaXIKPiArICAtIGNkIGJ1aWxkZGlyCj4gICAgLSA+Cj4g
ICAgICBDRkxBR1M9Jy1PMiAtcGlwZSAtZyAtZnNhbml0aXplPWFkZHJlc3MgLWZuby1vbWl0LWZy
YW1lLXBvaW50ZXIKPiAgICAgIC1XZnJhbWUtbGFyZ2VyLXRoYW49NDA5MjAnCj4gICAgICBMREZM
QUdTPSctZnNhbml0aXplPWFkZHJlc3MgLWxhc2FuJwo+IC0gICAgLi9hdXRvZ2VuLnNoIC0tZW5h
YmxlLWNlbHQwNTEKPiArICAgIC4uL2F1dG9nZW4uc2ggLS1lbmFibGUtY2VsdDA1MQo+ICAgIC0g
bWFrZQo+ICAgIC0gbWFrZSAtQyBzZXJ2ZXIgY2hlY2sgfHwgKGNhdCBzZXJ2ZXIvdGVzdHMvdGVz
dC1zdWl0ZS5sb2cgJiYgZXhpdCAxKQo+ICsgIC0gY2QgLi4KPiAgCj4gIG1lc29uLW1ha2VjaGVj
azoKPiAgICBzY3JpcHQ6CgpPdGhlcndpc2UsCgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
