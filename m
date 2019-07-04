Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D555F891
	for <lists+spice-devel@lfdr.de>; Thu,  4 Jul 2019 14:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD07D8901F;
	Thu,  4 Jul 2019 12:51:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34258901F
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 12:51:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 87ED73082291
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 12:51:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C09A18666
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Jul 2019 12:51:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F6CC18433A0;
 Thu,  4 Jul 2019 12:51:30 +0000 (UTC)
Date: Thu, 4 Jul 2019 08:51:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <1374032211.26427465.1562244690377.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190704101841.10581-1-kpouget@redhat.com>
References: <20190704101841.10581-1-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.20]
Thread-Topic: manual: document host-side video streaming
Thread-Index: +SR+wJ+g7QLsm5bGKUf0ul+J1/Z0ww==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 04 Jul 2019 12:51:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] manual: document host-side
 video streaming
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0LmNvbT4KPiAt
LS0KPiAKPiBJIHJlbW92ZWQgdGhlIGNvZGVjLXNlbGVjdGlvbiBwYXJ0IGZyb20gdGhpcyBwYXRj
aCwgSSdsbCBzZW5kIGl0IGFnYWluCj4gd2hlbiBRZW11L0xpYnZpcnQgcGF0Y2hlcyBhcmUgYWNj
ZXB0ZWQuCj4gCj4gLS0tCj4gIGRvY3MvbWFudWFsL21hbnVhbC50eHQgfCA0OSArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQzIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RvY3MvbWFudWFs
L21hbnVhbC50eHQgYi9kb2NzL21hbnVhbC9tYW51YWwudHh0Cj4gaW5kZXggZGRiN2MwZjIuLmU5
NWE1NjNlIDEwMDY0NAo+IC0tLSBhL2RvY3MvbWFudWFsL21hbnVhbC50eHQKPiArKysgYi9kb2Nz
L21hbnVhbC9tYW51YWwudHh0Cj4gQEAgLTU0NCwxMiArNTQ0LDE0IEBAIHdoaWNoIGFyZSBkZXNj
cmliZWQgd2hlbiBydW5uaW5nIHJlbW90ZS12aWV3ZXIgd2l0aAo+IGAtLWhlbHAtc3BpY2VgLgo+
ICBUbyBnZXQgVVNCIHJlZGlyZWN0aW9uIHdvcmtpbmcgb24gV2luZG93cyBjbGllbnRzLCB5b3Ug
bmVlZCB0byBpbnN0YWxsCj4gIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL2Rvd25sb2FkL3dp
bmRvd3MvdXNiZGsvW1VzYkRrXQo+IAo+IC1bW3N0cmVhbWluZ2FnZW50XV0KPiAtU3RyZWFtaW5n
IEFnZW50Cj4gK1tbdmlkZW9zdHJlYW1pbmddXQo+ICtWaWRlbyBTdHJlYW1pbmcKPiAgPT09PT09
PT09PT09PT09Cj4gCj4gLVRoZSBTUElDRSBzdHJlYW1pbmcgYWdlbnQgYWxsb3dzIHRvIHNlbmQg
YW4gZW5jb2RlZCB2aWRlbyBzdHJlYW0gb2YgdGhlCj4gZ3Vlc3QKPiAtZGVza3RvcCB0byB0aGUg
Y2xpZW50Lgo+ICtTUElDRSBzdHJlYW1pbmcgYWxsb3dzIHNlbmRpbmcgYW4gZW5jb2RlZCB2aWRl
byBzdHJlYW0gb2YgdGhlIGd1ZXN0Cj4gK2Rlc2t0b3AgdG8gdGhlIGNsaWVudC4gVGhlIGVuY29k
aW5nIGNhbiBiZSBkb25lIGZyb20gdGhlIGhvc3QgKGluc2lkZQo+ICtTUElDRSBzZXJ2ZXIpIG9y
IGZyb20gdGhlIGd1ZXN0LCB3aXRoIHRoZSBoZWxwIG9mIHRoZSBTUElDRSBzdHJlYW1pbmcKPiAr
YWdlbnQuCj4gCj4gIFRoZSBzdHJlYW1pbmcgYWdlbnQgaXMgYSBkYWVtb24vc2VydmljZSBydW5u
aW5nIGluIHRoZSBndWVzdCBPUyBzbyBpdCBtdXN0Cj4gIGJlCj4gIGluc3RhbGxlZCBpZiBpdCBk
b2VzIG5vdCB5ZXQgZXhpc3Qgb24gdGhlIGd1ZXN0IHN5c3RlbS4gIEl0IHJlbGllcyBvbiBhCj4g
QEAgLTU1Nyw4ICs1NTksOCBAQCBkZWRpY2F0ZWQgc3BpY2Vwb3J0IGNoYXIgZGV2aWNlIHRvIGFj
aGlldmUgY29tbXVuaWNhdGlvbgo+IGJldHdlZW4gdGhlIGd1ZXN0IGFuZAo+ICB0aGUgaG9zdC4g
IFRoaXMgZGV2aWNlIG11c3QgYmUgYWRkZWQgdG8gdGhlIHZpcnR1YWwgbWFjaGluZSBhcyBkZXNj
cmliZWQKPiAgYmVsb3cKPiAgZm9yIHRoZSBzdHJlYW1pbmcgYWdlbnQgdG8gd29yayBpbiB0aGUg
Z3Vlc3QuCj4gCj4gLUNvbmZpZ3VyYXRpb24KPiAtLS0tLS0tLS0tLS0tLQo+ICtHdWVzdCBWaWRl
byBFbmNvZGluZzogQWdlbnQgQ29uZmlndXJhdGlvbgo+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gCj4gIC5Vc2luZyB2aXJ0LW1hbmFnZXIKPiAKPiBAQCAt
NTk1LDYgKzU5Nyw0MSBAQCB0aGUgbmVlZGVkIGRldmljZXMgZm9yIGFnZW50IHN1cHBvcnQgaW4g
dGhlIGd1ZXN0IE9TOgo+ICAtY2hhcmRldiBzcGljZXBvcnQsbmFtZT1vcmcuc3BpY2Utc3BhY2Uu
c3RyZWFtLjAsaWQ9Y2hhcmNoYW5uZWwxCj4gCj4gCj4gK0hvc3QgVmlkZW8gRW5jb2RpbmcKPiAr
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ICsKPiArRm9yIGhvc3QgdmlkZW8gZW5jb2RpbmcsIFNQSUNF
IG5hdGl2ZWx5IHN1cHBvcnRzIE1KUEVHIGVuY29kaW5nLiBGb3IKPiArdXNpbmcgZnVydGhlciBj
b2RlY3MsIFNQSUNFIHNlcnZlciBtdXN0IGJlIGNvbXBpbGVkIHdpdGggR1N0cmVhbWVyCj4gK3N1
cHBvcnQuCj4gKwo+ICsuU2V0dGluZwo+ICsKPiArU1BJQ0UgdmlkZW8gc3RyZWFtaW5nIHBhcmFt
ZXRlciBjYW4gdGFrZSB0aHJlZSB2YWx1ZXM6Cj4gKwo+ICstIGBvZmZgOiBubyB2aWRlbyBkZXRl
Y3Rpb24gaXMgcGVyZm9ybWVkLAo+ICstIGBhbGxgOiBhbnkgZmFzdC1yZWZyZXNoaW5nIHdpbmRv
dyBjYW4gYmUgZW5jb2RlZCBpbnRvIGEgdmlkZW8gc3RyZWFtLAo+ICstIGBmaWx0ZXJgOiBTUElD
RSBzZXJ2ZXIgYWRkcyBhZGRpdGlvbmFsIGZpbHRlcnMgdG8gZGVjaWRlIGlmIHZpZGVvCj4gKyAg
c3RyZWFtaW5nIHNob3VsZCBiZSBhY3RpdmF0ZWQgKGF0IHRoZSBtb21lbnQsIG9ubHkgc21hbGwg
d2luZG93Cj4gKyAgc3VyZmFjZXMgYXJlIHNraXBwZWQpLAo+ICsKPiArLlVzaW5nIGxpYnZpcnQK
PiArCj4gK1RoZSBgc3RyZWFtaW5nYCB0YWcgbXVzdCBiZSBhZGRlZCB0byBTcGljZSBgZ3JhcGhp
Y3NgOgo+ICsKPiArW3NvdXJjZSx4bWxdCj4gKwo+ICs8Z3JhcGhpY3MgdHlwZT0nc3BpY2UnIGF1
dG9wb3J0PSd5ZXMnPgo+ICsgICAgPHN0cmVhbWluZyBtb2RlPSdvZmZ8YWxsfGZpbHRlcicvPgo+
ICs8L2dyYXBoaWNzPgo+ICsKPiArLlVzaW5nIFFFTVUKPiArCj4gK0FkZGluZyB0aGUgZm9sbG93
aW5nIHBhcmFtZXRlcnMgdG8geW91ciBRRU1VIGNvbW1hbmQgbGluZSB3aWxsIGVuYWJsZQo+ICtT
UElDRSBzZXJ2ZXIgdmlkZW8gZW5jb2Rpbmc6Cj4gKwo+ICtbc291cmNlLHNoXQo+ICstc3BpY2Ug
Li4uLHN0cmVhbWluZy12aWRlbz1vZmZ8YWxsfGZpbHRlciwuLi4KPiArCj4gIENBQyBzbWFydGNh
cmQgcmVkaXJlY3Rpb24KPiAgPT09PT09PT09PT09PT09PT09PT09PT09PQo+IAoKQWNrZWQKCkZy
ZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
