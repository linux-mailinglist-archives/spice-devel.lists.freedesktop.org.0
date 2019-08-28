Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6CEA054A
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 16:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A56089CF7;
	Wed, 28 Aug 2019 14:48:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3945489D00
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:48:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9B9B0883CA
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:48:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9420D5DAAE
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 14:48:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8AFDB2551B;
 Wed, 28 Aug 2019 14:48:25 +0000 (UTC)
Date: Wed, 28 Aug 2019 10:48:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <954105956.9951945.1567003705511.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190826083948.29309-2-ssheribe@redhat.com>
References: <20190826083948.29309-1-ssheribe@redhat.com>
 <20190826083948.29309-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.7]
Thread-Topic: mjpeg-fallback: Use Xlib capture helper
Thread-Index: sn/RK6Lis8eRqsYvuIc++JnxXaDXMw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 28 Aug 2019 14:48:25 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-streaminh-agent 2/3] mjpeg-fallback:
 Use Xlib capture helper
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

PiAKPiAtLS0KPiAgc3JjL01ha2VmaWxlLmFtICAgICAgICB8ICA0ICsrKysKPiAgc3JjL21qcGVn
LWZhbGxiYWNrLmNwcCB8IDM4ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL3NyYy9NYWtlZmlsZS5hbSBiL3NyYy9NYWtlZmlsZS5hbQo+IGluZGV4
IDAxMzNiZjUuLjMxYjhhZjEgMTAwNjQ0Cj4gLS0tIGEvc3JjL01ha2VmaWxlLmFtCj4gKysrIGIv
c3JjL01ha2VmaWxlLmFtCj4gQEAgLTIxLDYgKzIxLDcgQEAgQU1fQ1BQRkxBR1MgPSBcCj4gIAkk
KFgxMV9DRkxBR1MpIFwKPiAgCSQoWEZJWEVTX0NGTEFHUykgXAo+ICAJJChYUkFORFJfQ0ZMQUdT
KSBcCj4gKwkkKFhFWFRfQ0ZMQUdTKSBcCj4gIAkkKE5VTEwpCj4gIAo+ICBBTV9DRkxBR1MgPSBc
Cj4gQEAgLTU2LDYgKzU3LDcgQEAgc3BpY2Vfc3RyZWFtaW5nX2FnZW50X0xEQUREID0gXAo+ICAJ
JChYMTFfTElCUykgXAo+ICAJJChYRklYRVNfTElCUykgXAo+ICAJJChYUkFORFJfTElCUykgXAo+
ICsJJChYRVhUX0xJQlMpIFwKPiAgCSQoSlBFR19MSUJTKSBcCj4gIAkkKE5VTEwpCj4gIAo+IEBA
IC03Nyw2ICs3OSw4IEBAIHNwaWNlX3N0cmVhbWluZ19hZ2VudF9TT1VSQ0VTID0gXAo+ICAJdXRp
bHMuY3BwIFwKPiAgCXV0aWxzLmhwcCBcCj4gIAl4MTEtZGlzcGxheS1pbmZvLmNwcCBcCj4gKwl4
bGliLWNhcHR1cmUuY3BwIFwKPiArCXhsaWItY2FwdHVyZS5ocHAgXAo+ICAJJChOVUxMKQo+ICAK
PiAgaWYgSEFWRV9HU1QKPiBkaWZmIC0tZ2l0IGEvc3JjL21qcGVnLWZhbGxiYWNrLmNwcCBiL3Ny
Yy9tanBlZy1mYWxsYmFjay5jcHAKPiBpbmRleCAwMzI0N2ExLi5hNDM4MjViIDEwMDY0NAo+IC0t
LSBhL3NyYy9tanBlZy1mYWxsYmFjay5jcHAKPiArKysgYi9zcmMvbWpwZWctZmFsbGJhY2suY3Bw
Cj4gQEAgLTE2LDYgKzE2LDcgQEAKPiAgI2luY2x1ZGUgPHNzdHJlYW0+Cj4gICNpbmNsdWRlIDxt
ZW1vcnk+Cj4gICNpbmNsdWRlIDxzeXNsb2cuaD4KPiArI2luY2x1ZGUgInhsaWItY2FwdHVyZS5o
cHAiCj4gIAo+ICB1c2luZyBuYW1lc3BhY2Ugc3BpY2U6OnN0cmVhbWluZ19hZ2VudDsKPiAgCj4g
QEAgLTQ0LDExICs0NSwxMCBAQCBwdWJsaWM6Cj4gIHByaXZhdGU6Cj4gICAgICBNanBlZ1NldHRp
bmdzIHNldHRpbmdzOwo+ICAgICAgRGlzcGxheSAqY29uc3QgZHB5Owo+ICsgICAgWGxpYkNhcHR1
cmUgKnhjOwoKdW5pcXVlX3B0ciA/Cgo+ICAKPiAgICAgIHN0ZDo6dmVjdG9yPHVpbnQ4X3Q+IGZy
YW1lOwo+ICAKPiAtICAgIC8vIGxhc3QgZnJhbWUgc2l6ZXMKPiAtICAgIGludCBsYXN0X3dpZHRo
ID0gLTEsIGxhc3RfaGVpZ2h0ID0gLTE7Cj4gICAgICAvLyBsYXN0IHRpbWUgYmVmb3JlIGNhcHR1
cmUKPiAgICAgIHVpbnQ2NF90IGxhc3RfdGltZSA9IDA7Cj4gIH07Cj4gQEAgLTU4LDE5ICs1OCwy
MSBAQCBwcml2YXRlOgo+ICBNanBlZ0ZyYW1lQ2FwdHVyZTo6TWpwZWdGcmFtZUNhcHR1cmUoY29u
c3QgTWpwZWdTZXR0aW5ncyYgc2V0dGluZ3MpOgo+ICAgICAgc2V0dGluZ3Moc2V0dGluZ3MpLGRw
eShYT3BlbkRpc3BsYXkobnVsbHB0cikpCj4gIHsKPiAtICAgIGlmICghZHB5KQo+ICsgICAgaWYg
KCFkcHkpIHsKPiAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIlVuYWJsZSB0byBp
bml0aWFsaXplIFgxMSIpOwo+ICsgICAgfQo+ICsgICAgeGMgPSBuZXcgWGxpYkNhcHR1cmUoZHB5
KTsKPiAgfQo+ICAKPiAgTWpwZWdGcmFtZUNhcHR1cmU6On5NanBlZ0ZyYW1lQ2FwdHVyZSgpCj4g
IHsKPiArICAgIGRlbGV0ZSB4YzsKPiAgICAgIFhDbG9zZURpc3BsYXkoZHB5KTsKPiAgfQo+ICAK
PiAgdm9pZCBNanBlZ0ZyYW1lQ2FwdHVyZTo6UmVzZXQoKQo+ICB7Cj4gICAgICBmcmFtZS5jbGVh
cigpOwo+IC0gICAgbGFzdF93aWR0aCA9IGxhc3RfaGVpZ2h0ID0gLTE7Cj4gIH0KPiAgCj4gIEZy
YW1lSW5mbyBNanBlZ0ZyYW1lQ2FwdHVyZTo6Q2FwdHVyZUZyYW1lKCkKPiBAQCAtMTAwLDM0ICsx
MDIsMjAgQEAgRnJhbWVJbmZvIE1qcGVnRnJhbWVDYXB0dXJlOjpDYXB0dXJlRnJhbWUoKQo+ICAg
ICAgICAgIH0KPiAgICAgIH0KPiAgCj4gLSAgICBpbnQgc2NyZWVuID0gWERlZmF1bHRTY3JlZW4o
ZHB5KTsKPiAtCj4gLSAgICBXaW5kb3cgd2luID0gUm9vdFdpbmRvdyhkcHksIHNjcmVlbik7Cj4g
KyAgICBYSW1nICppbWFnZSA9IHhjLT5jYXB0dXJlKCk7Cj4gIAoKVGhlIGNhcHR1cmUgcmV0dXJu
cyBhIE5VTEwgdmFsdWUgb24gZmFpbHVyZSwgYmV0dGVyIHRvIGNoZWNrIGl0Cih3YXMgIi8vIFRP
RE8gaGFuZGxlIGVycm9ycyIpLgoKPiAtICAgIFhXaW5kb3dBdHRyaWJ1dGVzIHdpbl9pbmZvOwo+
IC0gICAgWEdldFdpbmRvd0F0dHJpYnV0ZXMoZHB5LCB3aW4sICZ3aW5faW5mbyk7Cj4gKyAgICBi
b29sIGlzX2ZpcnN0ID0gaW1hZ2UtPm5ld19yZXNvbHV0aW9uKCk7Cj4gIAo+IC0gICAgYm9vbCBp
c19maXJzdCA9IGZhbHNlOwo+IC0gICAgaWYgKHdpbl9pbmZvLndpZHRoICE9IGxhc3Rfd2lkdGgg
fHwgd2luX2luZm8uaGVpZ2h0ICE9IGxhc3RfaGVpZ2h0KSB7Cj4gLSAgICAgICAgbGFzdF93aWR0
aCA9IHdpbl9pbmZvLndpZHRoOwo+IC0gICAgICAgIGxhc3RfaGVpZ2h0ID0gd2luX2luZm8uaGVp
Z2h0Owo+IC0gICAgICAgIGlzX2ZpcnN0ID0gdHJ1ZTsKPiAtICAgIH0KPiArICAgIGluZm8uc2l6
ZS53aWR0aCA9IGltYWdlLT53aWR0aCgpOwo+ICsgICAgaW5mby5zaXplLmhlaWdodCA9IGltYWdl
LT5oZWlnaHQoKTsKPiAgCj4gLSAgICBpbmZvLnNpemUud2lkdGggPSB3aW5faW5mby53aWR0aDsK
PiAtICAgIGluZm8uc2l6ZS5oZWlnaHQgPSB3aW5faW5mby5oZWlnaHQ7Cj4gLQo+IC0gICAgaW50
IGZvcm1hdCA9IFpQaXhtYXA7Cj4gLSAgICAvLyBUT0RPIGhhbmRsZSBlcnJvcnMKPiAtICAgIFhJ
bWFnZSAqaW1hZ2UgPSBYR2V0SW1hZ2UoZHB5LCB3aW4sIHdpbl9pbmZvLngsIHdpbl9pbmZvLnks
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdpbl9pbmZvLndpZHRoLCB3aW5faW5m
by5oZWlnaHQsIEFsbFBsYW5lcywKPiBmb3JtYXQpOwo+ICAKPiAgICAgIC8vIFRPRE8gaGFuZGxl
IGVycm9ycwo+ICAgICAgLy8gVE9ETyBtdWx0aXBsZSBmb3JtYXRzIChvbmx5IDMyIGJpdCkKPiAt
ICAgIHdyaXRlX0pQRUdfZmlsZShmcmFtZSwgc2V0dGluZ3MucXVhbGl0eSwgKHVpbnQ4X3QqKSBp
bWFnZS0+ZGF0YSwKPiAtICAgICAgICAgICAgICAgICAgICBpbWFnZS0+d2lkdGgsIGltYWdlLT5o
ZWlnaHQpOwo+ICsgICAgd3JpdGVfSlBFR19maWxlKGZyYW1lLCBzZXR0aW5ncy5xdWFsaXR5LCAo
dWludDhfdCopIGltYWdlLT5nZXRfZGF0YSgpLAo+ICsgICAgICAgICAgICAgICAgICAgIGltYWdl
LT53aWR0aCgpLCBpbWFnZS0+aGVpZ2h0KCkpOwo+ICAKPiAtICAgIGltYWdlLT5mLmRlc3Ryb3lf
aW1hZ2UoaW1hZ2UpOwo+ICsgICAgZGVsZXRlIGltYWdlOwo+ICAKPiAgICAgIGluZm8uYnVmZmVy
ID0gJmZyYW1lWzBdOwo+ICAgICAgaW5mby5idWZmZXJfc2l6ZSA9IGZyYW1lLnNpemUoKTsKCkZy
ZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
