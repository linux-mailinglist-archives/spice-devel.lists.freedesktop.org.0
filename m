Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EB549E4F
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 12:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856E76E12F;
	Tue, 18 Jun 2019 10:34:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180B26E12F
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 10:34:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 866BF369CC
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 10:34:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A69B7D50E
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 10:34:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A70C4EBC4;
 Tue, 18 Jun 2019 10:34:20 +0000 (UTC)
Date: Tue, 18 Jun 2019 06:34:20 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <1057395185.23381715.1560854060375.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190617204630.22420-5-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
 <20190617204630.22420-5-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.128, 10.4.195.11]
Thread-Topic: webdav: don't warn on cancel
Thread-Index: f0Pupn0dE/Gu7MgZByU9whxOgEewOQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 18 Jun 2019 10:34:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 5/5] webdav: don't warn on cancel
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

PiAKPiBUaGUgSU8gb3BlcmF0aW9uIGlzIGNhbmNlbGxlZCBvbiBjaGFubmVsIGRpc3Bvc2UKPiBh
bmQgaXQgaXMgbm90IGFuIGVycm9yLCBzbyBzaWxlbmNlIHRoZSB3YXJuaW5ncy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMv
Y2hhbm5lbC13ZWJkYXYuYyB8IDkgKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdl
YmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiBpbmRleCAzNGQ4OGE5Li43YmVjMmEwIDEw
MDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLXdlYmRhdi5jCj4gKysrIGIvc3JjL2NoYW5uZWwtd2Vi
ZGF2LmMKPiBAQCAtNDA5LDcgKzQwOSw4IEBAIHN0YXRpYyB2b2lkIGRhdGFfcmVhZF9jYihHT2Jq
ZWN0ICpzb3VyY2Vfb2JqZWN0LAo+ICAKPiAgICAgIHNpemUgPQo+ICAgICAgc3BpY2Vfdm1jX2lu
cHV0X3N0cmVhbV9yZWFkX2FsbF9maW5pc2goR19JTlBVVF9TVFJFQU0oc291cmNlX29iamVjdCks
Cj4gICAgICByZXMsICZlcnJvcik7Cj4gICAgICBpZiAoZXJyb3IpIHsKPiAtICAgICAgICBnX3dh
cm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKPiArICAgICAgICBpZiAoIWdfZXJy
b3JfbWF0Y2hlcyhlcnJvciwgR19JT19FUlJPUiwgR19JT19FUlJPUl9DQU5DRUxMRUQpKQo+ICsg
ICAgICAgICAgICBnX3dhcm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKCk1pbm9y
IHN0eWxlOiBhbHdheXMgdXNlIGJyYWNrZXRzLgoKPiAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZl
cnJvcik7Cj4gICAgICAgICAgcmV0dXJuOwo+ICAgICAgfQo+IEBAIC00NTMsNyArNDU0LDggQEAg
c3RhdGljIHZvaWQgc2l6ZV9yZWFkX2NiKEdPYmplY3QgKnNvdXJjZV9vYmplY3QsCj4gIAo+ICBl
bmQ6Cj4gICAgICBpZiAoZXJyb3IpIHsKPiAtICAgICAgICBnX3dhcm5pbmcoImVycm9yOiAlcyIs
IGVycm9yLT5tZXNzYWdlKTsKPiArICAgICAgICBpZiAoIWdfZXJyb3JfbWF0Y2hlcyhlcnJvciwg
R19JT19FUlJPUiwgR19JT19FUlJPUl9DQU5DRUxMRUQpKQo+ICsgICAgICAgICAgICBnX3dhcm5p
bmcoImVycm9yOiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKPiAgICAgICAgICBnX2NsZWFyX2Vycm9y
KCZlcnJvcik7Cj4gICAgICB9Cj4gIH0KPiBAQCAtNDgwLDcgKzQ4Miw4IEBAIHN0YXRpYyB2b2lk
IGNsaWVudF9yZWFkX2NiKEdPYmplY3QgKnNvdXJjZV9vYmplY3QsCj4gIAo+ICBlbmQ6Cj4gICAg
ICBpZiAoZXJyb3IpIHsKPiAtICAgICAgICBnX3dhcm5pbmcoImVycm9yOiAlcyIsIGVycm9yLT5t
ZXNzYWdlKTsKPiArICAgICAgICBpZiAoIWdfZXJyb3JfbWF0Y2hlcyhlcnJvciwgR19JT19FUlJP
UiwgR19JT19FUlJPUl9DQU5DRUxMRUQpKQo+ICsgICAgICAgICAgICBnX3dhcm5pbmcoImVycm9y
OiAlcyIsIGVycm9yLT5tZXNzYWdlKTsKPiAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnJvcik7
Cj4gICAgICB9Cj4gIH0KCk90aGVyd2lzZSwKICBBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
