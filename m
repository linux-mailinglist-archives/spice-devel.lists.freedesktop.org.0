Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11F0A5B14
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 18:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D7A891A0;
	Mon,  2 Sep 2019 16:04:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04201891A0
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9BDE310C6964
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:55 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 278155D9C3
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 16:04:55 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 18:04:49 +0200
Message-Id: <20190902160449.19589-7-victortoso@redhat.com>
In-Reply-To: <20190902160449.19589-1-victortoso@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Mon, 02 Sep 2019 16:04:55 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 6/6] RFC: test: session: gstreamer init
 by us or client
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKRG9lcyBub3Qgd29yayBwcm9w
ZXJseSBqdXN0IGJlY2F1c2UgZ3N0X2lzX2luaXRpYWxpemVkKCkgY2hlY2tzIGlmCmdzdF9pbml0
KCkgb3IgZ3N0X2NoZWNrX2luaXQoKSB3YXMgZXZlciBjYWxsZWQgYnV0IGl0IGRvZXMgbm90CmNv
bnNpZGVyIGlmIGdzdF9kZWluaXQoKSB3YXMgY2FsbGVkIHRvby4gSSdtIHNlbmRpbmcgdGhpcyBS
RkMgdG8gY2hlY2sKaWYgc2hvdWxkIGJlIGFkZGVkIG9yIHdhaXQgdGlsbCBmZWVkYmFjayBvbiB1
cHN0cmVhbSBhYm91dCB0aGUgQVBJLAp0aGF0IGlzLCBJIGhhdmUgYSBkb3duc3RyZWFtIHBhdGNo
IHRoYXQgZ3N0X2lzX2luaXRpYWxpemVkKCkgd291bGQKcmV0dXJuIEZBTFNFIGlmIGdzdF9kZWlu
aXQoKSB3YXMgY2FsbGVkIC4uLgoKU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRv
c29AcmVkaGF0LmNvbT4KLS0tCiB0ZXN0cy9zZXNzaW9uLmMgfCA0OSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDkgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL3Nlc3Npb24uYyBiL3Rlc3RzL3Nlc3Npb24u
YwppbmRleCA4MjA4MDE2Li44ZTE4MTRlIDEwMDY0NAotLS0gYS90ZXN0cy9zZXNzaW9uLmMKKysr
IGIvdGVzdHMvc2Vzc2lvbi5jCkBAIC0xLDMgKzEsNiBAQAorI2luY2x1ZGUgPHN0ZGJvb2wuaD4K
KyNpbmNsdWRlIDxnc3QvZ3N0Lmg+CisKICNpbmNsdWRlIDxzcGljZS1jbGllbnQuaD4KIAogdHlw
ZWRlZiBzdHJ1Y3QgewpAQCAtMzMzLDYgKzMzNiw1MCBAQCBzdGF0aWMgdm9pZCB0ZXN0X3Nlc3Np
b25fdXJpX3VuaXhfZ29vZCh2b2lkKQogICAgIHRlc3Rfc2Vzc2lvbl91cmlfZ29vZCh0ZXN0cywg
R19OX0VMRU1FTlRTKHRlc3RzKSk7CiB9CiAKK3N0YXRpYyB2b2lkIHNlc3Npb25faW5pdF90ZXN0
X29uX2dzdChib29sIHNob3VsZF9pbml0KQoreworCisgICAgaWYgKHNob3VsZF9pbml0KSB7Cisg
ICAgICAgIEdFcnJvciAqZXJyID0gTlVMTDsKKyAgICAgICAgZ3N0X2luaXRfY2hlY2soTlVMTCwg
TlVMTCwgJmVycik7CisgICAgICAgIGdfYXNzZXJ0X25vX2Vycm9yKGVycik7CisgICAgICAgIGdf
YXNzZXJ0X3RydWUoZ3N0X2lzX2luaXRpYWxpemVkKCkpOworICAgIH0gZWxzZSBpZiAoZ3N0X2lz
X2luaXRpYWxpemVkKCkpIHsKKyNpZiAwCisgICAgICAgIC8qIE5vdCB3b3JraW5nIGZvciBub3cs
IGdzdF9pc19pbml0aWFsaXplZCgpIHJldHVybiBUUlVFIGFsc28gaWYKKyAgICAgICAgICogZ3N0
X2RlaW5pdCgpIHdhcyBjYWxsZWQgKi8KKyAgICAgICAgZ3N0X2RlaW5pdCgpOworICAgICAgICBn
X2Fzc2VydF9mYWxzZShnc3RfaXNfaW5pdGlhbGl6ZWQoKSk7CisjZW5kaWYKKyAgICB9CisKKyAg
ICBTcGljZVNlc3Npb24gKnNlc3Npb24gPSBzcGljZV9zZXNzaW9uX25ldygpOworICAgIGdfYXNz
ZXJ0X3RydWUoZ3N0X2lzX2luaXRpYWxpemVkKCkpOworICAgIGdfb2JqZWN0X3VucmVmKHNlc3Np
b24pOworICAgIGlmIChzaG91bGRfaW5pdCkgeworICAgICAgICBnX2Fzc2VydF90cnVlKGdzdF9p
c19pbml0aWFsaXplZCgpKTsKKyAgICAgICAgZ3N0X2RlaW5pdCgpOworI2lmIDAKKyAgICAgICAg
Z19hc3NlcnRfZmFsc2UoZ3N0X2lzX2luaXRpYWxpemVkKCkpOworI2VuZGlmCisgICAgfSBlbHNl
IHsKKyNpZiAwCisgICAgICAgIC8qIEV2ZW4gaWYgZ3N0X2RlaW5pdCgpIGlzIGNhbGxlZCwgcmV0
dXJucyBUUlVFIGJlbG93ICovCisgICAgICAgIGdfYXNzZXJ0X2ZhbHNlKGdzdF9pc19pbml0aWFs
aXplZCgpKTsKKyNlbmRpZgorICAgIH0KK30KKworc3RhdGljIHZvaWQgdGVzdF9zZXNzaW9uX2dz
dF9pbml0X2J5X3VzKHZvaWQpCit7CisgICAgc2Vzc2lvbl9pbml0X3Rlc3Rfb25fZ3N0KHRydWUp
OworfQorCitzdGF0aWMgdm9pZCB0ZXN0X3Nlc3Npb25fZ3N0X2luaXRfYnlfY2xpZW50KHZvaWQp
Cit7CisgICAgc2Vzc2lvbl9pbml0X3Rlc3Rfb25fZ3N0KGZhbHNlKTsKK30KKwogaW50IG1haW4o
aW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkKIHsKICAgICBnX3Rlc3RfaW5pdCgmYXJnYywgJmFyZ3Ys
IE5VTEwpOwpAQCAtMzQxLDYgKzM4OCw4IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyKiBhcmd2
W10pCiAgICAgZ190ZXN0X2FkZF9mdW5jKCIvc2Vzc2lvbi9nb29kLWlwdjQtdXJpIiwgdGVzdF9z
ZXNzaW9uX3VyaV9pcHY0X2dvb2QpOwogICAgIGdfdGVzdF9hZGRfZnVuYygiL3Nlc3Npb24vZ29v
ZC1pcHY2LXVyaSIsIHRlc3Rfc2Vzc2lvbl91cmlfaXB2Nl9nb29kKTsKICAgICBnX3Rlc3RfYWRk
X2Z1bmMoIi9zZXNzaW9uL2dvb2QtdW5peCIsIHRlc3Rfc2Vzc2lvbl91cmlfdW5peF9nb29kKTsK
KyAgICBnX3Rlc3RfYWRkX2Z1bmMoIi9zZXNzaW9uL2dzdHJlYW1lci9pbml0LWJ5LXVzIiwgdGVz
dF9zZXNzaW9uX2dzdF9pbml0X2J5X3VzKTsKKyAgICBnX3Rlc3RfYWRkX2Z1bmMoIi9zZXNzaW9u
L2dzdHJlYW1lci9pbml0LWJ5LWNsaWVudCIsIHRlc3Rfc2Vzc2lvbl9nc3RfaW5pdF9ieV9jbGll
bnQpOwogCiAgICAgcmV0dXJuIGdfdGVzdF9ydW4oKTsKIH0KLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
