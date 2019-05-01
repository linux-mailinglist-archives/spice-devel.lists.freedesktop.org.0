Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A3E10834
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 15:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED1A9892B9;
	Wed,  1 May 2019 13:16:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5942D892B9
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 13:16:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E93893084266
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 13:16:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DFD7D721F2
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 13:16:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5D993FB10;
 Wed,  1 May 2019 13:16:29 +0000 (UTC)
Date: Wed, 1 May 2019 09:16:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <521356080.15822837.1556716588526.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190501123135.1321-1-ssheribe@redhat.com>
References: <20190501123135.1321-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.17]
Thread-Topic: gst-plugin: Initialize X connection also when ximagesrc is used
Thread-Index: jWmGovmKP+1wJ4jExMM1gxuseOc09g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 01 May 2019 13:16:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-streaming-agent 1/3] gst-plugin:
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
LW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KCkZvciB0aGUgc2Vy
aWVzCkFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkZyZWRp
YW5vCgo+IC0tLQo+IAo+IENoYW5nZXMgZnJvbSB2MToKPiAtcmVtb3ZlIHVubmVjZXNzYXJ5IGNo
ZWNrCj4gLW1ha2UgKmRweSBjb25zdAo+IC1hZGRlZCB0d28gbWlub3IgZm9sbG93IHVwIHBhdGNo
ZXMgKG5vdCByZWFsbHkgbmVjZXNzYXJ5KQo+IAo+IAo+IAo+IC0tLQo+ICBzcmMvZ3N0LXBsdWdp
bi5jcHAgfCAxNiArKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5j
cHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiBpbmRleCAzZWRmOWY1Li44MGI1NmFlIDEwMDY0NAo+
IC0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IEBA
IC04NCw5ICs4NCw5IEBAIHByaXZhdGU6Cj4gICAgICBHc3RFbGVtZW50ICpnZXRfZW5jb2Rlcl9w
bHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW5ncywKPiAgICAgIEdz
dENhcHNVUHRyICZzaW5rX2NhcHMpOwo+ICAgICAgR3N0RWxlbWVudCAqZ2V0X2NhcHR1cmVfcGx1
Z2luKGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0aW5ncwo+ICAgICAgJnNldHRpbmdzKTsKPiAg
ICAgIHZvaWQgcGlwZWxpbmVfaW5pdChjb25zdCBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MgJnNl
dHRpbmdzKTsKPiArICAgIERpc3BsYXkgKmNvbnN0IGRweTsKPiAgI2lmIFhMSUJfQ0FQVFVSRQo+
ICAgICAgdm9pZCB4bGliX2NhcHR1cmUoKTsKPiAtICAgIERpc3BsYXkgKmRweTsKPiAgICAgIFhJ
bWFnZSAqaW1hZ2UgPSBudWxscHRyOwo+ICAjZW5kaWYKPiAgICAgIEdzdE9iamVjdFVQdHI8R3N0
RWxlbWVudD4gcGlwZWxpbmUsIGNhcHR1cmUsIHNpbms7Cj4gQEAgLTI1MSwxMyArMjUxLDYgQEAg
dm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQoY29uc3QKPiBHc3RyZWFt
ZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+ICAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9l
cnJvcigiTGlua2luZyBnc3RyZWFtZXIncyBlbGVtZW50cyBmYWlsZWQiKTsKPiAgICAgIH0KPiAg
Cj4gLSNpZiBYTElCX0NBUFRVUkUKPiAtICAgIGRweSA9IFhPcGVuRGlzcGxheShudWxscHRyKTsK
PiAtICAgIGlmICghZHB5KSB7Cj4gLSAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJV
bmFibGUgdG8gaW5pdGlhbGl6ZSBYMTEiKTsKPiAtICAgIH0KPiAtI2VuZGlmCj4gLQo+ICAgICAg
Z3N0X2VsZW1lbnRfc2V0X3N0YXRlKHBpcGVsaW5lLmdldCgpLCBHU1RfU1RBVEVfUExBWUlORyk7
Cj4gIAo+ICAjaWYgIVhMSUJfQ0FQVFVSRQo+IEBAIC0yOTAsOCArMjgzLDExIEBAIHZvaWQgR3N0
cmVhbWVyRnJhbWVDYXB0dXJlOjpwaXBlbGluZV9pbml0KGNvbnN0Cj4gR3N0cmVhbWVyRW5jb2Rl
clNldHRpbmdzICZzZXR0aW4KPiAgfQo+ICAKPiAgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpHc3Ry
ZWFtZXJGcmFtZUNhcHR1cmUoY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzCj4gICZzZXR0
aW5ncyk6Cj4gLSAgICBzZXR0aW5ncyhzZXR0aW5ncykKPiArICAgIGRweShYT3BlbkRpc3BsYXko
bnVsbHB0cikpLHNldHRpbmdzKHNldHRpbmdzKQo+ICB7Cj4gKyAgICBpZiAoIWRweSkgewo+ICsg
ICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiVW5hYmxlIHRvIGluaXRpYWxpemUgWDEx
Iik7Cj4gKyAgICB9Cj4gICAgICBwaXBlbGluZV9pbml0KHNldHRpbmdzKTsKPiAgfQo+ICAKPiBA
QCAtMzEzLDkgKzMwOSw3IEBAIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6fkdzdHJlYW1lckZyYW1l
Q2FwdHVyZSgpCj4gIHsKPiAgICAgIGZyZWVfc2FtcGxlKCk7Cj4gICAgICBnc3RfZWxlbWVudF9z
ZXRfc3RhdGUocGlwZWxpbmUuZ2V0KCksIEdTVF9TVEFURV9OVUxMKTsKPiAtI2lmIFhMSUJfQ0FQ
VFVSRQo+ICAgICAgWENsb3NlRGlzcGxheShkcHkpOwo+IC0jZW5kaWYKPiAgfQo+ICAKPiAgdm9p
ZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OlJlc2V0KCkKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
