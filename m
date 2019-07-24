Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B880572BB9
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 11:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26856E4D4;
	Wed, 24 Jul 2019 09:51:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560C56E4D4
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 09:51:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C1EC9223873;
 Wed, 24 Jul 2019 09:51:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B228E5DA34;
 Wed, 24 Jul 2019 09:51:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C85B3264C8;
 Wed, 24 Jul 2019 09:51:42 +0000 (UTC)
Date: Wed, 24 Jul 2019 05:51:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <984222004.2774948.1563961902734.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190718220927.17240-1-jwhite@codeweavers.com>
References: <20190718220927.17240-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.23]
Thread-Topic: Fix a bug in the tests.
Thread-Index: /MAIEbxQuxM8tJrLjpDpL+B2CXxUAA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 24 Jul 2019 09:51:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice] Fix a bug in the tests.
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

PiAKPiBXZSB3ZXJlIG92ZXJseSBkZXBlbmRlbnQgb24gdGltaW5nIGZvciBzdWNjZXNzOyBub3cg
d2UKPiBkZWxpYmVyYXRlbHkgd2FpdCBmb3Igb3VyIEdDIGFuZCBkcmF3aW5nIHRvIGZpbmlzaC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+
CgpBY2tlZAoKPiAtLS0KPiAgc3JjL3Rlc3RzL3hjYi5jIHwgMTUgKysrKysrKysrKystLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9zcmMvdGVzdHMveGNiLmMgYi9zcmMvdGVzdHMveGNiLmMKPiBpbmRleCA2YmU0
YTY5Yi4uNzA5Y2RmZDQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3Rlc3RzL3hjYi5jCj4gKysrIGIvc3Jj
L3Rlc3RzL3hjYi5jCj4gQEAgLTgyLDYgKzgyLDggQEAgaW50IHhjYl9kcmF3X2dyaWQoY29uc3Qg
Y2hhciAqZGlzcGxheSkKPiAgICAgIHhjYl9nY29udGV4dF90IHJlZF9mZzsKPiAgICAgIHhjYl9n
Y29udGV4dF90IGdyZWVuX2ZnOwo+ICAKPiArICAgIHhjYl92b2lkX2Nvb2tpZV90IGNvb2tpZTsK
PiArCj4gICAgICB4Y2JfcmVjdGFuZ2xlX3QgcmVkX3JlY3RhbmdsZXNbMzJdOwo+ICAgICAgeGNi
X3JlY3RhbmdsZV90IGdyZWVuX3JlY3RhbmdsZXNbMzJdOwo+ICAKPiBAQCAtOTYsMTkgKzk4LDI0
IEBAIGludCB4Y2JfZHJhd19ncmlkKGNvbnN0IGNoYXIgKmRpc3BsYXkpCj4gICAgICByZWRfZmcg
PSB4Y2JfZ2VuZXJhdGVfaWQoYyk7Cj4gICAgICBsb29rdXBfY29sb3IoYywgc2NyZWVuLCAicmVk
IiwgJnBpeGVsc1swXSk7Cj4gICAgICBwaXhlbHNbMV0gPSAwOwo+IC0gICAgeGNiX2NyZWF0ZV9n
YyhjLCByZWRfZmcsIHNjcmVlbi0+cm9vdCwgWENCX0dDX0ZPUkVHUk9VTkQsIHBpeGVscyk7Cj4g
KyAgICBjb29raWUgPSB4Y2JfY3JlYXRlX2djX2NoZWNrZWQoYywgcmVkX2ZnLCBzY3JlZW4tPnJv
b3QsCj4gWENCX0dDX0ZPUkVHUk9VTkQsIHBpeGVscyk7Cj4gKyAgICB4Y2JfcmVxdWVzdF9jaGVj
ayhjLCBjb29raWUpOwo+ICAKPiAgICAgIGdyZWVuX2ZnID0geGNiX2dlbmVyYXRlX2lkKGMpOwo+
ICAgICAgbG9va3VwX2NvbG9yKGMsIHNjcmVlbiwgImdyZWVuIiwgJnBpeGVsc1swXSk7Cj4gICAg
ICBwaXhlbHNbMV0gPSAwOwo+IC0gICAgeGNiX2NyZWF0ZV9nYyhjLCBncmVlbl9mZywgc2NyZWVu
LT5yb290LCBYQ0JfR0NfRk9SRUdST1VORCwgcGl4ZWxzKTsKPiArICAgIGNvb2tpZSA9IHhjYl9j
cmVhdGVfZ2NfY2hlY2tlZChjLCBncmVlbl9mZywgc2NyZWVuLT5yb290LAo+IFhDQl9HQ19GT1JF
R1JPVU5ELCBwaXhlbHMpOwo+ICsgICAgeGNiX3JlcXVlc3RfY2hlY2soYywgY29va2llKTsKPiAg
Cj4gICAgICBjcmVhdGVfcmVjdGFuZ2xlcyhyZWRfcmVjdGFuZ2xlcywgZ3JlZW5fcmVjdGFuZ2xl
cywKPiAgICAgIHNjcmVlbi0+d2lkdGhfaW5fcGl4ZWxzLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgc2NyZWVuLT5oZWlnaHRfaW5fcGl4ZWxzKTsKPiAgCj4gICAgICAvKiBXZSBkcmF3IHRoZSBy
ZWN0YW5nbGVzICovCj4gLSAgICB4Y2JfcG9seV9maWxsX3JlY3RhbmdsZV9jaGVja2VkKGMsIHNj
cmVlbi0+cm9vdCwgcmVkX2ZnLCAzMiwKPiByZWRfcmVjdGFuZ2xlcyk7Cj4gLSAgICB4Y2JfcG9s
eV9maWxsX3JlY3RhbmdsZV9jaGVja2VkKGMsIHNjcmVlbi0+cm9vdCwgZ3JlZW5fZmcsIDMyLAo+
IGdyZWVuX3JlY3RhbmdsZXMpOwo+ICsgICAgY29va2llID0geGNiX3BvbHlfZmlsbF9yZWN0YW5n
bGVfY2hlY2tlZChjLCBzY3JlZW4tPnJvb3QsIHJlZF9mZywgMzIsCj4gcmVkX3JlY3RhbmdsZXMp
Owo+ICsgICAgeGNiX3JlcXVlc3RfY2hlY2soYywgY29va2llKTsKPiArCj4gKyAgICBjb29raWUg
PSB4Y2JfcG9seV9maWxsX3JlY3RhbmdsZV9jaGVja2VkKGMsIHNjcmVlbi0+cm9vdCwgZ3JlZW5f
ZmcsIDMyLAo+IGdyZWVuX3JlY3RhbmdsZXMpOwo+ICsgICAgeGNiX3JlcXVlc3RfY2hlY2soYywg
Y29va2llKTsKPiAgCj4gICAgICAvKiBXZSBmbHVzaCB0aGUgcmVxdWVzdCAqLwo+ICAgICAgeGNi
X2ZsdXNoKGMpOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
