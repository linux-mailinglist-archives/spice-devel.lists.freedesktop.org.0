Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3B6A2095
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3283B6E127;
	Thu, 29 Aug 2019 16:16:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6586E127
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:16:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D4B80308218D;
 Thu, 29 Aug 2019 16:16:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CBB9A5C1D6;
 Thu, 29 Aug 2019 16:16:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C29B31800B74;
 Thu, 29 Aug 2019 16:16:42 +0000 (UTC)
Date: Thu, 29 Aug 2019 12:16:42 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Message-ID: <661488671.10116392.1567095402596.JavaMail.zimbra@redhat.com>
In-Reply-To: <m1r254do9g.fsf@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-13-fziglio@redhat.com> <m1r254do9g.fsf@dinechin.org>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.16]
Thread-Topic: fixup! usb-redir: add files for SCSI and USB MSC implementation
Thread-Index: cgKbbNhTeRSX3eIXGN5O5l4qd0Egww==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 29 Aug 2019 16:16:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 12/29] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

PiBGcmVkaWFubyBaaWdsaW8gd3JpdGVzOgo+IAo+ID4gRG8gbm90IHVzZSBHX0dVSU5UMzJfRk9S
TUFULgo+ID4gV2Ugc3VwcG9ydCBhIG1pbmltdW0gb2YgMzIgYml0IGFyY2hpdGVjdHVyZXMuCj4g
Cj4gV2hhdCB3YXMgd3Jvbmcgd2l0aCB0aGUgb2xkIGNvZGU/Cj4gCgpTaG9ydGVyIGFuZCBlYXNp
ZXIgdG8gcmVhZC4gSSBtZWFuICcldScgYW5kICclIiBHX0dVSU5UMzJfRk9STUFUICInLAppZiB5
b3UgaGF2ZSBhbiBpc3N1ZSBpcyBoYXJkZXIgdG8gZ2V0IGl0LgpGb3IgaW5zdGFuY2UgaXQgd2Fz
IGhhcmQgdG8gc3BvdCB0aGUgbWlzbGVhZGluZyAnMHglIiBHX0dVSU5UMzJfRk9STUFUICInCndo
aWNoIGdvdCAnMHgldScgc28gMTAwIHdvdWxkIGJlIGZvcm1hdHRlZCBhcyAweDEwMCB3aGljaCBJ
IHdvdWxkIHJlYWQKYXMgMjU2LCBub3QgMTAwLgoKPiBJZiB5b3Ugd2FudCB0byBnZXQgcmlkIG9m
IEdfIG1hY3JvIGRlcGVuZGVuY2llcywgd2h5IG5vdCB1c2UgUFJJdTMyPwo+IAoKTm8sIEdfIG1h
Y3JvcyBhcmUgZmluZSwgYWxzbyB0YWtpbmcgaW50byBhY2NvdW50IHRoYXQgUFJJdTY0IGFuZCBH
X0dVSU5UNjRfRk9STUFUCmNvdWxkIGJlIGRpZmZlcmVudCAoZm9yIGluc3RhbmNlIGluIFdpbmRv
d3MpIGFuZCB0aGF0IHRoZSByZWNlaXZpbmcgZm9ybWF0dGluZwpmdW5jdGlvbiBhY2NlcHRzIGJl
dHRlciB0aGUgR18gdmVyc2lvbiAodGhleSBhcmUgR0xpYikuCgo+ID4gLS0tCj4gPiAgc3JjL2Nk
LXVzYi1idWxrLW1zZC5jIHwgNTMgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc3JjL2NkLXVzYi1idWxrLW1zZC5jIGIvc3JjL2Nk
LXVzYi1idWxrLW1zZC5jCj4gPiBpbmRleCA0OWUwMWViNi4uNWQ5NWRhYzcgMTAwNjQ0Cj4gPiAt
LS0gYS9zcmMvY2QtdXNiLWJ1bGstbXNkLmMKPiA+ICsrKyBiL3NyYy9jZC11c2ItYnVsay1tc2Qu
Ywo+ID4gQEAgLTEzOCw3ICsxMzgsNyBAQCBVc2JDZEJ1bGtNc2REZXZpY2UgKmNkX3VzYl9idWxr
X21zZF9hbGxvYyh2b2lkCj4gPiAqdXNiX3VzZXJfZGF0YSwgdWludDMyX3QgbWF4X2x1bnMKPiA+
ICAgICAgY2RfdXNiX2J1bGtfbXNkX3NldF9zdGF0ZShjZCwgVVNCX0NEX1NUQVRFX0lOSVQpOwo+
ID4gICAgICBjZC0+dXNiX3VzZXJfZGF0YSA9IHVzYl91c2VyX2RhdGE7Cj4gPgo+ID4gLSAgICBT
UElDRV9ERUJVRygiQWxsb2MsIG1heF9sdW5zOiUiIEdfR1VJTlQzMl9GT1JNQVQsIG1heF9sdW5z
KTsKPiA+ICsgICAgU1BJQ0VfREVCVUcoIkFsbG9jLCBtYXhfbHVuczoldSIsIG1heF9sdW5zKTsK
PiA+ICAgICAgcmV0dXJuIGNkOwo+ID4gIH0KPiA+Cj4gPiBAQCAtMTU1LDcgKzE1NSw3IEBAIGlu
dCBjZF91c2JfYnVsa19tc2RfcmVhbGl6ZShVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLAo+ID4gdWlu
dDMyX3QgbHVuLAo+ID4KPiA+ICAgICAgcmMgPSBjZF9zY3NpX2Rldl9yZWFsaXplKGNkLT5zY3Np
X3RhcmdldCwgbHVuLCAmc2NzaV9kZXZfcGFyYW1zKTsKPiA+ICAgICAgaWYgKHJjICE9IDApIHsK
PiA+IC0gICAgICAgIFNQSUNFX0VSUk9SKCJGYWlsZWQgdG8gcmVhbGl6ZSBsdW46JSIgR19HVUlO
VDMyX0ZPUk1BVCwgbHVuKTsKPiA+ICsgICAgICAgIFNQSUNFX0VSUk9SKCJGYWlsZWQgdG8gcmVh
bGl6ZSBsdW46JXUiLCBsdW4pOwo+ID4gICAgICAgICAgcmV0dXJuIHJjOwo+ID4gICAgICB9Cj4g
Pgo+ID4gQEAgLTE2NSw3ICsxNjUsNyBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX3JlYWxpemUoVXNi
Q2RCdWxrTXNkRGV2aWNlICpjZCwKPiA+IHVpbnQzMl90IGx1biwKPiA+ICAgICAgICAgIGNkX3Nj
c2lfZGV2X3JlcXVlc3RfcmVsZWFzZShjZC0+c2NzaV90YXJnZXQsCj4gPiAgICAgICAgICAmY2Qt
PnVzYl9yZXEuc2NzaV9yZXEpOwo+ID4gICAgICB9Cj4gPgo+ID4gLSAgICBTUElDRV9ERUJVRygi
UmVhbGl6ZSBPSyBsdW46JSIgR19HVUlOVDMyX0ZPUk1BVCwgbHVuKTsKPiA+ICsgICAgU1BJQ0Vf
REVCVUcoIlJlYWxpemUgT0sgbHVuOiV1IiwgbHVuKTsKPiA+ICAgICAgcmV0dXJuIDA7Cj4gPiAg
fQo+ID4KPiA+IEBAIC0xNzUsMTEgKzE3NSwxMSBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX2xvY2so
VXNiQ2RCdWxrTXNkRGV2aWNlICpjZCwKPiA+IHVpbnQzMl90IGx1biwgZ2Jvb2xlYW4gbG9jaykK
PiA+Cj4gPiAgICAgIHJjID0gY2Rfc2NzaV9kZXZfbG9jayhjZC0+c2NzaV90YXJnZXQsIGx1biwg
bG9jayk7Cj4gPiAgICAgIGlmIChyYyAhPSAwKSB7Cj4gPiAtICAgICAgICBTUElDRV9FUlJPUigi
RmFpbGVkIHRvIGxvY2sgbHVuOiUiIEdfR1VJTlQzMl9GT1JNQVQsIGx1bik7Cj4gPiArICAgICAg
ICBTUElDRV9FUlJPUigiRmFpbGVkIHRvIGxvY2sgbHVuOiV1IiwgbHVuKTsKPiA+ICAgICAgICAg
IHJldHVybiByYzsKPiA+ICAgICAgfQo+ID4KPiA+IC0gICAgU1BJQ0VfREVCVUcoIkxvY2sgT0sg
bHVuOiUiIEdfR1VJTlQzMl9GT1JNQVQsIGx1bik7Cj4gPiArICAgIFNQSUNFX0RFQlVHKCJMb2Nr
IE9LIGx1bjoldSIsIGx1bik7Cj4gPiAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiBAQCAt
MTkwLDExICsxOTAsMTEgQEAgaW50IGNkX3VzYl9idWxrX21zZF9sb2FkKFVzYkNkQnVsa01zZERl
dmljZSAqY2QsCj4gPiB1aW50MzJfdCBsdW4sCj4gPgo+ID4gICAgICByYyA9IGNkX3Njc2lfZGV2
X2xvYWQoY2QtPnNjc2lfdGFyZ2V0LCBsdW4sIG1lZGlhX3BhcmFtcyk7Cj4gPiAgICAgIGlmIChy
YyAhPSAwKSB7Cj4gPiAtICAgICAgICBTUElDRV9FUlJPUigiRmFpbGVkIHRvIGxvYWQgbHVuOiUi
IEdfR1VJTlQzMl9GT1JNQVQsIGx1bik7Cj4gPiArICAgICAgICBTUElDRV9FUlJPUigiRmFpbGVk
IHRvIGxvYWQgbHVuOiV1IiwgbHVuKTsKPiA+ICAgICAgICAgIHJldHVybiByYzsKPiA+ICAgICAg
fQo+ID4KPiA+IC0gICAgU1BJQ0VfREVCVUcoIkxvYWQgT0sgbHVuOiUiIEdfR1VJTlQzMl9GT1JN
QVQsIGx1bik7Cj4gPiArICAgIFNQSUNFX0RFQlVHKCJMb2FkIE9LIGx1bjoldSIsIGx1bik7Cj4g
PiAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiBAQCAtMjA0LDcgKzIwNCw3IEBAIGludCBj
ZF91c2JfYnVsa19tc2RfZ2V0X2luZm8oVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCwKPiA+IHVpbnQz
Ml90IGx1biwgQ2RTY3NpRGV2aWNlSQo+ID4KPiA+ICAgICAgcmMgPSBjZF9zY3NpX2Rldl9nZXRf
aW5mbyhjZC0+c2NzaV90YXJnZXQsIGx1biwgbHVuX2luZm8pOwo+ID4gICAgICBpZiAocmMgIT0g
MCkgewo+ID4gLSAgICAgICAgU1BJQ0VfRVJST1IoIkZhaWxlZCB0byBnZXQgaW5mbyBsdW46JSIg
R19HVUlOVDMyX0ZPUk1BVCwgbHVuKTsKPiA+ICsgICAgICAgIFNQSUNFX0VSUk9SKCJGYWlsZWQg
dG8gZ2V0IGluZm8gbHVuOiV1IiwgbHVuKTsKPiA+ICAgICAgICAgIHJldHVybiByYzsKPiA+ICAg
ICAgfQo+ID4KPiA+IEBAIC0yMTcsMTEgKzIxNywxMSBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX3Vu
bG9hZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLAo+ID4gdWludDMyX3QgbHVuKQo+ID4KPiA+ICAg
ICAgcmMgPSBjZF9zY3NpX2Rldl91bmxvYWQoY2QtPnNjc2lfdGFyZ2V0LCBsdW4pOwo+ID4gICAg
ICBpZiAocmMgIT0gMCkgewo+ID4gLSAgICAgICAgU1BJQ0VfRVJST1IoIkZhaWxlZCB0byB1bmxv
YWQgbHVuOiUiIEdfR1VJTlQzMl9GT1JNQVQsIGx1bik7Cj4gPiArICAgICAgICBTUElDRV9FUlJP
UigiRmFpbGVkIHRvIHVubG9hZCBsdW46JXUiLCBsdW4pOwo+ID4gICAgICAgICAgcmV0dXJuIHJj
Owo+ID4gICAgICB9Cj4gPgo+ID4gLSAgICBTUElDRV9ERUJVRygiVW5sb2FkIE9LIGx1bjolIiBH
X0dVSU5UMzJfRk9STUFULCBsdW4pOwo+ID4gKyAgICBTUElDRV9ERUJVRygiVW5sb2FkIE9LIGx1
bjoldSIsIGx1bik7Cj4gPiAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiBAQCAtMjMxLDEx
ICsyMzEsMTEgQEAgaW50IGNkX3VzYl9idWxrX21zZF91bnJlYWxpemUoVXNiQ2RCdWxrTXNkRGV2
aWNlICpjZCwKPiA+IHVpbnQzMl90IGx1bikKPiA+Cj4gPiAgICAgIHJjID0gY2Rfc2NzaV9kZXZf
dW5yZWFsaXplKGNkLT5zY3NpX3RhcmdldCwgbHVuKTsKPiA+ICAgICAgaWYgKHJjICE9IDApIHsK
PiA+IC0gICAgICAgIFNQSUNFX0VSUk9SKCJVbnJlYWxpemUgbHVuOiUiIEdfR1VJTlQzMl9GT1JN
QVQsIGx1bik7Cj4gPiArICAgICAgICBTUElDRV9FUlJPUigiVW5yZWFsaXplIGx1bjoldSIsIGx1
bik7Cj4gPiAgICAgICAgICByZXR1cm4gcmM7Cj4gPiAgICAgIH0KPiA+Cj4gPiAtICAgIFNQSUNF
X0RFQlVHKCJVbnJlYWxpemUgbHVuOiUiIEdfR1VJTlQzMl9GT1JNQVQsIGx1bik7Cj4gPiArICAg
IFNQSUNFX0RFQlVHKCJVbnJlYWxpemUgbHVuOiV1IiwgbHVuKTsKPiA+ICAgICAgcmV0dXJuIDA7
Cj4gPiAgfQo+ID4KPiA+IEBAIC0yNjQsNyArMjY0LDcgQEAgc3RhdGljIGludCBwYXJzZV91c2Jf
bXNkX2NtZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLAo+ID4gdWludDhfdCAqYnVmLCB1aW50MzJf
dCBjYndfCj4gPiAgICAgIENkU2NzaVJlcXVlc3QgKnNjc2lfcmVxID0gJnVzYl9yZXEtPnNjc2lf
cmVxOwo+ID4KPiA+ICAgICAgaWYgKGNid19sZW4gIT0gc2l6ZW9mKCpjYncpKSB7Cj4gPiAtICAg
ICAgICBTUElDRV9FUlJPUigiQ01EOiBCYWQgQ0JXIHNpemU6JSIgR19HVUlOVDMyX0ZPUk1BVCwg
Y2J3X2xlbik7Cj4gPiArICAgICAgICBTUElDRV9FUlJPUigiQ01EOiBCYWQgQ0JXIHNpemU6JXUi
LCBjYndfbGVuKTsKPiA+ICAgICAgICAgIHJldHVybiAtMTsKPiA+ICAgICAgfQo+ID4gICAgICBp
ZiAobGUzMnRvaChjYnctPnNpZykgIT0gMHg0MzQyNTM1NSkgeyAvKiBNU0QgY29tbWFuZCBzaWdu
YXR1cmUgKi8KPiA+IEBAIC0zMDQsMTAgKzMwNCwxMCBAQCBzdGF0aWMgaW50IHBhcnNlX3VzYl9t
c2RfY21kKFVzYkNkQnVsa01zZERldmljZSAqY2QsCj4gPiB1aW50OF90ICpidWYsIHVpbnQzMl90
IGNid18KPiA+Cj4gPiAgICAgIHNjc2lfcmVxLT5sdW4gPSB1c2JfcmVxLT5sdW47Cj4gPgo+ID4g
LSAgICBTUElDRV9ERUJVRygiQ01EIGx1bjolIiBHX0dVSU5UMzJfRk9STUFUICIgdGFnOiUjeCBm
bGFnczolMDh4ICIKPiA+IC0gICAgICAgICJjZGJfbGVuOiUiIEdfR1VJTlQzMl9GT1JNQVQgIiBy
ZXFfbGVuOiUiIEdfR1VJTlQzMl9GT1JNQVQsCj4gPiAtICAgICAgICB1c2JfcmVxLT5sdW4sIGxl
MzJ0b2goY2J3LT50YWcpLCBjYnctPmZsYWdzLAo+ID4gLSAgICAgICAgc2NzaV9yZXEtPmNkYl9s
ZW4sIHVzYl9yZXEtPnVzYl9yZXFfbGVuKTsKPiA+ICsgICAgU1BJQ0VfREVCVUcoIkNNRCBsdW46
JXUgdGFnOiUjeCBmbGFnczolMDh4ICIKPiA+ICsgICAgICAgICAgICAgICAgImNkYl9sZW46JXUg
cmVxX2xlbjoldSIsCj4gPiArICAgICAgICAgICAgICAgIHVzYl9yZXEtPmx1biwgbGUzMnRvaChj
YnctPnRhZyksIGNidy0+ZmxhZ3MsCj4gPiArICAgICAgICAgICAgICAgIHNjc2lfcmVxLT5jZGJf
bGVuLCB1c2JfcmVxLT51c2JfcmVxX2xlbik7Cj4gPgo+ID4gICAgICAvKiBwcmVwYXJlIHN0YXR1
cyAtIENTVyAqLwo+ID4gICAgICB1c2JfcmVxLT5jc3cuc2lnID0gaHRvbGUzMigweDUzNDI1MzU1
KTsKPiA+IEBAIC0zNjQsOCArMzY0LDggQEAgc3RhdGljIHZvaWQgdXNiX2NkX3NlbmRfZGF0YV9p
bihVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLAo+ID4gdWludDMyX3QgbWF4X2xlbikKPiA+ICAgICAg
dWludDMyX3QgYXZhaWxfbGVuID0gdXNiX3JlcS0+c2NzaV9pbl9sZW4gLSB1c2JfcmVxLT54ZmVy
X2xlbjsKPiA+ICAgICAgdWludDMyX3Qgc2VuZF9sZW4gPSBNSU4oYXZhaWxfbGVuLCBtYXhfbGVu
KTsKPiA+Cj4gPiAtICAgIFNQSUNFX0RFQlVHKCJEYXRhLWluIGNtZCB0YWcgMHgleCwgcmVtYWlu
cyAlIiBHX0dVSU5UMzJfRk9STUFUCj4gPiAtICAgICAgICAgICAgICAgICIsIHJlcXVlc3RlZCAl
IiBHX0dVSU5UMzJfRk9STUFUICIsIHNlbmQgJSIKPiA+IEdfR1VJTlQzMl9GT1JNQVQsCj4gPiAr
ICAgIFNQSUNFX0RFQlVHKCJEYXRhLWluIGNtZCB0YWcgMHgleCwgcmVtYWlucyAldSIKPiA+ICsg
ICAgICAgICAgICAgICAgIiwgcmVxdWVzdGVkICV1LCBzZW5kICV1IiwKPiA+ICAgICAgICAgICAg
ICAgICAgdXNiX3JlcS0+Y3N3LnRhZywgYXZhaWxfbGVuLCBtYXhfbGVuLCBzZW5kX2xlbik7Cj4g
Pgo+ID4gICAgICBnX2Fzc2VydChtYXhfbGVuIDw9IHVzYl9yZXEtPnVzYl9yZXFfbGVuKTsKPiA+
IEBAIC0zOTYsNyArMzk2LDcgQEAgaW50IGNkX3VzYl9idWxrX21zZF9yZWFkKFVzYkNkQnVsa01z
ZERldmljZSAqY2QsCj4gPiB1aW50MzJfdCBtYXhfbGVuKQo+ID4gICAgICBVc2JDZEJ1bGtNc2RS
ZXF1ZXN0ICp1c2JfcmVxID0gJmNkLT51c2JfcmVxOwo+ID4gICAgICBDZFNjc2lSZXF1ZXN0ICpz
Y3NpX3JlcSA9ICZ1c2JfcmVxLT5zY3NpX3JlcTsKPiA+Cj4gPiAtICAgIFNQSUNFX0RFQlVHKCJt
c2RfcmVhZCwgc3RhdGU6ICVzLCBsZW4gJSIgR19HVUlOVDMyX0ZPUk1BVCwKPiA+ICsgICAgU1BJ
Q0VfREVCVUcoIm1zZF9yZWFkLCBzdGF0ZTogJXMsIGxlbiAldSIsCj4gPiAgICAgICAgICAgICAg
ICAgIHVzYl9jZF9zdGF0ZV9zdHIoY2QtPnN0YXRlKSwgbWF4X2xlbik7Cj4gPgo+ID4gICAgICBz
d2l0Y2ggKGNkLT5zdGF0ZSkgewo+ID4gQEAgLTQwOCw4ICs0MDgsOCBAQCBpbnQgY2RfdXNiX2J1
bGtfbXNkX3JlYWQoVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCwKPiA+IHVpbnQzMl90IG1heF9sZW4p
Cj4gPiAgICAgICAgICAgICAgdXNiX2NkX3NlbmRfc3RhdHVzKGNkKTsKPiA+ICAgICAgICAgIH0g
ZWxzZSB7Cj4gPiAgICAgICAgICAgICAgdXNiX3JlcS0+YnVsa19pbl9sZW4gKz0gbWF4X2xlbjsK
PiA+IC0gICAgICAgICAgICBTUElDRV9ERUJVRygibXNkX3JlYWQgQ1NXLCByZXEgaW5jb21wbGV0
ZSwgYWRkZWQgbGVuICUiCj4gPiBHX0dVSU5UMzJfRk9STUFUCj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgIiBzYXZlZCBsZW4gJSIgR19HVUlOVDMyX0ZPUk1BVCwKPiA+ICsgICAgICAgICAg
ICBTUElDRV9ERUJVRygibXNkX3JlYWQgQ1NXLCByZXEgaW5jb21wbGV0ZSwgYWRkZWQgbGVuICV1
Igo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICIgc2F2ZWQgbGVuICV1IiwKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICBtYXhfbGVuLCB1c2JfcmVxLT5idWxrX2luX2xlbik7Cj4gPiAg
ICAgICAgICB9Cj4gPiAgICAgICAgICBicmVhazsKPiA+IEBAIC00MTksOCArNDE5LDcgQEAgaW50
IGNkX3VzYl9idWxrX21zZF9yZWFkKFVzYkNkQnVsa01zZERldmljZSAqY2QsCj4gPiB1aW50MzJf
dCBtYXhfbGVuKQo+ID4gICAgICAgICAgICAgIHVzYl9jZF9zZW5kX2RhdGFfaW4oY2QsIG1heF9s
ZW4pOwo+ID4gICAgICAgICAgfSBlbHNlIHsKPiA+ICAgICAgICAgICAgICB1c2JfcmVxLT5idWxr
X2luX2xlbiArPSBtYXhfbGVuOwo+ID4gLSAgICAgICAgICAgIFNQSUNFX0RFQlVHKCJtc2RfcmVh
ZCBEQVRBSU4sIHJlcSBpbmNvbXBsZXRlLCBhZGRlZCBsZW4gJSIKPiA+IEdfR1VJTlQzMl9GT1JN
QVQKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAiIHNhdmVkIGxlbiAlIiBHX0dVSU5UMzJf
Rk9STUFULAo+ID4gKyAgICAgICAgICAgIFNQSUNFX0RFQlVHKCJtc2RfcmVhZCBEQVRBSU4sIHJl
cSBpbmNvbXBsZXRlLCBhZGRlZCBsZW4gJXUKPiA+IHNhdmVkIGxlbiAldSIsCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgbWF4X2xlbiwgdXNiX3JlcS0+YnVsa19pbl9sZW4pOwo+ID4gICAg
ICAgICAgfQo+ID4gICAgICAgICAgYnJlYWs7Cj4gPiBAQCAtNDMzLDcgKzQzMiw3IEBAIGludCBj
ZF91c2JfYnVsa19tc2RfcmVhZChVc2JDZEJ1bGtNc2REZXZpY2UgKmNkLAo+ID4gdWludDMyX3Qg
bWF4X2xlbikKPiA+ICAgICAgICAgIGJyZWFrOwo+ID4KPiA+ICAgICAgZGVmYXVsdDoKPiA+IC0g
ICAgICAgIFNQSUNFX0VSUk9SKCJVbmV4cGVjdGVkIHJlYWQgc3RhdGU6ICVzLCBsZW4gJSIgR19H
VUlOVDMyX0ZPUk1BVCwKPiA+ICsgICAgICAgIFNQSUNFX0VSUk9SKCJVbmV4cGVjdGVkIHJlYWQg
c3RhdGU6ICVzLCBsZW4gJXUiLAo+ID4gICAgICAgICAgICAgICAgICAgICAgdXNiX2NkX3N0YXRl
X3N0cihjZC0+c3RhdGUpLCBtYXhfbGVuKTsKPiA+ICAgICAgICAgIGdvdG8gZmFpbDsKPiA+ICAg
ICAgfQo+ID4gQEAgLTUwNyw3ICs1MDYsNyBAQCBpbnQgY2RfdXNiX2J1bGtfbXNkX3dyaXRlKFVz
YkNkQnVsa01zZERldmljZSAqY2QsCj4gPiB1aW50OF90ICpidWZfb3V0LCB1aW50MzJfdCBidWYK
PiA+ICAgICAgICAgIGNkX3VzYl9idWxrX21zZF9zZXRfc3RhdGUoY2QsIFVTQl9DRF9TVEFURV9D
U1cpOyAvKiBTdGF0dXMgbmV4dCAqLwo+ID4gICAgICAgICAgYnJlYWs7Cj4gPiAgICAgIGRlZmF1
bHQ6Cj4gPiAtICAgICAgICBTUElDRV9ERUJVRygiVW5leHBlY3RlZCB3cml0ZSBzdGF0ZTogJXMs
IGxlbiAlIiBHX0dVSU5UMzJfRk9STUFULAo+ID4gKyAgICAgICAgU1BJQ0VfREVCVUcoIlVuZXhw
ZWN0ZWQgd3JpdGUgc3RhdGU6ICVzLCBsZW4gJXUiLAo+ID4gICAgICAgICAgICAgICAgICAgICAg
dXNiX2NkX3N0YXRlX3N0cihjZC0+c3RhdGUpLCBidWZfb3V0X2xlbik7Cj4gPiAgICAgICAgICBn
b3RvIGZhaWw7Cj4gPiAgICAgIH0KPiA+IEBAIC01MzYsNyArNTM1LDcgQEAgdm9pZCBjZF9zY3Np
X3RhcmdldF9yZXNldF9jb21wbGV0ZSh2b2lkCj4gPiAqdGFyZ2V0X3VzZXJfZGF0YSkKPiA+ICB2
b2lkIGNkX3Njc2lfZGV2X2NoYW5nZWQodm9pZCAqdGFyZ2V0X3VzZXJfZGF0YSwgdWludDMyX3Qg
bHVuKQo+ID4gIHsKPiA+ICAgICAgVXNiQ2RCdWxrTXNkRGV2aWNlICpjZCA9IChVc2JDZEJ1bGtN
c2REZXZpY2UgKil0YXJnZXRfdXNlcl9kYXRhOwo+ID4gLSAgICBTUElDRV9ERUJVRygiRGV2aWNl
IGNoYW5nZWQsIHN0YXRlOiAlcyBsdW46ICUiIEdfR1VJTlQzMl9GT1JNQVQsCj4gPiArICAgIFNQ
SUNFX0RFQlVHKCJEZXZpY2UgY2hhbmdlZCwgc3RhdGU6ICVzIGx1bjogJXUiLAo+ID4gICAgICAg
ICAgICAgICAgICB1c2JfY2Rfc3RhdGVfc3RyKGNkLT5zdGF0ZSksIGx1bik7Cj4gPiAgICAgIGNk
X3VzYl9idWxrX21zZF9sdW5fY2hhbmdlZChjZC0+dXNiX3VzZXJfZGF0YSwgbHVuKTsKPiA+ICB9
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
