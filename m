Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B477B5F46A6
	for <lists+spice-devel@lfdr.de>; Tue,  4 Oct 2022 17:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD8010E70F;
	Tue,  4 Oct 2022 15:27:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from outbound04.rosatom.ru (outbound04.rosatom.ru [93.187.73.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBC610E5AE
 for <spice-devel@lists.freedesktop.org>; Tue,  4 Oct 2022 12:05:30 +0000 (UTC)
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AB56C574832DF749A782191BEDC6A04E@rosatom.local>
Content-Transfer-Encoding: base64
DKIM-Signature: v=1; a=rsa-sha256; d=greenatom.ru; s=key2021ga;
 c=relaxed/relaxed; t=1664885124; h=from:subject:to:date:message-id;
 bh=c7SZjRQS9j+MdL3iqNc4ismKNdx00XkuIjiruPtNvGA=;
 b=NKzdYmWBaKrhBUhHbrdNwdZ2FGxZom1v0uKcEytEABPBLeyGUvfFgoNb89/LSPBlbCHZh1rQ8p4
 gTtKNrvCQ5Nenk97LWgxmc/bhdz5abMkd5xBkmwv0fRrCjNXd8p6AMafIFkD+JMTg7OmWsUoTD/yk
 A0xGHPXTvKFDY7rijco=
Received: from CORE-S-EXD02N11.gk.rosatom.local (10.124.26.90) by
 CORE-S-EXE03N02.ROSATOM.RU (10.120.28.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 4 Oct 2022 15:05:24 +0300
Received: from CORE-S-EXD02N03.gk.rosatom.local (10.124.26.82) by
 CORE-S-EXD02N11.gk.rosatom.local (10.124.26.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 4 Oct 2022 15:05:25 +0300
Received: from CORE-S-EXD02N03.gk.rosatom.local ([fe80::d4fa:496b:2a2a:4d99])
 by CORE-S-EXD02N03.gk.rosatom.local ([fe80::d4fa:496b:2a2a:4d99%8])
 with mapi id 15.01.2375.024; Tue, 4 Oct 2022 15:05:25 +0300
From: "Yury A. Produnov" <YAProdunov@Greenatom.ru>
To: "freddy77@gmail.com" <freddy77@gmail.com>, "victortoso@redhat.com"
 <victortoso@redhat.com>
Thread-Topic: [Spice-devel] spice webdav proxy
Thread-Index: AdjUv8/ZCokAUS6cSJK1aLOsGp9nvgC9rKYAAADuawAABY0ggA==
Date: Tue, 4 Oct 2022 12:05:25 +0000
Message-ID: <9b595468facbe76545720380340fb6b8f2216c05.camel@greenatom.ru>
References: <9d1283403bde42b39b6db664a9dee1fd@Greenatom.ru>
 <20221004085948.y3m2kvq3m27if7q7@tapioca>
 <CAHt6W4cp_zC54sRsw+NxKVMRQep+j3k5gU6iM0ey-15f0PUY2g@mail.gmail.com>
In-Reply-To: <CAHt6W4cp_zC54sRsw+NxKVMRQep+j3k5gU6iM0ey-15f0PUY2g@mail.gmail.com>
Accept-Language: ru-RU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4 (3.44.4-1.module_f36+15386+a24ad1a3) 
x-originating-ip: [10.124.26.101]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 04 Oct 2022 15:27:28 +0000
Subject: Re: [Spice-devel] spice webdav proxy
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Qm90aCBvcHRpb25zIHdpbGwgd29yayBpbmRpdmlkdWFsbHkKVGhlIHByb2JsZW0gaXMgdGhhdCB0
aGUgWiBkcml2ZSBtYXBwZWQgYnkgR3JvdXAgUG9saWN5IGFmdGVyIHRoZQpzZXJ2aWNlKHNwaWNl
IHByb3h5IHdlYmRhdikgaXMgc3RhcnRlZCwgc28gdGhlIHRhcmdldCBaIGRyaXZlIGlzIG5vdApj
b25uZWN0ZWQgYW5kIFogdGFrZW4gdG8gIlNwaWNlIGRyaXZlIi4KLS0gCkJlc3QgcmVnYXJkcywK
WXVyaXkgUHJvZHVub3YKCgrQkiDQktGCLCAwNC8xMC8yMDIyINCyIDEwOjI2ICswMTAwLCBGcmVk
aWFubyBaaWdsaW8g0L/QuNGI0LXRgjoKPiDQktCd0JXQqNCd0K/QryDQn9Ce0KfQotCQOiDQldGB
0LvQuCDQvtGC0L/RgNCw0LLQuNGC0LXQu9GMINC90LXQuNC30LLQtdGB0YLQtdC9LCDQvdC1INC+
0YLQutGA0YvQstCw0LnRgtC1INCy0LvQvtC20LXQvdC40Y8g0LgKPiDQvdC1INC/0LXRgNC10YXQ
vtC00LjRgtC1INC/0L4g0YHRgdGL0LvQutCw0LwuINCd0LjQutC+0LPQtNCwINC90LUg0L/QtdGA
0LXRgdGL0LvQsNC50YLQtSDQutC+0L3RhNC40LTQtdC90YbQuNCw0LvRjNC90YPRjgo+INC40L3R
hNC+0YDQvNCw0YbQuNGOINC4INC90LUg0L/QtdGA0LXQtNCw0LLQsNC50YLQtSDRgdCy0L7RjiDQ
utC+0YDQv9C+0YDQsNGC0LjQstC90YPRjiDRg9GH0LXRgtC90YPRjiDQt9Cw0L/QuNGB0Ywg0LgK
PiDQv9Cw0YDQvtC70YwuINCf0L7QttCw0LvRg9C50YHRgtCwLCDRgdC+0L7QsdGJ0LDQudGC0LUg
0L4g0L/QvtC00L7Qt9GA0LjRgtC10LvRjNC90YvRhSDQv9C40YHRjNC80LDRhSDQvdCwINCw0LTR
gNC10YEKPiBzb2NAZ3JlZW5hdG9tLnJ1PG1haWx0bzpzb2NAZ3JlZW5hdG9tLnJ1Pgo+IAo+IEZy
ZWRpYW5vCj4gCj4gSWwgZ2lvcm5vIG1hciA0IG90dCAyMDIyIGFsbGUgb3JlIDEwOjAwIFZpY3Rv
ciBUb3NvCj4gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4gaGEgc2NyaXR0bzoKPiA+IAo+ID4gSGks
Cj4gPiAKPiA+IE9uIEZyaSwgU2VwIDMwLCAyMDIyIGF0IDExOjM4OjEyQU0gKzAwMDAsIFl1cnkg
QS4gUHJvZHVub3Ygd3JvdGU6Cj4gPiA+IEhlbGxvLgo+ID4gPiBJIGluc3RhbGxlZCBzcGljZS13
ZWJkYXZkLWxhdGVzdCBpbnNpZGUgdGhlIGd1ZXN0Lgo+ID4gPiBFdmVyeXRoaW5nIHdvcmtzIGFu
ZCB0aGUgZHJpdmUgY29ubmVjdHMgd2l0aCB0aGUgbGV0dGVyIFo6Lwo+ID4gPiBCdXQgSSBuZWVk
IHRvIGNoYW5nZSB0aGUgbGV0dGVyIHRvIFc6Lwo+ID4gPiBJZiBJIHVzZSB0aGUgbWFwLWRyaXZl
LmJhdCBzY3JpcHQgSSBnZXQgdHdvIGlkZW50aWNhbCBkcml2ZXMgd2l0aAo+ID4gPiBkaWZmZXJl
bnQgbGV0dGVycy4KPiA+ID4gUGxlYXNlIGhlbHAgbWUgdG8gY29uZmlndXJlIGl0Lgo+ID4gPiAK
PiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBZdXJpeSBQcm9kdW5vdgo+ID4gCj4gPiBJZiBJIHJl
Y2FsbCBjb3JyZWN0bHkgWzBdLCB0aGUgbGF0ZXN0IHNwaWNlLXdlYmRhdmQgc2hvdWxkIG1hcCB0
bwo+ID4gdGhlCj4gPiBuZXh0IGxldHRlciBhdmFpbGFibGUgKHNpbmNlIHYyLjEpLgo+ID4gCj4g
PiBMb29raW5nIGJyaWVmbHkgYXQgYFJFRyBBRERgIFsxXSBvZiBtYXAtZHJpdmUuYmF0LCBub3Qg
c3VyZSB3aGF0Cj4gPiBpcyB0aGUgY29ycmVjdCBhcmd1bWVudCB0byBjaG9zZSBhIHRhcmdldCBk
cml2ZXIgbmFtZSwgaWYKPiA+IHBvc3NpYmxlLi4uIEkgdGhpbmsgeW91IHdvdWxkIG5lZWQgYW5v
dGhlciBjb21tYW5kIHRvIG1hcCAiU3BpY2UKPiA+IGNsaWVudCIgdG8gYSAiVzovIi4KPiA+IAo+
ID4gWzBdCj4gPiBodHRwczovL2dpdGxhYi5nbm9tZS5vcmcvR05PTUUvcGhvZGF2Ly0vY29tbWl0
LzEzMTUxNzM1Y2I5N2JjNGU5NWRlYjcyNTk3YzEwMjRkMTM5NTA0ZTMKPiA+IFsxXQo+ID4gaHR0
cHM6Ly9sZWFybi5taWNyb3NvZnQuY29tL2VuLXVzL3dpbmRvd3Mtc2VydmVyL2FkbWluaXN0cmF0
aW9uL3dpbmRvd3MtY29tbWFuZHMvcmVnLWFkZAo+ID4gCj4gPiBDaGVlcnMsCj4gPiBWaWN0b3IK
PiAKPiBIaSwKPiDCoMKgIEkgc3VwcG9zZSB0aGF0IGlmIHRoZSB1c2VyIGlzIHVzaW5nIHRoZSBz
Y3JpcHQgdG8gbWFwIHRoZSBkcml2ZXIKPiB5b3UgY2FuIHVzZSBhCj4gCj4gbmV0IHVzZSBXOiBo
dHRwOi8vbG9jYWxob3N0Ojk4NDMvCj4gCj4gdG8gbWFwIHRvIHRoZSBzcGVjaWZpYyAiVyIgZHJp
dmUuCj4gCj4gRnJlZGlhbm8K
