Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C68D9E5A4
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D86A89A0E;
	Tue, 27 Aug 2019 10:27:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1C089A0E
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:27:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5CCFAC058CA4
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:27:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 52B1460BFB
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:27:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 49D962551B;
 Tue, 27 Aug 2019 10:27:27 +0000 (UTC)
Date: Tue, 27 Aug 2019 06:27:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1853629394.9359739.1566901647088.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827101358.18435-1-victortoso@redhat.com>
References: <20190827101358.18435-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.114, 10.4.195.25]
Thread-Topic: covscan: check and initialize argv's copy
Thread-Index: zvpHs/Nb2QEQmN8na/5MvO14MplJww==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 27 Aug 2019 10:27:27 +0000 (UTC)
Subject: Re: [Spice-devel] [linux/vd_agent v1 1/2] covscan: check and
 initialize argv's copy
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gT3RoZXJ3aXNl
IHdlIGdldCBhIENMQU5HX1dBUk5JTkcgZHVlIGFjY2Vzc2luZyBnYXJiYWdlLgo+IAo+IENvdnNj
YW4gcmVwb3J0Ogo+ICA+IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQu
Yzo0NzE6OTogd2FybmluZzogMXN0IGZ1bmN0aW9uCj4gID4gY2FsbCBhcmd1bWVudCBpcyBhbiB1
bmluaXRpYWxpemVkIHZhbHVlCj4gID4gIyAgICAgICAgZXhlY3ZwKG9yaWdfYXJndlswXSwgb3Jp
Z19hcmd2KTsKPiAgPiAjICAgICAgICBeICAgICAgfn5+fn5+fn5+fn5+Cj4gID4gc3BpY2UtdmRh
Z2VudC0wLjE5LjAvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jOjQyMToyNDogbm90ZTogU3RvcmluZwo+
ICA+IHVuaW5pdGlhbGl6ZWQgdmFsdWUKPiAgPiAjICAgIGNoYXIgKipvcmlnX2FyZ3YgPSBnX21l
bWR1cChhcmd2LCBzaXplb2YoY2hhciopICogKGFyZ2MrMSkpOwo+ICA+ICMgICAgICAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAgPiBz
cGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDM0Ojk6IG5vdGU6IEFz
c3VtaW5nICdlcnJvcicKPiAgPiBpcyBlcXVhbCB0byBOVUxMCj4gID4gIyAgICBpZiAoZXJyb3Ig
IT0gTlVMTCkgewo+ICA+ICMgICAgICAgIF5+fn5+fn5+fn5+fn4KPiAgPiBzcGljZS12ZGFnZW50
LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDM0OjU6IG5vdGU6IFRha2luZyBmYWxzZQo+
ICA+IGJyYW5jaAo+ICA+ICMgICAgaWYgKGVycm9yICE9IE5VTEwpIHsKPiAgPiAjICAgIF4KPiAg
PiBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDQyOjk6IG5vdGU6
IEFzc3VtaW5nICdwb3J0ZGV2Jwo+ICA+IGlzIG5vdCBlcXVhbCB0byBOVUxMCj4gID4gIyAgICBp
ZiAocG9ydGRldiA9PSBOVUxMKQo+ICA+ICMgICAgICAgIF5+fn5+fn5+fn5+fn5+fgo+ICA+IHNw
aWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0NDI6NTogbm90ZTogVGFr
aW5nIGZhbHNlCj4gID4gYnJhbmNoCj4gID4gIyAgICBpZiAocG9ydGRldiA9PSBOVUxMKQo+ICA+
ICMgICAgXgo+ICA+IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0
NDU6OTogbm90ZTogQXNzdW1pbmcKPiAgPiAndmRhZ2VudGRfc29ja2V0JyBpcyBub3QgZXF1YWwg
dG8gTlVMTAo+ICA+ICMgICAgaWYgKHZkYWdlbnRkX3NvY2tldCA9PSBOVUxMKQo+ICA+ICMgICAg
ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gID4gc3BpY2UtdmRhZ2VudC0wLjE5LjAvc3Jj
L3ZkYWdlbnQvdmRhZ2VudC5jOjQ0NTo1OiBub3RlOiBUYWtpbmcgZmFsc2UKPiAgPiBicmFuY2gK
PiAgPiAjICAgIGlmICh2ZGFnZW50ZF9zb2NrZXQgPT0gTlVMTCkKPiAgPiAjICAgIF4KPiAgPiBz
cGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDQ4OjMwOiBub3RlOiBB
c3N1bWluZwo+ICA+ICdkb19kYWVtb25pemUnIGlzIDAKPiAgPiAjICAgIG9wZW5sb2coInNwaWNl
LXZkYWdlbnQiLCBkb19kYWVtb25pemUgPyBMT0dfUElEIDogKExPR19QSUQgfAo+ICA+IExPR19Q
RVJST1IpLAo+ICA+ICMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgo+
ICA+IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0NDg6MzA6IG5v
dGU6ICc/JyBjb25kaXRpb24gaXMKPiAgPiBmYWxzZQo+ICA+IHNwaWNlLXZkYWdlbnQtMC4xOS4w
L3NyYy92ZGFnZW50L3ZkYWdlbnQuYzo0NTE6OTogbm90ZTogQXNzdW1pbmcgdGhlCj4gID4gY29u
ZGl0aW9uIGlzIGZhbHNlCj4gID4gIyAgICBpZiAoIWdfZmlsZV90ZXN0KHBvcnRkZXYsIEdfRklM
RV9URVNUX0VYSVNUUykpIHsKPiAgPiAjICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fgo+ICA+IHNwaWNlLXZkYWdlbnQtMC4xOS4wL3NyYy92ZGFnZW50L3Zk
YWdlbnQuYzo0NTE6NTogbm90ZTogVGFraW5nIGZhbHNlCj4gID4gYnJhbmNoCj4gID4gIyAgICBp
ZiAoIWdfZmlsZV90ZXN0KHBvcnRkZXYsIEdfRklMRV9URVNUX0VYSVNUUykpIHsKPiAgPiAjICAg
IF4KPiAgPiBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDU3Ojk6
IG5vdGU6IEFzc3VtaW5nCj4gID4gJ2RvX2RhZW1vbml6ZScgaXMgMAo+ICA+ICMgICAgaWYgKGRv
X2RhZW1vbml6ZSkKPiAgPiAjICAgICAgICBefn5+fn5+fn5+fn4KPiAgPiBzcGljZS12ZGFnZW50
LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDU3OjU6IG5vdGU6IFRha2luZyBmYWxzZQo+
ICA+IGJyYW5jaAo+ICA+ICMgICAgaWYgKGRvX2RhZW1vbml6ZSkKPiAgPiAjICAgIF4KPiAgPiBz
cGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDY4Ojk6IG5vdGU6IEFz
c3VtaW5nCj4gID4gJ3ZlcnNpb25fbWlzbWF0Y2gnIGlzIG5vdCBlcXVhbCB0byAwCj4gID4gIyAg
ICBpZiAodmVyc2lvbl9taXNtYXRjaCkgewo+ICA+ICMgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4K
PiAgPiBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50LmM6NDY4OjU6IG5v
dGU6IFRha2luZyB0cnVlIGJyYW5jaAo+ICA+ICMgICAgaWYgKHZlcnNpb25fbWlzbWF0Y2gpIHsK
PiAgPiAjICAgIF4KPiAgPiBzcGljZS12ZGFnZW50LTAuMTkuMC9zcmMvdmRhZ2VudC92ZGFnZW50
LmM6NDcxOjk6IG5vdGU6IDFzdCBmdW5jdGlvbiBjYWxsCj4gID4gYXJndW1lbnQgaXMgYW4gdW5p
bml0aWFsaXplZCB2YWx1ZQo+ICA+ICMgICAgICAgIGV4ZWN2cChvcmlnX2FyZ3ZbMF0sIG9yaWdf
YXJndik7Cj4gID4gIyAgICAgICAgXiAgICAgIH5+fn5+fn5+fn5+fgo+ICA+ICMgIDQ2OXwgICAg
ICAgICAgIHN5c2xvZyhMT0dfSU5GTywgIlZlcnNpb24gbWlzbWF0Y2gsIHJlc3RhcnRpbmciKTsK
PiAgPiAjICA0NzB8ICAgICAgICAgICBzbGVlcCgxKTsKPiAgPiAjICA0NzF8LT4gICAgICAgICBl
eGVjdnAob3JpZ19hcmd2WzBdLCBvcmlnX2FyZ3YpOwo+ICA+ICMgIDQ3MnwgICAgICAgfQo+ICA+
ICMgIDQ3M3wKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRo
YXQuY29tPgo+IC0tLQo+ICBzcmMvdmRhZ2VudC92ZGFnZW50LmMgfCA2ICsrKysrLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL3NyYy92ZGFnZW50L3ZkYWdlbnQuYyBiL3NyYy92ZGFnZW50L3ZkYWdlbnQuYwo+IGluZGV4
IDBlMmU3M2UuLjk4MmZjNzIgMTAwNjQ0Cj4gLS0tIGEvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCj4g
KysrIGIvc3JjL3ZkYWdlbnQvdmRhZ2VudC5jCj4gQEAgLTQxOCw3ICs0MTgsMTEgQEAgaW50IG1h
aW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiAgICAgIEdPcHRpb25Db250ZXh0ICpjb250ZXh0
Owo+ICAgICAgR0Vycm9yICplcnJvciA9IE5VTEw7Cj4gICAgICBWREFnZW50ICphZ2VudDsKPiAt
ICAgIGNoYXIgKipvcmlnX2FyZ3YgPSBnX21lbWR1cChhcmd2LCBzaXplb2YoY2hhciopICogKGFy
Z2MrMSkpOwo+ICsgICAgY2hhciAqKm9yaWdfYXJndjsKPiArCj4gKyAgICBnX3JldHVybl92YWxf
aWZfZmFpbChhcmdjID4gMCAmJiBhcmd2ICE9IE5VTEwsIC0xKTsKPiArICAgIG9yaWdfYXJndiA9
IGdfbWVtZHVwKGFyZ3YsIHNpemVvZihjaGFyKikgKiAoYXJnYysxKSk7Cj4gKyAgICBvcmlnX2Fy
Z3ZbYXJnY10gPSBOVUxMOwo+ICAKPiAgICAgIGNvbnRleHQgPSBnX29wdGlvbl9jb250ZXh0X25l
dyhOVUxMKTsKPiAgICAgIGdfb3B0aW9uX2NvbnRleHRfYWRkX21haW5fZW50cmllcyhjb250ZXh0
LCBlbnRyaWVzLCBOVUxMKTsKCkkgd291bGQgc2F5IGJldHRlciB0byBkaXNhYmxlIENsYW5nIHRl
c3QgaW5zdGVhZC4gVGhlIGNvZGUgaXMgcGVyZmVjdGx5CmZpbmUuIGFyZ2MgaXMgYXQgbGVhc3Qg
MSAodGhlIGV4ZWN1dGFibGUgbmFtZSEpIGFuZCBhcmd2IGlzIGFsd2F5cyB0ZXJtaW5hdGVkCndp
dGggTlVMTCAodGhhdCdzIHRoZSBzdGFuZGFyZCEpLgpTZWUgaHR0cHM6Ly9jbGFuZy1hbmFseXpl
ci5sbHZtLm9yZy9mYXEuaHRtbC4KCkkgZG9uJ3Qga25vdyB3aGVyZSB0aGlzIC0xIGNvbWUsIGJ1
dCBFWElUX0ZBSUxVUkUgKHdoaWNoIGlzIHVzdWFsbHkgMSkgaXMgdGhlIHN0YW5kYXJkCnJldHVy
biBmb3IgbWFpbiBmdW5jdGlvbi4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
