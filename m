Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F798AD722
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 12:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9103893A8;
	Mon,  9 Sep 2019 10:45:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A634893A8
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:45:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0B36F30BBE87
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:45:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0365D5C1D8
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:45:58 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8C9C4A460;
 Mon,  9 Sep 2019 10:45:57 +0000 (UTC)
Date: Mon, 9 Sep 2019 06:45:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1994863068.11125669.1568025957763.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190909102949.17504-2-victortoso@redhat.com>
References: <20190909102949.17504-1-victortoso@redhat.com>
 <20190909102949.17504-2-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.18]
Thread-Topic: session: initialize gstreamer once
Thread-Index: CMO/wLpr0rsbB+XlquySjbVukXlWvw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 09 Sep 2019 10:45:58 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 1/3] session: initialize gstreamer
 once
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gR1N0cmVhbWVy
IGlzIHJlcXVpcmVkIHNpbmNlIHYwLjM2IHdpdGggODNhYjdjYSAiYnVpbGQtc3lzOiBkcm9wCj4g
Z3N0dmlkZW8gb3B0aW9uLCBtYWtlIGl0IHJlcXVpcmVkIiBpbiAyMDE5LTAxLTE1IGJ5IE1hcmMt
QW5kcsOpIEx1cmVhdQo+IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+Cj4gCj4gQm90aCBj
aGFubmVsLWRpc3BsYXktZ3N0LmMgYW5kIHNwaWNlLWdzdGF1ZGlvLmMgaGF2ZSB0byBkb3VibGUg
Y2hlY2sKPiB0aGF0IEdTdHJlYW1lciB3YXMgaW5pdGlhbGl6ZWQgd2l0aCBnc3RfaW5pdF9jaGVj
aygpIGJ1dCB0aGlzIGNhbiBiZQo+IGRvbmUgb25jZSBwZXIgU3BpY2VTZXNzaW9uIGFuZCBtYWtl
IHRob3NlIGNvZGUgcGF0aCBhIGxpdHRsZSBiaXQKPiBsaWdodGVyIHdpdGggc2ltcGxlciBjaGVj
ayBnc3RfaXNfaW5pdGlhbGl6ZWQoKQo+IAoKQ2FsbGluZyBnc3R2aWRlb19pbml0IG9yIGdzdF9p
c19pbml0aWFsaXplZCBpcyBub3QgbXVjaCBkaWZmZXJlbmNlLApwb3RlbnRpYWxseSBjYWxsaW5n
IGdzdHZpZGVvX2luaXQgaXMgZmFzdGVyIGFzIHRoZSBmdW5jdGlvbiBpcyBpbgp0aGUgc2FtZSBt
b2R1bGUgKHlvdSBjYW4gY2FjaGUgaW5pdGlhbGl6YXRpb24gZG9uZSkuClRoaXMgc2VyaWVzIHNl
ZW1zIHRvIHJldXNlIGNvZGUgdG8gaW5pdGlhbGl6ZSBHU3RyZWFtZXIgYnV0IHRoaXMKY2FuIHNp
bXBseSBiZSBhY2hpZXZlZCBjYWxsaW5nIGdzdHZpZGVvX2luaXQgZnJvbSB0aGUgYXVkaW8gc2lk
ZQoob3Igd3JpdGUgYSBiZXR0ZXIgaW5pdGlhbGl6YXRpb24gZnVuY3Rpb24pLgpUaGlzIHBhdGNo
IGluY3JlYXNlIFNwaWNlU2Vzc2lvbiBjb2RlIGZvciBub3QgZ3JlYXQgcmVhc29ucywKU3BpY2VT
ZXNzaW9uIGRvZXMgbm90aGluZyBkaXJlY3Qgd2l0aCBHc3RyZWFtZXIuCgo+IFRoaXMgZmlyc3Qg
cGF0Y2ggZG9lcyBpbml0aWFsaXplIGEgU3BpY2VTZXNzaW9uIG9uIGl0J3MgaW5pdC4gQXMgdGhl
Cj4gY3VycmVudCBjb2RlIHBhdGggZG9lcyBub3QgY2FsbCBnc3RfZGVpbml0KCksIHdlIGFyZSBu
b3QgZG9pbmcgaXQgc28KPiBoZXJlIGFzIHdlbGwgYnV0IGl0IGNhbiBiZSBsYXRlciBvcHRpbWl6
ZWQgdG8gYmUgc3VyZSByZXNvdXJjZXMgYXJlCj4gY2xlYW5lZCBjb3JyZWN0bHkgb24gR1N0cmVh
bWVyIHNpZGUuCj4gCgpUaGlzIHNlbnRlbmNlIGlzIHdyb25nLiBXZSBjYW4ndCBkbyBpdC4KCj4g
U2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPiAtLS0K
PiAgc3JjL3NwaWNlLXNlc3Npb24uYyB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNl
LXNlc3Npb24uYyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKPiBpbmRleCBkMGQ5ZTU0Li4yZjQ0ODE2
IDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1zZXNzaW9uLmMKPiArKysgYi9zcmMvc3BpY2Utc2Vz
c2lvbi5jCj4gQEAgLTIxLDYgKzIxLDcgQEAKPiAgI2luY2x1ZGUgPGdpby9nbmV0d29ya2luZy5o
Pgo+ICAjaW5jbHVkZSA8Z2lvL2dpby5oPgo+ICAjaW5jbHVkZSA8Z2xpYi5oPgo+ICsjaW5jbHVk
ZSA8Z3N0L2dzdC5oPgo+ICAjaWZkZWYgR19PU19VTklYCj4gICNpbmNsdWRlIDxnaW8vZ3VuaXhz
b2NrZXRhZGRyZXNzLmg+Cj4gICNlbmRpZgo+IEBAIC0yMzQsNiArMjM1LDcgQEAKPiBHX1NUQVRJ
Q19BU1NFUlQoR19OX0VMRU1FTlRTKF9zcGljZV9pbWFnZV9jb21wcmVzc192YWx1ZXMpID09Cj4g
U1BJQ0VfSU1BR0VfQ09NUFJFCj4gIAo+ICBzdGF0aWMgY29uc3QgZ2NoYXIqIHNwaWNlX3Nlc3Np
b25fZ2V0X3NoYXJlZF9kaXIoU3BpY2VTZXNzaW9uICpzZXNzaW9uKTsKPiAgc3RhdGljIHZvaWQg
c3BpY2Vfc2Vzc2lvbl9zZXRfc2hhcmVkX2RpcihTcGljZVNlc3Npb24gKnNlc3Npb24sIGNvbnN0
IGdjaGFyCj4gICpkaXIpOwo+ICtzdGF0aWMgdm9pZCBzcGljZV9zZXNzaW9uX2VuYWJsZV9nc3Ry
ZWFtZXIoU3BpY2VTZXNzaW9uICpzZXNzaW9uKTsKPiAgCj4gIEdUeXBlCj4gIHNwaWNlX2ltYWdl
X2NvbXByZXNzX2dldF90eXBlICh2b2lkKQo+IEBAIC0yOTUsNiArMjk3LDcgQEAgc3RhdGljIHZv
aWQgc3BpY2Vfc2Vzc2lvbl9pbml0KFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbikKPiAgICAgIHMtPmlt
YWdlcyA9IGNhY2hlX2ltYWdlX25ldygoR0Rlc3Ryb3lOb3RpZnkpcGl4bWFuX2ltYWdlX3VucmVm
KTsKPiAgICAgIHMtPmdsel93aW5kb3cgPSBnbHpfZGVjb2Rlcl93aW5kb3dfbmV3KCk7Cj4gICAg
ICB1cGRhdGVfcHJveHkoc2Vzc2lvbiwgTlVMTCk7Cj4gKyAgICBzcGljZV9zZXNzaW9uX2VuYWJs
ZV9nc3RyZWFtZXIoc2Vzc2lvbik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkCj4gQEAgLTI4NjUs
MyArMjg2OCwyMiBAQCBnYm9vbGVhbgo+IHNwaWNlX3Nlc3Npb25fc2V0X21pZ3JhdGlvbl9zZXNz
aW9uKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwgU3BpY2VTZXNzaW9uCj4gIAo+ICAgICAgcmV0dXJu
IFRSVUU7Cj4gIH0KPiArCj4gK3N0YXRpYyB2b2lkCj4gK3NwaWNlX3Nlc3Npb25fZW5hYmxlX2dz
dHJlYW1lcihTcGljZVNlc3Npb24gKnNlc3Npb24pCj4gK3sKPiArICAgIGdfcmV0dXJuX2lmX2Zh
aWwoU1BJQ0VfSVNfU0VTU0lPTihzZXNzaW9uKSk7CgpzZXNzaW9uIGFyZ3VtZW50IGlzIHVzZWQg
b25seSBoZXJlLCB0byBtZSBpdCBzZWVtcyB0aGlzIHV0aWxpdHkgZnVuY3Rpb24KaXMgbW9yZSBn
c3RyZWFtZXIgcmVsYXRlZCB0aGVuIFNwaWNlU2Vzc2lvbiByZWxhdGVkLiBUaGUgZmFjdCB0aGF0
IHlvdQpoYXZlIHRvIGluY2x1ZGUgZ3N0cmVhbWVyIGhlYWRlciBqdXN0IGZvciB0aGF0IHV0aWxp
dHkgY29uZmlybXMgdG8gbWUKdGhhdCB0aGlzIHV0aWxpdHkgc2hvdWxkIGJlIGluIGFub3RoZXIs
IG1vcmUgZ3N0cmVhbWVyIHJlbGF0ZWQsIHNvdXJjZSBmaWxlLgoKPiArICAgIGlmIChnc3RfaXNf
aW5pdGlhbGl6ZWQoKSkgewo+ICsgICAgICAgIC8qIEVpdGhlciBjYWxsZWQgYnkgc3BpY2UgY2xp
ZW50IG9yIGluIHByZXZpb3VzIFNwaWNlU2Vzc2lvbiAqLwo+ICsgICAgICAgIHJldHVybjsKPiAr
ICAgIH0KPiArCj4gKyAgICAvKiBUT0RPOiBQcm92aWRlIGFyZ2MgYW5kIGFyZ3YgdG8gR1N0cmVh
bWVyIGZvciBjb21tYW5kIGxpbmUgZmlsdGVyaW5nCj4gb24KPiArICAgICAqIHNwaWNlLWd0ayBs
ZXZlbCwgb3RoZXJ3aXNlIG9ubHkgYXBwbGljYXRpb25zIHRoYXQgcnVuIGdzdF9pbml0KCkKPiBm
aXJzdAo+ICsgICAgICogd291bGQgZmlsdGVyIGNvbW1hbmQgbGluZSBvcHRpb25zICovCj4gKyAg
ICBHRXJyb3IgKmVyciA9IE5VTEw7Cj4gKyAgICBpZiAoIWdzdF9pbml0X2NoZWNrKE5VTEwsIE5V
TEwsICZlcnIpKSB7Cj4gKyAgICAgICAgc3BpY2Vfd2FybmluZygiRGlzYWJsaW5nIEdTdHJlYW1l
ciB2aWRlbyBzdXBwb3J0OiAlcyIsCj4gZXJyLT5tZXNzYWdlKTsKPiArICAgICAgICBnX2NsZWFy
X2Vycm9yKCZlcnIpOwo+ICsgICAgfQo+ICt9CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
