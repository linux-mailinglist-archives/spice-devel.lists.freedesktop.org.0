Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A29A9CF7
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 10:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04EF489FA9;
	Thu,  5 Sep 2019 08:29:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5E789FA9
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 08:29:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0A826306152A;
 Thu,  5 Sep 2019 08:29:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F29C919C69;
 Thu,  5 Sep 2019 08:29:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9AB12551B;
 Thu,  5 Sep 2019 08:29:04 +0000 (UTC)
Date: Thu, 5 Sep 2019 04:29:04 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Message-ID: <1708056740.10758508.1567672144728.JavaMail.zimbra@redhat.com>
In-Reply-To: <m1imqa1w6s.fsf@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-13-fziglio@redhat.com> <m1r254do9g.fsf@dinechin.org>
 <661488671.10116392.1567095402596.JavaMail.zimbra@redhat.com>
 <m1imqa1w6s.fsf@dinechin.org>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.5]
Thread-Topic: fixup! usb-redir: add files for SCSI and USB MSC implementation
Thread-Index: WMVYW1xf1Ixw07gEbh3RMrI/JAWi0A==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 05 Sep 2019 08:29:05 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 12/29] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

PiAKPiBGcmVkaWFubyBaaWdsaW8gd3JpdGVzOgo+IAo+ID4+Cj4gPj4gPiBEbyBub3QgdXNlIEdf
R1VJTlQzMl9GT1JNQVQuCj4gPj4gPiBXZSBzdXBwb3J0IGEgbWluaW11bSBvZiAzMiBiaXQgYXJj
aGl0ZWN0dXJlcy4KPiA+Pgo+ID4+IFdoYXQgd2FzIHdyb25nIHdpdGggdGhlIG9sZCBjb2RlPwo+
ID4+Cj4gPgo+ID4gU2hvcnRlciBhbmQgZWFzaWVyIHRvIHJlYWQuIEkgbWVhbiAnJXUnIGFuZCAn
JSIgR19HVUlOVDMyX0ZPUk1BVCAiJywKPiA+IGlmIHlvdSBoYXZlIGFuIGlzc3VlIGlzIGhhcmRl
ciB0byBnZXQgaXQuCj4gPiBGb3IgaW5zdGFuY2UgaXQgd2FzIGhhcmQgdG8gc3BvdCB0aGUgbWlz
bGVhZGluZyAnMHglIiBHX0dVSU5UMzJfRk9STUFUICInCj4gPiB3aGljaCBnb3QgJzB4JXUnIHNv
IDEwMCB3b3VsZCBiZSBmb3JtYXR0ZWQgYXMgMHgxMDAgd2hpY2ggSSB3b3VsZCByZWFkCj4gPiBh
cyAyNTYsIG5vdCAxMDAuCj4gCj4gQWgsIEkgY2FuIHVuZGVyc3RhbmQgaG93IHRoaXMgY291bGQg
aGF2ZSBiZWVuIGhhcmQgdG8gZmluZC4KPiAKPiBTdGlsbCwgZXZlbiBpZiBJIG5vdyB1bmRlcnN0
YW5kIHdoZXJlIHlvdSBjb21lIGZyb20sIGFuZCBldmVuIGlmIEkga25vdwo+IHRoYXQgeW91ciBw
YXRjaCBkb2VzIG5vdCByZWFsbHkgaHVydCBpbiBwcmFjdGljZSBnaXZlbiB3aGF0IGlzIGN1cnJl
bnRseQo+IGtub3duIG9mIHRoZSBzdXBwb3J0IHBsYXRmb3JtcywgSSBzdGlsbCBzZWUgdGhhdCBw
YXRjaCBhcyBnb2luZyBzb21ld2hhdAo+IGluIHRoZSB3cm9uZyBkaXJlY3Rpb24gYXMgZmFyIGFz
IHBvcnRhYmlsaXR5IGJlc3QgcHJhY3RpY2VzIGFyZSBjb25jZXJuZWQuCj4gCgpEbyB5b3UgdGhp
bmsgd2UgYXJlIGV2ZW4gZ29pbmcgdG8gc3VwcG9ydCAxNiBiaXQgcGxhdGZvcm1zPyBUaGlzIHdv
dWxkCnJlcXVpcmUgcXVpdGUgYSByZXdyaXRlIG9mIHRoZSBlbnRpcmUgcHJvamVjdCBhbmQgYWxz
byBvZiB0aGUgZGVwZW5kZW50CmxpYnJhcmllcy4gQW5kIEkgZG9uJ3Qgc2VlIGEgMTYgYml0IHBy
b2dyYW0gc3VwcG9ydGluZyBzdWNoIGEgbGFyZ2UKbWVtb3J5IHJlcXVpcmVtZW50cyBzbyBlYXNp
bHkuCgo+IFJldmlld2VkLWJ1dC1ub3QtZW50aXJlbHktYXBwcm92ZWQtYnk6IENocmlzdG9waGUg
ZGUgRGluZWNoaW4KPiA8ZGluZWNoaW5AcmVkaGF0LmNvbT4KPiAKPiA+Cj4gPj4gSWYgeW91IHdh
bnQgdG8gZ2V0IHJpZCBvZiBHXyBtYWNybyBkZXBlbmRlbmNpZXMsIHdoeSBub3QgdXNlIFBSSXUz
Mj8KPiA+Pgo+ID4KPiA+IE5vLCBHXyBtYWNyb3MgYXJlIGZpbmUsIGFsc28gdGFraW5nIGludG8g
YWNjb3VudCB0aGF0IFBSSXU2NCBhbmQKPiA+IEdfR1VJTlQ2NF9GT1JNQVQKPiA+IGNvdWxkIGJl
IGRpZmZlcmVudCAoZm9yIGluc3RhbmNlIGluIFdpbmRvd3MpIGFuZCB0aGF0IHRoZSByZWNlaXZp
bmcKPiA+IGZvcm1hdHRpbmcKPiA+IGZ1bmN0aW9uIGFjY2VwdHMgYmV0dGVyIHRoZSBHXyB2ZXJz
aW9uICh0aGV5IGFyZSBHTGliKS4KPiAKPiBUaGlzIGNvbW1lbnQsIHdoaWxlIGl0IHJlaW5mb3Jj
ZXMgeW91ciByYXRpb25hbGUsIG1hZGUgbWUgZXh0cmVtZWx5IHNhZAo+IDstKQo+IAoKSSBkaWQg
c29tZSBtaW5vciBjaGVja3MgeWVzdGVyZGF5IGFib3V0IGZvcm1hdHRpbmcgc3RyaW5ncyBhbmQg
V2luZG93cy4KVGhhdCdzIGEgd2VpcmQgbWl4dHVyZSBvZiBjb21wYXRpYmlsaXR5IGFuZCBjaGFu
Z2VzIChsaWtlIEdMaWIgdGhhdApjaGFuZ2VkIGZvcm1hdHRpbmcgYWxvbmcgdGhlIHdheSBmb3Ig
TWluZ1cgb3IgbmV3ZXIgbXN2Y3J0LmRsbCBzdXBwb3J0aW5nCkM5OSBzdHlsZSBmb3JtYXR0aW5n
KS4gR2l2aW5nIHRoYXQgV2luZG93cyBYUCBzdXBwb3J0IHdhcyByZW1vdmVkIGFuZAp0aGF0IFdp
bmRvd3MgNyBzZWVtcyB0byBzdXBwb3J0IEM5OSBmb3JtYXR0aW5nIEkgd291bGQgc2F5ICJsbCIg
Zm9yCjY0IGJpdCBpcyBnb29kIGFuZCBhbHNvICJJNjQiIGZvciBBQkkgY29tcGF0aWJpbGl0eS4g
U28gaXQgbG9va3MgbGlrZQp0aGVyZSBzaG91bGQgYmUgYSB3YXkgdG8gdGVsbCBHQ0MgdGhhdCB0
aGUgcHJpbnRmL21zX3ByaW50ZiBmb3JtYXR0aW5nCmF0dHJpYnV0ZSBzaG91bGQgYWNjZXB0cyBh
bHNvICJsbCIgc2l6ZSBtb2RpZmllZCBmb3IgNjQgYml0IGludGVncmFscy4KCkZyZWRpYW5vCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
