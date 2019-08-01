Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291427DAD7
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 14:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93296E57A;
	Thu,  1 Aug 2019 12:03:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05BF6E57A
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 12:03:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7D2D23086211;
 Thu,  1 Aug 2019 12:03:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 733FD60605;
 Thu,  1 Aug 2019 12:03:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 69FBE1800202;
 Thu,  1 Aug 2019 12:03:44 +0000 (UTC)
Date: Thu, 1 Aug 2019 08:03:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1342565575.4137102.1564661024115.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hlYpy-0004W0-2Q@amboise>
References: <E1hlYpy-0004W0-2Q@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.28]
Thread-Topic: protocol: Add some comments to vd_agentd.h
Thread-Index: ovAYn/OilPpA/Cy5J5kXeDDipxxoLg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 01 Aug 2019 12:03:44 +0000 (UTC)
Subject: Re: [Spice-devel] [protocol] protocol: Add some comments to
 vd_agentd.h
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgo+IC0tLQo+IAo+IEp1c3QgYSBtaW5vciBwYXRjaCBwYXJ0bHkgaW5zcGlyZWQgYnkgYSBw
YXRjaCBmcm9tIEZyZWRpYW5vIFppZ2xpby4KPiA1OTc1YTk4YTk0ZTAgYXQgZ2l0Oi8vcGVvcGxl
LmZyZWVkZXNrdG9wLm9yZy9+ZnppZ2xpby9zcGljZS1wcm90b2NvbAo+IAoKVGhhbmtzIHRvIHRh
a2UgaXQKCj4gVGhlICJjbGllbnR8c2VydmVyIiBjb21tZW50cyBiZWFyIHZlcmlmaWNhdGlvbjog
dGhleSdyZSBiYXNlZCBvbiBhCj4gY29tbWVudCBpbiBkb19jbGllbnRfbW9uaXRvcnMoKSBpbiB2
ZGFnZW50ZC5jIHRoYXQgaW1wbGllcwo+IFZEX0FHRU5UX01PTklUT1JTX0NPTkZJRyBjYW4gYmUg
c2VudCBieSBlaXRoZXIgdGhlIGNsaWVudCBvciBzZXJ2ZXIKPiB3aGljaCBJJ20gbm90IHN1cmUg
aXMgdHJ1ZS4KPiAKCkkgdG9vayBhIGJpdCBvZiB0aW1lIGFuZCBncmVwKHMpIHRvIGNoZWNrIHNv
bWUgaW5mb3JtYXRpb24uCgo+IAo+ICBzcGljZS92ZF9hZ2VudC5oIHwgMTIgKysrKysrKysrKyst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL3NwaWNlL3ZkX2FnZW50LmggYi9zcGljZS92ZF9hZ2VudC5oCj4gaW5kZXgg
NDJlYzc3YS4uMDY2MmU0NCAxMDA2NDQKPiAtLS0gYS9zcGljZS92ZF9hZ2VudC5oCj4gKysrIGIv
c3BpY2UvdmRfYWdlbnQuaAo+IEBAIC02MiwxNSArNjIsMjIgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJ
Q0VfQVRUUl9QQUNLRUQgVkRBZ2VudE1lc3NhZ2Ugewo+ICAjZGVmaW5lIFZEX0FHRU5UX0NMSVBC
T0FSRF9NQVhfU0laRV9FTlYgIlNQSUNFX0NMSVBCT0FSRF9NQVhfU0laRSIKPiAgI2VuZGlmCj4g
IAo+ICsKPiArLyogdmRhZ2VudGQgc29ja2V0IG1lc3NhZ2VzIGFuZCB0eXBlcyAqLwoKSSBkb24n
dCBhZ3JlZSB3aXRoIHRoaXMgY29tbWVudC4gVGhlc2UgYXJlIHRoZSBtZXNzYWdlcyBmb3IgdGhl
IGFnZW50CmZyb20gdGhlIHNlcnZlciB3aGljaCBjb3VsZCBiZSBlbWJlZGRlZCBpbiBzcGljZSBw
cm90b2NvbCAoY2xpZW50IDwtPiBzZXJ2ZXIpCnRocm91Z2ggImFnZW50X2RhdGEiIG1lc3NhZ2Ug
aW4gdGhlICJNYWluQ2hhbm5lbCIuCkZvciBpbnN0YW5jZSBvbiBXaW5kb3dzIHRoZXJlJ3MgbmVp
dGhlciB2ZGFnZW50ZCBub3Igc29ja2V0LgoKPiArCgpXaHkgdGhhdCBlbXB0eSBsaW5lPwoKTWF5
YmUgYmV0dGVyIHNvbWV0aGluZyBtb3JlIHZpc2libGUgbGlrZQoKLyoKICogV0hBVEVWRVIKICov
CgpJIHdvdWxkIHN1Z2dlc3QKCi8qCiAqIE1lc3NhZ2VzIGFuZCB0eXBlcyBmb3IgZ3Vlc3QgYWdl
bnQuCiAqIFRoZXNlIG1lc3NhZ2VzIGFyZSBzZW50IHRocm91Z2ggdGhlIHZpcnRpbyBwb3J0ICJj
b20ucmVkaGF0LnNwaWNlLjAiIAogKiAoYWdlbnQgPC0+IHNlcnZlcikgb3IgZW1iZWRkZWQgaW4g
ImFnZW50X2RhdGEiIFNQSUNFIHByb3RvY29sIG1lc3NhZ2UgaW4KICogdGhlICJNYWluQ2hhbm5l
bCIgKHNlcnZlciA8LT4gY2xpZW50KQogKi8KCj4gIGVudW0gewo+ICsgICAgLyogc2VydmVyIC0+
IGFnZW50ICovCj4gICAgICBWRF9BR0VOVF9NT1VTRV9TVEFURSA9IDEsCgpUaGlzIGlzIHJpZ2h0
Cgo+ICsgICAgLyogY2xpZW50fHNlcnZlciAtPiBhZ2VudCAoYWNrbm93bGVkZ2VkIHVzaW5nIFZE
X0FHRU5UX1JFUExZKSAqLwo+ICAgICAgVkRfQUdFTlRfTU9OSVRPUlNfQ09ORklHLAoKTm90IGV4
YWN0bHksIHRoaXMgaXMgb3JpZ2luYXRlZCBmcm9tIHRoZSBjbGllbnQgYW5kIGhhbmRsZWQgYnkg
ZWl0aGVyCmNsaWVudCBvciBzZXJ2ZXIuIFdoeSBzaW5nbGUgbGluZT8gSSB3b3VsZCBzYXkKCiAg
ICAvKiBjbGllbnQgLT4gYWdlbnR8c2VydmVyLgogICAgICogQWNrbm93bGVkZ2VkIHVzaW5nIFZE
X0FHRU5UX1JFUExZIC8qCgo+ICsgICAgLyogYWdlbnQgLT4gY2xpZW50fHNlcnZlciAqLwo+ICAg
ICAgVkRfQUdFTlRfUkVQTFksCgpObywgc2VydmVyIGRvZXMgbm90aGluZyB3aXRoIGl0LCBqdXN0
CgogICAgLyogYWdlbnQgLT4gY2xpZW50ICovCgo+ICAgICAgLyogU2V0IGNsaXBib2FyZCBkYXRh
IChib3RoIGRpcmVjdGlvbnMpLgo+ICAgICAgICogTWVzc2FnZSBjb21lcyB3aXRoIHR5cGUgYW5k
IGRhdGEuCj4gICAgICAgKiBTZWUgVkRBZ2VudENsaXBib2FyZCBzdHJ1Y3R1cmUuCj4gICAgICAg
Ki8KCkkgaGF2ZSB0byBzYXkgSSBsaWtlIHRoaXMgc3R5bGUgbW9yZSwgZm9yIGluc3RhbmNlIHRo
ZXJlJ3MgYQpjb21tZW50IGZvciB0aGUgcmVsYXRlZCBtZXNzYWdlIChldmVuIGlmIG5vdCBoYXJk
IHRvIGd1ZXNzKS4KCj4gICAgICBWRF9BR0VOVF9DTElQQk9BUkQsCj4gKyAgICAvKiBjbGllbnQg
LT4gYWdlbnQgKi8KPiAgICAgIFZEX0FHRU5UX0RJU1BMQVlfQ09ORklHLAoKQ29ycmVjdC4gQWdl
bnQgKGF0IGxpc3Qgb24gV2luZG93cykgc2VuZCBhIHJlcGx5IHdpdGggVkRfQUdFTlRfUkVQTFku
Cgo+ICAgICAgVkRfQUdFTlRfQU5OT1VOQ0VfQ0FQQUJJTElUSUVTLAo+ICAgICAgLyogQXNrcyB0
byBsaXN0ZW4gZm9yIGNsaXBib2FyZCBjaGFuZ2VzIChib3RoIGRpcmVjdGlvbnMpLgo+IEBAIC0y
NTQsNyArMjYxLDcgQEAgdHlwZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9QQUNLRUQgVkRBZ2VudERl
dmljZURpc3BsYXlJbmZvCj4gewo+ICAgICAgdWludDMyX3QgbW9uaXRvcl9pZDsKPiAgICAgIHVp
bnQzMl90IGRldmljZV9kaXNwbGF5X2lkOwo+ICAgICAgdWludDMyX3QgZGV2aWNlX2FkZHJlc3Nf
bGVuOwo+IC0gICAgdWludDhfdCBkZXZpY2VfYWRkcmVzc1swXTsgIC8vIGEgemVyby10ZXJtaW5h
dGVkIHN0cmluZwo+ICsgICAgdWludDhfdCBkZXZpY2VfYWRkcmVzc1swXTsgIC8qIGEgemVyby10
ZXJtaW5hdGVkIHN0cmluZyAqLwoKTm90IHJlYWxseSBzdHJvbmcgYWJvdXQgaXQuCgo+ICB9IFZE
QWdlbnREZXZpY2VEaXNwbGF5SW5mbzsKPiAgCj4gIAo+IEBAIC0yNzAsNiArMjc3LDkgQEAgdHlw
ZWRlZiBzdHJ1Y3QgU1BJQ0VfQVRUUl9QQUNLRUQKPiBWREFnZW50R3JhcGhpY3NEZXZpY2VJbmZv
IHsKPiAgICAgIFZEQWdlbnREZXZpY2VEaXNwbGF5SW5mbyBkaXNwbGF5X2luZm9bMF07Cj4gIH0g
VkRBZ2VudEdyYXBoaWNzRGV2aWNlSW5mbzsKPiAgCj4gKwo+ICsvKiBDYXBhYmlsaXRpZXMgZGVm
aW5pdGlvbnMgKi8KPiArCj4gIGVudW0gewo+ICAgICAgVkRfQUdFTlRfQ0FQX01PVVNFX1NUQVRF
ID0gMCwKPiAgICAgIFZEX0FHRU5UX0NBUF9NT05JVE9SU19DT05GSUcsCgpDYW4gSSBzZW5kIGFu
IHVwZGF0ZSB0byB0aGlzIHBhdGNoID8KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
