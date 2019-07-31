Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177687BD1C
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 11:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DA889BA9;
	Wed, 31 Jul 2019 09:27:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F85089BA9
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 09:27:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0334C3091D63
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 09:27:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E04FE19C65
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 09:27:41 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D28CB180B536;
 Wed, 31 Jul 2019 09:27:41 +0000 (UTC)
Date: Wed, 31 Jul 2019 05:27:41 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <319625184.3797238.1564565261564.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190731084752.14568-1-jjanku@redhat.com>
References: <20190731084752.14568-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.16]
Thread-Topic: spice-file-xfer-task: unref properties on dispose
Thread-Index: ppxgBZMxMsyGVDF2LnaoHe1REKTBCA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 31 Jul 2019 09:27:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-file-xfer-task: unref
 properties on dispose
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

PiAKPiBXaGVuIHRoZSBjb25zdHJ1Y3Rpb24gcHJvcGVydGllcyBhcmUgc2V0LCB0aGUgb2JqZWN0
cyBhcmUKPiByZWZlcmVuY2VkIGJ5IGdfdmFsdWVfZHVwX29iamVjdCgpLCBzbyB0aGV5IHNob3Vs
ZCBiZSB1bnJlZgo+IG9uY2UgdGhlIHRhc2sgaXMgZG9uZS4KPiAKPiBJZiB0aGUgbWFpbiBjaGFu
bmVsIHN0YXlzIHJlZmVyZW5jZWQsIHNwaWNlIHNlc3Npb24gZmFpbHMKPiB0byBkaXNjb25uZWN0
IGFuZCB0aGUgdmlld2VyIGRvZXMgbm90IGNsb3NlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpha3Vi
IEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+CgpBY2tlZCwgZ29vZCBzcG90IQoKPiAtLS0KPiAK
PiBIaSwKPiBpdCBzZWVtcyBhIGJpdCB3ZWlyZCB0byBtZSB0aGF0IHRoaXMgaXNzdWUgaGFzbid0
IGJlZW4gcmVwb3J0ZWQKPiBhbmQgZml4ZWQgeWV0LiBJcyBzb21lYm9keSBhYmxlIHRvIHJlcHJv
ZHVjZT8KPiAKPiAxKSB0cmFuc2ZlciBmaWxlIGJ5IGRyYWcmZHJvcAo+IDIpIHRyeSB0byBjbG9z
ZSB0aGUgdmlld2VyCj4gCgpZZXMsIGVhc3kgdG8gcmVwcm9kdWNlLgoKT1Q6IEEgc2ltaWxhciBi
ZWhhdmlvdXIgaGFwcGVucyBhbHNvIGlmIHdlIGFyZSBub3QgYWJsZSB0byBjb25uZWN0LCBJCnJl
bWVtYmVyIHRoaXMgZGlkbid0IGhhcHBlbiBpbiB0aGUgcGFzdC4KCj4gLS0tCj4gIHNyYy9zcGlj
ZS1maWxlLXRyYW5zZmVyLXRhc2suYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLmMg
Yi9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLmMKPiBpbmRleCA5MGYzMWRiLi5jYTMxYjIz
IDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1maWxlLXRyYW5zZmVyLXRhc2suYwo+ICsrKyBiL3Ny
Yy9zcGljZS1maWxlLXRyYW5zZmVyLXRhc2suYwo+IEBAIC02NDgsNiArNjQ4LDggQEAgc3BpY2Vf
ZmlsZV90cmFuc2Zlcl90YXNrX2Rpc3Bvc2UoR09iamVjdCAqb2JqZWN0KQo+ICAgICAgZ19jbGVh
cl9vYmplY3QoJnNlbGYtPmZpbGUpOwo+ICAgICAgZ19jbGVhcl9vYmplY3QoJnNlbGYtPmZpbGVf
c3RyZWFtKTsKPiAgICAgIGdfY2xlYXJfZXJyb3IoJnNlbGYtPmVycm9yKTsKPiArICAgIGdfY2xl
YXJfb2JqZWN0KCZzZWxmLT5jaGFubmVsKTsKPiArICAgIGdfY2xlYXJfb2JqZWN0KCZzZWxmLT5j
YW5jZWxsYWJsZSk7Cj4gIAo+ICAgICAgR19PQkpFQ1RfQ0xBU1Moc3BpY2VfZmlsZV90cmFuc2Zl
cl90YXNrX3BhcmVudF9jbGFzcyktPmRpc3Bvc2Uob2JqZWN0KTsKPiAgfQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
