Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 395CD4BD42
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 17:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4006E3F5;
	Wed, 19 Jun 2019 15:50:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601FD6E3F5
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:50:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D432D307B96B
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:50:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CA649608A7
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 15:50:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE28D1806B16;
 Wed, 19 Jun 2019 15:50:03 +0000 (UTC)
Date: Wed, 19 Jun 2019 11:50:02 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <1260005310.23699256.1560959402336.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190619153750.29921-1-jjanku@redhat.com>
References: <20190619153750.29921-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.30]
Thread-Topic: gio-pipe: fix NULL pointer dereferencing
Thread-Index: cltaIYtU2vmMWx4a/dc5bpwtYA2SFg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 19 Jun 2019 15:50:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v2 1/5] gio-pipe: fix NULL
 pointer dereferencing
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

PiAKPiBJbiBwaXBlX291dHB1dF9zdHJlYW1faXNfd3JpdGFibGUsIGlmIHRoZSBwZWVyIGlzIGFs
cmVhZHkgZ29uZSwKPiBwZWVyX2Nsb3NlZCBpcyBzZXQgdG8gVFJVRSBhbmQgaW4gdGhpcyBjYXNl
LCBwZWVyLT5yZWFkIHNob3VsZCBub3QgYmUKPiBhY2Nlc3NlZAo+IGFzIHBlZXIgaXMgTlVMTC4K
PiAKPiBPdGhlcndpc2UsIHRoZSBmb2xsb3dpbmcgc2VxdWVuY2Ugb2YgY2FsbHMgKHNpbXBsaWZp
ZWQpIHdvdWxkIHRyaWdnZXIgYQo+IHNlZ2ZhdWx0Ogo+IAo+ICAgICBzcGljZV9tYWtlX3BpcGUo
cDEsIHAyKTsKPiAgICAgZ19vdXRwdXRfc3RyZWFtX3dyaXRlX2FsbF9hc3luYyhwMV9vdXQpOwo+
ICAgICBnX2NsZWFyX29iamVjdChwMik7Cj4gICAgIGdfcG9sbGFibGVfb3V0cHV0X3N0cmVhbV9p
c193cml0YWJsZShwMV9vdXQpOwo+IAo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIEphbmvFryA8amph
bmt1QHJlZGhhdC5jb20+CgpBY2tlZCB0aGUgc2VyaWVzLCB0aGFua3MKCj4gLS0tCj4gIHNyYy9n
aW9waXBlLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ2lvcGlwZS5jIGIvc3JjL2dpb3BpcGUuYwo+
IGluZGV4IGRlMWFkYWUuLmZjZWM4NDQgMTAwNjQ0Cj4gLS0tIGEvc3JjL2dpb3BpcGUuYwo+ICsr
KyBiL3NyYy9naW9waXBlLmMKPiBAQCAtNDIwLDcgKzQyMCw3IEBAIHBpcGVfb3V0cHV0X3N0cmVh
bV9pc193cml0YWJsZSAoR1BvbGxhYmxlT3V0cHV0U3RyZWFtCj4gKnN0cmVhbSkKPiAgICAgIFBp
cGVPdXRwdXRTdHJlYW0gKnNlbGYgPSBQSVBFX09VVFBVVF9TVFJFQU0oc3RyZWFtKTsKPiAgICAg
IGdib29sZWFuIHdyaXRhYmxlOwo+ICAKPiAtICAgIHdyaXRhYmxlID0gc2VsZi0+YnVmZmVyID09
IE5VTEwgfHwgc2VsZi0+cGVlci0+cmVhZCA+PSAwIHx8Cj4gc2VsZi0+cGVlcl9jbG9zZWQ7Cj4g
KyAgICB3cml0YWJsZSA9IHNlbGYtPmJ1ZmZlciA9PSBOVUxMIHx8IHNlbGYtPnBlZXJfY2xvc2Vk
IHx8IHNlbGYtPnBlZXItPnJlYWQKPiA+PSAwOwo+ICAgICAgLy9nX2RlYnVnKCJ3cml0YWJsZSAl
cCAlZCIsIHNlbGYsIHdyaXRhYmxlKTsKPiAgCj4gICAgICByZXR1cm4gd3JpdGFibGU7CgpGcmVk
aWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
