Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1C6FC25
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 17:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CCB88F9B;
	Tue, 30 Apr 2019 15:06:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5CE88F9B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 15:06:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EFA2AC049E24
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 15:06:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E61461001284
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 15:06:06 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DBEF218089CB;
 Tue, 30 Apr 2019 15:06:06 +0000 (UTC)
Date: Tue, 30 Apr 2019 11:06:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <475537356.15663509.1556636765316.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190430144907.6409-1-ssheribe@redhat.com>
References: <20190430144907.6409-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.23, 10.4.195.5]
Thread-Topic: gst-plugin: Initialize X connection also when ximagesrc is used
Thread-Index: Y+33zNv0wmeh/Yco+Qraj0NjTnCwdQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 30 Apr 2019 15:06:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin:
 Initialize X connection also when ximagesrc is used
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

PiAKPiBJbiBvcmRlciB0byBnZXQgZ3JhcGhpYyBkZXZpY2VzIGluZm8gYSBjb25uZWN0aW9uIHRv
IFggc2VydmVyCj4gaXMgcmVxdWlyZWQsIG1ha2Ugc3VyZSB3ZSBnZXQgaXQgYWxzbyB3aGVuIHhp
bWFnZXNyYyBjYXB0dXJlCj4gaXMgdXNlZCAoIFhMSUJfQ0FQVFVSRT0wICkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3Jj
L2dzdC1wbHVnaW4uY3BwIHwgMTggKysrKysrKystLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMv
Z3N0LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiBpbmRleCAzZWRmOWY1Li4wODE0
ZWY1IDEwMDY0NAo+IC0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1
Z2luLmNwcAo+IEBAIC04NCw5ICs4NCw5IEBAIHByaXZhdGU6Cj4gICAgICBHc3RFbGVtZW50ICpn
ZXRfZW5jb2Rlcl9wbHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW5n
cywKPiAgICAgIEdzdENhcHNVUHRyICZzaW5rX2NhcHMpOwo+ICAgICAgR3N0RWxlbWVudCAqZ2V0
X2NhcHR1cmVfcGx1Z2luKGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0aW5ncwo+ICAgICAgJnNl
dHRpbmdzKTsKPiAgICAgIHZvaWQgcGlwZWxpbmVfaW5pdChjb25zdCBHc3RyZWFtZXJFbmNvZGVy
U2V0dGluZ3MgJnNldHRpbmdzKTsKPiArICAgIERpc3BsYXkgKmRweTsKCk1heWJlIHlvdSBjYW4g
aGF2ZSAiRGlzcGxheSAqY29uc3QgZHB5OyIgPwoKPiAgI2lmIFhMSUJfQ0FQVFVSRQo+ICAgICAg
dm9pZCB4bGliX2NhcHR1cmUoKTsKPiAtICAgIERpc3BsYXkgKmRweTsKPiAgICAgIFhJbWFnZSAq
aW1hZ2UgPSBudWxscHRyOwo+ICAjZW5kaWYKPiAgICAgIEdzdE9iamVjdFVQdHI8R3N0RWxlbWVu
dD4gcGlwZWxpbmUsIGNhcHR1cmUsIHNpbms7Cj4gQEAgLTI1MSwxMyArMjUxLDYgQEAgdm9pZCBH
c3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQoY29uc3QKPiBHc3RyZWFtZXJFbmNv
ZGVyU2V0dGluZ3MgJnNldHRpbgo+ICAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigi
TGlua2luZyBnc3RyZWFtZXIncyBlbGVtZW50cyBmYWlsZWQiKTsKPiAgICAgIH0KPiAgCj4gLSNp
ZiBYTElCX0NBUFRVUkUKPiAtICAgIGRweSA9IFhPcGVuRGlzcGxheShudWxscHRyKTsKPiAtICAg
IGlmICghZHB5KSB7Cj4gLSAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJVbmFibGUg
dG8gaW5pdGlhbGl6ZSBYMTEiKTsKPiAtICAgIH0KPiAtI2VuZGlmCj4gLQo+ICAgICAgZ3N0X2Vs
ZW1lbnRfc2V0X3N0YXRlKHBpcGVsaW5lLmdldCgpLCBHU1RfU1RBVEVfUExBWUlORyk7Cj4gIAo+
ICAjaWYgIVhMSUJfQ0FQVFVSRQo+IEBAIC0yOTIsNiArMjg1LDEwIEBAIHZvaWQgR3N0cmVhbWVy
RnJhbWVDYXB0dXJlOjpwaXBlbGluZV9pbml0KGNvbnN0Cj4gR3N0cmVhbWVyRW5jb2RlclNldHRp
bmdzICZzZXR0aW4KPiAgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpHc3RyZWFtZXJGcmFtZUNhcHR1
cmUoY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzCj4gICZzZXR0aW5ncyk6Cj4gICAgICBz
ZXR0aW5ncyhzZXR0aW5ncykKPiAgewo+ICsgICAgZHB5ID0gWE9wZW5EaXNwbGF5KG51bGxwdHIp
Owo+ICsgICAgaWYgKCFkcHkpIHsKPiArICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3Io
IlVuYWJsZSB0byBpbml0aWFsaXplIFgxMSIpOwo+ICsgICAgfQo+ICAgICAgcGlwZWxpbmVfaW5p
dChzZXR0aW5ncyk7Cj4gIH0KPiAgCj4gQEAgLTMxMyw5ICszMTAsNyBAQCBHc3RyZWFtZXJGcmFt
ZUNhcHR1cmU6On5Hc3RyZWFtZXJGcmFtZUNhcHR1cmUoKQo+ICB7Cj4gICAgICBmcmVlX3NhbXBs
ZSgpOwo+ICAgICAgZ3N0X2VsZW1lbnRfc2V0X3N0YXRlKHBpcGVsaW5lLmdldCgpLCBHU1RfU1RB
VEVfTlVMTCk7Cj4gLSNpZiBYTElCX0NBUFRVUkUKPiAgICAgIFhDbG9zZURpc3BsYXkoZHB5KTsK
PiAtI2VuZGlmCj4gIH0KPiAgCj4gIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpSZXNldCgp
Cj4gQEAgLTMyNiw2ICszMjEsOSBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6UmVzZXQo
KQo+ICAjaWYgWExJQl9DQVBUVVJFCj4gIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjp4bGli
X2NhcHR1cmUoKQo+ICB7Cj4gKyAgICBpZiAoIWRweSkgewo+ICsgICAgICAgIHRocm93IHN0ZDo6
cnVudGltZV9lcnJvcigiWDExIGNvbm5lY3Rpb24gaXMgbm90IGluaXRpYWxpemVkIik7Cj4gKyAg
ICB9CgpXaHkgZG8geW91IG5lZWQgdGhpcz8gZHB5IGlzIGluaXRpYWxpemVkIG9uIHRoZSBjb25z
dHJ1Y3Rvciwgd2hvIHNob3VsZApjbGVhciB0aGUgcG9pbnRlcj8KCj4gICAgICBpbnQgc2NyZWVu
ID0gWERlZmF1bHRTY3JlZW4oZHB5KTsKPiAgCj4gICAgICBXaW5kb3cgd2luID0gUm9vdFdpbmRv
dyhkcHksIHNjcmVlbik7CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
