Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 293EE61CBB
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 12:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550F689C33;
	Mon,  8 Jul 2019 10:08:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B0589C33
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 10:08:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 91E6D15567
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 10:08:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 863625C46B
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 10:08:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7DF8354D3C;
 Mon,  8 Jul 2019 10:08:42 +0000 (UTC)
Date: Mon, 8 Jul 2019 06:08:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <648543555.26624664.1562580520892.JavaMail.zimbra@redhat.com>
In-Reply-To: <d5b29067-86e0-49df-bdbe-a7622295787e@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <20190520073947.5382-4-fziglio@redhat.com>
 <d5b29067-86e0-49df-bdbe-a7622295787e@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.16]
Thread-Topic: build: Do additional changes to Meson distribution
Thread-Index: Lkkp5F86m6inr9Dwlx/04Y8M6egzaQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 08 Jul 2019 10:08:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 3/4] build: Do additional
 changes to Meson distribution
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

PiAKPiBPbiA1LzIwLzE5IDEwOjM5IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiAtIGNv
cHkgbWlzc2luZyByZWNvcmRlciBmaWxlczsKPiA+IC0gZ2VuZXJhdGUgVEhBTktTIGZpbGUuCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
Pgo+ID4gLS0tCj4gPiAgIE1ha2VmaWxlLmFtICAgICAgICAgIHwgIDEgKwo+ID4gICBidWlsZC1h
dXgvbWVzb24tZGlzdCB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAgbWVz
b24uYnVpbGQgICAgICAgICAgfCAgMiArLQo+ID4gICAzIGZpbGVzIGNoYW5nZWQsIDMwIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ICAgY3JlYXRlIG1vZGUgMTAwNzU1IGJ1aWxkLWF1
eC9tZXNvbi1kaXN0Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9NYWtlZmlsZS5hbSBiL01ha2VmaWxl
LmFtCj4gPiBpbmRleCAzYzYwN2M5YS4uNmJhOGMwMjggMTAwNjQ0Cj4gPiAtLS0gYS9NYWtlZmls
ZS5hbQo+ID4gKysrIGIvTWFrZWZpbGUuYW0KPiA+IEBAIC0yNyw2ICsyNyw3IEBAIEVYVFJBX0RJ
U1QgPQkJCQkJXAo+ID4gICAJbWVzb25fb3B0aW9ucy50eHQJCQlcCj4gPiAgIAlwby9tZXNvbi5i
dWlsZAkJCQlcCj4gPiAgIAlidWlsZC1hdXgvZ2l0LXZlcnNpb24tZ2VuCQlcCj4gPiArCWJ1aWxk
LWF1eC9tZXNvbi1kaXN0CQkJXAo+ID4gICAJZ3RrLWRvYy5tYWtlCQkJCVwKPiA+ICAgCS52ZXJz
aW9uCQkJCVwKPiA+ICAgCSQoTlVMTCkKPiA+IGRpZmYgLS1naXQgYS9idWlsZC1hdXgvbWVzb24t
ZGlzdCBiL2J1aWxkLWF1eC9tZXNvbi1kaXN0Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDc1NQo+ID4g
aW5kZXggMDAwMDAwMDAuLjlhMThmZjJkCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9idWls
ZC1hdXgvbWVzb24tZGlzdAo+ID4gQEAgLTAsMCArMSwyOCBAQAo+ID4gKyMhL2Jpbi9iYXNoCj4g
PiArCj4gPiArc2V0IC1lCj4gPiArc2V0IC1vIHBpcGVmYWlsCj4gPiArCj4gPiAraWYgdGVzdCAi
JDEiID0gIiI7IHRoZW4KPiA+ICsgICAgZWNobyAiVmVyc2lvbiBub3QgcHJvdmlkZWQiID4mMgo+
ID4gKyAgICBleGl0IDEKPiA+ICtmaQo+ID4gK2lmICEgdGVzdCAtZCAiJDIiOyB0aGVuCj4gPiAr
ICAgIGVjaG8gIlNvdXJjZSBkaXJlY3Rvcnkgbm90IHByb3ZpZGVkIiA+JjIKPiA+ICsgICAgZXhp
dCAxCj4gPiArZmkKPiA+ICsKPiA+ICsjIGdlbmVyYXRlIHRhcmJhbGwgdmVyc2lvbgo+ID4gK2Vj
aG8gIiQxIiA+ICIkTUVTT05fRElTVF9ST09ULy50YXJiYWxsLXZlcnNpb24iCj4gPiArCj4gPiAr
IyBhZGQgbWlzc2luZyByZWNvcmRlciBmaWxlcwo+ID4gKyhjZCAiJDIiICYmIGxzIC0xIHN1YnBy
b2plY3RzL3NwaWNlLWNvbW1vbi9jb21tb24vcmVjb3JkZXIvcmVjb3JkZXIuW2NoXSBcCj4gPiAr
ICAgIHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbi9jb21tb24vcmVjb3JkZXIvcmVjb3JkZXJfcmlu
Zy5bY2hdIHwgXAo+ID4gKyAgICB0YXIgY2YgLSAtVCAtKSB8IChjZCAiJE1FU09OX0RJU1RfUk9P
VCIgJiYgZXhlYyB0YXIgeGYgLSkKPiAKPiBXaGF0IGhhcHBlbnMgd2hlbiByZWNvcmRlciBpcyBk
aXNhYmxlZCBhbmQgdGhpcyBzY3JpcHRzIGV4aXRzIHdpdGgKPiBhbiBlcnJvciA/Cj4gCgpUaGUg
ZmlsZXMgc2hvdWxkIGFsd2F5cyBiZSB0aGVyZSwgZ2l0IG1vZHVsZXMgYXJlIG5vdCBkZXBlbmRp
bmcgb24KTWVzb24vYXV0b2NvbmYgY29uZmlndXJhdGlvbi4KCj4gVXJpLgo+IAo+ID4gKwo+ID4g
KyMgZ2VuZXJhdGUgVEhBTktTIGZpbGUKPiA+ICt7Cj4gPiArCSAgZWNobyAiVGhlIHNwaWNlLWd0
ayB0ZWFtIHdvdWxkIGxpa2UgdG8gdGhhbmsgdGhlIGZvbGxvd2luZwo+ID4gY29udHJpYnV0b3Jz
OiIKPiA+ICsJICBlY2hvCj4gPiArCSAgKGNkICIkMiIgJiYgZXhlYyBnaXQgbG9nIC0tZm9ybWF0
PSclYU4gPCVhRT4nKSB8IHNvcnQgLXUKPiA+ICt9ID4gIiRNRVNPTl9ESVNUX1JPT1QvVEhBTktT
Igo+ID4gZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKPiA+IGluZGV4IDhj
NjI4OGYzLi41ODk2MTU1MSAxMDA2NDQKPiA+IC0tLSBhL21lc29uLmJ1aWxkCj4gPiArKysgYi9t
ZXNvbi5idWlsZAo+ID4gQEAgLTYsNyArNiw3IEBAIHByb2plY3QoJ3NwaWNlLWd0aycsICdjJywK
PiA+ICAgICAgICAgICAgbGljZW5zZSA6ICdMR1BMdjIuMScsCj4gPiAgICAgICAgICAgIG1lc29u
X3ZlcnNpb24gOiAnPj0gMC40OScpCj4gPiAgIAo+ID4gLW1lc29uLmFkZF9kaXN0X3NjcmlwdCgn
c2gnLCAnLWMnLCAnZWNobwo+ID4gQDBAPiIkTUVTT05fRElTVF9ST09ULy50YXJiYWxsLXZlcnNp
b24iJy5mb3JtYXQobWVzb24ucHJvamVjdF92ZXJzaW9uKCkpKQo+ID4gK21lc29uLmFkZF9kaXN0
X3NjcmlwdCgnYnVpbGQtYXV4L21lc29uLWRpc3QnLCBtZXNvbi5wcm9qZWN0X3ZlcnNpb24oKSwK
PiA+IG1lc29uLnNvdXJjZV9yb290KCkpCj4gPiAgIAo+ID4gICAjCj4gPiAgICMgZ2xvYmFsIEMg
ZGVmaW5lcwo+ID4gCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
