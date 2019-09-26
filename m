Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B3EBF2A3
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 14:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0CDE6ECBD;
	Thu, 26 Sep 2019 12:13:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A666ECBE
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 12:13:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D17B63082141
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 12:13:46 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D7D615D9C9;
 Thu, 26 Sep 2019 12:13:43 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190925100300.30019-1-victortoso@redhat.com>
 <20190925100300.30019-3-victortoso@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <f740a90d-836b-57ed-933f-bac977bcaa5c@redhat.com>
Date: Thu, 26 Sep 2019 15:13:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190925100300.30019-3-victortoso@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 26 Sep 2019 12:13:46 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v2 2/8] tests: migrate: use uri for
 default's spicy client
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOS8yNS8xOSAxOjAyIFBNLCBWaWN0b3IgVG9zbyB3cm90ZToKPiBGcm9tOiBWaWN0b3IgVG9z
byA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZp
Y3RvcnRvc29AcmVkaGF0LmNvbT4KPiBBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+Cj4gLS0tCj4gICB0ZXN0cy9taWdyYXRlLnB5IHwgNCArKy0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5weQo+IGluZGV4IDBjMzAyYzky
Li41YTBmNTkzMCAxMDA3NTUKPiAtLS0gYS90ZXN0cy9taWdyYXRlLnB5Cj4gKysrIGIvdGVzdHMv
bWlncmF0ZS5weQo+IEBAIC05Niw4ICs5Niw4IEBAIGRlZiBzdGFydF9xZW11KHFlbXVfZXhlYywg
aW1hZ2UsIHNwaWNlX3BvcnQsIHFtcF9maWxlbmFtZSwgaW5jb21pbmdfcG9ydD1Ob25lLCBlCj4g
ICAgICAgcmV0dXJuIHByb2MKPiAgIAo+ICAgZGVmIHN0YXJ0X2NsaWVudChjbGllbnQsIHNwaWNl
X3BvcnQpOgo+IC0gICAgcmV0dXJuIFBvcGVuKCgiJShjbGllbnQpcyAtaCBsb2NhbGhvc3QgLXAg
JShwb3J0KWQiICUgZGljdChwb3J0PXNwaWNlX3BvcnQsCj4gLSAgICAgICAgY2xpZW50PWNsaWVu
dCkpLnNwbGl0KCksIGV4ZWN1dGFibGU9Y2xpZW50KQo+ICsgICAgY2xpZW50X2NtZCA9ICJzcGlj
eSAtLXVyaSBzcGljZTovL2xvY2FsaG9zdDolcyIgJSAoc3BpY2VfcG9ydCkKPiArICAgIHJldHVy
biBQb3BlbihjbGllbnRfY21kLnNwbGl0KCksIGV4ZWN1dGFibGU9Y2xpZW50KQoKSGksCgpTaW5j
ZSB5b3UgcmVtb3RlLXZpZXdlciBpcyBtYWRlIGF2YWlsYWJsZSBhcyBhIGNsaWVudCBvbiB0aGUg
bmV4dCBwYXRjaCwKeW91IGNhbiBsZWF2ZSAnJShjbGllbnQpcyAnIGFzIGlzIGFuZCBub3QgcmVw
bGFjZSBpdCB3aXRoICdzcGljeScuCgpUaGF0IGFsc28gbWFrZXMgdGhlIG5leHQgcGF0Y2ggc21h
bGxlci4KClVyaS4KCj4gICAKPiAgIGRlZiB3YWl0X2FjdGl2ZShxLCBhY3RpdmUpOgo+ICAgICAg
IGV2ZW50cyA9IFsiUkVTVU1FIl0gaWYgYWN0aXZlIGVsc2UgWyJTVE9QIl0KPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
