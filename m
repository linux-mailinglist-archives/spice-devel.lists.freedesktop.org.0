Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA215D3DDD
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 13:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE5C6EC18;
	Fri, 11 Oct 2019 11:00:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1066EC12
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 11:00:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 04C5018CB8E0;
 Fri, 11 Oct 2019 11:00:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF6EE60872;
 Fri, 11 Oct 2019 11:00:45 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D14E818089C8;
 Fri, 11 Oct 2019 11:00:45 +0000 (UTC)
Date: Fri, 11 Oct 2019 07:00:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: business@ehoefel.com
Message-ID: <1085520636.6354016.1570791645574.JavaMail.zimbra@redhat.com>
In-Reply-To: <25c4399c-4ce7-2127-2427-69f6613520a3@ehoefel.com>
References: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
 <1890026837.6264931.1570713772940.JavaMail.zimbra@redhat.com>
 <25c4399c-4ce7-2127-2427-69f6613520a3@ehoefel.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.24]
Thread-Topic: Question about bidirectional audio
Thread-Index: n39iCsq7iZbJ9Fq1JT92G21fWFttIg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Fri, 11 Oct 2019 11:00:46 +0000 (UTC)
Subject: Re: [Spice-devel] Question about bidirectional audio
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

PiAKPiBTb3JyeSBmb3Igbm90IGJlaW5nIGNsZWFyLgo+IAo+IAo+IEluIHRoaXMgY2FzZSwgdGhl
IGNsaWVudCBpcyBBc3RlcmlzayBhbmQgdGhlIHNlcnZlciBpcyBhIFNQSUNFIHNlcnZlci4KPiAK
PiBUaGV5IHdhbnQgdG8gc2VuZCBhdWRpbyBmcm9tIHRoZSBjbGllbnQgdG8gdGhlIHNlcnZlci4g
VGhlIGRvY3VtZW50YXRpb24KPiBzYXlzIHRoYXQgSSBuZWVkIHRvIHVzZQo+IFJFRF9SRUNPUkRf
KiBtZXNzYWdlcy4gVGhlIHNlcnZlciBtdXN0IHN0YXJ0IHJlcXVlc3RpbmcgdGhlIHJlY29yZCBm
cm9tCj4gdGhlIGNsaWVudCwgd2l0aCBhIFJFRF9SRUNPUkRfU1RBUlQgcmVxdWVzdC4gSG93IGNh
biBJIHRyaWdnZXIgdGhpcwo+IHJlcXVlc3Q/IE9uZSBvZiB0aGUgY2xpZW50J3MgZGV2ZWxvcGVy
cyBzYWlkIHRoYXQgdGhpcyBtZXNzYWdlIGlzIHNlbnQKPiBmcm9tIHRoZSBzZXJ2ZXIgcmlnaHQg
YWZ0ZXIgYSBsaW5rIHdpdGggY29ubmVjdGlvbiB0eXBlCj4gU1BJQ0VfQ0hBTk5FTF9SRUNPUkQg
aXMgbWFkZS4gSXMgdGhpcyBpbmZvcm1hdGlvbiB0cnVlPyBJIGNhbm5vdCBmaW5kCj4gYW55d2hl
cmUgaW4gdGhlIGRvY3VtZW50YXRpb24gaG93IHRoaXMgY29tbXVuaWNhdGlvbiBzdGFydHMuCj4g
CgpUaGUgZG9jdW1lbnRhdGlvbiBpcyBhIGJpdCBvdXRkYXRlZCwgbWFueSBSRURfKiBzdHVmZiB3
YXMgcmVuYW1lZCB0bwpTUElDRV8qIHRpbWUgYWdvLiBJbiBjYXNlIG9mIG1lc3NhZ2VzIHNob3Vs
ZCBiZSBTUElDRV9NU0dDX1JFQ09SRF9TVEFSVAoodGhlIEMgaW4gTVNHQyBtZWFucyBmcm9tIGNs
aWVudCkuCkFzIHNhaWQgdGhlIHJlY29yZCBjaGFubmVsIGlzIGxpa2UgYSBtaWNyb3Bob25lLiBU
aGUgc3RhcnQgaXMgdHJpZ2dlcmVkCmJ5IHRoZSBsaW5lLWluIGVuYWJsZWQgaW4gdGhlIFZNIHNv
dW5kIGNhcmQuIElmIHRoZSBsaW5lLWluIGlzIGVuYWJsZWQKYmVmb3JlIHRoZSBjb25uZWN0aW9u
IHRoZSBzdGFydCBtZXNzYWdlIGlzIHNlbmQgYWZ0ZXIgdGhlIGNvbm5lY3Rpb24uCk90aGVyd2lz
ZSB0byB0cmlnZ2VyIHRoZSBzdGFydCB5b3UgbmVlZCB0byBlbmFibGUgdGhlIGxpbmUtaW4gb24g
dGhlClZNIHNpZGUsIHRoYXQgaXMsIHlvdSBuZWVkIHRvIHN0YXJ0IGEgcmVjb3JkaW5nIGluIHRo
ZSBWTS4KCj4gT24gMTAvMTAvMTkgMzoyMiBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+
IEhlbGxvLAo+ID4+Cj4gPj4gSSdtIGEgZGV2ZWxvcGVyIGRvaW5nIGEgZnJlZWxhbmNlIGpvYiBm
b3IgYSBjb21wYW55LiBUaGV5IHdhbnQgdG8KPiA+PiBjb25uZWN0IEFzdGVyaXNrIGNhbGwgY2Vu
dGVyIHRvIGEgdm0gcnVubmluZyBTcGljZS4gSSBzZWUgdGhhdCBpdCdzCj4gPj4gcG9zc2libGUg
dG8gZG8gQmlkaXJlY3Rpb25hbCBBdWRpbywgYWNjb3JkaW5nIHRvIHlvdXIgdXNlciBtYW51YWwu
Cj4gPj4gSSB3YW50IHRvIHN0cmVhbSBhdWRpbyBmcm9tIGEgY2xpZW50IHRvIHRoZSBzZXJ2ZXIs
IGFuZCBoYXZlIHRoYXQgYXVkaW8KPiA+PiBwbGF5ZWQgdGhyb3VnaCB0aGUgb3V0cHV0IGRldmlj
ZSBvZiB0aGUgc2VydmVyLiBJIG5lZWQgdG8gbWFrZSB0aGlzIGNvZGUKPiA+PiBpbiBDLgo+ID4+
Cj4gPiBOb3QgY2xlYXIgaGVyZSB3aGF0IHRoZSBjbGllbnQgYW5kIHNlcnZlciBhcmUuIFNwZWFr
aW5nIGFib3V0IFNQSUNFCj4gPiB0aGUgc2VydmVyIGlzIHRoZSBwYXJ0IGF0dGFjaGVkIHRvIHRo
ZSBWTSB3aGlsZSB0aGUgY2xpZW50IGlzIHVzdWFsbHkKPiA+IGEgR1VJIGNsaWVudCAobGlrZSBy
ZW1vdGUtdmlld2VyKS4KPiA+Cj4gPj4gTG9va2luZyBhdCB5b3VyIHByb3RvY29sIEkgc2F3IHRo
YXQgZm9yIGF1ZGlvIG1lc3NhZ2VzIHRoZSBzZXJ2ZXIgYWx3YXlzCj4gPj4gbmVlZHMgdG8gc3Rh
cnQgdGhlIGNvbW11bmljYXRpb24sIGVpdGhlciB3aXRoIFJFRF9QTEFZQkFDS19TVEFSVCBvcgo+
ID4+IFJFRF9SRUNPUkRfU1RBUlQuCj4gPj4KPiA+IFRoZXkgYXJlIDIgc2VwYXJhdGUgY2hhbm5l
bHMgd2hpY2ggaGF2ZSBvbmUgcmVzcGVjdGl2ZSBUQ1AgY29ubmVjdGlvbgo+ID4gKGNhbiBiZSBh
IFVuaXggc29ja2V0IGNvbm5lY3Rpb24gYnV0IGluIHRoaXMgY2FzZSB3b24ndCBiZSByZW1vdGUp
Lgo+ID4gVGhlIHBsYXliYWNrIGNoYW5uZWwgaXMgbGlrZSwgZm9yIHRoZSBTUElDRSBjbGllbnQs
IGEgc3BlYWtlciBzbyB0aGUKPiA+IFZNIHdpbGwgc2VuZCB0aGUgYXVkaW8gdG8gYmUgcGxheWVk
Lgo+ID4gVGhlIHJlY29yZCBjaGFubmVsIGlzIGxpa2UsIHN0aWxsIGZvciB0aGUgY2xpZW50LCBh
IG1pY3JvcGhvbmUgc28KPiA+IHRoZSBjbGllbnQgd2lsbCBzZW5kIHRoZSBhdWRpbyB0byBiZSBy
ZWNvcmRlciBieSB0aGUgVk0uCj4gPiBUaGUgU1RBUlQgbWVzc2FnZXMgYXJlIHNlbmQgZnJvbSB0
aGUgVk0gZWl0aGVyIHNvIHNheSB0aGF0IHRoZSBhdWRpbwo+ID4gY2FyZCBpcyBwbGF5aW5nIHNv
bWV0aGluZyAocGxheWJhY2spIG9yIHRyeWluZyB0byByZWNvcmQgc29tZXRoaW5nCj4gPiAocmVj
b3JkKQo+ID4KPiA+PiBNeSBjbGllbnQgd2FudHMgdG8gcmVjZWl2ZSB0aGUgY2FsbCBpbiB0aGUg
Y2FsbCBjZW50ZXIgYW5kIGhhdmUgaXQKPiA+PiBhdXRvbWF0aWNhbGx5IHN0cmVhbWVkIHRvIHRo
ZSBzZXJ2ZXIuIEJ1dCBJIGNhbm5vdCBzdGFydCBtZXNzYWdpbmcKPiA+PiB1bmxlc3MgdGhlIHNl
cnZlciByZXF1ZXN0cyB0aGUgY29ubmVjdGlvbi4KPiA+Pgo+ID4gV2hhdCBpcyB0aGUgc2VydmVy
IGhlcmU/IEl0IHNlZW1zIGl0J3Mgbm90IFNQSUNFIHNlcnZlci4gSXQncyBub3QKPiA+IGNsZWFy
IHdoYXQgeW91IGFyZSB0cnlpbmcgdG8gZG8uIFdoZXJlIGlzIGV4ZWN1dGVkIEFzdGVyaXNrPwo+
ID4gQW5kIGhvdyBpcyBBc3RlcmlzayBpbnZvbHZlZCBoZXJlPyBJcyBpdCBub3QgcG9zc2libGUg
dG8gcmVjb3JkIG9uCj4gPiBBc3RlcmlzayAoSSBzdXBwb3NlIHRoZSBjYWxscyBhcmUgaGFuZGxl
ZCBieSBBc3Rlcmlzayk/Cj4gPgo+ID4+IEhvdyBjYW4gSSBzb2x2ZSB0aGF0Pwo+ID4+Cj4gPj4g
UmVnYXJkcywKPiA+PiBFZHVhcmRvIEhvZWZlbAo+ID4+Cj4gPiBGcmVkaWFubwo+IApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
