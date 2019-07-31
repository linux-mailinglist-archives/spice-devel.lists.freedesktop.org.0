Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA437BCFF
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 11:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E4A89B48;
	Wed, 31 Jul 2019 09:26:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA1F89B48
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 09:26:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1A811308218D
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 09:26:35 +0000 (UTC)
Received: from ptitpuce (ovpn-116-130.ams2.redhat.com [10.36.116.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F95B5D6A7
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 09:26:33 +0000 (UTC)
References: <20190731083337.19009-1-kpouget@redhat.com>
 <20190731083337.19009-4-kpouget@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
From: Christophe de Dinechin <dinechin@redhat.com>
To: spice-devel@lists.freedesktop.org
In-reply-to: <20190731083337.19009-4-kpouget@redhat.com>
Date: Wed, 31 Jul 2019 11:26:31 +0200
Message-ID: <m11ry6o8qg.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 31 Jul 2019 09:26:35 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-list] [RFC spice-streaming-agent 2/2]
 spice-streaming-agent: fully reset the capture loop on start/stop requests
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

CktldmluIFBvdWdldCB3cml0ZXM6Cgo+IFdpdGggdGhpcyBwYXRjaCwgc3BpY2Utc3RyZWFtaW5n
LWFnZW50IGV4aXRzIHRoZSBmcmFtZS1zZW5kaW5nIGxvb3AKPiB3aGVuIFNUQVJUL1NUT1AgcmVx
dWVzdHMgYXJlIHJlY2VpdmVkLiBUaGlzIGFsbG93cyB0aGUgcmVjb21wdXRhdGlvbgo+IG9mIHRo
ZSBtb3N0IHN1aXRhYmxlIGNhcHR1cmUvZW5jb2RpbmcgcGx1Z2luLCB0aGF0IG1heSBoYXZlIGJl
ZW4KPiB1cGRhdGVkIHdpdGggU1RBUlQvU1RPUCBtZXNzYWdlLgo+IC0tLQo+ICBzcmMvc3BpY2Ut
c3RyZWFtaW5nLWFnZW50LmNwcCB8IDkgKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXN0
cmVhbWluZy1hZ2VudC5jcHAgYi9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcAo+IGluZGV4
IDQ5ZjVkYzQuLjM2MjZlY2MgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLXN0cmVhbWluZy1hZ2Vu
dC5jcHAKPiArKysgYi9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcAo+IEBAIC0xMjYsNiAr
MTI2LDcgQEAgcHJpdmF0ZToKPiAgfTsKPgo+ICBzdGF0aWMgYm9vbCBzdHJlYW1pbmdfcmVxdWVz
dGVkID0gZmFsc2U7Cj4gK3N0YXRpYyBib29sIHJlc2V0X3JlcXVlc3RlZCA9IGZhbHNlOwo+ICBz
dGF0aWMgYm9vbCBxdWl0X3JlcXVlc3RlZCA9IGZhbHNlOwo+ICBzdGF0aWMgc3RkOjpzZXQ8U3Bp
Y2VWaWRlb0NvZGVjVHlwZT4gY2xpZW50X2NvZGVjczsKPgo+IEBAIC0xNjksNiArMTcwLDcgQEAg
c3RhdGljIHZvaWQgcmVhZF9jb21tYW5kX2Zyb21fZGV2aWNlKFN0cmVhbVBvcnQgJnN0cmVhbV9w
b3J0KQo+ICAgICAgICAgIFN0YXJ0U3RvcE1lc3NhZ2UgbXNnID0gaW5fbWVzc2FnZS5nZXRfcGF5
bG9hZDxTdGFydFN0b3BNZXNzYWdlPigpOwo+ICAgICAgICAgIHN0cmVhbWluZ19yZXF1ZXN0ZWQg
PSBtc2cuc3RhcnRfc3RyZWFtaW5nOwo+ICAgICAgICAgIGNsaWVudF9jb2RlY3MgPSBtc2cuY2xp
ZW50X2NvZGVjczsKPiArICAgICAgICByZXNldF9yZXF1ZXN0ZWQgPSB0cnVlOwo+Cj4gICAgICAg
ICAgc3lzbG9nKExPR19JTkZPLCAiR09UIFNUQVJUX1NUT1AgbWVzc2FnZSAtLSByZXF1ZXN0IHRv
ICVzIHN0cmVhbWluZyIsCj4gICAgICAgICAgICAgICAgIHN0cmVhbWluZ19yZXF1ZXN0ZWQgPyAi
U1RBUlQiIDogIlNUT1AiKTsKPiBAQCAtMjQwLDEzICsyNDIsMTYgQEAgZG9fY2FwdHVyZShTdHJl
YW1Qb3J0ICZzdHJlYW1fcG9ydCwgRnJhbWVMb2cgJmZyYW1lX2xvZywgQ29uY3JldGVBZ2VudCAm
YWdlbnQpCj4gICAgICAgICAgaWYgKHF1aXRfcmVxdWVzdGVkKSB7Cj4gICAgICAgICAgICAgIHJl
dHVybjsKPiAgICAgICAgICB9Cj4gKyAgICAgICAgcmVzZXRfcmVxdWVzdGVkID0gZmFsc2U7Cj4K
PiAgICAgICAgICBzeXNsb2coTE9HX0lORk8sICJzdHJlYW1pbmcgc3RhcnRzIG5vdyIpOwo+ICAg
ICAgICAgIHVpbnQ2NF90IHRpbWVfbGFzdCA9IDA7Cj4KPiAgICAgICAgICBzdGQ6OnVuaXF1ZV9w
dHI8RnJhbWVDYXB0dXJlPiBjYXB0dXJlKGFnZW50LkdldEJlc3RGcmFtZUNhcHR1cmUoY2xpZW50
X2NvZGVjcykpOwo+ICAgICAgICAgIGlmICghY2FwdHVyZSkgewo+IC0gICAgICAgICAgICB0aHJv
dyBzdGQ6OnJ1bnRpbWVfZXJyb3IoImNhbm5vdCBmaW5kIGEgc3VpdGFibGUgY2FwdHVyZSBzeXN0
ZW0iKTsKPiArICAgICAgICAgICAgc3lzbG9nKExPR19FUlIsICJFcnJvciBjYW5ub3QgZmluZCBh
IHN1aXRhYmxlIGNhcHR1cmUgc3lzdGVtIik7Cj4gKyAgICAgICAgICAgIHN0cmVhbWluZ19yZXF1
ZXN0ZWQgPSBmYWxzZTsKPiArICAgICAgICAgICAgY29udGludWU7CgpQbGVhc2UgYWRkIGEgY29t
bWVudCBleHBsYWluaW5nIHRoZSBlZmZlY3Qgb2YgY2xlYXJpbmcKInN0cmVhbWluZ19yZXF1ZXN0
ZWQiLiBNYXliZSBpdCB3b3VsZCBiZSB3b3J0aCByZW5hbWluZyB0aGUgdmFyaWFibGUKd2l0aCB5
b3VyIGNoYW5nZSwgbWF5YmUgc29tZXRoaW5nIGxpa2UgImNhcHR1cmVfaW5fcHJvZ3Jlc3MiPwoK
PiAgICAgICAgICB9Cj4KPiAgICAgICAgICBzdGQ6OnZlY3RvcjxEZXZpY2VEaXNwbGF5SW5mbz4g
ZGlzcGxheV9pbmZvOwo+IEBAIC0yNzUsNyArMjgwLDcgQEAgZG9fY2FwdHVyZShTdHJlYW1Qb3J0
ICZzdHJlYW1fcG9ydCwgRnJhbWVMb2cgJmZyYW1lX2xvZywgQ29uY3JldGVBZ2VudCAmYWdlbnQp
Cj4gICAgICAgICAgICAgIHN5c2xvZyhMT0dfRVJSLCAiRW1wdHkgZGV2aWNlIGRpc3BsYXkgaW5m
byBmcm9tIHRoZSBwbHVnaW4iKTsKPiAgICAgICAgICB9Cj4KPiAtICAgICAgICB3aGlsZSAoIXF1
aXRfcmVxdWVzdGVkICYmIHN0cmVhbWluZ19yZXF1ZXN0ZWQpIHsKPiArICAgICAgICB3aGlsZSAo
IXF1aXRfcmVxdWVzdGVkICYmIHN0cmVhbWluZ19yZXF1ZXN0ZWQgJiYgIXJlc2V0X3JlcXVlc3Rl
ZCkgewo+ICAgICAgICAgICAgICBpZiAoKytmcmFtZV9jb3VudCAlIDEwMCA9PSAwKSB7Cj4gICAg
ICAgICAgICAgICAgICBzeXNsb2coTE9HX0RFQlVHLCAiU0VOVCAlZCBmcmFtZXMiLCBmcmFtZV9j
b3VudCk7Cj4gICAgICAgICAgICAgIH0KCgotLQpDaGVlcnMsCkNocmlzdG9waGUgZGUgRGluZWNo
aW4gKElSQyBjM2QpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
