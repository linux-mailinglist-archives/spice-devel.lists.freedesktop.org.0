Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FEF89251
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 17:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 337EA6E358;
	Sun, 11 Aug 2019 15:31:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE6E6E358
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 15:31:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6E4DD7FDFC
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 15:31:56 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D06E0614D9;
 Sun, 11 Aug 2019 15:31:55 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <20190811114723.22360-3-uril@redhat.com>
 <802270411.5453469.1565524669791.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <279222b0-dc61-4184-bc00-cb4dc02b67c7@redhat.com>
Date: Sun, 11 Aug 2019 18:31:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <802270411.5453469.1565524669791.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Sun, 11 Aug 2019 15:31:56 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 3/3] valgrind/spice.supp: add
 missing ...
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC8xMS8xOSAyOjU3IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+IFRoZXJlIG1h
eSB0byBiZSBhbm90aGVyIGZ1bmN0aW9uIChjYWNoZV9hbHRfbmFtZXMpIGJldHdlZW4KPj4gICAg
Z251dGxzX3g1MDlfZXh0X2ltcG9ydF9zdWJqZWN0X2FsdF9uYW1lcyBhbmQKPj4gICAgZ251dGxz
X3g1MDlfY3J0X2ltcG9ydAo+Pgo+PiBjYWNoZV9hbHRfbmFtZXMgaXMgYSBzdGF0aWMgZnVuY3Rp
b24gaW4gZ251dGxzL2xpYi94NTA5L3g1MDkuYwo+PiB1c2VkIG9ubHkgaW4gZ251dGxzX3g1MDlf
Y3J0X2ltcG9ydCBhbmQgbWF5IGJlIGlubGluZWQgYnkKPj4gdGhlIGNvbXBpbGVyLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+Cj4gCj4gQWNrZWQuCj4g
Cj4gSWYgeW91IGhhdmUgdGhlIGV4YWN0IGVudmlyb25tZW50IHdoZXJlIHRoaXMgaGFwcGVuZWQg
d29ydGggYWRkaW5nCj4gaXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKQWZ0ZXIgYSBsaXR0bGUg
aW52ZXN0aWdhdGlvbiwKVHVybnMgb3V0IHRoZSAicHJvYmxlbSIgd2FzIGEgZ251dGxzLWRlYnVn
aW5mbyBwYWNrYWdlIHRoYXQKd2FzIGluc3RhbGxlZCBvbiBteSBtYWNoaW5lLgpXaXRoIGdudXRs
cy1kZWJ1Z2luZm8sIHZhbGdyaW5kIGZhaWxzIGZvciB0ZXN0LWxpc3Rlbi4KUmVtb3ZpbmcgaXQg
bWFrZXMgdmFsZ3JpbmQgcGFzcyB0ZXN0LWxpc3Rlbi4KCkknbGwgYWRkIHRoaXMgaW5mb3JtYXRp
b24gdG8gdGhlIGNvbW1pdCBsb2cuCgpUaGFua3MsCiAgICAgVXJpLgoKPiAKPj4gLS0tCj4+ICAg
c2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAgfCAxICsKPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy92YWxncmlu
ZC9zcGljZS5zdXBwCj4+IGIvc2VydmVyL3Rlc3RzL3ZhbGdyaW5kL3NwaWNlLnN1cHAKPj4gaW5k
ZXggYWE2NGI2MWJjLi4yODQ4MzNhNzIgMTAwNjQ0Cj4+IC0tLSBhL3NlcnZlci90ZXN0cy92YWxn
cmluZC9zcGljZS5zdXBwCj4+ICsrKyBiL3NlcnZlci90ZXN0cy92YWxncmluZC9zcGljZS5zdXBw
Cj4+IEBAIC00Miw2ICs0Miw3IEBACj4+ICAgCU1lbWNoZWNrOkNvbmQKPj4gICAJLi4uCj4+ICAg
CWZ1bjpnbnV0bHNfeDUwOV9leHRfaW1wb3J0X3N1YmplY3RfYWx0X25hbWVzCj4+ICsJLi4uCj4+
ICAgCWZ1bjpnbnV0bHNfeDUwOV9jcnRfaW1wb3J0Cj4+ICAgCWZ1bjpnbnV0bHNfeDUwOV90cnVz
dF9saXN0X2l0ZXJfZ2V0X2NhCj4+ICAgfQo+IAo+IEZyZWRpYW5vCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
