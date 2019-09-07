Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEF7AC537
	for <lists+spice-devel@lfdr.de>; Sat,  7 Sep 2019 09:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984DF89FF7;
	Sat,  7 Sep 2019 07:46:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E03189FF7
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Sep 2019 07:46:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3728819CFF5
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Sep 2019 07:46:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B63660BF1
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Sep 2019 07:46:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1735418005A0;
 Sat,  7 Sep 2019 07:46:03 +0000 (UTC)
Date: Sat, 7 Sep 2019 03:46:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2050330981.11026490.1567842362845.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190906152704.5515-1-fziglio@redhat.com>
References: <20190906152704.5515-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.6]
Thread-Topic: spice-session: Fix SWAP_STR macro
Thread-Index: rTBT4akBlwoVA80XzoM+PkyKeoRHpA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Sat, 07 Sep 2019 07:46:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-session: Fix SWAP_STR
 macro
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

PiAKPiBSZWFsbHkgc3dhcCAieCIgYW5kICJ5Iiwgbm90IHRlbXBvcmFyeSBjb3BpZXMuCj4gVGhl
IGlzc3VlIHdhcyBpbnRyb2R1Y2VkIGJ5IDAxYzYzNDMgIlVzZSBtYWNybyB0byBzd2FwCj4gZGF0
YSBpbiBzcGljZV9zZXNzaW9uX3N0YXJ0X21pZ3JhdGluZygpIi4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3JjL3NwaWNl
LXNlc3Npb24uYyB8IDkgKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCj4gCj4gUmVtb3ZlZCBSRkMuCj4gVGVzdGVkLCB0aGUgb3JpZ2lu
YWwgc2Vzc2lvbiBpcyB1cGRhdGVkIHdpdGggdGhlIG5ldyB2YWx1ZXMKPiBhZnRlciBhbGwgY29u
bmVjdGlvbnMgYXJlIGVzdGFibGlzaGVkLgo+IEFzIHVzdWFsbHkgdGhlcmUgYXJlIG5vIG90aGVy
IGNvbm5lY3Rpb24gYWZ0ZXIgdGhlc2UgdGhlCj4gcHJvYmxlbSBpcyBub3Qgbm90ZWQuCj4gCgpU
aGUgcGF0Y2ggaXMgd29ya2luZy4gSSBtYW5hZ2UgdG8gdGVzdCBpdCBzZXR0aW5nIHVwIDIgVk1z
IHdpdGggaVNDU0kgdGFyZ2V0LApxdWl0ZSBlYXN5IHNldHVwIG5vdCByZXF1aXJpbmcgYWdlcyB0
byBkbyBpdCwgd2l0aCBORlMgSSBoYWQgYW4gaXNzdWUgYW5kCnN5c3RlbSB3YXMgaGF2aW5nIHBy
b2JsZW1zIHNodXR0aW5nIGRvd24uCgpCeSB0aGUgd2F5LiBUaGUgInN3YXAiIGlzIHF1aXRlIHdl
aXJkLCBsb29rcyBsaWtlIGFuIGhhY2sgdG8gYXZvaWQgY2hhbmdpbmcKU3BpY2VTZXNzaW9uIChh
bHNvIGFsc28gc2ltaWxhciBjb2RlIGZvciBTcGljZUNoYW5uZWwpIHBvaW50ZXJzIGJ1dCBvbgp0
aGUgb3RoZXIgc2lkZSBpdCBtYWtlIHRoZSBjb2RlIGhhcmRlciB0byB1bmRlcnN0YW5kLiBGb3Ig
aW5zdGFuY2UgZm9yIGNoYW5uZWwKaXMgbW9yZSBjb21wbGljYXRlZCwgeW91IGNvcHkgdGhlIGJh
c2UgU3BpY2VDaGFubmVsIChzZWUgdGhlIHByb2JsZW0gb2YgIm9iamVjdApzbGljaW5nIiBpbiBD
KyspIGJ1dCB0aGVuIHlvdSBoYXZlIHRvIHJlc2V0IHRoZSBjaGFubmVsIGluIG9yZGVyIHRvIHB1
dCB0aGUKcmVzZXQgb2YgdGhlIHN0YXRlIHRvIGEgcHJvcGVyIG9uZS4gT24gdGhlIHNlcnZlciwg
SU1ITyBtb3JlIGNvcnJlY3RseSwgbmV3CmNoYW5uZWwgb2JqZWN0cyAoYWxzbyBiZWNhdXNlIHRo
ZSBvbGQgb2JqZWN0IGFyZSBpbiBhbm90aGVyIG1hY2hpbmUhKSByZXBsYWNlCm9sZCBvbmVzLgoK
QW5vdGhlciBwcm9ibGVtIHRoYXQgSSBub3RlZCBpcyBhdCBwcm90b2NvbCBsZXZlbC4gVGhlIG1l
c3NhZ2UgZnJvbSBtYWluIGNoYW5uZWwKKERzdEluZm8gYmFzaWNhbGx5KSBjb250YWlucyBuZXc6
Ci0gaG9zdG5hbWUKLSBwb3J0Ci0gc2VjdXJlIHBvcnQKLSBjZXJ0aWZpY2F0ZQpUaGlzIGhvd2V2
ZXIgZG9lcyBub3QgY292ZXI6Ci0gYWNjZXNzZXMgdGhyb3VnaCBzc2gKLSBhY2Nlc3NlcyB0aHJv
dWdoIHByb3h5Ci0gdXNpbmcgdW5peCBzb2NrZXQgKGlmIG9uZSBob3N0IGlzIGxvY2FsKQpNYXli
ZSB3b3VsZCBiZSB3b3J0aCBhZGRpbmcgYSBnZW5lcmljIFVSTD8gTm90ZSB0aGF0IGluIGNhc2Ug
b2YgcHJveHkgdGhlClVSTCBzaG91bGQgYmUgcHJvdmlkZWQgZXh0ZXJuYWxseSAobWF5YmUgZGVw
ZW5kaW5nIG9uIHRoZSBjbGllbnQpLgoKSSByZW1lbWJlciBhbHNvIFZpY3RvciBoYWQgc29tZSBh
ZGRpdGlvbmFsIG5lZWQgdG8gZXh0ZW5kIHRoZSBwcm90b2NvbApkdWUgdG8gb3RoZXIgbWlncmF0
aW9uIGxpbWl0YXRpb25zLgoKPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXNlc3Npb24uYyBiL3Ny
Yy9zcGljZS1zZXNzaW9uLmMKPiBpbmRleCAwNGJhMTI0YS4uZDBkOWU1NDEgMTAwNjQ0Cj4gLS0t
IGEvc3JjL3NwaWNlLXNlc3Npb24uYwo+ICsrKyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKPiBAQCAt
MTc0MiwxMiArMTc0Miw5IEBAIHZvaWQgc3BpY2Vfc2Vzc2lvbl9zd2l0Y2hpbmdfZGlzY29ubmVj
dChTcGljZVNlc3Npb24KPiAqc2VsZikKPiAgfQo+ICAKPiAgI2RlZmluZSBTV0FQX1NUUih4LCB5
KSBHX1NUTVRfU1RBUlQgeyBcCj4gLSAgICBjb25zdCBnY2hhciAqdG1wOyAgICAgICAgICAgICAg
ICAgXAo+IC0gICAgY29uc3QgZ2NoYXIgKmEgPSB4OyAgICAgICAgICAgICAgIFwKPiAtICAgIGNv
bnN0IGdjaGFyICpiID0geTsgICAgICAgICAgICAgICBcCj4gLSAgICB0bXAgPSBhOyAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAo+IC0gICAgYSA9IGI7ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFwKPiAtICAgIGIgPSB0bXA7ICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gKyAgICBn
Y2hhciAqdG1wID0geDsgICAgICAgICAgICAgICAgICAgXAo+ICsgICAgeCA9IHk7ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFwKPiArICAgIHkgPSB0bXA7ICAgICAgICAgICAgICAgICAgICAg
ICAgICBcCj4gIH0gR19TVE1UX0VORAo+ICAKPiAgR19HTlVDX0lOVEVSTkFMCj4gLS0KPiAyLjIw
LjEKPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
