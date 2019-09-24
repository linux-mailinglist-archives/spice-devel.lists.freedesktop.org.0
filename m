Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC26BCAB4
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 16:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852F789237;
	Tue, 24 Sep 2019 14:57:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84558928B
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:57:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 507D2308FBA9
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:57:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 44F1D1001B33
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:57:45 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3AEA24EE50;
 Tue, 24 Sep 2019 14:57:45 +0000 (UTC)
Date: Tue, 24 Sep 2019 10:57:45 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1762044508.3100185.1569337065189.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190924140654.9351-2-ssheribe@redhat.com>
References: <20190924140654.9351-1-ssheribe@redhat.com>
 <20190924140654.9351-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.8]
Thread-Topic: gstreamer: add debug message for each element added to pipeline
Thread-Index: rONwuryt/xix5ZRFilkrtGONHng7EA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 24 Sep 2019 14:57:45 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: add debug
 message for each element added to pipeline
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBTbmlyIFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgo+
IC0tLQo+IAo+IFRoaXMgaGVscHMgdG8gZGVidWcgcGx1Z2lucyBsb2FkIHJlbGF0ZWQgaXNzdWVz
CgpXaHkgdGhpcyBpcyBub3QgaW4gdGhlIGNvbW1pdCBtZXNzYWdlPyBXaGljaCBraW5kIG9mIGlz
c3VlcyAodGhpcyB0b28Kd291bGQgYmUgZmluZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UpID8KCj4g
LS0tCj4gIHNyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IGluZGV4IDQzNzMyOGIuLjE2YmZh
MzcgMTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+ICsrKyBiL3NyYy9j
aGFubmVsLWRpc3BsYXktZ3N0LmMKPiBAQCAtNDczLDYgKzQ3MywxMCBAQCBzaW5rX2V2ZW50X3By
b2JlKEdzdFBhZCAqcGFkLCBHc3RQYWRQcm9iZUluZm8gKmluZm8sCj4gZ3BvaW50ZXIgZGF0YSkK
PiAgc3RhdGljIHZvaWQKPiAgZWxlbWVudF9zZXR1cF9jYihHc3RFbGVtZW50ICpwaXBlbGluZSwg
R3N0RWxlbWVudCAqZWxlbWVudCwgU3BpY2VHc3REZWNvZGVyCj4gICpkZWNvZGVyKQo+ICB7Cj4g
KyAgICBHc3RFbGVtZW50RmFjdG9yeSAqZiA9IGdzdF9lbGVtZW50X2dldF9mYWN0b3J5IChlbGVt
ZW50KTsKClN0eWxlOiBzcGFjZSBhZnRlciBmdW5jdGlvbiBuYW1lLgoKPiArCj4gKyAgICBTUElD
RV9ERUJVRygiQSBuZXcgZWxlbWVudCB3YXMgYWRkZWQgdG8gR3N0cmVhbWVyJ3MgcGlwZWxpbmUg
KCVzKSIsCj4gKyAgICAgICAgICAgICAgICBmID8gR1NUX09CSkVDVF9OQU1FKGYpIDogR1NUX09C
SkVDVF9OQU1FKGVsZW1lbnQpKTsKCldoeSBqdXN0IG5vdCBHU1RfT0JKRUNUX05BTUUoZWxlbWVu
dCkgPyBPciBhbHdheXMgZWxlbWVudCBuYW1lIGFuZCBmYWN0b3J5Cm9uZSBpZiBhdmFpbGFibGUg
PwoKPiAgICAgIC8qIEF0dGFjaCBhIHByb2JlIHRvIHRoZSBzaW5rIHRvIHVwZGF0ZSB0aGUgc3Rh
dGlzdGljcyAqLwo+ICAgICAgaWYgKEdTVF9JU19CQVNFX1NJTksoZWxlbWVudCkpIHsKPiAgICAg
ICAgICBHc3RQYWQgKnBhZCA9IGdzdF9lbGVtZW50X2dldF9zdGF0aWNfcGFkKGVsZW1lbnQsICJz
aW5rIik7CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
