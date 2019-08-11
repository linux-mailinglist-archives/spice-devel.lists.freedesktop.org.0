Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BB389117
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5993A6E31E;
	Sun, 11 Aug 2019 09:32:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95CD6E31E
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:32:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86CF7307D84D;
 Sun, 11 Aug 2019 09:32:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C3A060166;
 Sun, 11 Aug 2019 09:32:39 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6407018089C8;
 Sun, 11 Aug 2019 09:32:39 +0000 (UTC)
Date: Sun, 11 Aug 2019 05:32:38 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Pavel Grunt <pgrunt@redhat.com>
Message-ID: <205745645.5452138.1565515958650.JavaMail.zimbra@redhat.com>
In-Reply-To: <1484045843.2373.10.camel@redhat.com>
References: <1482512017-27561-1-git-send-email-jwhite@codeweavers.com>
 <1484045843.2373.10.camel@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.4]
Thread-Topic: Review the webm audio track header and remove the fixmes.
Thread-Index: Ff4hL3Bpm6ciyMIHGTrN+bHwkMK7ZA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Sun, 11 Aug 2019 09:32:39 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-html5] Review the webm audio track
 header and remove the fixmes.
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

SGksCiAgd2h5IHRoaXMgd2FzIG5vdCBtZXJnZWQgPwoKRnJlZGlhbm8KCj4gCj4gQWNrCj4gCj4g
VGhhbmtzLAo+IFBhdmVsCj4gCj4gT24gRnJpLCAyMDE2LTEyLTIzIGF0IDEwOjUzIC0wNjAwLCBK
ZXJlbXkgV2hpdGUgd3JvdGU6Cj4gPiBUaGlzIGludm9sdmVkIGEgcmV2aWV3IG9mIHRoZSBGaXJl
Zm94IHBhcnNpbmcgY29kZSBhbG9uZwo+ID4gd2l0aCB0aGUgb2ZmaWNpYWwgc3BlY2lmY2F0aW9u
LCBhbmQgc2V0dGluZyB0aGVzZSBmaWVsZHMKPiA+IHRvIHRoZSBzcGVjaWZpZWQgZGVmYXVsdCB2
YWx1ZXMuCj4gPiAKPiA+IE1vc3Qgbm90YWJseSwgSSBoYXZlIGZvdW5kIHRoYXQgcmVjZW50IGJy
b3dzZXJzIGRvIG5vdCBuZWVkIHRoZQo+ID4gOCBtcyBwcmUgc2tpcCwgYW5kIGl0IHNlZW1zIHRv
IHJlbW92ZSBzb21lIGF1ZGlvIGxhZyB0bwo+ID4gc3dpdGNoIHRvIDAuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IEplcmVteSBXaGl0ZSA8andoaXRlQGNvZGV3ZWF2ZXJzLmNvbT4KPiA+IC0tLQo+
ID4gwqB3ZWJtLmpzIHwgMjcgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tCj4gPiDCoDEgZmls
ZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvd2VibS5qcyBiL3dlYm0uanMKPiA+IGluZGV4IDc4OWRhMTQuLjcyYzE4NTMgMTAw
NjQ0Cj4gPiAtLS0gYS93ZWJtLmpzCj4gPiArKysgYi93ZWJtLmpzCj4gPiBAQCAtMzkzLDI4ICsz
OTMsMzkgQEAgd2VibV9TZWVrSGVhZC5wcm90b3R5cGUgPQo+ID4gwqAKPiA+IMKgZnVuY3Rpb24g
d2VibV9BdWRpb1RyYWNrRW50cnkoKQo+ID4gwqB7Cj4gPiArwqDCoMKgwqAvKgo+ID4gK8KgwqDC
oMKgKiogSW4gZ2VuZXJhbCwgd2UgZm9sbG93IHRoaXMgc3BlY2lmaWNhdGlvbjoKPiA+ICvCoMKg
wqDCoCoqwqDCoMKgaHR0cHM6Ly93d3cubWF0cm9za2Eub3JnL3RlY2huaWNhbC9zcGVjcy9pbmRl
eC5odG1sCj4gPiArwqDCoMKgwqAqKiB3ZSBzdXBwbHkgdGhlIG1hbmRhdG9yeSB2YWx1ZXMsIGFu
ZCBhIGNvbW1lbnQgbm90ZXMKPiA+ICvCoMKgwqDCoCoqIHdoZXJlIHdlIGRpZmZlciBmcm9tIHRo
ZSBkZWZhdWx0Cj4gPiArwqDCoMKgwqAqKsKgwqDCoFRoZXJlIGlzIG9uZSBSRUNPTU1FTkRFRCBn
dWlkZWxpbmUgd2UgYXJlIG9taXR0aW5nOwo+ID4gK8KgwqDCoMKgKiogdGhlIE9QVVMgY29kZWNf
ZGVsYXkgaXMgcmVjb21tZW5kZWQgdG8gYmUgODBtcy4KPiA+ICvCoMKgwqDCoCoqIEhvd2V2ZXIs
IHRoZSBzcGljZSBzZXJ2ZXIgZG9lcyBub3QgY3VycmVudGx5IHByb3ZpZGUgdGltZQo+ID4gK8Kg
wqDCoMKgKiogc3RhbXBzIHRoYXQgYXJlIG9mZnNldCBieSA4MG1zLCBzbyB5b3UgZWZmZWN0aXZl
bHkgZ2V0IGFuCj4gPiArwqDCoMKgwqAqKiA4MG1zIGxhZyB3aXRoIHRoaXMgc2V0dGluZy4KPiA+
ICvCoMKgwqDCoCovCj4gPiDCoMKgwqDCoMKgdGhpcy5pZCA9IFdFQk1fVFJBQ0tfRU5UUlk7Cj4g
PiDCoMKgwqDCoMKgdGhpcy5udW1iZXIgPSAxOwo+ID4gwqDCoMKgwqDCoHRoaXMudWlkID0gMTsK
PiA+IMKgwqDCoMKgwqB0aGlzLnR5cGUgPSAyOyAvLyBBdWRpbwo+ID4gwqDCoMKgwqDCoHRoaXMu
ZmxhZ19lbmFibGVkID0gMTsKPiA+IMKgwqDCoMKgwqB0aGlzLmZsYWdfZGVmYXVsdCA9IDE7Cj4g
PiAtwqDCoMKgwqB0aGlzLmZsYWdfZm9yY2VkID0gMTsKPiA+IC3CoMKgwqDCoHRoaXMuZmxhZ19s
YWNpbmcgPSAwOwo+ID4gLcKgwqDCoMKgdGhpcy5taW5fY2FjaGUgPSAwOyAvLyBmaXhtZSAtIGNo
ZWNrCj4gPiArwqDCoMKgwqB0aGlzLmZsYWdfZm9yY2VkID0gMTvCoMKgLy8gRGlmZmVyZW50IHRo
YW4gZGVmYXVsdDsgd2Ugd2lzaCB0bwo+ID4gZm9yY2UKPiA+ICvCoMKgwqDCoHRoaXMuZmxhZ19s
YWNpbmcgPSAxOwo+ID4gK8KgwqDCoMKgdGhpcy5taW5fY2FjaGUgPSAwOwo+ID4gwqDCoMKgwqDC
oHRoaXMubWF4X2Jsb2NrX2FkZGl0aW9uX2lkID0gMDsKPiA+IC3CoMKgwqDCoHRoaXMuY29kZWNf
ZGVjb2RlX2FsbCA9IDA7IC8vIGZpeG1lIC0gY2hlY2sKPiA+IC3CoMKgwqDCoHRoaXMuc2Vla19w
cmVfcm9sbCA9IDA7IC8vIDgwMDAwMDAwOyAvLyBmaXhtZSAtIGNoZWNrCj4gPiAtwqDCoMKgwqB0
aGlzLmNvZGVjX2RlbGF5ID3CoMKgwqA4MDAwMDAwMDsgLy8gTXVzdCBtYXRjaAo+ID4gY29kZWNf
cHJpdmF0ZS5wcmVza2lwCj4gPiArwqDCoMKgwqB0aGlzLnNlZWtfcHJlX3JvbGwgPSAwOwo+ID4g
K8KgwqDCoMKgdGhpcy5jb2RlY19kZWxheSA9wqDCoMKgMDsgLy8gTXVzdCBtYXRjaCBjb2RlY19w
cml2YXRlLnByZXNraXAKPiA+IMKgwqDCoMKgwqB0aGlzLmNvZGVjX2lkID0gIkFfT1BVUyI7Cj4g
PiArwqDCoMKgwqB0aGlzLmNvZGVjX2RlY29kZV9hbGwgPSAxOwo+ID4gwqDCoMKgwqDCoHRoaXMu
YXVkaW8gPSBuZXcgd2VibV9BdWRpbyhPUFVTX0ZSRVFVRU5DWSk7Cj4gPiDCoAo+ID4gwqDCoMKg
wqDCoC8vIFNlZTrCoMKgaHR0cDovL3Rvb2xzLmlldGYub3JnL2h0bWwvZHJhZnQtdGVycmliZXJy
eS1vZ2dvcHVzLTAxCj4gPiDCoMKgwqDCoMKgdGhpcy5jb2RlY19wcml2YXRlID0gWyAweDRmLCAw
eDcwLCAweDc1LCAweDczLCAweDQ4LCAweDY1LAo+ID4gMHg2MSwgMHg2NCzCoMKgLy8gT3B1c0hl
YWQKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgMHgwMSwgLy8gVmVyc2lvbgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBPUFVTX0NIQU5ORUxTLAo+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4MDAsIDB4MEYsIC8v
IFByZXNraXAgLSAzODQwIHNhbXBsZXMgLQo+ID4gc2hvdWxkIGJlIDhtcyBhdCA0OGtIego+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4
ODAsIDB4YmIsIDB4MDAsIDB4MDAswqDCoC8vIDQ4MDAwCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgMHgwMCwgMHgwMCwgLy8gUHJlc2tp
cCAtIDM4NDAgc2FtcGxlcwo+ID4gd291bGQgYmUgOG1zIGF0IDQ4a0h6Cj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgMHg4MCwgMHhiYiwg
MHgwMCwgMHgwMCzCoMKgLy8gbm9taW5hbCByYXRlCj4gPiAtIDQ4MDAwCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4MDAsIDB4MDAs
IC8vIE91dHB1dCBnYWluCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoDB4MDDCoMKgLy8gQ2hhbm5lbCBtYXBwaW5nIGZhbWlseQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBd
OwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
