Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CBAD72EF
	for <lists+spice-devel@lfdr.de>; Tue, 15 Oct 2019 12:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804D08958E;
	Tue, 15 Oct 2019 10:14:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0208958E
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Oct 2019 10:14:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 393233295
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Oct 2019 10:14:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F642608A5
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Oct 2019 10:14:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 202354E589;
 Tue, 15 Oct 2019 10:14:04 +0000 (UTC)
Date: Tue, 15 Oct 2019 06:14:03 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <269589426.6684024.1571134443711.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191015095803.8559-1-victortoso@redhat.com>
References: <20190506103156.14925-1-victortoso@redhat.com>
 <20191015095803.8559-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.21]
Thread-Topic: channel-webdav: avoid possible crash
Thread-Index: 5B5y1dgBaemhSbYP68JNd1uhoduc7g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 15 Oct 2019 10:14:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] channel-webdav: avoid possible crash
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gSW4gY2FzZSBQ
aG9kYXZTZXJ2ZXIgb3IgU291cFNlcnZlciBhcmUgTlVMTCwgd2Ugc2hvdWxkIHN0b3AgYW5kCj4g
cmV0dXJuLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhh
dC5jb20+Cj4gLS0tCj4gCj4gUmViYXNlZC4gUGF0Y2ggd2FzIHJlbGF0ZWQgdXNlciByZXBvcnQg
b2YgY3Jhc2ggaW4gRmxleFZESSBjbGllbnQgWzBdLgo+IEJlaW5nIGNhcmVmdWwgaW4gdGhpcyBu
b3QtaG90IHBhdGggc2hvdWxkIGJlIG9rYXkgSU1ITy4KPiAKPiBbMF0gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvc3BpY2UtZGV2ZWwvMjAxOS1NYXkvMDQ5MDcwLmh0bWwK
PiAKPiAgc3JjL2NoYW5uZWwtd2ViZGF2LmMgfCA3ICsrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hh
bm5lbC13ZWJkYXYuYyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCj4gaW5kZXggZmIyNTA4NC4uZGUy
ODQzZSAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC13ZWJkYXYuYwo+ICsrKyBiL3NyYy9jaGFu
bmVsLXdlYmRhdi5jCj4gQEAgLTM2MSwxMiArMzYxLDE3IEBAIHN0YXRpYyB2b2lkIHN0YXJ0X2Ns
aWVudChTcGljZVdlYmRhdkNoYW5uZWwgKnNlbGYpCj4gICAgICBHSU9TdHJlYW0gKnBlZXIgPSBO
VUxMOwo+ICAgICAgU3BpY2VTZXNzaW9uICpzZXNzaW9uOwo+ICAgICAgU291cFNlcnZlciAqc2Vy
dmVyOwo+ICsgICAgUGhvZGF2U2VydmVyKiBwaG9kYXZfc2VydmVyOwo+ICAgICAgR1NvY2tldEFk
ZHJlc3MgKmFkZHI7Cj4gICAgICBHRXJyb3IgKmVycm9yID0gTlVMTDsKPiAgICAgIGJvb2wgc3Rh
cnRlZDsKPiAgCj4gICAgICBzZXNzaW9uID0gc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lvbihTUElD
RV9DSEFOTkVMKHNlbGYpKTsKPiAtICAgIHNlcnZlciA9Cj4gcGhvZGF2X3NlcnZlcl9nZXRfc291
cF9zZXJ2ZXIoc3BpY2Vfc2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcihzZXNzaW9uKSk7Cj4gKyAg
ICBwaG9kYXZfc2VydmVyID0gc3BpY2Vfc2Vzc2lvbl9nZXRfd2ViZGF2X3NlcnZlcihzZXNzaW9u
KTsKPiArICAgIGdfcmV0dXJuX2lmX2ZhaWwocGhvZGF2X3NlcnZlciAhPSBOVUxMKTsKPiArCgpB
cyB0aGlzIHdpbGwgYmUgYWx3YXlzIE5VTEwgd2UnbGwgaGF2ZSBhIGNyaXRpY2FsIGZvciBlYWNo
IG1lc3NhZ2Ugc2VudCBieQp0aGUgc2VydmVyLgpnX3JldHVybl9pZl9mYWlsIGRvY3VtZW50YXRp
b24gc3RhdGVzOgoKIklmIGV4cHIgZXZhbHVhdGVzIHRvIEZBTFNFLCB0aGUgY3VycmVudCBmdW5j
dGlvbiBzaG91bGQgYmUgY29uc2lkZXJlZCB0byBoYXZlCnVuZGVmaW5lZCBiZWhhdmlvdXIgKGEg
cHJvZ3JhbW1lciBlcnJvcikuIFRoZSBvbmx5IGNvcnJlY3Qgc29sdXRpb24gdG8gc3VjaAphbiBl
cnJvciBpcyB0byBjaGFuZ2UgdGhlIG1vZHVsZSB0aGF0IGlzIGNhbGxpbmcgdGhlIGN1cnJlbnQg
ZnVuY3Rpb24sCnNvIHRoYXQgaXQgYXZvaWRzIHRoaXMgaW5jb3JyZWN0IGNhbGwuIgoKU28gdGhp
cyBpcyBhIHdyb25nIHVzYWdlIG9mIGdfcmV0dXJuX2lmX2ZhaWwuCgo+ICsgICAgc2VydmVyID0g
cGhvZGF2X3NlcnZlcl9nZXRfc291cF9zZXJ2ZXIocGhvZGF2X3NlcnZlcik7Cj4gKyAgICBnX3Jl
dHVybl9pZl9mYWlsKHNlcnZlciAhPSBOVUxMKTsKPiAgCj4gICAgICBDSEFOTkVMX0RFQlVHKHNl
bGYsICJzdGFydGluZyBjbGllbnQgJSIgR19HSU5UNjRfRk9STUFULAo+ICAgICAgYy0+ZGVtdXgu
Y2xpZW50KTsKPiAgCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
