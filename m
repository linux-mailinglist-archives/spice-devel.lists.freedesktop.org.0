Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C447497C
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 11:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FAE6E6A4;
	Thu, 25 Jul 2019 09:01:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8666E6A4
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 09:01:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 12773882F5;
 Thu, 25 Jul 2019 09:01:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 06D605DA2E;
 Thu, 25 Jul 2019 09:01:39 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EFE1A41F40;
 Thu, 25 Jul 2019 09:01:38 +0000 (UTC)
Date: Thu, 25 Jul 2019 05:01:38 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190724105351.13753-3-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-3-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.5]
Thread-Topic: usb-redir: device error signal without device object
Thread-Index: pbBcsh8jRdfSOIicazbdKp5YIIkf1A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 25 Jul 2019 09:01:39 +0000 (UTC)
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBBZGQgYWJpbGl0eSB0byBpbmRpY2F0ZSBlcnJvciB0byBleHRlcm5hbCBtb2R1bGVzIHZp
YQo+ICdkZXZpY2UgZXJyb3InIHNpZ25hbCB3aGVuIHJlYWwgU3BpY2VVc2JEZXZpY2UgaXMgbm90
IHBhc3NlZC4KPiBUaGlzIGlzIG5lZWRlZCB0byBpbmRpY2F0ZSBlcnJvciBkdXJpbmcgY3JlYXRp
b24gb2YgZW11bGF0ZWQKPiBkZXZpY2UsIHdoZW4gdGhlIGRldmljZSBpcyBub3QgY3JlYXRlZCB5
ZXQuIEZvciB0aGF0IHdlCj4gYWxsb2NhdGUgdGVtcG9yYXJ5IFNwaWNlVXNiRGV2aWNlIHN0cnVj
dHVyZSB3aXRoIGJhY2tlbmQKPiBkZXZpY2UgZmllbGRzIHNldCB0byBOVUxMIGFuZCB1c2UgaXQg
Zm9yIGluZGljYXRpb24uIERldmljZQo+IGRlc2NyaXB0aW9uIGZvciBzdWNoIGRldmljZSB3aWxs
IGJlICdVU0IgUmVkaXJlY3Rpb24nLgo+IFVucmVmZXJlbmNpbmcgb2Ygc3VjaCBkZXZpY2Ugd2ls
bCBiZSAnbm8gb3BlcmF0aW9uJy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNo
IDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gLS0tCj4gIHNyYy91c2ItYmFja2VuZC5j
ICAgICAgICB8ICAzICsrKwo+ICBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAxNCArKysrKysr
KysrKystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5k
LmMKPiBpbmRleCAwYmYyZWNjLi5jMTc5MTg4IDEwMDY0NAo+IC0tLSBhL3NyYy91c2ItYmFja2Vu
ZC5jCj4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiBAQCAtNTI4LDYgKzUyOCw5IEBAIFNwaWNl
VXNiQmFja2VuZERldmljZQo+ICpzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVmKFNwaWNlVXNi
QmFja2VuZERldmljZSAqZGV2KQo+ICAKPiAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
dW5yZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gIHsKPiArICAgIGlmICghZGV2KSB7
Cj4gKyAgICAgICAgcmV0dXJuOwo+ICsgICAgfQo+ICAgICAgTE9VRF9ERUJVRygiJXMgPj4gJXAo
JWQpIiwgX19GVU5DVElPTl9fLCBkZXYsIGRldi0+cmVmX2NvdW50KTsKPiAgICAgIGlmIChnX2F0
b21pY19pbnRfZGVjX2FuZF90ZXN0KCZkZXYtPnJlZl9jb3VudCkpIHsKPiAgICAgICAgICBpZiAo
ZGV2LT5saWJ1c2JfZGV2aWNlKSB7Cj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFn
ZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IGluZGV4IGE1MzBiZTkuLjA5NjFkMTYg
MTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gKysrIGIvc3JjL3VzYi1k
ZXZpY2UtbWFuYWdlci5jCj4gQEAgLTkzNSwxMCArOTM1LDE2IEBAIHN0YXRpYyB2b2lkCj4gc3Bp
Y2VfdXNiX2RldmljZV9tYW5hZ2VyX2NoZWNrX3JlZGlyX29uX2Nvbm5lY3QoCj4gIHZvaWQgc3Bp
Y2VfdXNiX2RldmljZV9tYW5hZ2VyX2RldmljZV9lcnJvcigKPiAgICAgIFNwaWNlVXNiRGV2aWNl
TWFuYWdlciAqc2VsZiwgU3BpY2VVc2JEZXZpY2UgKmRldmljZSwgR0Vycm9yICplcnIpCj4gIHsK
PiArICAgIFNwaWNlVXNiRGV2aWNlICpkZXYgPSBkZXZpY2U7CgoiZGV2IiBhbmQgImRldmljZSIg
ZG8gbm90IHNvdW5kIGdyZWF0LiBNYXliZSAidGVtcF9kZXYiIG9yICJmYWtlX2RldiIgPwoKPiAg
ICAgIGdfcmV0dXJuX2lmX2ZhaWwoU1BJQ0VfSVNfVVNCX0RFVklDRV9NQU5BR0VSKHNlbGYpKTsK
PiAtICAgIGdfcmV0dXJuX2lmX2ZhaWwoZGV2aWNlICE9IE5VTEwpOwo+IC0KPiArICAgIGlmIChk
ZXZpY2UgPT0gTlVMTCkgewo+ICsgICAgICAgIGRldiA9IGdfbmV3MChTcGljZVVzYkRldmljZSwg
MSk7Cj4gKyAgICAgICAgZGV2LT5yZWYgPSAxOwo+ICsgICAgfQo+ICAgICAgZ19zaWduYWxfZW1p
dChzZWxmLCBzaWduYWxzW0RFVklDRV9FUlJPUl0sIDAsIGRldmljZSwgZXJyKTsKCklmIGRldmlj
ZSB3YXMgaW5pdGlhbGx5IE5VTEwgYXQgZnVuY3Rpb24gY2FsbCB0aGlzIGlzIHN0aWxsIE5VTEwu
Cgo+ICsgICAgaWYgKGRldmljZSA9PSBOVUxMKSB7Cj4gKyAgICAgICAgc3BpY2VfdXNiX2Rldmlj
ZV91bnJlZihkZXYpOwoKSWYgZGV2aWNlIHdhcyBOVUxMIHlvdSBhbGxvY2F0ZSBhIG5ldyBlbXB0
eSBTcGljZVVzYkRldmljZSBhbmQKdGhlbiBmcmVlIGl0LiBOb3Qgc3VyZSBpcyB3aGF0IHlvdSB3
YW50IHRvIGRvLgoKPiArICAgIH0KPiAgfQo+ICAjZW5kaWYKPiAgCj4gQEAgLTE0NDAsNiArMTQ0
NiwxMCBAQCBnY2hhciAqc3BpY2VfdXNiX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VVc2JE
ZXZpY2UKPiAqZGV2aWNlLCBjb25zdCBnY2hhciAqZm9yCj4gIAo+ICAgICAgZ19yZXR1cm5fdmFs
X2lmX2ZhaWwoZGV2aWNlICE9IE5VTEwsIE5VTEwpOwo+ICAKPiArICAgIGlmICghZGV2aWNlLT5i
ZGV2KSB7Cj4gKyAgICAgICAgcmV0dXJuIGdfc3RyZHVwKF8oIlVTQiByZWRpcmVjdGlvbiIpKTsK
PiArICAgIH0KPiArCj4gICAgICBidXMgICAgID0gc3BpY2VfdXNiX2RldmljZV9nZXRfYnVzbnVt
KGRldmljZSk7Cj4gICAgICBhZGRyZXNzID0gc3BpY2VfdXNiX2RldmljZV9nZXRfZGV2YWRkcihk
ZXZpY2UpOwo+ICAgICAgdmlkICAgICA9IHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3ZpZChkZXZpY2Up
OwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
