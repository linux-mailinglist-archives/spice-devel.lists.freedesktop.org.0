Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AA21EC53
	for <lists+spice-devel@lfdr.de>; Wed, 15 May 2019 12:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40DF389237;
	Wed, 15 May 2019 10:48:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2713E89237
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 10:48:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 990565D5FD
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 10:48:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D2F8600D4
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 10:48:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 834EC4BB41;
 Wed, 15 May 2019 10:48:35 +0000 (UTC)
Date: Wed, 15 May 2019 06:48:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <897385872.18518452.1557917314137.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190514162602.3529-1-victortoso@redhat.com>
References: <20190514162602.3529-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.14]
Thread-Topic: Prepare for v0.37 release
Thread-Index: 3gHhMwXwViwWYwENS5YK5cwJNZT0Og==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 15 May 2019 10:48:35 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v1 0/5] Prepare for v0.37 release
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gSGksCj4gCj4g
RHVlIHRvIHNwaWNlLXByb3RvY29sIDAuMTQuMCByZWxlYXNlLCB3ZSBuZWVkIHRvIHJvbGwgYSBz
cGljZS1ndGsKPiByZWxlYXNlIHRvIG1ha2UgYSBzcGljZS1jb21tb24gY29tcGF0aWJsZSB3aXRo
IDAuMTQuMCBvbmUuIFRoYXQgaXMsIDAuMzYKPiBhbmQgcHJpb3IgaGFzIHRoZSBidWlsZCBicmVh
a2luZyB3aXRoIHNwaWNlLXByb3RvY29sIDAuMTQuMC4KPiAKPiBJJ3ZlIG1hZGUgUkVBRE1FIGFu
ZCBDSEFOR0VMT0cgLm1kIGZpbGVzIGxpa2Ugb3RoZXIgY29tcG9uZW50cyBJJ3ZlCj4gcmVsZWFz
ZWQgcmVjZW50bHkuCj4gCj4gU3VnZ2VzdGlvbnMgd2VsY29tZWQuIElmIG5vdGhpbmcsIEkgaG9w
ZSB0byBtYWtlIHRoZSByZWxlYXNlIFRvbW9ycm93IG9yCj4gVGh1cnNkYXkuCj4gCj4gQ2hlZXJz
LAo+IFZpY3Rvcgo+IAoKTG9va3MgZ29vZCB0byBtZSwgSSBkaWQgYWxzbyBzb21lIGNoZWNrcyAo
Q0ksIG1ha2UgZGlzdCBhbmQgb3RoZXJzKS4KCkZvciBtZSwKQWNrZWQtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKRnJlZGlhbm8KCj4gVmljdG9yIFRvc28gKDUpOgo+
ICAgUmVuYW1lIFJFQURNRSB0byBSRUFETUUubWQKPiAgIFJFQURNRTogVXNlIE1hcmtkb3duIGZv
cm1hdAo+ICAgUmVuYW1lIE5FV1MgdG8gQ0hBTkdFTE9HLm1kCj4gICBDSEFOR0VMT0c6IHJlbW92
ZSBlbXB0eSBsaW5lCj4gICBDSEFOR0VMT0c6IFByZXBhcmUgZm9yIHYwLjM3IHJlbGVhc2UKPiAK
PiAgTkVXUyA9PiBDSEFOR0VMT0cubWQgfCAzMCArKysrKysrKysrKysrKysrKystCj4gIE1ha2Vm
aWxlLmFtICAgICAgICAgIHwgIDIgKysKPiAgUkVBRE1FICAgICAgICAgICAgICAgfCA1OSAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgUkVBRE1FLm1kICAgICAgICAgICAg
fCA3MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICA0IGZp
bGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRpb25zKCspLCA2MCBkZWxldGlvbnMoLSkKPiAgcmVuYW1l
IE5FV1MgPT4gQ0hBTkdFTE9HLm1kICg5MyUpCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBSRUFETUUK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IFJFQURNRS5tZAo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
