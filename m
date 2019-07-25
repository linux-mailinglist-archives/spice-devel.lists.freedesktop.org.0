Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B059374D0F
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 13:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303766E70E;
	Thu, 25 Jul 2019 11:27:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6AA86E70E
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 11:27:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DEDB630A7C71;
 Thu, 25 Jul 2019 11:27:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CDBA75F9B0;
 Thu, 25 Jul 2019 11:27:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C050D1800205;
 Thu, 25 Jul 2019 11:27:25 +0000 (UTC)
Date: Thu, 25 Jul 2019 07:27:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1392106279.2977164.1564054045587.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-3-yuri.benditovich@daynix.com>
 <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
 <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.11]
Thread-Topic: usb-redir: device error signal without device object
Thread-Index: Qnjfu4ui5VOYt5iwjITlBFRV3zxjnQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 25 Jul 2019 11:27:25 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 2/9] usb-redir: device error signal
 without device object
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiBUaHUsIEp1bCAyNSwgMjAxOSBhdCAxMjowMSBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gPgo+ID4gPiBBZGQgYWJpbGl0eSB0byBp
bmRpY2F0ZSBlcnJvciB0byBleHRlcm5hbCBtb2R1bGVzIHZpYQo+ID4gPiAnZGV2aWNlIGVycm9y
JyBzaWduYWwgd2hlbiByZWFsIFNwaWNlVXNiRGV2aWNlIGlzIG5vdCBwYXNzZWQuCj4gPiA+IFRo
aXMgaXMgbmVlZGVkIHRvIGluZGljYXRlIGVycm9yIGR1cmluZyBjcmVhdGlvbiBvZiBlbXVsYXRl
ZAo+ID4gPiBkZXZpY2UsIHdoZW4gdGhlIGRldmljZSBpcyBub3QgY3JlYXRlZCB5ZXQuIEZvciB0
aGF0IHdlCj4gPiA+IGFsbG9jYXRlIHRlbXBvcmFyeSBTcGljZVVzYkRldmljZSBzdHJ1Y3R1cmUg
d2l0aCBiYWNrZW5kCj4gPiA+IGRldmljZSBmaWVsZHMgc2V0IHRvIE5VTEwgYW5kIHVzZSBpdCBm
b3IgaW5kaWNhdGlvbi4gRGV2aWNlCj4gPiA+IGRlc2NyaXB0aW9uIGZvciBzdWNoIGRldmljZSB3
aWxsIGJlICdVU0IgUmVkaXJlY3Rpb24nLgo+ID4gPiBVbnJlZmVyZW5jaW5nIG9mIHN1Y2ggZGV2
aWNlIHdpbGwgYmUgJ25vIG9wZXJhdGlvbicuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFl1
cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KPiA+ID4gLS0tCj4g
PiA+ICBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCAgMyArKysKPiA+ID4gIHNyYy91c2ItZGV2
aWNlLW1hbmFnZXIuYyB8IDE0ICsrKysrKysrKysrKy0tCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQg
YS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCj4gPiA+IGluZGV4IDBiZjJl
Y2MuLmMxNzkxODggMTAwNjQ0Cj4gPiA+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5jCj4gPiA+ICsr
KyBiL3NyYy91c2ItYmFja2VuZC5jCj4gPiA+IEBAIC01MjgsNiArNTI4LDkgQEAgU3BpY2VVc2JC
YWNrZW5kRGV2aWNlCj4gPiA+ICpzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVmKFNwaWNlVXNi
QmFja2VuZERldmljZSAqZGV2KQo+ID4gPgo+ID4gPiAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9k
ZXZpY2VfdW5yZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gPiA+ICB7Cj4gPiA+ICsg
ICAgaWYgKCFkZXYpIHsKPiA+ID4gKyAgICAgICAgcmV0dXJuOwo+ID4gPiArICAgIH0KPiA+ID4g
ICAgICBMT1VEX0RFQlVHKCIlcyA+PiAlcCglZCkiLCBfX0ZVTkNUSU9OX18sIGRldiwgZGV2LT5y
ZWZfY291bnQpOwo+ID4gPiAgICAgIGlmIChnX2F0b21pY19pbnRfZGVjX2FuZF90ZXN0KCZkZXYt
PnJlZl9jb3VudCkpIHsKPiA+ID4gICAgICAgICAgaWYgKGRldi0+bGlidXNiX2RldmljZSkgewo+
ID4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci5jCj4gPiA+IGluZGV4IGE1MzBiZTkuLjA5NjFkMTYgMTAwNjQ0Cj4gPiA+IC0t
LSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ID4gPiArKysgYi9zcmMvdXNiLWRldmljZS1t
YW5hZ2VyLmMKPiA+ID4gQEAgLTkzNSwxMCArOTM1LDE2IEBAIHN0YXRpYyB2b2lkCj4gPiA+IHNw
aWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jaGVja19yZWRpcl9vbl9jb25uZWN0KAo+ID4gPiAgdm9p
ZCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZGV2aWNlX2Vycm9yKAo+ID4gPiAgICAgIFNwaWNl
VXNiRGV2aWNlTWFuYWdlciAqc2VsZiwgU3BpY2VVc2JEZXZpY2UgKmRldmljZSwgR0Vycm9yICpl
cnIpCj4gPiA+ICB7Cj4gPiA+ICsgICAgU3BpY2VVc2JEZXZpY2UgKmRldiA9IGRldmljZTsKPiA+
Cj4gPiAiZGV2IiBhbmQgImRldmljZSIgZG8gbm90IHNvdW5kIGdyZWF0LiBNYXliZSAidGVtcF9k
ZXYiIG9yICJmYWtlX2RldiIgPwo+ID4KPiA+ID4gICAgICBnX3JldHVybl9pZl9mYWlsKFNQSUNF
X0lTX1VTQl9ERVZJQ0VfTUFOQUdFUihzZWxmKSk7Cj4gPiA+IC0gICAgZ19yZXR1cm5faWZfZmFp
bChkZXZpY2UgIT0gTlVMTCk7Cj4gPiA+IC0KPiA+ID4gKyAgICBpZiAoZGV2aWNlID09IE5VTEwp
IHsKPiA+ID4gKyAgICAgICAgZGV2ID0gZ19uZXcwKFNwaWNlVXNiRGV2aWNlLCAxKTsKPiA+ID4g
KyAgICAgICAgZGV2LT5yZWYgPSAxOwo+ID4gPiArICAgIH0KPiA+ID4gICAgICBnX3NpZ25hbF9l
bWl0KHNlbGYsIHNpZ25hbHNbREVWSUNFX0VSUk9SXSwgMCwgZGV2aWNlLCBlcnIpOwo+ID4KPiA+
IElmIGRldmljZSB3YXMgaW5pdGlhbGx5IE5VTEwgYXQgZnVuY3Rpb24gY2FsbCB0aGlzIGlzIHN0
aWxsIE5VTEwuCj4gCj4gU29ycnksIHR5cG8uCj4gCj4gPgo+ID4gPiArICAgIGlmIChkZXZpY2Ug
PT0gTlVMTCkgewo+ID4gPiArICAgICAgICBzcGljZV91c2JfZGV2aWNlX3VucmVmKGRldik7Cj4g
Pgo+ID4gSWYgZGV2aWNlIHdhcyBOVUxMIHlvdSBhbGxvY2F0ZSBhIG5ldyBlbXB0eSBTcGljZVVz
YkRldmljZSBhbmQKPiA+IHRoZW4gZnJlZSBpdC4gTm90IHN1cmUgaXMgd2hhdCB5b3Ugd2FudCB0
byBkby4KPiA+Cj4gPiA+ICsgICAgfQoKSSB3b3VsZCB0aGVuIHJld3JpdGUgYXMKCnsKICAgIFNw
aWNlVXNiRGV2aWNlICpkdW1teV9kZXZpY2UgPSBOVUxMOwogICAgZ19yZXR1cm5faWZfZmFpbChT
UElDRV9JU19VU0JfREVWSUNFX01BTkFHRVIoc2VsZikpOwoKICAgIGlmIChkZXZpY2UgPT0gTlVM
TCkgewogICAgICAgIGR1bW15X2RldmljZSA9IGdfbmV3MChTcGljZVVzYkRldmljZSwgMSk7CiAg
ICAgICAgZHVtbXlfZGV2aWNlLT5yZWYgPSAxOwogICAgICAgIGRldmljZSA9IGR1bW15X2Rldmlj
ZTsKICAgIH0KICAgIGdfc2lnbmFsX2VtaXQoc2VsZiwgc2lnbmFsc1tERVZJQ0VfRVJST1JdLCAw
LCBkZXZpY2UsIGVycik7CiAgICBpZiAoZHVtbXlfZGV2aWNlICE9IE5VTEwpIHsKICAgICAgICBz
cGljZV91c2JfZGV2aWNlX3VucmVmKGR1bW15X2RldmljZSk7CiAgICB9Cn0KCj4gPiA+ICB9Cj4g
PiA+ICAjZW5kaWYKPiA+ID4KPiA+ID4gQEAgLTE0NDAsNiArMTQ0NiwxMCBAQCBnY2hhcgo+ID4g
PiAqc3BpY2VfdXNiX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JEZXZpY2UKPiA+ID4g
KmRldmljZSwgY29uc3QgZ2NoYXIgKmZvcgo+ID4gPgo+ID4gPiAgICAgIGdfcmV0dXJuX3ZhbF9p
Zl9mYWlsKGRldmljZSAhPSBOVUxMLCBOVUxMKTsKPiA+ID4KPiA+ID4gKyAgICBpZiAoIWRldmlj
ZS0+YmRldikgewo+ID4gPiArICAgICAgICByZXR1cm4gZ19zdHJkdXAoXygiVVNCIHJlZGlyZWN0
aW9uIikpOwo+ID4gPiArICAgIH0KPiA+ID4gKwo+ID4gPiAgICAgIGJ1cyAgICAgPSBzcGljZV91
c2JfZGV2aWNlX2dldF9idXNudW0oZGV2aWNlKTsKPiA+ID4gICAgICBhZGRyZXNzID0gc3BpY2Vf
dXNiX2RldmljZV9nZXRfZGV2YWRkcihkZXZpY2UpOwo+ID4gPiAgICAgIHZpZCAgICAgPSBzcGlj
ZV91c2JfZGV2aWNlX2dldF92aWQoZGV2aWNlKTsKPiA+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
