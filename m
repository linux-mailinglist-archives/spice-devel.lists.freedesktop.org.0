Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAB16D050
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37F46E2F2;
	Thu, 18 Jul 2019 14:49:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA9D6E2F2
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:49:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C1138553B
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:49:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 23B995ED2D
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:49:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B92B1800206;
 Thu, 18 Jul 2019 14:49:34 +0000 (UTC)
Date: Thu, 18 Jul 2019 10:49:33 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1780736450.781536.1563461373819.JavaMail.zimbra@redhat.com>
In-Reply-To: <ae84cbe4-3162-59d4-2746-c81516e92539@redhat.com>
References: <20190718073225.13190-1-fziglio@redhat.com>
 <20190718073225.13190-4-fziglio@redhat.com>
 <ae84cbe4-3162-59d4-2746-c81516e92539@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.18]
Thread-Topic: Add some Valgrind suppressions for Fedora 30
Thread-Index: ajOzcl5xJZPrp1En9HkzZduI+EedWg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 18 Jul 2019 14:49:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 3/3] ci: Add some Valgrind
 suppressions for Fedora 30
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

PiAKPiBPbiA3LzE4LzE5IDEwOjMyIEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAKPiBIaSBG
cmVkaWFubywKPiAKPiBJJ3ZlIGJlZW4gcGxheWluZyB3aXRoIGl0IHRvby4KPiBIYWQgc2ltaWxh
ciBydWxlcyBidXQgZGlmZmVyZW50Lgo+IAo+IFlvdXIgdmVyc2lvbiB3b3JrcyBmb3IgbWUuCj4g
U29tZSBtaW5vciBjb21tZW50cyBiZWxvdy4KPiAKPiA+IC0tLQo+ID4gICBzZXJ2ZXIvdGVzdHMv
dmFsZ3JpbmQvc3BpY2Uuc3VwcCB8IDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Nl
cnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBwCj4gPiBiL3NlcnZlci90ZXN0cy92YWxncmlu
ZC9zcGljZS5zdXBwCj4gPiBpbmRleCAxYmZlODEwMDYuLmRkMzY2M2M2OCAxMDA2NDQKPiA+IC0t
LSBhL3NlcnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBwCj4gPiArKysgYi9zZXJ2ZXIvdGVz
dHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcAo+ID4gQEAgLTM2LDMgKzM2LDI4IEBACj4gPiAgIAkuLi4K
PiA+ICAgCWZ1bjpwMTFfa2l0X21vZHVsZXNfbG9hZAo+ID4gICB9Cj4gPiArCj4gPiArewo+ID4g
KwlnbnV0bHNfeDUwOV9leHRfaW1wb3J0X3N1YmplY3RfYWx0X25hbWVzCj4gPiArCU1lbWNoZWNr
OkNvbmQKPiA+ICsJLi4uCj4gPiArCWZ1bjpnbnV0bHNfeDUwOV9leHRfaW1wb3J0X3N1YmplY3Rf
YWx0X25hbWVzCj4gPiArCWZ1bjpnbnV0bHNfeDUwOV9jcnRfaW1wb3J0Cj4gPiArCWZ1bjpnbnV0
bHNfeDUwOV90cnVzdF9saXN0X2l0ZXJfZ2V0X2NhCj4gPiArCS4uLgo+ID4gKwlmdW46Z19pbml0
YWJsZV9uZXdfdmFsaXN0Cj4gPiArCWZ1bjpnX2luaXRhYmxlX25ldwo+ID4gKwkuLi4KPiAKPiBw
b3NzaWJseSB5b3UgY2FuIHJlbW92ZSB0aGUgbGFzdCA0IGxpbmVzIChub3QgaW1wb3J0YW50KQo+
IAoKSSdsbCB0cnkgKHdpdGggQ0kpIHRvIHJlbW92ZSB0aGVzZSBsaW5lcyAoYW5kIGJlbG93KSwg
aWYgdGhleSB3b3JrIEknbGwgcmVtb3ZlCmZyb20gdGhlIHBhdGNoLgoKPiA+ICt9Cj4gPiArCj4g
PiArewo+ID4gKwlnbGliX2dfc29ja2V0X2NsaWVudF9jbGFzc19pbml0Cj4gCj4gQXJlIGFsbCBn
bGliIHNvY2tldHMgbGVha2luZyB3aGVuIGluaXRpYWxpemVkID8KPiAKCk1hbnkuIFRoZXkgcGVy
Zm9ybSBzaW5nbGUgcmVnaXN0cmF0aW9uIG9yIGluaXRpYWxpemF0aW9uIHdoaWNoCmFyZSBuZXZl
ciB1bnJlZ2lzdGVyZWQvdW5pbml0aWFsaXplZC4gTm90IG9ubHkgc29ja2V0cy4KCj4gPiArCU1l
bWNoZWNrOkxlYWsKPiA+ICsJZnVuOmNhbGxvYwo+ID4gKwkuLi4KPiA+ICsJZnVuOnR5cGVfY2xh
c3NfaW5pdF9XbQo+ID4gKwkuLi4KPiA+ICsJZnVuOmdfc29ja2V0X2NsaWVudF9jbGFzc19pbml0
Cj4gPiArCS4uLgo+ID4gKwlmdW46dHlwZV9jbGFzc19pbml0X1dtCj4gCj4gWW91IGNhbiBwcm9i
YWJseSByZW1vdmUgdGhlIHR5cGVfY2xhc3NfaW5pdF9XbSBhbmQgLi4uCj4gCj4gVXJpLgo+IAoK
RnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
