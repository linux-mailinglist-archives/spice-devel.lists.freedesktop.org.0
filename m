Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E3F59551
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07146E893;
	Fri, 28 Jun 2019 07:46:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0976E892
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1785859451
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F43D5C737
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:55 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06C541806B15
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:55 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:46:54 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2087001786.25082796.1561708014941.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190617163456.12359-1-fziglio@redhat.com>
References: <1321EDAF-9A69-490E-955D-2FD0AF7EB8FF@redhat.com>
 <20190617163456.12359-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: spice-char: Add some documentation to SpiceCharDeviceInterface
Thread-Index: XEfUT0tktyBqrdAvxYN628z+lZCkpw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 28 Jun 2019 07:46:55 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] spice-char: Add some
 documentation to SpiceCharDeviceInterface
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

cGluZwoKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KPiAtLS0KPiAgc2VydmVyL3NwaWNlLWNoYXIuaCB8IDI2ICsrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4gCj4gQ2hhbmdlcyBz
aW5jZSB2MToKPiAtIHVwZGF0ZWQgY29tbWVudHMKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3Nw
aWNlLWNoYXIuaCBiL3NlcnZlci9zcGljZS1jaGFyLmgKPiBpbmRleCAxYThhMDMxZDIuLmEzYjlk
MjZiZiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvc3BpY2UtY2hhci5oCj4gKysrIGIvc2VydmVyL3Nw
aWNlLWNoYXIuaAo+IEBAIC00MCw5ICs0MCwzNSBAQCB0eXBlZGVmIGVudW0gewo+ICBzdHJ1Y3Qg
U3BpY2VDaGFyRGV2aWNlSW50ZXJmYWNlIHsKPiAgICAgIFNwaWNlQmFzZUludGVyZmFjZSBiYXNl
Owo+ICAKPiArICAgIC8qIFNldCB0aGUgc3RhdGUgb2YgdGhlIGRldmljZS4KPiArICAgICAqIGNv
bm5lY3RlZCBzaG91bGQgYmUgMCBvciAxLgo+ICsgICAgICogU2V0dGluZyBzdGF0ZSB0byAwIGNh
dXNlcyB0aGUgZGV2aWNlIHRvIGJlIGRpc2FibGVkLgo+ICsgICAgICogVGhpcyBjYW4gYmUgdXNl
ZCBieSBTUElDRSBzZXJ2ZXIgdG8gdGVsbCBndWVzdCB0aGF0IGRldmljZSBpcyBub3QKPiArICAg
ICAqIHdvcmtpbmcgYW55bW9yZSAoZm9yIGluc3RhbmNlIGJlY2F1c2UgdGhlIGd1ZXN0IGl0c2Vs
ZiBzZW50IHNvbWUKPiArICAgICAqIHdyb25nIHJlcXVlc3QpLgo+ICsgICAgICovCj4gICAgICB2
b2lkICgqc3RhdGUpKFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sIGludCBjb25uZWN0ZWQp
Owo+ICsKPiArICAgIC8qIFdyaXRlIHNvbWUgYnl0ZXMgdG8gdGhlIGNoYXJhY3RlciBkZXZpY2Uu
Cj4gKyAgICAgKiBSZXR1cm5zIGJ5dGVzIGNvcGllZCBmcm9tIGJ1ZiBvciBhIHZhbHVlIDwgMCBv
biBlcnJvcnMuCj4gKyAgICAgKiBJZiBhYmxlIHRvIHdyaXRlIHNvbWUgYnl0ZXMgdGhlIGZ1bmN0
aW9uIHNob3VsZCByZXR1cm4gdGhlIGFtb3VudCBvZgo+ICsgICAgICogYnl0ZXMgc3VjY2Vzc2Z1
bGx5IHdyaXR0ZW4uCj4gKyAgICAgKiBGdW5jdGlvbiBjYW4gcmV0dXJuIGEgdmFsdWUgPCBsZW4s
IGV2ZW4gMC4KPiArICAgICAqIGVycm5vIGlzIG5vdCBkZXRlcm1pbmVkIGFmdGVyIGNhbGxpbmcg
dGhpcyBmdW5jdGlvbi4KPiArICAgICAqIEZ1bmN0aW9uIHNob3VsZCBiZSBpbXBsZW1lbnRlZCBh
cyBuby1ibG9ja2luZy4KPiArICAgICAqIEEgbGVuIDwgMCBjYXVzZXMgaW5kZXRlcm1pbmF0ZSBy
ZXN1bHRzLgo+ICsgICAgICovCj4gICAgICBpbnQgKCp3cml0ZSkoU3BpY2VDaGFyRGV2aWNlSW5z
dGFuY2UgKnNpbiwgY29uc3QgdWludDhfdCAqYnVmLCBpbnQgbGVuKTsKPiArCj4gKyAgICAvKiBS
ZWFkIHNvbWUgYnl0ZXMgZnJvbSB0aGUgY2hhcmFjdGVyIGRldmljZS4KPiArICAgICAqIFJldHVy
bnMgYnl0ZXMgY29waWVkIGludG8gYnVmIG9yIGEgdmFsdWUgPCAwIG9uIGVycm9ycy4KPiArICAg
ICAqIEZ1bmN0aW9uIGNhbiByZXR1cm4gMCBpZiBubyBkYXRhIGlzIGF2YWlsYWJsZSBvciBsZW4g
aXMgMC4KPiArICAgICAqIGVycm5vIGlzIG5vdCBkZXRlcm1pbmVkIGFmdGVyIGNhbGxpbmcgdGhp
cyBmdW5jdGlvbi4KPiArICAgICAqIEZ1bmN0aW9uIHNob3VsZCBiZSBpbXBsZW1lbnRlZCBhcyBu
by1ibG9ja2luZy4KPiArICAgICAqIEEgbGVuIDwgMCBjYXVzZXMgaW5kZXRlcm1pbmF0ZSByZXN1
bHRzLgo+ICsgICAgICovCj4gICAgICBpbnQgKCpyZWFkKShTcGljZUNoYXJEZXZpY2VJbnN0YW5j
ZSAqc2luLCB1aW50OF90ICpidWYsIGludCBsZW4pOwo+ICsKPiAgICAgIHZvaWQgKCpldmVudCko
U3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKnNpbiwgdWludDhfdCBldmVudCk7Cj4gICAgICBzcGlj
ZV9jaGFyX2RldmljZV9mbGFncyBmbGFnczsKPiAgfTsKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
