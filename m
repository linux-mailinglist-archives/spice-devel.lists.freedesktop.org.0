Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E489216375
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 14:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2DE6E7C0;
	Tue,  7 May 2019 12:08:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B316E7C0
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 12:08:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D18EC30832CC
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 12:08:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C8B506402D
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 12:08:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE59118089CA;
 Tue,  7 May 2019 12:08:28 +0000 (UTC)
Date: Tue, 7 May 2019 08:08:27 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <309172237.17175501.1557230907440.JavaMail.zimbra@redhat.com>
In-Reply-To: <2a9c0a8a-872c-74a0-c821-54aa93a8c347@redhat.com>
References: <20190507094855.20634-1-uril@redhat.com>
 <899502649.17159706.1557222825756.JavaMail.zimbra@redhat.com>
 <2a9c0a8a-872c-74a0-c821-54aa93a8c347@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.11]
Thread-Topic: build: do not warn about address-of-packed-member
Thread-Index: f5qsEpfbUczyyv+eAabwtihy0mV2kQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 07 May 2019 12:08:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] build: do not warn about
 address-of-packed-member
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

PiAKPiBPbiA1LzcvMTkgMTI6NTMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+Pgo+ID4+
IFRoZSBnY2Mgd2FybmluZyBhZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXIgaXMgbmV3IGFuZCBvbiBi
eQo+ID4+IGRlZmF1bHQgaW4gZ2NjIDkuCj4gPj4KPiA+PiBNYW55IG9mIHRoZSBzdHJ1Y3R1cmVz
IHNlbnQgb3ZlciB0aGUgbmV0d29yayBhcmUgcGFja2VkCj4gPj4gYW5kIHdpdGggdW5hbGlnbmVk
IGZpZWxkcy4KPiA+Pgo+ID4+IFRoaXMgYnJlYWtzIHRoZSBidWlsZCAtLSBkdWUgdG8gLVdlcnJv
ci4KPiA+PiBUZWxsIGdjYyB0byBub3Qgd2FybiBhYm91dCBpdC4KPiA+Pgo+ID4+IFNpZ25lZC1v
ZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KPiA+IAo+ID4gV2hhdCBhcmUgdGhl
IHdhcm5pbmcgZXhhY3RseSBmb3I/Cj4gCj4gaHR0cHM6Ly9nY2MuZ251Lm9yZy9nY2MtOS9jaGFu
Z2VzLmh0bWwKPiAKPiAgICAtV2FkZHJlc3Mtb2YtcGFja2VkLW1lbWJlciwgZW5hYmxlZCBieSBk
ZWZhdWx0LCB3YXJucyBhYm91dCBhbgo+ICAgICAgdW5hbGlnbmVkIHBvaW50ZXIgdmFsdWUgZnJv
bSB0aGUgYWRkcmVzcyBvZiBhIHBhY2tlZCBtZW1iZXIKPiAgICAgIG9mIGEgc3RydWN0IG9yIHVu
aW9uLgo+IAo+IAo+ID4gU3VyZSB3ZSBkb24ndCB3YW50IHRvIGZpeCB0aGVtPwo+IAo+IEkgdGhp
bmsgaXQgd291bGQgbm90IGJlIHRvbyBoYXJkIHRvIG92ZXJjb21lIHRoaXMgc3BlY2lmaWMgd2Fy
bmluZywgYnkKPiBjb3B5aW5nIHRoZSBzdHJ1Y3R1cmVzLCBvciBzZW5kaW5nIHRoZWlyIGNvbnRl
bnQgaW5zdGVhZCBvZiBhIHBvaW50ZXIuCj4gV2Ugd291bGQgc3RpbGwgaGF2ZSB1bmFsaWduZWQg
YWNjZXNzLCBidXQgbm90IGZvciB1bmFsaWduZWQgcG9pbnRlcnMuCj4gCj4gSXQncyBub3QgZWFz
eSB0byBjaGFuZ2UgdGhlIHN0cnVjdHVyZXMgdGhlbXNlbHZlcy4KPiBGb3IgZXhhbXBsZSBpZiB3
ZSBjaGFuZ2UgU3BpY2VNaWdyYXRlRGF0YURpc3BsYXkgdG8gbWFrZSBpdCBhbGlnbmVkLAo+IHdl
IGxpa2VseSBicmVhayBtaWdyYXRpb24gZnJvbSBvbGRlciB2ZXJzaW9ucy4KPiAKPiBVcmkuCj4g
CgpUaGUgd2FybmluZyBpcyBub3QgYWJvdXQgdGhhdC4gUGFja2VkIHN0cnVjdHVyZXMgYXJlIHBl
cmZlY3RseSBmaW5lLAp0aGUgcHJvYmxlbSBpcyB3aGVuIHlvdSBjYXN0IGEgcG9pbnRlciB3aXRo
IGFsaWdubWVudCBYIHRvIGEgcG9pbnRlcgp3aXRoIGFsaWduZWQgWSBhbmQgWSA+IFggKGluIHRo
ZSBjYXNlIG9mIHBhY2tlZCBYID09IDEpLgpTbyB5b3UgZG9uJ3QgaGF2ZSB0byBjaGFuZ2UgdGhl
IHN0cnVjdHVyZXMgZGVmaW5pdGlvbiBidXQgdGhlIHBvaW50ZXJzCnlvdSBhcmUgdXNpbmcuCk1h
eWJlIEkgaGF2ZSBhIHBhdGNoIHRvIGZpeCBtb3N0LCBpZiBub3QgYWxsLCBvZiB0aGVzZSAod2Fz
IGRvaW5nIHNvIGZvcgptaXBzIHdoZXJlIHRoZXNlIHdhcm5pbmcgYXJlIG11Y2ggc3RyaWN0ZXIp
LgoKPiA+IAo+ID4+IC0tLQo+ID4+ICAgbTQvbWFueXdhcm5pbmdzLm00IHwgMSArCj4gPj4gICBt
ZXNvbi5idWlsZCAgICAgICAgfCAxICsKPiA+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvbTQvbWFueXdhcm5pbmdzLm00IGIvbTQvbWFu
eXdhcm5pbmdzLm00Cj4gPj4gaW5kZXggNGY3MDFmNGVhLi4yMDU0M2Q0YTQgMTAwNjQ0Cj4gPj4g
LS0tIGEvbTQvbWFueXdhcm5pbmdzLm00Cj4gPj4gKysrIGIvbTQvbWFueXdhcm5pbmdzLm00Cj4g
Pj4gQEAgLTE3NCw2ICsxNzQsNyBAQCBBQ19ERUZVTihbZ2xfTUFOWVdBUk5fQUxMX0dDQ10sCj4g
Pj4gICAgICAgLVdtdWx0aWNoYXIgXAo+ID4+ICAgICAgIC1XbmFycm93aW5nIFwKPiA+PiAgICAg
ICAtV25lc3RlZC1leHRlcm5zIFwKPiA+PiArICAgIC1Xbm8tYWRkcmVzcy1vZi1wYWNrZWQtbWVt
YmVyIFwKPiA+PiAgICAgICAtV25vbm51bGwgXAo+ID4+ICAgICAgIC1Xbm9ubnVsbC1jb21wYXJl
IFwKPiA+PiAgICAgICAtV251bGwtZGVyZWZlcmVuY2UgXAo+ID4+IGRpZmYgLS1naXQgYS9tZXNv
bi5idWlsZCBiL21lc29uLmJ1aWxkCj4gPj4gaW5kZXggOTNmYmRmZmY5Li5iOGRkZTk2YTggMTAw
NjQ0Cj4gPj4gLS0tIGEvbWVzb24uYnVpbGQKPiA+PiArKysgYi9tZXNvbi5idWlsZAo+ID4+IEBA
IC00Miw2ICs0Miw3IEBAIHNwaWNlX3NlcnZlcl9nbG9iYWxfY2ZsYWdzID0gWyctRFNQSUNFX1NF
UlZFUl9JTlRFUk5BTCcsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAnLVdh
bGwnLAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1XZXh0cmEnLAo+ID4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1Xbm8tc2lnbi1jb21wYXJlJywKPiA+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1Xbm8tYWRkcmVzcy1vZi1wYWNrZWQt
bWVtYmVyJywKPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICctV25vLXVudXNl
ZC1wYXJhbWV0ZXInXQo+ID4+ICAgCj4gPj4gICBjb21waWxlciA9IG1lc29uLmdldF9jb21waWxl
cignYycpCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
