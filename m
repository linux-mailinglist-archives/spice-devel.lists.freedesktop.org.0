Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4812F888BB
	for <lists+spice-devel@lfdr.de>; Sat, 10 Aug 2019 08:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A6D6EF41;
	Sat, 10 Aug 2019 06:01:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C636EF41
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E6F781106
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 12BBC100195F
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:13 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 073321800202
 for <spice-devel@lists.freedesktop.org>; Sat, 10 Aug 2019 06:01:13 +0000 (UTC)
Date: Sat, 10 Aug 2019 02:01:12 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <971951330.5430060.1565416872963.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190729142328.13191-1-fziglio@redhat.com>
References: <20190729142328.13191-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.16, 10.4.195.6]
Thread-Topic: Use "#pragma once" instead of preprocessor guards
Thread-Index: y5B3YV3I1EdfTWNhUUFe4GxulZAJFA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Sat, 10 Aug 2019 06:01:13 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] Use "#pragma once" instead of
 preprocessor guards
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBHdWFyZHMgY3VycmVudGx5IGFyZSBxdWl0ZSBkaWZmZXJlbnQgaW4gZm9ybWF0
Lgo+IFVuaWZ5IHVwZGF0aW5nIHRvICIjcHJhZ21hIG9uY2UiIHN5bnRheC4gVGhpcyBzeW50YXgg
aXMgdXNlZAo+IGJ5IEdUSyB0b29scyB0b28uCj4gVG8gYXZvaWQgcG9zc2libGUgcmVncmVzc2lv
biBwdWJsaWMgaGVhZGVycyBhcmUgbGVmdCB1bnRvdWNoZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy9iaW8tZ2lv
LmggICAgICAgICAgICAgICAgICAgICAgIHwgNSArLS0tLQo+ICBzcmMvY2hhbm5lbC1kaXNwbGF5
LXByaXYuaCAgICAgICAgICB8IDUgKy0tLS0KPiAgc3JjL2NoYW5uZWwtcGxheWJhY2stcHJpdi5o
ICAgICAgICAgfCA0ICstLS0KPiAgc3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5oICAgICAgICAg
fCA1ICstLS0tCj4gIHNyYy9jbGllbnRfc3dfY2FudmFzLmggICAgICAgICAgICAgIHwgNSArLS0t
LQo+ICBzcmMvY29udGludWF0aW9uLmggICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICBzcmMv
Y29yb3V0aW5lLmggICAgICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICBzcmMvZGVjb2RlLmgg
ICAgICAgICAgICAgICAgICAgICAgICB8IDUgKy0tLS0KPiAgc3JjL2Rlc2t0b3AtaW50ZWdyYXRp
b24uaCAgICAgICAgICAgfCA1ICstLS0tCj4gIHNyYy9naW8tY29yb3V0aW5lLmggICAgICAgICAg
ICAgICAgIHwgNSArLS0tLQo+ICBzcmMvZ2lvcGlwZS5oICAgICAgICAgICAgICAgICAgICAgICB8
IDUgKy0tLS0KPiAgc3JjL3NtYXJ0Y2FyZC1tYW5hZ2VyLXByaXYuaCAgICAgICAgfCA1ICstLS0t
Cj4gIHNyYy9zcGljZS1hdWRpby1wcml2LmggICAgICAgICAgICAgIHwgNSArLS0tLQo+ICBzcmMv
c3BpY2UtY2hhbm5lbC1jYWNoZS5oICAgICAgICAgICB8IDUgKy0tLS0KPiAgc3JjL3NwaWNlLWNo
YW5uZWwtcHJpdi5oICAgICAgICAgICAgfCA1ICstLS0tCj4gIHNyYy9zcGljZS1jb21tb24uaCAg
ICAgICAgICAgICAgICAgIHwgNSArLS0tLQo+ICBzcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNr
LXByaXYuaCB8IDUgKy0tLS0KPiAgc3JjL3NwaWNlLWdyYWJzZXF1ZW5jZS1wcml2LmggICAgICAg
fCA1ICstLS0tCj4gIHNyYy9zcGljZS1nc3RhdWRpby5oICAgICAgICAgICAgICAgIHwgNSArLS0t
LQo+ICBzcmMvc3BpY2UtZ3RrLXNlc3Npb24tcHJpdi5oICAgICAgICB8IDUgKy0tLS0KPiAgc3Jj
L3NwaWNlLXB1bHNlLmggICAgICAgICAgICAgICAgICAgfCA1ICstLS0tCj4gIHNyYy9zcGljZS1z
ZXNzaW9uLXByaXYuaCAgICAgICAgICAgIHwgNSArLS0tLQo+ICBzcmMvc3BpY2UtdXJpLXByaXYu
aCAgICAgICAgICAgICAgICB8IDUgKy0tLS0KPiAgc3JjL3NwaWNlLXV0aWwtcHJpdi5oICAgICAg
ICAgICAgICAgfCA1ICstLS0tCj4gIHNyYy9zcGljZS13aWRnZXQtcHJpdi5oICAgICAgICAgICAg
IHwgNSArLS0tLQo+ICBzcmMvdXNiLWFjbC1oZWxwZXIuaCAgICAgICAgICAgICAgICB8IDUgKy0t
LS0KPiAgc3JjL3VzYi1iYWNrZW5kLmggICAgICAgICAgICAgICAgICAgfCA1ICstLS0tCj4gIHNy
Yy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oICAgICAgIHwgNSArLS0tLQo+ICBzcmMvdXNiZGtf
YXBpLmggICAgICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICBzcmMvdXNidXRpbC5oICAgICAg
ICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICBzcmMvdm1jc3RyZWFtLmggICAgICAgICAgICAg
ICAgICAgICB8IDUgKy0tLS0KPiAgc3JjL3ZuY2Rpc3BsYXlrZXltYXAuaCAgICAgICAgICAgICAg
fCA1ICstLS0tCj4gIDMyIGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDEyMyBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL2Jpby1naW8uaCBiL3NyYy9iaW8tZ2lvLmgK
PiBpbmRleCAzMWZkMzY5My4uN2Y0MWNlMTAgMTAwNjQ0Cj4gLS0tIGEvc3JjL2Jpby1naW8uaAo+
ICsrKyBiL3NyYy9iaW8tZ2lvLmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hvdWxk
IGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4g
ICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxo
dHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBCSU9fR0lPX0hf
Cj4gLSMgZGVmaW5lIEJJT19HSU9fSF8KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjaW5jbHVkZSA8
b3BlbnNzbC9iaW8uaD4KPiAgI2luY2x1ZGUgPGdpby9naW8uaD4KPiBAQCAtMjYsNSArMjUsMyBA
QCBHX0JFR0lOX0RFQ0xTCj4gIEJJTyogYmlvX25ld19naW9zdHJlYW0oR0lPU3RyZWFtICpzdHJl
YW0pOwo+ICAKPiAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvKiAhQklPX0dJT19IXyAqLwo+
IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaCBiL3NyYy9jaGFubmVsLWRp
c3BsYXktcHJpdi5oCj4gaW5kZXggMTZjMTJjNmUuLmI1ZDY3Mjg1IDEwMDY0NAo+IC0tLSBhL3Ny
Yy9jaGFubmVsLWRpc3BsYXktcHJpdi5oCj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2
LmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBj
b3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExpY2Vuc2UgYWxvbmcg
d2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3LmdudS5vcmcv
bGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBDSEFOTkVMX0RJU1BMQVlfUFJJVl9IXwo+IC0j
IGRlZmluZSBDSEFOTkVMX0RJU1BMQVlfUFJJVl9IXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNp
bmNsdWRlIDxwaXhtYW4uaD4KPiAgI2lmZGVmIFdJTjMyCj4gQEAgLTIwMyw1ICsyMDIsMyBAQCBn
Ym9vbGVhbiBoYW5kX3BpcGVsaW5lX3RvX3dpZGdldChkaXNwbGF5X3N0cmVhbSAqc3QsCj4gR3N0
UGlwZWxpbmUgKnBpcGVsaW5lKTsKPiAgdm9pZCBzcGljZV9mcmFtZV9mcmVlKFNwaWNlRnJhbWUg
KmZyYW1lKTsKPiAgCj4gIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLy8gQ0hBTk5FTF9ESVNQ
TEFZX1BSSVZfSF8KPiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtcGxheWJhY2stcHJpdi5oIGIv
c3JjL2NoYW5uZWwtcGxheWJhY2stcHJpdi5oCj4gaW5kZXggYWEzM2QyYzQuLjE5Y2NjMTUwIDEw
MDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLXBsYXliYWNrLXByaXYuaAo+ICsrKyBiL3NyYy9jaGFu
bmVsLXBsYXliYWNrLXByaXYuaAo+IEBAIC0xNSwxMCArMTUsOCBAQAo+ICAgICBZb3Ugc2hvdWxk
IGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4g
ICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxo
dHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NM
SUVOVF9QTEFZQkFDS19DSEFOTkVMX1BSSVZfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRf
UExBWUJBQ0tfQ0hBTk5FTF9QUklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gIGdib29sZWFu
IHNwaWNlX3BsYXliYWNrX2NoYW5uZWxfaXNfYWN0aXZlKFNwaWNlUGxheWJhY2tDaGFubmVsICpj
aGFubmVsKTsKPiAgZ3VpbnQzMiBzcGljZV9wbGF5YmFja19jaGFubmVsX2dldF9sYXRlbmN5KFNw
aWNlUGxheWJhY2tDaGFubmVsICpjaGFubmVsKTsKPiAgdm9pZCBzcGljZV9wbGF5YmFja19jaGFu
bmVsX3N5bmNfbGF0ZW5jeShTcGljZVBsYXliYWNrQ2hhbm5lbCAqY2hhbm5lbCk7Cj4gLSNlbmRp
Zgo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci1wcml2LmggYi9zcmMvY2hhbm5l
bC11c2JyZWRpci1wcml2LmgKPiBpbmRleCA4MGNkMzFmNi4uYTM2ZjVkOWIgMTAwNjQ0Cj4gLS0t
IGEvc3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5oCj4gKysrIGIvc3JjL2NoYW5uZWwtdXNicmVk
aXItcHJpdi5oCj4gQEAgLTE4LDggKzE4LDcgQEAKPiAgICAgWW91IHNob3VsZCBoYXZlIHJlY2Vp
dmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICBMaWNlbnNl
IGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZQo+ICAgICA8aHR0cDovL3d3dy5n
bnUub3JnL2xpY2Vuc2VzLz4uCj4gICovCj4gLSNpZm5kZWYgX19TUElDRV9DTElFTlRfVVNCUkVE
SVJfQ0hBTk5FTF9QUklWX0hfXwo+IC0jZGVmaW5lIF9fU1BJQ0VfQ0xJRU5UX1VTQlJFRElSX0NI
QU5ORUxfUFJJVl9IX18KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjaWZkZWYgVVNFX1VTQlJFRElS
Cj4gIAo+IEBAIC03Niw1ICs3NSwzIEBAIGludCBzcGljZV91c2JyZWRpcl93cml0ZV9jYWxsYmFj
ayhTcGljZVVzYnJlZGlyQ2hhbm5lbAo+ICpjaGFubmVsLCB1aW50OF90ICpkYXRhLAo+ICBHX0VO
RF9ERUNMUwo+ICAKPiAgI2VuZGlmIC8qIFVTRV9VU0JSRURJUiAqLwo+IC0KPiAtI2VuZGlmIC8q
IF9fU1BJQ0VfQ0xJRU5UX1VTQlJFRElSX0NIQU5ORUxfUFJJVl9IX18gKi8KPiBkaWZmIC0tZ2l0
IGEvc3JjL2NsaWVudF9zd19jYW52YXMuaCBiL3NyYy9jbGllbnRfc3dfY2FudmFzLmgKPiBpbmRl
eCAxMTgwYzViNi4uYWMzMDI0MGYgMTAwNjQ0Cj4gLS0tIGEvc3JjL2NsaWVudF9zd19jYW52YXMu
aAo+ICsrKyBiL3NyYy9jbGllbnRfc3dfY2FudmFzLmgKPiBAQCAtMTUsMTEgKzE1LDggQEAKPiAg
ICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5l
cmFsIFB1YmxpYwo+ICAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3Qs
IHNlZQo+ICAgICA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gICovCj4gLSNpZm5k
ZWYgX19TUElDRV9DTElFTlRfU1dfQ0FOVkFTX0hfXwo+IC0jZGVmaW5lIF9fU1BJQ0VfQ0xJRU5U
X1NXX0NBTlZBU19IX18KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjZGVmaW5lIFNXX0NBTlZBU19D
QUNIRQo+ICAKPiAgI2luY2x1ZGUgPGNvbW1vbi9zd19jYW52YXMuaD4KPiAtCj4gLSNlbmRpZiAv
KiBfX1NQSUNFX0NMSUVOVF9TV19DQU5WQVNfSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy9jb250
aW51YXRpb24uaCBiL3NyYy9jb250aW51YXRpb24uaAo+IGluZGV4IGQxZmQxMzc3Li5iYmRlMzg2
MyAxMDA2NDQKPiAtLS0gYS9zcmMvY29udGludWF0aW9uLmgKPiArKysgYi9zcmMvY29udGludWF0
aW9uLmgKPiBAQCAtMTgsOCArMTgsNyBAQAo+ICAgKiBGb3VuZGF0aW9uLCBJbmMuLCA1MSBGcmFu
a2xpbiBTdHJlZXQsIEZpZnRoIEZsb29yLCBCb3N0b24sIE1BICAwMjExMC0xMzAxCj4gICBVU0EK
PiAgICovCj4gIAo+IC0jaWZuZGVmIF9DT05USU5VQVRJT05fSF8KPiAtI2RlZmluZSBfQ09OVElO
VUFUSU9OX0hfCj4gKyNwcmFnbWEgb25jZQo+ICAKPiAgI2luY2x1ZGUgInNwaWNlLWNvbW1vbi5o
Igo+ICAjaW5jbHVkZSA8c3RkZGVmLmg+Cj4gQEAgLTUzLDcgKzUyLDYgQEAgaW50IGNjX3N3YXAo
c3RydWN0IGNvbnRpbnVhdGlvbiAqZnJvbSwgc3RydWN0IGNvbnRpbnVhdGlvbgo+ICp0byk7Cj4g
ICAgICAgICAgU1BJQ0VfQUxJR05FRF9DQVNUKHR5cGUgKiwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKCgoY2hhciAq
KW9iaikgLSBvZmZzZXRfb2YodHlwZSwgbWVtYmVyKSkpCj4gIAo+IC0jZW5kaWYKPiAgLyoKPiAg
ICogTG9jYWwgdmFyaWFibGVzOgo+ICAgKiAgYy1pbmRlbnQtbGV2ZWw6IDgKPiBkaWZmIC0tZ2l0
IGEvc3JjL2Nvcm91dGluZS5oIGIvc3JjL2Nvcm91dGluZS5oCj4gaW5kZXggNzhkYzQ2NzAuLjll
YjhlMGNiIDEwMDY0NAo+IC0tLSBhL3NyYy9jb3JvdXRpbmUuaAo+ICsrKyBiL3NyYy9jb3JvdXRp
bmUuaAo+IEBAIC0xOCw4ICsxOCw3IEBACj4gICAqIEZvdW5kYXRpb24sIEluYy4sIDUxIEZyYW5r
bGluIFN0cmVldCwgRmlmdGggRmxvb3IsIEJvc3RvbiwgTUEgIDAyMTEwLTEzMDEKPiAgIFVTQQo+
ICAgKi8KPiAgCj4gLSNpZm5kZWYgX0NPUk9VVElORV9IXwo+IC0jZGVmaW5lIF9DT1JPVVRJTkVf
SF8KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjaW5jbHVkZSAiY29uZmlnLmgiCj4gIAo+IEBAIC03
Myw3ICs3Miw2IEBAIHN0YXRpYyBpbmxpbmUgZ2Jvb2xlYW4gY29yb3V0aW5lX3NlbGZfaXNfbWFp
bih2b2lkKSB7Cj4gIAlyZXR1cm4gY29yb3V0aW5lX3NlbGYoKSA9PSBOVUxMIHx8IGNvcm91dGlu
ZV9pc19tYWluKGNvcm91dGluZV9zZWxmKCkpOwo+ICB9Cj4gIAo+IC0jZW5kaWYKPiAgLyoKPiAg
ICogTG9jYWwgdmFyaWFibGVzOgo+ICAgKiAgYy1pbmRlbnQtbGV2ZWw6IDgKPiBkaWZmIC0tZ2l0
IGEvc3JjL2RlY29kZS5oIGIvc3JjL2RlY29kZS5oCj4gaW5kZXggYjI3NGQ2NzMuLmRjMzE3Mzhj
IDEwMDY0NAo+IC0tLSBhL3NyYy9kZWNvZGUuaAo+ICsrKyBiL3NyYy9kZWNvZGUuaAo+IEBAIC0x
NSw4ICsxNSw3IEBACj4gICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhl
IEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMg
bGlicmFyeTsgaWYgbm90LCBzZWUKPiAgICAgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+
Lgo+ICAqLwo+IC0jaWZuZGVmIFNQSUNFR1RLX0RFQ09ERV9IXwo+IC0jIGRlZmluZSBTUElDRUdU
S19ERUNPREVfSF8KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjaW5jbHVkZSA8Z2xpYi5oPgo+ICAK
PiBAQCAtNDAsNSArMzksMyBAQCBTcGljZUpwZWdEZWNvZGVyICpqcGVnX2RlY29kZXJfbmV3KHZv
aWQpOwo+ICB2b2lkIGpwZWdfZGVjb2Rlcl9kZXN0cm95KFNwaWNlSnBlZ0RlY29kZXIgKmQpOwo+
ICAKPiAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvLyBTUElDRUdUS19ERUNPREVfSF8KPiBk
aWZmIC0tZ2l0IGEvc3JjL2Rlc2t0b3AtaW50ZWdyYXRpb24uaCBiL3NyYy9kZXNrdG9wLWludGVn
cmF0aW9uLmgKPiBpbmRleCAzNzE2MDg5ZS4uMmRkOTE1NmMgMTAwNjQ0Cj4gLS0tIGEvc3JjL2Rl
c2t0b3AtaW50ZWdyYXRpb24uaAo+ICsrKyBiL3NyYy9kZXNrdG9wLWludGVncmF0aW9uLmgKPiBA
QCAtMTgsOCArMTgsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9m
IHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0
aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5z
ZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0RFU0tUT1BfSU5URUdSQVRJT05fSF9fCj4g
LSNkZWZpbmUgX19TUElDRV9ERVNLVE9QX0lOVEVHUkFUSU9OX0hfXwo+ICsjcHJhZ21hIG9uY2UK
PiAgCj4gICNpbmNsdWRlICJzcGljZS1jbGllbnQuaCIKPiAgCj4gQEAgLTYwLDUgKzU5LDMgQEAg
dm9pZAo+IHNwaWNlX2Rlc2t0b3BfaW50ZWdyYXRpb25faW5oaWJpdF9hdXRvbW91bnQoU3BpY2VE
ZXNrdG9wSW50ZWdyYXRpb24gKnNlbGYpOwo+ICB2b2lkIHNwaWNlX2Rlc2t0b3BfaW50ZWdyYXRp
b25fdW5pbmhpYml0X2F1dG9tb3VudChTcGljZURlc2t0b3BJbnRlZ3JhdGlvbgo+ICAqc2VsZik7
Cj4gIAo+ICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0VfREVTS1RPUF9JTlRF
R1JBVElPTl9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvc3JjL2dpby1jb3JvdXRpbmUuaCBiL3NyYy9n
aW8tY29yb3V0aW5lLmgKPiBpbmRleCBiM2E2ZDc4ZS4uNmIyMGEwODEgMTAwNjQ0Cj4gLS0tIGEv
c3JjL2dpby1jb3JvdXRpbmUuaAo+ICsrKyBiL3NyYy9naW8tY29yb3V0aW5lLmgKPiBAQCAtMTgs
OCArMTgsNyBAQAo+ICAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3Qs
IHdyaXRlIHRvIHRoZSBGcmVlIFNvZnR3YXJlCj4gICAgIEZvdW5kYXRpb24sIEluYy4sIDUxIEZy
YW5rbGluIFN0cmVldCwgRmlmdGggRmxvb3IsIEJvc3RvbiwgTUEgIDAyMTEwLTEzMDEKPiAgICAg
VVNBCj4gICovCj4gLSNpZm5kZWYgX19HSU9fQ09ST1VUSU5FX0hfXwo+IC0jZGVmaW5lIF9fR0lP
X0NPUk9VVElORV9IX18KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjaW5jbHVkZSA8Z2lvL2dpby5o
Pgo+ICAjaW5jbHVkZSAiY29yb3V0aW5lLmgiCj4gQEAgLTYyLDUgKzYxLDMgQEAgdm9pZCAgICAg
ICAgIGdfY29yb3V0aW5lX3NpZ25hbF9lbWl0IChncG9pbnRlciBpbnN0YW5jZSwKPiBndWludCBz
aWduYWxfaWQsCj4gIHZvaWQgICAgICAgICBnX2Nvcm91dGluZV9vYmplY3Rfbm90aWZ5KEdPYmpl
Y3QgKm9iamVjdCwgY29uc3QgZ2NoYXIKPiAgKnByb3BlcnR5X25hbWUpOwo+ICAKPiAgR19FTkRf
REVDTFMKPiAtCj4gLSNlbmRpZiAvKiBfX0dJT19DT1JPVVRJTkVfSF9fICovCj4gZGlmZiAtLWdp
dCBhL3NyYy9naW9waXBlLmggYi9zcmMvZ2lvcGlwZS5oCj4gaW5kZXggNDZjMmM5YzguLjIwNTY4
NDFjIDEwMDY0NAo+IC0tLSBhL3NyYy9naW9waXBlLmgKPiArKysgYi9zcmMvZ2lvcGlwZS5oCj4g
QEAgLTE1LDggKzE1LDcgQEAKPiAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9m
IHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgTGljZW5zZSBhbG9uZyB3aXRoIHRo
aXMgbGlicmFyeTsgaWYgbm90LCBzZWUKPiAgICA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2Vz
Lz4uCj4gICovCj4gLSNpZm5kZWYgX19TUElDRV9HSU9fUElQRV9IX18KPiAtI2RlZmluZSBfX1NQ
SUNFX0dJT19QSVBFX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlIDxnaW8vZ2lv
Lmg+Cj4gIAo+IEBAIC0yNSw1ICsyNCwzIEBAIEdfQkVHSU5fREVDTFMKPiAgdm9pZCBzcGljZV9t
YWtlX3BpcGUoR0lPU3RyZWFtICoqcDEsIEdJT1N0cmVhbSAqKnAyKTsKPiAgCj4gIEdfRU5EX0RF
Q0xTCj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9HSU9fUElQRV9IX18gKi8KPiBkaWZmIC0tZ2l0
IGEvc3JjL3NtYXJ0Y2FyZC1tYW5hZ2VyLXByaXYuaCBiL3NyYy9zbWFydGNhcmQtbWFuYWdlci1w
cml2LmgKPiBpbmRleCA0MDljMWM1NC4uOGRjMzllNGUgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NtYXJ0
Y2FyZC1tYW5hZ2VyLXByaXYuaAo+ICsrKyBiL3NyYy9zbWFydGNhcmQtbWFuYWdlci1wcml2LmgK
PiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5
IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExpY2Vuc2UgYWxvbmcgd2l0
aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3LmdudS5vcmcvbGlj
ZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NNQVJUQ0FSRF9NQU5BR0VSX1BSSVZfSF9fCj4g
LSNkZWZpbmUgX19TTUFSVENBUkRfTUFOQUdFUl9QUklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAg
Cj4gICNpbmNsdWRlICJjb25maWcuaCIKPiAgI2luY2x1ZGUgPGdpby9naW8uaD4KPiBAQCAtMzMs
NSArMzIsMyBAQCBnYm9vbGVhbiBzcGljZV9zbWFydGNhcmRfbWFuYWdlcl9pbml0X2ZpbmlzaChT
cGljZVNlc3Npb24KPiAqc2Vzc2lvbiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyKTsKPiAgCj4gIEdfRU5EX0RFQ0xTCj4gLQo+IC0j
ZW5kaWYgLyogX19TTUFSVENBUkRfTUFOQUdFUl9QUklWX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9z
cmMvc3BpY2UtYXVkaW8tcHJpdi5oIGIvc3JjL3NwaWNlLWF1ZGlvLXByaXYuaAo+IGluZGV4IDA0
MTIzZjU1Li5mOTZlNzIxMCAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2UtYXVkaW8tcHJpdi5oCj4g
KysrIGIvc3JjL3NwaWNlLWF1ZGlvLXByaXYuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlv
dSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQ
dWJsaWMKPiAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUK
PiAgICAgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAqLwo+IC0jaWZuZGVmIF9f
U1BJQ0VfQVVESU9fUFJJVkFURV9IX18KPiAtI2RlZmluZSBfX1NQSUNFX0FVRElPX1BSSVZBVEVf
SF9fCj4gKyNwcmFnbWEgb25jZQo+ICAKPiAgI2luY2x1ZGUgPGdsaWIuaD4KPiAgI2luY2x1ZGUg
PGdpby9naW8uaD4KPiBAQCAtNDEsNSArNDAsMyBAQCB2b2lkIHNwaWNlX2F1ZGlvX2dldF9yZWNv
cmRfdm9sdW1lX2luZm9fYXN5bmMoU3BpY2VBdWRpbwo+ICphdWRpbywgR0NhbmNlbGxhYmxlICpj
Cj4gIGdib29sZWFuIHNwaWNlX2F1ZGlvX2dldF9yZWNvcmRfdm9sdW1lX2luZm9fZmluaXNoKFNw
aWNlQXVkaW8gKmF1ZGlvLAo+ICBHQXN5bmNSZXN1bHQgKnJlcywKPiAgICAgICAgICBnYm9vbGVh
biAqbXV0ZSwgZ3VpbnQ4ICpuY2hhbm5lbHMsIGd1aW50MTYgKip2b2x1bWUsIEdFcnJvcgo+ICAg
ICAgICAgICoqZXJyb3IpOwo+ICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0Vf
QVVESU9fUFJJVkFURV9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWNoYW5uZWwtY2Fj
aGUuaCBiL3NyYy9zcGljZS1jaGFubmVsLWNhY2hlLmgKPiBpbmRleCAzNjVmYWU2MC4uMjRjZDdj
YTcgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLWNoYW5uZWwtY2FjaGUuaAo+ICsrKyBiL3NyYy9z
cGljZS1jaGFubmVsLWNhY2hlLmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hvdWxk
IGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4g
ICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxo
dHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBTUElDRV9DSEFO
TkVMX0NBQ0hFX0hfCj4gLSMgZGVmaW5lIFNQSUNFX0NIQU5ORUxfQ0FDSEVfSF8KPiArI3ByYWdt
YSBvbmNlCj4gIAo+ICAjaW5jbHVkZSAiY29tbW9uL21lbS5oIgo+ICAKPiBAQCAtMTUwLDUgKzE0
OSwzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBjYWNoZV9mcmVlKGRpc3BsYXlfY2FjaGUgKmNhY2hl
KQo+ICB9Cj4gIAo+ICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8vIFNQSUNFX0NIQU5ORUxf
Q0FDSEVfSF8KPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWNoYW5uZWwtcHJpdi5oIGIvc3JjL3Nw
aWNlLWNoYW5uZWwtcHJpdi5oCj4gaW5kZXggNTk4NGNhNTYuLjgwZWE3MTQwIDEwMDY0NAo+IC0t
LSBhL3NyYy9zcGljZS1jaGFubmVsLXByaXYuaAo+ICsrKyBiL3NyYy9zcGljZS1jaGFubmVsLXBy
aXYuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBh
IGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgTGljZW5zZSBhbG9u
ZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUKPiAgICAgPGh0dHA6Ly93d3cuZ251Lm9y
Zy9saWNlbnNlcy8+Lgo+ICAqLwo+IC0jaWZuZGVmIF9fU1BJQ0VfQ0xJRU5UX0NIQU5ORUxfUFJJ
Vl9IX18KPiAtI2RlZmluZSBfX1NQSUNFX0NMSUVOVF9DSEFOTkVMX1BSSVZfSF9fCj4gKyNwcmFn
bWEgb25jZQo+ICAKPiAgI2luY2x1ZGUgImNvbmZpZy5oIgo+ICAKPiBAQCAtMjEwLDUgKzIwOSwz
IEBAIGdpbnQgc3BpY2VfY2hhbm5lbF91bml4X3JlYWRfZmQoU3BpY2VDaGFubmVsICpjaGFubmVs
KTsKPiAgI2VuZGlmCj4gIAo+ICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0Vf
Q0xJRU5UX0NIQU5ORUxfUFJJVl9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWNvbW1v
bi5oIGIvc3JjL3NwaWNlLWNvbW1vbi5oCj4gaW5kZXggODU1NGY0YzguLjFhZjFmNWRjIDEwMDY0
NAo+IC0tLSBhL3NyYy9zcGljZS1jb21tb24uaAo+ICsrKyBiL3NyYy9zcGljZS1jb21tb24uaAo+
IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkg
b2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgTGljZW5zZSBhbG9uZyB3aXRo
IHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUKPiAgICAgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNl
bnNlcy8+Lgo+ICAqLwo+IC0jaWZuZGVmIFNQSUNFX0NPTU1PTl9IXwo+IC0jIGRlZmluZSBTUElD
RV9DT01NT05fSF8KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAvKiBzeXN0ZW0gKi8KPiAgI2luY2x1
ZGUgPHN0ZGlvLmg+Cj4gQEAgLTMyLDUgKzMxLDMgQEAKPiAgI2luY2x1ZGUgImNvbW1vbi9tYXJz
aGFsbGVyLmgiCj4gIAo+ICAjaW5jbHVkZSAic3BpY2UtdXRpbC5oIgo+IC0KPiAtI2VuZGlmIC8v
IFNQSUNFX0NPTU1PTl9IXwo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10
YXNrLXByaXYuaAo+IGIvc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXItdGFzay1wcml2LmgKPiBpbmRl
eCAyNTNiM2M1ZS4uMDZiYzNhYjQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLWZpbGUtdHJhbnNm
ZXItdGFzay1wcml2LmgKPiArKysgYi9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLXByaXYu
aAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJh
cnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAg
Ki8KPiAgCj4gLSNpZm5kZWYgX19TUElDRV9GSUxFX1RSQU5TRkVSX1RBU0tfUFJJVl9IX18KPiAt
I2RlZmluZSBfX1NQSUNFX0ZJTEVfVFJBTlNGRVJfVEFTS19QUklWX0hfXwo+ICsjcHJhZ21hIG9u
Y2UKPiAgCj4gICNpbmNsdWRlICJjb25maWcuaCIKPiAgCj4gQEAgLTUzLDUgKzUyLDMgQEAgZ3Nz
aXplCj4gc3BpY2VfZmlsZV90cmFuc2Zlcl90YXNrX3JlYWRfZmluaXNoKFNwaWNlRmlsZVRyYW5z
ZmVyVGFzayAqc2VsZiwKPiAgZ2Jvb2xlYW4gc3BpY2VfZmlsZV90cmFuc2Zlcl90YXNrX2lzX2Nv
bXBsZXRlZChTcGljZUZpbGVUcmFuc2ZlclRhc2sgKnNlbGYpOwo+ICAKPiAgR19FTkRfREVDTFMK
PiAtCj4gLSNlbmRpZiAvKiBfX1NQSUNFX0ZJTEVfVFJBTlNGRVJfVEFTS19QUklWX0hfXyAqLwo+
IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtZ3JhYnNlcXVlbmNlLXByaXYuaCBiL3NyYy9zcGljZS1n
cmFic2VxdWVuY2UtcHJpdi5oCj4gaW5kZXggOTdmMDViMjAuLjRiNDk4MTQ5IDEwMDY0NAo+IC0t
LSBhL3NyYy9zcGljZS1ncmFic2VxdWVuY2UtcHJpdi5oCj4gKysrIGIvc3JjL3NwaWNlLWdyYWJz
ZXF1ZW5jZS1wcml2LmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgIFlvdSBzaG91bGQgaGF2ZSBy
ZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICBMaWNl
bnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZQo+ICAgIDxodHRwOi8vd3d3
LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0dSQUJTRVFVRU5D
RV9QUklWX0hfXwo+IC0jZGVmaW5lIF9fU1BJQ0VfR1JBQlNFUVVFTkNFX1BSSVZfSF9fCj4gKyNw
cmFnbWEgb25jZQo+ICAKPiAgI2luY2x1ZGUgPGdsaWIuaD4KPiAgCj4gQEAgLTI1LDUgKzI0LDMg
QEAgc3RydWN0IF9TcGljZUdyYWJTZXF1ZW5jZSB7Cj4gICAgICBndWludCBua2V5c3ltczsKPiAg
ICAgIGd1aW50ICprZXlzeW1zOwo+ICB9Owo+IC0KPiAtI2VuZGlmCj4gZGlmZiAtLWdpdCBhL3Ny
Yy9zcGljZS1nc3RhdWRpby5oIGIvc3JjL3NwaWNlLWdzdGF1ZGlvLmgKPiBpbmRleCBiNjA1ZjFj
Zi4uMjFiMTQ5MDkgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLWdzdGF1ZGlvLmgKPiArKysgYi9z
cmMvc3BpY2UtZ3N0YXVkaW8uaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlvdSBzaG91bGQg
aGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAg
ICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUKPiAgICAgPGh0
dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAqLwo+IC0jaWZuZGVmIF9fU1BJQ0VfQ0xJ
RU5UX0dTVEFVRElPX0hfXwo+IC0jZGVmaW5lIF9fU1BJQ0VfQ0xJRU5UX0dTVEFVRElPX0hfXwo+
ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlICJzcGljZS1jbGllbnQuaCIKPiAgI2luY2x1
ZGUgInNwaWNlLWF1ZGlvLmgiCj4gQEAgLTUyLDUgKzUxLDMgQEAgU3BpY2VHc3RhdWRpbyAqc3Bp
Y2VfZ3N0YXVkaW9fbmV3KFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEdNYWluQ29udGV4dCAqY29udGV4dCwgY29uc3QgY2hhciAqbmFt
ZSk7Cj4gIAo+ICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0VfQ0xJRU5UX0dT
VEFVRElPX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtZ3RrLXNlc3Npb24tcHJpdi5o
IGIvc3JjL3NwaWNlLWd0ay1zZXNzaW9uLXByaXYuaAo+IGluZGV4IDBkYmM5ZTk2Li5jZmJlNGFj
NiAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2UtZ3RrLXNlc3Npb24tcHJpdi5oCj4gKysrIGIvc3Jj
L3NwaWNlLWd0ay1zZXNzaW9uLXByaXYuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlvdSBz
aG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJs
aWMKPiAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUKPiAg
ICAgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAqLwo+IC0jaWZuZGVmIF9fU1BJ
Q0VfQ0xJRU5UX0dUS19TRVNTSU9OX1BSSVZfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRf
R1RLX1NFU1NJT05fUFJJVl9IX18KPiArI3ByYWdtYSBvbmNlCj4gIAo+ICAjaW5jbHVkZSAic3Bp
Y2UtZ3RrLXNlc3Npb24uaCIKPiAgCj4gQEAgLTQ2LDUgKzQ1LDMgQEAgZ2Jvb2xlYW4KPiBzcGlj
ZV9ndGtfc2Vzc2lvbl9nZXRfa2V5Ym9hcmRfaGFzX2ZvY3VzKFNwaWNlR3RrU2Vzc2lvbiAqc2Vs
Zik7Cj4gIGdib29sZWFuIHNwaWNlX2d0a19zZXNzaW9uX2dldF9tb3VzZV9oYXNfcG9pbnRlcihT
cGljZUd0a1Nlc3Npb24gKnNlbGYpOwo+ICAKPiAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAv
KiBfX1NQSUNFX0NMSUVOVF9HVEtfU0VTU0lPTl9QUklWX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9z
cmMvc3BpY2UtcHVsc2UuaCBiL3NyYy9zcGljZS1wdWxzZS5oCj4gaW5kZXggODE5NjQ3ZTIuLmRj
ZmEzMjQzIDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1wdWxzZS5oCj4gKysrIGIvc3JjL3NwaWNl
LXB1bHNlLmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2
ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExpY2Vuc2Ug
YWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3Lmdu
dS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NMSUVOVF9QVUxTRV9I
X18KPiAtI2RlZmluZSBfX1NQSUNFX0NMSUVOVF9QVUxTRV9IX18KPiArI3ByYWdtYSBvbmNlCj4g
IAo+ICAjaW5jbHVkZSAic3BpY2UtY2xpZW50LmgiCj4gICNpbmNsdWRlICJzcGljZS1hdWRpby5o
Igo+IEBAIC01Myw1ICs1MiwzIEBAIFNwaWNlUHVsc2UgKnNwaWNlX3B1bHNlX25ldyhTcGljZVNl
c3Npb24gKnNlc3Npb24sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFy
ICpuYW1lKTsKPiAgCj4gIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9DTElF
TlRfUFVMU0VfSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1zZXNzaW9uLXByaXYuaCBi
L3NyYy9zcGljZS1zZXNzaW9uLXByaXYuaAo+IGluZGV4IDZlY2U3ZTAxLi42MmNlYmM1MyAxMDA2
NDQKPiAtLS0gYS9zcmMvc3BpY2Utc2Vzc2lvbi1wcml2LmgKPiArKysgYi9zcmMvc3BpY2Utc2Vz
c2lvbi1wcml2LmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVj
ZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExpY2Vu
c2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3
LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NMSUVOVF9TRVNT
SU9OX1BSSVZfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRfU0VTU0lPTl9QUklWX0hfXwo+
ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlICJjb25maWcuaCIKPiAgCj4gQEAgLTk5LDUg
Kzk4LDMgQEAgZ2Jvb2xlYW4gc3BpY2Vfc2Vzc2lvbl9zZXRfbWlncmF0aW9uX3Nlc3Npb24oU3Bp
Y2VTZXNzaW9uCj4gKnNlc3Npb24sIFNwaWNlU2Vzc2lvbgo+ICBTcGljZUF1ZGlvICpzcGljZV9h
dWRpb19nZXQoU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBHTWFpbkNvbnRleHQgKmNvbnRleHQpOwo+
ICBjb25zdCBnY2hhciogc3BpY2VfYXVkaW9fZGF0YV9tb2RlX3RvX3N0cmluZyhnaW50IG1vZGUp
Owo+ICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0VfQ0xJRU5UX1NFU1NJT05f
UFJJVl9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXVyaS1wcml2LmggYi9zcmMvc3Bp
Y2UtdXJpLXByaXYuaAo+IGluZGV4IDU0MzUxZGVjLi4xYTgzNDFiMSAxMDA2NDQKPiAtLS0gYS9z
cmMvc3BpY2UtdXJpLXByaXYuaAo+ICsrKyBiL3NyYy9zcGljZS11cmktcHJpdi5oCj4gQEAgLTE1
LDggKzE1LDcgQEAKPiAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBH
TlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGli
cmFyeTsgaWYgbm90LCBzZWUKPiAgICA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4g
ICovCj4gLSNpZm5kZWYgX19TUElDRV9VUklfUFJJVl9IX18KPiAtI2RlZmluZSBfX1NQSUNFX1VS
SV9QUklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlICJzcGljZS11cmkuaCIK
PiAgCj4gQEAgLTI2LDUgKzI1LDMgQEAgU3BpY2VVUkkqIHNwaWNlX3VyaV9uZXcodm9pZCk7Cj4g
IGdib29sZWFuIHNwaWNlX3VyaV9wYXJzZShTcGljZVVSSSogc2VsZiwgY29uc3QgZ2NoYXIqIHVy
aSwgR0Vycm9yKiogZXJyb3IpOwo+ICAKPiAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvKiBf
X1NQSUNFX1VSSV9QUklWX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtdXRpbC1wcml2
LmggYi9zcmMvc3BpY2UtdXRpbC1wcml2LmgKPiBpbmRleCAzOGIwZGViNi4uOWM0M2EzZGUgMTAw
NjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLXV0aWwtcHJpdi5oCj4gKysrIGIvc3JjL3NwaWNlLXV0aWwt
cHJpdi5oCj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVk
IGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICBMaWNlbnNlIGFs
b25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZQo+ICAgICA8aHR0cDovL3d3dy5nbnUu
b3JnL2xpY2Vuc2VzLz4uCj4gICovCj4gLSNpZm5kZWYgU1BJQ0VfVVRJTF9QUklWX0gKPiAtI2Rl
ZmluZSBTUElDRV9VVElMX1BSSVZfSAo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlIDxn
bGliLmg+Cj4gICNpbmNsdWRlICJzcGljZS11dGlsLmgiCj4gQEAgLTM0LDUgKzMzLDMgQEAgdm9p
ZCBzcGljZV9tb25vX2VkZ2VfaGlnaGxpZ2h0KHVuc2lnbmVkIHdpZHRoLCB1bnNpZ25lZAo+IGhp
Z2h0LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgZ3VpbnQ4ICphbmQs
IGNvbnN0IGd1aW50OCAqeG9yLCBndWludDgKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICpkZXN0KTsKPiAgCj4gIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogU1BJQ0VfVVRJ
TF9QUklWX0ggKi8KPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXdpZGdldC1wcml2LmggYi9zcmMv
c3BpY2Utd2lkZ2V0LXByaXYuaAo+IGluZGV4IDY1ZWI0MDQ3Li40MzZjODAyYyAxMDA2NDQKPiAt
LS0gYS9zcmMvc3BpY2Utd2lkZ2V0LXByaXYuaAo+ICsrKyBiL3NyYy9zcGljZS13aWRnZXQtcHJp
di5oCj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEg
Y29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICBMaWNlbnNlIGFsb25n
IHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZQo+ICAgICA8aHR0cDovL3d3dy5nbnUub3Jn
L2xpY2Vuc2VzLz4uCj4gICovCj4gLSNpZm5kZWYgX19TUElDRV9XSURHRVRfUFJJVl9IX18KPiAt
I2RlZmluZSBfX1NQSUNFX1dJREdFVF9QUklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNp
bmNsdWRlICJjb25maWcuaCIKPiAgCj4gQEAgLTE3Nyw1ICsxNzYsMyBAQCB2b2lkICAgICBzcGlj
ZV9kaXNwbGF5X3dpZGdldF9nbF9zY2Fub3V0Cj4gKFNwaWNlRGlzcGxheSAqZGlzcGxheSk7Cj4g
IHZvaWQgICAgIHNwaWNlX2Rpc3BsYXlfd2lkZ2V0X3VwZGF0ZV9tb25pdG9yX2FyZWEoU3BpY2VE
aXNwbGF5ICpkaXNwbGF5KTsKPiAgCj4gIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYKPiBkaWZm
IC0tZ2l0IGEvc3JjL3VzYi1hY2wtaGVscGVyLmggYi9zcmMvdXNiLWFjbC1oZWxwZXIuaAo+IGlu
ZGV4IGUyZTI3ZGI0Li4yNWYyZjVmMCAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWFjbC1oZWxwZXIu
aAo+ICsrKyBiL3NyYy91c2ItYWNsLWhlbHBlci5oCj4gQEAgLTE4LDggKzE4LDcgQEAKPiAgICAg
WW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFs
IFB1YmxpYwo+ICAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNl
ZQo+ICAgICA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gICovCj4gLSNpZm5kZWYg
X19TUElDRV9VU0JfQUNMX0hFTFBFUl9IX18KPiAtI2RlZmluZSBfX1NQSUNFX1VTQl9BQ0xfSEVM
UEVSX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlICJzcGljZS1jbGllbnQuaCIK
PiAgI2luY2x1ZGUgPGdpby9naW8uaD4KPiBAQCAtNjgsNSArNjcsMyBAQCBnYm9vbGVhbiBzcGlj
ZV91c2JfYWNsX2hlbHBlcl9vcGVuX2FjbF9maW5pc2goCj4gIHZvaWQgc3BpY2VfdXNiX2FjbF9o
ZWxwZXJfY2FuY2VsKFNwaWNlVXNiQWNsSGVscGVyICpzZWxmKTsKPiAgCj4gIEdfRU5EX0RFQ0xT
Cj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9VU0JfQUNMX0hFTFBFUl9IX18gKi8KPiBkaWZmIC0t
Z2l0IGEvc3JjL3VzYi1iYWNrZW5kLmggYi9zcmMvdXNiLWJhY2tlbmQuaAo+IGluZGV4IDY5YTQ5
MGI1Li42NmUxM2Y1NCAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuaAo+ICsrKyBiL3Ny
Yy91c2ItYmFja2VuZC5oCj4gQEAgLTE5LDggKzE5LDcgQEAKPiAgICAgIExpY2Vuc2UgYWxvbmcg
d2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgICA8aHR0cDovL3d3dy5nbnUub3Jn
L2xpY2Vuc2VzLz4uCj4gICovCj4gIAo+IC0jaWZuZGVmIF9fU1BJQ0VfVVNCX0JBQ0tFTkRfSF9f
Cj4gLSNkZWZpbmUgX19TUElDRV9VU0JfQkFDS0VORF9IX18KPiArI3ByYWdtYSBvbmNlCj4gIAo+
ICAjaW5jbHVkZSA8dXNicmVkaXJmaWx0ZXIuaD4KPiAgI2luY2x1ZGUgInVzYi1kZXZpY2UtbWFu
YWdlci5oIgo+IEBAIC05MCw1ICs4OSwzIEBAIHZvaWQKPiBzcGljZV91c2JfYmFja2VuZF9jaGFu
bmVsX2dldF9ndWVzdF9maWx0ZXIoU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsCj4gIHZvaWQg
c3BpY2VfdXNiX2JhY2tlbmRfcmV0dXJuX3dyaXRlX2RhdGEoU3BpY2VVc2JCYWNrZW5kQ2hhbm5l
bCAqY2gsIHZvaWQKPiAgKmRhdGEpOwo+ICAKPiAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZgo+
IGRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLXByaXYuaCBiL3NyYy91c2ItZGV2
aWNlLW1hbmFnZXItcHJpdi5oCj4gaW5kZXggNjZhY2Y2ZDUuLmUyYTU0ZWQxIDEwMDY0NAo+IC0t
LSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oCj4gKysrIGIvc3JjL3VzYi1kZXZpY2Ut
bWFuYWdlci1wcml2LmgKPiBAQCAtMTgsOCArMTgsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUg
cmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExp
Y2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8v
d3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX1VTQl9ERVZJ
Q0VfTUFOQUdFUl9QUklWX0hfXwo+IC0jZGVmaW5lIF9fU1BJQ0VfVVNCX0RFVklDRV9NQU5BR0VS
X1BSSVZfSF9fCj4gKyNwcmFnbWEgb25jZQo+ICAKPiAgI2luY2x1ZGUgInVzYi1kZXZpY2UtbWFu
YWdlci5oIgo+ICAKPiBAQCAtMzgsNSArMzcsMyBAQCBnYm9vbGVhbiBzcGljZV91c2JfZGV2aWNl
X2lzX2lzb2Nocm9ub3VzKGNvbnN0Cj4gU3BpY2VVc2JEZXZpY2UgKmRldmljZSk7Cj4gICNlbmRp
Zgo+ICAKPiAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvKiBfX1NQSUNFX1VTQl9ERVZJQ0Vf
TUFOQUdFUl9QUklWX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvdXNiZGtfYXBpLmggYi9zcmMv
dXNiZGtfYXBpLmgKPiBpbmRleCA4ZTU0MDZjOC4uODk3OGQ3NWMgMTAwNjQ0Cj4gLS0tIGEvc3Jj
L3VzYmRrX2FwaS5oCj4gKysrIGIvc3JjL3VzYmRrX2FwaS5oCj4gQEAgLTE5LDggKzE5LDcgQEAK
PiAgICAgIERtaXRyeSBGbGV5dG1hbiA8ZG1pdHJ5QGRheW5peC5jb20+Cj4gICAgICBLaXJpbGwg
TW9pemlrIDxraXJpbGxAZGF5bml4LmNvbT4KPiAgKi8KPiAtI2lmbmRlZiBVU0JES19IRUFERVIK
PiAtI2RlZmluZSBVU0JES19IRUFERVIKPiArI3ByYWdtYSBvbmNlCj4gIAo+ICB0eXBlZGVmIHN0
cnVjdCB0YWdfdXNiZGtfYXBpX3dyYXBwZXIgdXNiZGtfYXBpX3dyYXBwZXI7Cj4gIAo+IEBAIC0z
MSw0ICszMCwzIEBAIEhBTkRMRSAgIHVzYmRrX2NyZWF0ZV9oaWRlcl9oYW5kbGUodXNiZGtfYXBp
X3dyYXBwZXIKPiAqdXNiZGtfYXBpKTsKPiAgdm9pZCAgICAgdXNiZGtfYXBpX3NldF9oaWRlX3J1
bGVzKHVzYmRrX2FwaV93cmFwcGVyICp1c2Jka19hcGksIEhBTkRMRQo+ICBoaWRlcl9oYW5kbGUs
IGdjaGFyICpyZWRpcmVjdF9vbl9jb25uZWN0KTsKPiAgQk9PTCAgICAgdXNiZGtfY2xlYXJfaGlk
ZV9ydWxlcyh1c2Jka19hcGlfd3JhcHBlciAqdXNiZGtfYXBpLCBIQU5ETEUKPiAgaGlkZXJfaGFu
ZGxlKTsKPiAgdm9pZCAgICAgdXNiZGtfY2xvc2VfaGlkZXJfaGFuZGxlKHVzYmRrX2FwaV93cmFw
cGVyICp1c2Jka19hcGksIEhBTkRMRQo+ICBoaWRlcl9oYW5kbGUpOwo+IC0jZW5kaWYKPiBkaWZm
IC0tZ2l0IGEvc3JjL3VzYnV0aWwuaCBiL3NyYy91c2J1dGlsLmgKPiBpbmRleCA1MGUzOTQ5My4u
NmM1NzBkOTQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYnV0aWwuaAo+ICsrKyBiL3NyYy91c2J1dGls
LmgKPiBAQCAtMTgsOCArMTgsNyBAQAo+ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBj
b3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgIExpY2Vuc2UgYWxvbmcg
d2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAgIDxodHRwOi8vd3d3LmdudS5vcmcv
bGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX1VTQlVUSUxfSF9fCj4gLSNkZWZp
bmUgX19TUElDRV9VU0JVVElMX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgCj4gICNpbmNsdWRlIDxn
bGliLmg+Cj4gIAo+IEBAIC0zNSw0ICszNCwzIEBAIHZvaWQgc3BpY2VfdXNiX3V0aWxfZ2V0X2Rl
dmljZV9zdHJpbmdzKGludCBidXMsIGludAo+IGFkZHJlc3MsCj4gIEdfRU5EX0RFQ0xTCj4gIAo+
ICAjZW5kaWYgLyogVVNFX1VTQlJFRElSICovCj4gLSNlbmRpZiAvKiBfX1NQSUNFX1VTQlVUSUxf
SF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy92bWNzdHJlYW0uaCBiL3NyYy92bWNzdHJlYW0uaAo+
IGluZGV4IDEzMTZiNzdkLi40ODUxY2Y1MiAxMDA2NDQKPiAtLS0gYS9zcmMvdm1jc3RyZWFtLmgK
PiArKysgYi9zcmMvdm1jc3RyZWFtLmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICBZb3Ugc2hv
dWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGlj
Cj4gICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICAg
IDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgKi8KPiAtI2lmbmRlZiBfX1NQSUNF
X1ZNQ19TVFJFQU1fSF9fCj4gLSNkZWZpbmUgX19TUElDRV9WTUNfU1RSRUFNX0hfXwo+ICsjcHJh
Z21hIG9uY2UKPiAgCj4gICNpbmNsdWRlIDxnaW8vZ2lvLmg+Cj4gIAo+IEBAIC03Nyw1ICs3Niwz
IEBAIEdUeXBlICAgICAgICAgICBzcGljZV92bWNfc3RyZWFtX2dldF90eXBlICAgICAgICAodm9p
ZCkKPiBHX0dOVUNfQ09OU1Q7Cj4gIFNwaWNlVm1jU3RyZWFtKiBzcGljZV92bWNfc3RyZWFtX25l
dyAgICAgICAgICAgICAoU3BpY2VDaGFubmVsICpjaGFubmVsKTsKPiAgCj4gIEdfRU5EX0RFQ0xT
Cj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9WTUNfU1RSRUFNX0hfXyAqLwo+IGRpZmYgLS1naXQg
YS9zcmMvdm5jZGlzcGxheWtleW1hcC5oIGIvc3JjL3ZuY2Rpc3BsYXlrZXltYXAuaAo+IGluZGV4
IDNlYzU1ZDU4Li4yZDNkYzUyNyAxMDA2NDQKPiAtLS0gYS9zcmMvdm5jZGlzcGxheWtleW1hcC5o
Cj4gKysrIGIvc3JjL3ZuY2Rpc3BsYXlrZXltYXAuaAo+IEBAIC0xOSw4ICsxOSw3IEBACj4gICAq
IEZvdW5kYXRpb24sIEluYy4sIDUxIEZyYW5rbGluIFN0cmVldCwgRmlmdGggRmxvb3IsIEJvc3Rv
biwgTUEgIDAyMTEwLTEzMDEKPiAgIFVTQQo+ICAgKi8KPiAgCj4gLSNpZm5kZWYgVk5DX0RJU1BM
QVlfS0VZTUFQX0gKPiAtI2RlZmluZSBWTkNfRElTUExBWV9LRVlNQVBfSAo+ICsjcHJhZ21hIG9u
Y2UKPiAgCj4gICNpbmNsdWRlIDxnbGliLmg+Cj4gIAo+IEBAIC0zMiw1ICszMSwzIEBAIGd1aW50
MTYgdm5jX2Rpc3BsYXlfa2V5bWFwX2dkazJ4dGtiZChjb25zdCBndWludDE2Cj4gKmtleWNvZGVf
bWFwLAo+ICB2b2lkIHZuY19kaXNwbGF5X2tleXZhbF9zZXRfZW50cmllcyh2b2lkKTsKPiAgdm9p
ZCB2bmNfZGlzcGxheV9rZXl2YWxfZnJlZV9lbnRyaWVzKHZvaWQpOwo+ICBndWludCB2bmNfZGlz
cGxheV9rZXl2YWxfZnJvbV9rZXljb2RlKGd1aW50IGtleWNvZGUsIGd1aW50IGtleXZhbCk7Cj4g
LQo+IC0jZW5kaWYgLyogVk5DX0RJU1BMQVlfS0VZTUFQX0ggKi8KPiAtLQo+IDIuMjAuMQo+IAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
