Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A5C31116
	for <lists+spice-devel@lfdr.de>; Fri, 31 May 2019 17:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F3F894E0;
	Fri, 31 May 2019 15:17:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F1A894E0
 for <spice-devel@lists.freedesktop.org>; Fri, 31 May 2019 15:17:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A2E3930BBE94
 for <spice-devel@lists.freedesktop.org>; Fri, 31 May 2019 15:17:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A3F77FD30
 for <spice-devel@lists.freedesktop.org>; Fri, 31 May 2019 15:17:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8E7CD18363C0;
 Fri, 31 May 2019 15:17:10 +0000 (UTC)
Date: Fri, 31 May 2019 11:17:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <617336953.20862219.1559315828685.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190531145404.20651-1-victortoso@redhat.com>
References: <20190531145404.20651-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.19]
Thread-Topic: usbutil: replace local function with libusb_strerror()
Thread-Index: PS/IQCPe/fwOJSfbOxLVgi859+hl3Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 31 May 2019 15:17:10 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk] usbutil: replace local function with
 libusb_strerror()
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gQXMgbGlidXNi
X3N0cmVycm9yKCkgZG9lcyBleGFjdGx5IHdoYXQgc3BpY2VfdXNidXRpbF9saWJ1c2Jfc3RyZXJy
b3IoKQo+IGlzIGRvaW5nLiBOb3RpY2UgdGhhdCB3ZSBjYW4gY2hhbmdlIHRoZSBkZXNjcmlwdGlv
biBsYW5ndWFnZSB3aXRoCj4gbGlidXNiX3NldGxvY2FsZSgpIGJ1dCBrZWVwaW5nIGl0IGluIEVu
Z2xpc2ggYnkgZGVmYXVsdCAoYXMgaXQgaXMpIGZvcgo+IG5vdy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgoKQWNrZWQtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKPiAtLS0KPiAgc3JjL2NoYW5uZWwtdXNicmVk
aXIuYyAgIHwgIDIgKy0KPiAgc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIHwgIDggKysrKy0tLS0K
PiAgc3JjL3VzYnV0aWwuYyAgICAgICAgICAgIHwgMzYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gIHNyYy91c2J1dGlsLmggICAgICAgICAgICB8ICAxIC0KPiAgc3JjL3dp
bi11c2ItZGV2LmMgICAgICAgIHwgIDQgKystLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgNDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVz
YnJlZGlyLmMgYi9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gaW5kZXggMTkxMGZmNi4uYTU0ZjY3
YiAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gKysrIGIvc3JjL2NoYW5u
ZWwtdXNicmVkaXIuYwo+IEBAIC0yOTIsNyArMjkyLDcgQEAgc3RhdGljIGdib29sZWFuIHNwaWNl
X3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9kZXZpY2UoCj4gICAgICBpZiAocmMgIT0gMCkgewo+ICAg
ICAgICAgIGdfc2V0X2Vycm9yKGVyciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLCBTUElDRV9DTElFTlRf
RVJST1JfRkFJTEVELAo+ICAgICAgICAgICAgICAgICAgICAgICJDb3VsZCBub3Qgb3BlbiB1c2Ig
ZGV2aWNlOiAlcyBbJWldIiwKPiAtICAgICAgICAgICAgICAgICAgICBzcGljZV91c2J1dGlsX2xp
YnVzYl9zdHJlcnJvcihyYyksIHJjKTsKPiArICAgICAgICAgICAgICAgICAgICBsaWJ1c2Jfc3Ry
ZXJyb3IocmMpLCByYyk7Cj4gICAgICAgICAgcmV0dXJuIEZBTFNFOwo+ICAgICAgfQo+ICAKPiBk
aWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jCj4gaW5kZXggYmQ0MjE0Mi4uOTM5MWQ2YSAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWRl
dmljZS1tYW5hZ2VyLmMKPiArKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKPiBAQCAtMjgx
LDcgKzI4MSw3IEBAIHN0YXRpYyBnYm9vbGVhbgo+IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9p
bml0YWJsZV9pbml0KEdJbml0YWJsZSAgKmluaXRhYmxlLAo+ICAgICAgLyogSW5pdGlhbGl6ZSBs
aWJ1c2IgKi8KPiAgICAgIHJjID0gbGlidXNiX2luaXQoJnByaXYtPmNvbnRleHQpOwo+ICAgICAg
aWYgKHJjIDwgMCkgewo+IC0gICAgICAgIGNvbnN0IGNoYXIgKmRlc2MgPSBzcGljZV91c2J1dGls
X2xpYnVzYl9zdHJlcnJvcihyYyk7Cj4gKyAgICAgICAgY29uc3QgY2hhciAqZGVzYyA9IGxpYnVz
Yl9zdHJlcnJvcihyYyk7Cj4gICAgICAgICAgZ193YXJuaW5nKCJFcnJvciBpbml0aWFsaXppbmcg
VVNCIHN1cHBvcnQ6ICVzIFslaV0iLCBkZXNjLCByYyk7Cj4gICAgICAgICAgZ19zZXRfZXJyb3Io
ZXJyLCBTUElDRV9DTElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCj4gICAg
ICAgICAgICAgICAgICAgICAgIkVycm9yIGluaXRpYWxpemluZyBVU0Igc3VwcG9ydDogJXMgWyVp
XSIsIGRlc2MsIHJjKTsKPiBAQCAtMzA4LDcgKzMwOCw3IEBAIHN0YXRpYyBnYm9vbGVhbgo+IHNw
aWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9pbml0YWJsZV9pbml0KEdJbml0YWJsZSAgKmluaXRhYmxl
LAo+ICAgICAgICAgIExJQlVTQl9IT1RQTFVHX01BVENIX0FOWSwgTElCVVNCX0hPVFBMVUdfTUFU
Q0hfQU5ZLAo+ICAgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9ob3RwbHVnX2NiLCBz
ZWxmLCAmcHJpdi0+aHBfaGFuZGxlKTsKPiAgICAgIGlmIChyYyA8IDApIHsKPiAtICAgICAgICBj
b25zdCBjaGFyICpkZXNjID0gc3BpY2VfdXNidXRpbF9saWJ1c2Jfc3RyZXJyb3IocmMpOwo+ICsg
ICAgICAgIGNvbnN0IGNoYXIgKmRlc2MgPSBsaWJ1c2Jfc3RyZXJyb3IocmMpOwo+ICAgICAgICAg
IGdfd2FybmluZygiRXJyb3IgaW5pdGlhbGl6aW5nIFVTQiBob3RwbHVnIHN1cHBvcnQ6ICVzIFsl
aV0iLCBkZXNjLAo+ICAgICAgICAgIHJjKTsKPiAgICAgICAgICBnX3NldF9lcnJvcihlcnIsIFNQ
SUNFX0NMSUVOVF9FUlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKPiAgICAgICAgICAg
ICAgICAgICAgIkVycm9yIGluaXRpYWxpemluZyBVU0IgaG90cGx1ZyBzdXBwb3J0OiAlcyBbJWld
IiwgZGVzYywKPiAgICAgICAgICAgICAgICAgICAgcmMpOwo+IEBAIC03MzAsNyArNzMwLDcgQEAg
c3RhdGljIGdib29sZWFuCj4gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2dldF9kZXZpY2VfZGVz
Y3JpcHRvcigKPiAgCj4gICAgICAgICAgYnVzID0gbGlidXNiX2dldF9idXNfbnVtYmVyKGxpYmRl
dik7Cj4gICAgICAgICAgYWRkciA9IGxpYnVzYl9nZXRfZGV2aWNlX2FkZHJlc3MobGliZGV2KTsK
PiAtICAgICAgICBlcnJzdHIgPSBzcGljZV91c2J1dGlsX2xpYnVzYl9zdHJlcnJvcihlcnJjb2Rl
KTsKPiArICAgICAgICBlcnJzdHIgPSBsaWJ1c2Jfc3RyZXJyb3IoZXJyY29kZSk7Cj4gICAgICAg
ICAgZ193YXJuaW5nKCJjYW5ub3QgZ2V0IGRldmljZSBkZXNjcmlwdG9yIGZvciAoJXApICVkLiVk
IC0tICVzKCVkKSIsCj4gICAgICAgICAgICAgICAgICAgIGxpYmRldiwgYnVzLCBhZGRyLCBlcnJz
dHIsIGVycmNvZGUpOwo+ICAgICAgICAgIHJldHVybiBGQUxTRTsKPiBAQCAtMTA2OCw3ICsxMDY4
LDcgQEAgc3RhdGljIGdwb2ludGVyCj4gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3VzYl9ldl90
aHJlYWQoZ3BvaW50ZXIgdXNlcl9kYXRhKQo+ICAgICAgd2hpbGUgKGdfYXRvbWljX2ludF9nZXQo
JnByaXYtPmV2ZW50X3RocmVhZF9ydW4pKSB7Cj4gICAgICAgICAgcmMgPSBsaWJ1c2JfaGFuZGxl
X2V2ZW50cyhwcml2LT5jb250ZXh0KTsKPiAgICAgICAgICBpZiAocmMgJiYgcmMgIT0gTElCVVNC
X0VSUk9SX0lOVEVSUlVQVEVEKSB7Cj4gLSAgICAgICAgICAgIGNvbnN0IGNoYXIgKmRlc2MgPSBz
cGljZV91c2J1dGlsX2xpYnVzYl9zdHJlcnJvcihyYyk7Cj4gKyAgICAgICAgICAgIGNvbnN0IGNo
YXIgKmRlc2MgPSBsaWJ1c2Jfc3RyZXJyb3IocmMpOwo+ICAgICAgICAgICAgICBnX3dhcm5pbmco
IkVycm9yIGhhbmRsaW5nIFVTQiBldmVudHM6ICVzIFslaV0iLCBkZXNjLCByYyk7Cj4gICAgICAg
ICAgICAgIGJyZWFrOwo+ICAgICAgICAgIH0KPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYnV0aWwuYyBi
L3NyYy91c2J1dGlsLmMKPiBpbmRleCBlOTZhYjExLi41MDUyZWYzIDEwMDY0NAo+IC0tLSBhL3Ny
Yy91c2J1dGlsLmMKPiArKysgYi9zcmMvdXNidXRpbC5jCj4gQEAgLTU4LDQyICs1OCw2IEBAIHN0
YXRpYyBHTXV0ZXggdXNiaWRzX2xvYWRfbXV0ZXg7Cj4gIHN0YXRpYyBpbnQgdXNiaWRzX3ZlbmRv
cl9jb3VudCA9IDA7IC8qIDwgMDogZmFpbGVkLCAwOiBlbXB0eSwgPiAwOiBsb2FkZWQgKi8KPiAg
c3RhdGljIHVzYl92ZW5kb3JfaW5mbyAqdXNiaWRzX3ZlbmRvcl9pbmZvID0gTlVMTDsKPiAgCj4g
LUdfR05VQ19JTlRFUk5BTAo+IC1jb25zdCBjaGFyICpzcGljZV91c2J1dGlsX2xpYnVzYl9zdHJl
cnJvcihlbnVtIGxpYnVzYl9lcnJvciBlcnJvcl9jb2RlKQo+IC17Cj4gLSAgICBzd2l0Y2ggKGVy
cm9yX2NvZGUpIHsKPiAtICAgIGNhc2UgTElCVVNCX1NVQ0NFU1M6Cj4gLSAgICAgICAgcmV0dXJu
ICJTdWNjZXNzIjsKPiAtICAgIGNhc2UgTElCVVNCX0VSUk9SX0lPOgo+IC0gICAgICAgIHJldHVy
biAiSW5wdXQvb3V0cHV0IGVycm9yIjsKPiAtICAgIGNhc2UgTElCVVNCX0VSUk9SX0lOVkFMSURf
UEFSQU06Cj4gLSAgICAgICAgcmV0dXJuICJJbnZhbGlkIHBhcmFtZXRlciI7Cj4gLSAgICBjYXNl
IExJQlVTQl9FUlJPUl9BQ0NFU1M6Cj4gLSAgICAgICAgcmV0dXJuICJBY2Nlc3MgZGVuaWVkIChp
bnN1ZmZpY2llbnQgcGVybWlzc2lvbnMpIjsKPiAtICAgIGNhc2UgTElCVVNCX0VSUk9SX05PX0RF
VklDRToKPiAtICAgICAgICByZXR1cm4gIk5vIHN1Y2ggZGV2aWNlIChpdCBtYXkgaGF2ZSBiZWVu
IGRpc2Nvbm5lY3RlZCkiOwo+IC0gICAgY2FzZSBMSUJVU0JfRVJST1JfTk9UX0ZPVU5EOgo+IC0g
ICAgICAgIHJldHVybiAiRW50aXR5IG5vdCBmb3VuZCI7Cj4gLSAgICBjYXNlIExJQlVTQl9FUlJP
Ul9CVVNZOgo+IC0gICAgICAgIHJldHVybiAiUmVzb3VyY2UgYnVzeSI7Cj4gLSAgICBjYXNlIExJ
QlVTQl9FUlJPUl9USU1FT1VUOgo+IC0gICAgICAgIHJldHVybiAiT3BlcmF0aW9uIHRpbWVkIG91
dCI7Cj4gLSAgICBjYXNlIExJQlVTQl9FUlJPUl9PVkVSRkxPVzoKPiAtICAgICAgICByZXR1cm4g
Ik92ZXJmbG93IjsKPiAtICAgIGNhc2UgTElCVVNCX0VSUk9SX1BJUEU6Cj4gLSAgICAgICAgcmV0
dXJuICJQaXBlIGVycm9yIjsKPiAtICAgIGNhc2UgTElCVVNCX0VSUk9SX0lOVEVSUlVQVEVEOgo+
IC0gICAgICAgIHJldHVybiAiU3lzdGVtIGNhbGwgaW50ZXJydXB0ZWQgKHBlcmhhcHMgZHVlIHRv
IHNpZ25hbCkiOwo+IC0gICAgY2FzZSBMSUJVU0JfRVJST1JfTk9fTUVNOgo+IC0gICAgICAgIHJl
dHVybiAiSW5zdWZmaWNpZW50IG1lbW9yeSI7Cj4gLSAgICBjYXNlIExJQlVTQl9FUlJPUl9OT1Rf
U1VQUE9SVEVEOgo+IC0gICAgICAgIHJldHVybiAiT3BlcmF0aW9uIG5vdCBzdXBwb3J0ZWQgb3Ig
dW5pbXBsZW1lbnRlZCBvbiB0aGlzIHBsYXRmb3JtIjsKPiAtICAgIGNhc2UgTElCVVNCX0VSUk9S
X09USEVSOgo+IC0gICAgICAgIHJldHVybiAiT3RoZXIgZXJyb3IiOwo+IC0gICAgfQo+IC0gICAg
cmV0dXJuICJVbmtub3duIGVycm9yIjsKPiAtfQo+IC0KPiAgI2lmZGVmIF9fbGludXhfXwo+ICAv
KiA8U2lnaD4gbGlidXNiIGRvZXMgbm90IGFsbG93IGdldHRpbmcgdGhlIG1hbnVmYWN0dXJlciBh
bmQgcHJvZHVjdCBzdHJpbmdzCj4gICAgIHdpdGhvdXQgb3BlbmluZyB0aGUgZGV2aWNlLCBzbyBn
cmFiIHRoZW0gZGlyZWN0bHkgZnJvbSBzeXNmcyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvdXNidXRp
bC5oIGIvc3JjL3VzYnV0aWwuaAo+IGluZGV4IGRlNWU5MmEuLjUwZTM5NDkgMTAwNjQ0Cj4gLS0t
IGEvc3JjL3VzYnV0aWwuaAo+ICsrKyBiL3NyYy91c2J1dGlsLmgKPiBAQCAtMjgsNyArMjgsNiBA
QAo+ICAKPiAgR19CRUdJTl9ERUNMUwo+ICAKPiAtY29uc3QgY2hhciAqc3BpY2VfdXNidXRpbF9s
aWJ1c2Jfc3RyZXJyb3IoZW51bSBsaWJ1c2JfZXJyb3IgZXJyb3JfY29kZSk7Cj4gIHZvaWQgc3Bp
Y2VfdXNiX3V0aWxfZ2V0X2RldmljZV9zdHJpbmdzKGludCBidXMsIGludCBhZGRyZXNzLAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgdmVuZG9yX2lkLCBpbnQg
cHJvZHVjdF9pZCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2No
YXIgKiptYW51ZmFjdHVyZXIsIGdjaGFyCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICoqcHJvZHVjdCk7Cj4gZGlmZiAtLWdpdCBhL3NyYy93aW4tdXNiLWRldi5jIGIv
c3JjL3dpbi11c2ItZGV2LmMKPiBpbmRleCBhNGRmYTc4Li5iMDI3NGRkIDEwMDY0NAo+IC0tLSBh
L3NyYy93aW4tdXNiLWRldi5jCj4gKysrIGIvc3JjL3dpbi11c2ItZGV2LmMKPiBAQCAtMTEzLDcg
KzExMyw3IEBAIGdfdWRldl9jbGllbnRfbGlzdF9kZXZpY2VzKEdVZGV2Q2xpZW50ICpzZWxmLCBH
TGlzdAo+ICoqZGV2cywKPiAgCj4gICAgICByYyA9IGxpYnVzYl9nZXRfZGV2aWNlX2xpc3QocHJp
di0+Y3R4LCAmbHVzYl9saXN0KTsKPiAgICAgIGlmIChyYyA8IDApIHsKPiAtICAgICAgICBjb25z
dCBjaGFyICplcnJzdHIgPSBzcGljZV91c2J1dGlsX2xpYnVzYl9zdHJlcnJvcihyYyk7Cj4gKyAg
ICAgICAgY29uc3QgY2hhciAqZXJyc3RyID0gbGlidXNiX3N0cmVycm9yKHJjKTsKPiAgICAgICAg
ICBnX3dhcm5pbmcoIiVzOiBsaWJ1c2JfZ2V0X2RldmljZV9saXN0IGZhaWxlZCAtICVzIiwgbmFt
ZSwgZXJyc3RyKTsKPiAgICAgICAgICBnX3NldF9lcnJvcihlcnIsIEdfVURFVl9DTElFTlRfRVJS
T1IsIEdfVURFVl9DTElFTlRfTElCVVNCX0ZBSUxFRCwKPiAgICAgICAgICAgICAgICAgICAgICAi
JXM6IEVycm9yIGdldHRpbmcgZGV2aWNlIGxpc3QgZnJvbSBsaWJ1c2I6ICVzCj4gICAgICAgICAg
ICAgICAgICAgICAgWyUiR19HU1NJWkVfRk9STUFUIl0iLAo+IEBAIC0xNzAsNyArMTcwLDcgQEAg
Z191ZGV2X2NsaWVudF9pbml0YWJsZV9pbml0KEdJbml0YWJsZSAqaW5pdGFibGUsCj4gR0NhbmNl
bGxhYmxlICpjYW5jZWxsYWJsZSwKPiAgCj4gICAgICByYyA9IGxpYnVzYl9pbml0KCZwcml2LT5j
dHgpOwo+ICAgICAgaWYgKHJjIDwgMCkgewo+IC0gICAgICAgIGNvbnN0IGNoYXIgKmVycnN0ciA9
IHNwaWNlX3VzYnV0aWxfbGlidXNiX3N0cmVycm9yKHJjKTsKPiArICAgICAgICBjb25zdCBjaGFy
ICplcnJzdHIgPSBsaWJ1c2Jfc3RyZXJyb3IocmMpOwo+ICAgICAgICAgIGdfd2FybmluZygiRXJy
b3IgaW5pdGlhbGl6aW5nIFVTQiBzdXBwb3J0OiAlcyBbJWldIiwgZXJyc3RyLCByYyk7Cj4gICAg
ICAgICAgZ19zZXRfZXJyb3IoZXJyLCBHX1VERVZfQ0xJRU5UX0VSUk9SLCBHX1VERVZfQ0xJRU5U
X0xJQlVTQl9GQUlMRUQsCj4gICAgICAgICAgICAgICAgICAgICAgIkVycm9yIGluaXRpYWxpemlu
ZyBVU0Igc3VwcG9ydDogJXMgWyVpXSIsIGVycnN0ciwgcmMpOwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
