Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 794C3729A9
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 10:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE686E49B;
	Wed, 24 Jul 2019 08:13:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998806E49B
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:13:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 38189307D965
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:13:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F1535D9D3
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:13:57 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B4A0264C8
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 08:13:57 +0000 (UTC)
Date: Wed, 24 Jul 2019 04:13:56 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1364276280.2677846.1563956036756.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190715111308.22291-1-fziglio@redhat.com>
References: <20190715111308.22291-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.20]
Thread-Topic: x11-randr: Avoid passing XEvent as value
Thread-Index: FvayYpNWQQw5PTeMU93Cnv+z5bXSzA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 24 Jul 2019 08:13:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH vd_agent_linux 1/3] x11-randr: Avoid
 passing XEvent as value
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IFRoZSBzdHJ1Y3R1cmUgaXMgbm90IHRoYXQgc21hbGwgYW5k
IGlzIG5vdCBuZWNlc3NhcnkgdG8gY29weQo+IHRoZSB2YWx1ZS4KPiBUaGlzIGFsc28gcmVtb3Zl
ZCBhIENvdmVyaXR5IHdhcm5pbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy92ZGFnZW50L3gxMS1wcml2LmggIHwg
MiArLQo+ICBzcmMvdmRhZ2VudC94MTEtcmFuZHIuYyB8IDggKysrKy0tLS0KPiAgc3JjL3ZkYWdl
bnQveDExLmMgICAgICAgfCAyICstCj4gIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudC94MTEtcHJpdi5o
IGIvc3JjL3ZkYWdlbnQveDExLXByaXYuaAo+IGluZGV4IDk5Njc2ZDIuLjczMGI5YjMgMTAwNjQ0
Cj4gLS0tIGEvc3JjL3ZkYWdlbnQveDExLXByaXYuaAo+ICsrKyBiL3NyYy92ZGFnZW50L3gxMS1w
cml2LmgKPiBAQCAtMTUyLDcgKzE1Miw3IEBAIHZvaWQgdmRhZ2VudF94MTFfc2VuZF9kYWVtb25f
Z3Vlc3RfeG9yZ19yZXMoc3RydWN0Cj4gdmRhZ2VudF94MTEgKngxMSwKPiAgdm9pZCB2ZGFnZW50
X3gxMV9yYW5kcl9oYW5kbGVfcm9vdF9zaXplX2NoYW5nZShzdHJ1Y3QgdmRhZ2VudF94MTEgKngx
MSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgc2Ny
ZWVuLCBpbnQgd2lkdGgsIGludAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGhlaWdodCk7Cj4gIGludCB2ZGFnZW50X3gxMV9yYW5kcl9oYW5kbGVfZXZlbnQo
c3RydWN0IHZkYWdlbnRfeDExICp4MTEsCj4gLSAgICBYRXZlbnQgZXZlbnQpOwo+ICsgICAgY29u
c3QgWEV2ZW50ICpldmVudCk7Cj4gIHZvaWQgdmRhZ2VudF94MTFfc2V0X2Vycm9yX2hhbmRsZXIo
c3RydWN0IHZkYWdlbnRfeDExICp4MTEsCj4gICAgICBpbnQgKCpoYW5kbGVyKShEaXNwbGF5ICos
IFhFcnJvckV2ZW50ICopKTsKPiAgaW50IHZkYWdlbnRfeDExX3Jlc3RvcmVfZXJyb3JfaGFuZGxl
cihzdHJ1Y3QgdmRhZ2VudF94MTEgKngxMSk7Cj4gZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50L3gx
MS1yYW5kci5jIGIvc3JjL3ZkYWdlbnQveDExLXJhbmRyLmMKPiBpbmRleCA4ODg1N2M4Li5lMjk5
OTcwIDEwMDY0NAo+IC0tLSBhL3NyYy92ZGFnZW50L3gxMS1yYW5kci5jCj4gKysrIGIvc3JjL3Zk
YWdlbnQveDExLXJhbmRyLmMKPiBAQCAtNTI5LDE0ICs1MjksMTQgQEAgdm9pZCB2ZGFnZW50X3gx
MV9yYW5kcl9oYW5kbGVfcm9vdF9zaXplX2NoYW5nZShzdHJ1Y3QKPiB2ZGFnZW50X3gxMSAqeDEx
LAo+ICB9Cj4gIAo+ICBpbnQgdmRhZ2VudF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHN0cnVjdCB2
ZGFnZW50X3gxMSAqeDExLAo+IC0gICAgWEV2ZW50IGV2ZW50KQo+ICsgICAgY29uc3QgWEV2ZW50
ICpldmVudCkKPiAgewo+ICAgICAgaW50IGhhbmRsZWQgPSBUUlVFOwo+ICAKPiAtICAgIHN3aXRj
aCAoZXZlbnQudHlwZSAtIHgxMS0+eHJhbmRyX2V2ZW50X2Jhc2UpIHsKPiArICAgIHN3aXRjaCAo
ZXZlbnQtPnR5cGUgLSB4MTEtPnhyYW5kcl9ldmVudF9iYXNlKSB7Cj4gICAgICAgICAgY2FzZSBS
UlNjcmVlbkNoYW5nZU5vdGlmeTogewo+IC0gICAgICAgICAgICBYUlJTY3JlZW5DaGFuZ2VOb3Rp
ZnlFdmVudCAqc2NlID0KPiAtICAgICAgICAgICAgICAgIChYUlJTY3JlZW5DaGFuZ2VOb3RpZnlF
dmVudCAqKSAmZXZlbnQ7Cj4gKyAgICAgICAgICAgIGNvbnN0IFhSUlNjcmVlbkNoYW5nZU5vdGlm
eUV2ZW50ICpzY2UgPQo+ICsgICAgICAgICAgICAgICAgKGNvbnN0IFhSUlNjcmVlbkNoYW5nZU5v
dGlmeUV2ZW50ICopIGV2ZW50Owo+ICAgICAgICAgICAgICB2ZGFnZW50X3gxMV9yYW5kcl9oYW5k
bGVfcm9vdF9zaXplX2NoYW5nZSh4MTEsIDAsCj4gICAgICAgICAgICAgICAgICBzY2UtPndpZHRo
LCBzY2UtPmhlaWdodCk7Cj4gICAgICAgICAgICAgIGJyZWFrOwo+IGRpZmYgLS1naXQgYS9zcmMv
dmRhZ2VudC94MTEuYyBiL3NyYy92ZGFnZW50L3gxMS5jCj4gaW5kZXggYzI1MTVhOC4uNjFkN2M2
OSAxMDA2NDQKPiAtLS0gYS9zcmMvdmRhZ2VudC94MTEuYwo+ICsrKyBiL3NyYy92ZGFnZW50L3gx
MS5jCj4gQEAgLTU0NSw3ICs1NDUsNyBAQCBzdGF0aWMgdm9pZCB2ZGFnZW50X3gxMV9oYW5kbGVf
ZXZlbnQoc3RydWN0IHZkYWdlbnRfeDExCj4gKngxMSwgWEV2ZW50IGV2ZW50KQo+ICAgICAgfQo+
ICAjZW5kaWYKPiAgCj4gLSAgICBpZiAodmRhZ2VudF94MTFfcmFuZHJfaGFuZGxlX2V2ZW50KHgx
MSwgZXZlbnQpKQo+ICsgICAgaWYgKHZkYWdlbnRfeDExX3JhbmRyX2hhbmRsZV9ldmVudCh4MTEs
ICZldmVudCkpCj4gICAgICAgICAgcmV0dXJuOwo+ICAKPiAgICAgIHN3aXRjaCAoZXZlbnQudHlw
ZSkgewpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
