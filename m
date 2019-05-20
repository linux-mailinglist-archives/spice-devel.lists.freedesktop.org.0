Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3C22CB7
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 09:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41A8891CA;
	Mon, 20 May 2019 07:13:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04847891CA
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:13:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8FF6436961
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:13:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 816785DA38
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:13:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 733534A460;
 Mon, 20 May 2019 07:13:20 +0000 (UTC)
Date: Mon, 20 May 2019 03:13:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <213460040.18981565.1558336398136.JavaMail.zimbra@redhat.com>
In-Reply-To: <03fdf3c7-a973-4b13-26ef-53bb1b95492f@redhat.com>
References: <20190517104129.7838-1-fziglio@redhat.com>
 <03fdf3c7-a973-4b13-26ef-53bb1b95492f@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.13]
Thread-Topic: spice-client-gtk-module: Remove unused file
Thread-Index: Pnoc+OezpbOvVXOhl/lm/9/3ajKgGQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 20 May 2019 07:13:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-client-gtk-module: Remove
 unused file
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

PiAKPiBIaSwKPiAKPiBNYXliZSB3b3J0aCBtZW50aW9uaW5nIGl0J3MgbGVmdG92ZXIgZnJvbSBw
eWd0ay9weXRob24gYmluZGluZ3MKPiBub3QgcmVhbGx5IGNyaXRpY2FsLCBhbnl3YXksIGZpbmUg
d2l0aCBtZS4KPiAKCkRvIHlvdSBoYXZlIHRoZSBjb21taXQgb3Igc29tZSBoaW50IG9uIHdoYXQg
dG8gd3JpdGU/CkknbSBub3QgYXdhcmUgb2YgdGhpcyBmZWF0dXJlLgoKPiAKPiBBY2tlZC1ieTog
U25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiAKPiBPbiA1LzE3LzE5IDE6NDEg
UE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgIHNyYy9zcGljZS1jbGllbnQt
Z3RrLW1vZHVsZS5jIHwgNDUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDQ1IGRlbGV0aW9ucygtKQo+ID4gICBkZWxldGUgbW9kZSAxMDA2
NDQgc3JjL3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc3Jj
L3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMgYi9zcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUu
Ywo+ID4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCBiODJmMWUzNC4uMDAwMDAw
MDAKPiA+IC0tLSBhL3NyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVsZS5jCj4gPiArKysgL2Rldi9u
dWxsCj4gPiBAQCAtMSw0NSArMCwwIEBACj4gPiAtLyogLSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zm
c2V0OiA0OyBpbmRlbnQtdGFicy1tb2RlOiBuaWwgLSotICovCj4gPiAtLyoKPiA+IC0gICBDb3B5
cmlnaHQgKEMpIDIwMTAgUmVkIEhhdCwgSW5jLgo+ID4gLQo+ID4gLSAgIFRoaXMgbGlicmFyeSBp
cyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IKPiA+IC0gICBt
b2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGlj
Cj4gPiAtICAgTGljZW5zZSBhcyBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRh
dGlvbjsgZWl0aGVyCj4gPiAtICAgdmVyc2lvbiAyLjEgb2YgdGhlIExpY2Vuc2UsIG9yIChhdCB5
b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCj4gPiAtCj4gPiAtICAgVGhpcyBsaWJyYXJ5
IGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCj4gPiAt
ICAgYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2Fy
cmFudHkgb2YKPiA+IC0gICBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNV
TEFSIFBVUlBPU0UuICBTZWUgdGhlIEdOVQo+ID4gLSAgIExlc3NlciBHZW5lcmFsIFB1YmxpYyBM
aWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCj4gPiAtCj4gPiAtICAgWW91IHNob3VsZCBoYXZlIHJl
Y2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ID4gLSAgIExp
Y2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gPiA8aHR0cDovL3d3
dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gPiAtKi8KPiA+IC0jaW5jbHVkZSAiY29uZmlnLmgiCj4g
PiAtI2luY2x1ZGUgPHB5Z29iamVjdC5oPgo+ID4gLQo+ID4gLXZvaWQgc3BpY2VfcmVnaXN0ZXJf
Y2xhc3NlcyAoUHlPYmplY3QgKmQpOwo+ID4gLXZvaWQgc3BpY2VfYWRkX2NvbnN0YW50cyhQeU9i
amVjdCAqbW9kdWxlLCBjb25zdCBnY2hhciAqc3RyaXBfcHJlZml4KTsKPiA+IC1leHRlcm4gUHlN
ZXRob2REZWYgc3BpY2VfZnVuY3Rpb25zW107Cj4gPiAtCj4gPiAtRExfRVhQT1JUKHZvaWQpIGlu
aXRTcGljZUNsaWVudEd0ayh2b2lkKQo+ID4gLXsKPiA+IC0gICAgUHlPYmplY3QgKm0sICpkOwo+
ID4gLQo+ID4gLSAgICBpbml0X3B5Z29iamVjdCgpOwo+ID4gLQo+ID4gLSAgICBtID0gUHlfSW5p
dE1vZHVsZSgiU3BpY2VDbGllbnRHdGsiLCBzcGljZV9mdW5jdGlvbnMpOwo+ID4gLSAgICBpZiAo
UHlFcnJfT2NjdXJyZWQoKSkKPiA+IC0gICAgICAgIFB5X0ZhdGFsRXJyb3IoImNhbid0IGluaXQg
bW9kdWxlIik7Cj4gPiAtCj4gPiAtICAgIGQgPSBQeU1vZHVsZV9HZXREaWN0KG0pOwo+ID4gLSAg
ICBpZiAoUHlFcnJfT2NjdXJyZWQoKSkKPiA+IC0gICAgICAgIFB5X0ZhdGFsRXJyb3IoImNhbid0
IGdldCBkaWN0Iik7Cj4gPiAtCj4gPiAtICAgIHNwaWNlX3JlZ2lzdGVyX2NsYXNzZXMoZCk7Cj4g
PiAtICAgIHNwaWNlX2FkZF9jb25zdGFudHMobSwgIlNQSUNFXyIpOwo+ID4gLQo+ID4gLSAgICBp
ZiAoUHlFcnJfT2NjdXJyZWQoKSkgewo+ID4gLSAgICAgICAgUHlfRmF0YWxFcnJvcigiY2FuJ3Qg
aW5pdGlhbGlzZSBtb2R1bGUgU3BpY2VDbGllbnRHdGsiKTsKPiA+IC0gICAgfQo+ID4gLX0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
