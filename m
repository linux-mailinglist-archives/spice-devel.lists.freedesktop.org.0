Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5453789198
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 13:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD63A6E33A;
	Sun, 11 Aug 2019 11:57:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C57B6E33A
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:57:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 392028A004
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:57:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F96C10013D9
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 11:57:00 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23E9C18089C8;
 Sun, 11 Aug 2019 11:57:00 +0000 (UTC)
Date: Sun, 11 Aug 2019 07:56:59 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <833667726.5453453.1565524619663.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190811114723.22360-2-uril@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <20190811114723.22360-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.24]
Thread-Topic: test-loop: increment a variable outside of spice_assert
Thread-Index: cNKP835aJbC7fFusekAPfiDzO8Ye4g==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Sun, 11 Aug 2019 11:57:00 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 2/3] test-loop: increment a
 variable outside of spice_assert
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

PiAKPiBzcGljZV9hc3NlcnQgaXMgYSBtYWNybyBhbmQgaXQgbWF5IGJlIHRoYXQgdmFyaWFibGUg
d2lsbAo+IGJlIGluY3JlbWVudGVkIHR3aWNlIChpbiB0aGVvcnksIHBvc3NpYmx5IG5vdCBpbiBw
cmFjdGljZSkuCj4gCgpObywgdGhlIGlzc3VlIGlzIHRoYXQgQ292ZXJpdHkgYXNzdW1lIHRoYXQg
Y29kZSBjYW4gYmUgc3RyaXBwZWQgb3V0CmFzIHVzdWFsbHkgYXNzZXJ0IGNhbiBiZSBzdHJpcHBl
ZCBvdXQgKGRlZmluaW5nIE5ERUJVRyBmb3Igbm9ybWFsCmFzc2VydCkuCgo+IFNpbXBseSBkbyBp
dCBvbmUgbGluZSBhYm92ZS4KPiAKPiBGb3VuZCBieSBjb3ZzY2FuCj4gCj4gU2lnbmVkLW9mZi1i
eTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgoKQmVzaWRlIHRoZSBjb21taXQgbWVzc2Fn
ZSBubyBjb21wbGFpbnMgdG8gbWFrZSBDb3Zlcml0eSBoYXBweQoKPiAtLS0KPiAgc2VydmVyL3Rl
c3RzL3Rlc3QtbG9vcC5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29w
LmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMKPiBpbmRleCA4MmFmODBhYjMuLjRkZjNhN2Qy
MCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMKPiArKysgYi9zZXJ2ZXIv
dGVzdHMvdGVzdC1sb29wLmMKPiBAQCAtNzgsNyArNzgsOCBAQCBzdGF0aWMgU3BpY2VUaW1lciAq
dHdpY2VfdGltZXJzX3JlbW92ZVsyXSA9IHsgTlVMTCwgTlVMTCB9Owo+ICBzdGF0aWMgaW50IHR3
aWNlX3JlbW92ZV9jYWxsZWQgPSAwOwo+ICBzdGF0aWMgdm9pZCB0aW1lcl9ub3RfdHdpY2VfcmVt
b3ZlKHZvaWQgKm9wYXF1ZSkKPiAgewo+IC0gICAgc3BpY2VfYXNzZXJ0KCsrdHdpY2VfcmVtb3Zl
X2NhbGxlZCA9PSAxKTsKPiArICAgICsrdHdpY2VfcmVtb3ZlX2NhbGxlZDsKPiArICAgIHNwaWNl
X2Fzc2VydCh0d2ljZV9yZW1vdmVfY2FsbGVkID09IDEpOwo+ICAKPiAgICAgIC8qIGRlbGV0ZSB0
aW1lcnMsIHNob3VsZCBub3QgaGF2ZSBhbm90aGVyIGNhbGwgKi8KPiAgICAgIGNvcmUtPnRpbWVy
X3JlbW92ZSh0d2ljZV90aW1lcnNfcmVtb3ZlWzBdKTsKCkZyZWRpYW5vCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
