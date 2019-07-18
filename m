Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E961D6D0E0
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AEB89FEC;
	Thu, 18 Jul 2019 15:17:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6734289FEC
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:17:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0522B307D960;
 Thu, 18 Jul 2019 15:17:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F09CA6055B;
 Thu, 18 Jul 2019 15:16:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E724C1800205;
 Thu, 18 Jul 2019 15:16:59 +0000 (UTC)
Date: Thu, 18 Jul 2019 11:16:59 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1601543149.786779.1563463019754.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190718143200.16380-1-jwhite@codeweavers.com>
References: <20190718143200.16380-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.5]
Thread-Topic: Bug fix: --config=<filename> did not work.
Thread-Index: iXane4ecorfCteCZTIk4HlmzCgR/lQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 18 Jul 2019 15:17:00 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice 1/2] Bug fix: --config=<filename>
 did not work.
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

SXQgc2VlbXMgdGhhdCB4MTFzcGljZSBpcyBtb3JlIFgxMSBjb21wbGFpbnQgdGhhbiBnZXRvcHRf
bG9uZyBzbyBJCmRvbid0IHNlZSB0aGUgLS1jb25maWc9Ly1jb25maWc9IG1hbmRhdG9yeS4KR2l2
aW5nIHRoYXQgLWNvbmZpZyBpcyBub3QgR05VIGNvbnZlbnRpb24gKHRoZXkgYXJlIDUgb3B0aW9u
cyEpIEkgd291bGQgYXZvaWQgdGhlIG1peC4KCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVyZW15IFdo
aXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgo+IC0tLQo+ICBzcmMvb3B0aW9ucy5jIHwgMjQg
KysrKysrKysrKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvb3B0aW9ucy5jIGIvc3Jj
L29wdGlvbnMuYwo+IGluZGV4IGI3ZjQ4N2M1Li4wZDMxMzhkMCAxMDA2NDQKPiAtLS0gYS9zcmMv
b3B0aW9ucy5jCj4gKysrIGIvc3JjL29wdGlvbnMuYwo+IEBAIC0yMTMsMTQgKzIxMywzNCBAQCB2
b2lkIG9wdGlvbnNfaGFuZGxlX3NzbF9maWxlX29wdGlvbnMob3B0aW9uc190Cj4gKm9wdGlvbnMs
Cj4gICAgICBvcHRpb25zLT5zc2wuY2lwaGVyc3VpdGUgPSBzdHJpbmdfb3B0aW9uKHVzZXJrZXks
IHN5c3RlbWtleSwgInNzbCIsCj4gICAgICAiY2lwaGVyc3VpdGUiKTsKPiAgfQo+ICAKPiArLyog
SW4gZ2VuZXJhbCwgd2Ugd2FudCB0byBwYXJzZSB0aGUgY29uZmlnIGZpbGUgb3B0aW9ucyBiZWZv
cmUgdGhlIGNvbW1hbmQKPiBsaW5lCj4gKyoqICBhcmd1bWVudHMuICBIb3dldmVyLCB0aGUgY29t
bWFuZCBsaW5lIGFyZ3VtZW50IHRvIHNwZWNpZnkgYSBjb25maWcgZmlsZQo+IGlzCj4gKyoqICB0
aGUgZXhjZXB0aW9uLiAgV2UgbWFudWFsbHkgcGFyc2UgdGhpcyBvdXQgbm93LCBzbyB3ZSBjYW4g
c2ltcGxpZnkgdGhlCj4gKyoqICBmbG93IG9mIGNvbnRyb2wgbGF0ZXIuICovCj4gIHZvaWQgb3B0
aW9uc19oYW5kbGVfdXNlcl9jb25maWcoaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSwgb3B0aW9uc190
ICpvcHRpb25zKQo+ICB7Cj4gICAgICBpbnQgaTsKPiAtICAgIGZvciAoaSA9IDE7IGkgPCBhcmdj
IC0gMTsgaSsrKQo+IC0gICAgICAgIGlmIChzdHJjbXAoYXJndltpXSwgIi0tY29uZmlnIikgPT0g
MCB8fCBzdHJjbXAoYXJndltpXSwgIi1jb25maWciKQo+ID09IDApIHsKPiArICAgIGNoYXIgKnAs
ICpxOwo+ICsKPiArICAgIC8qIGdldG9wdCBsb25nIGlzIGNvbXBsZXg7IGl0IHN1cHBvcnRzIFst
XS1jb25maWdbPV1maWxlbmFtZSAqLwo+ICsgICAgZm9yIChpID0gMTsgaSA8IGFyZ2M7IGkrKykg
ewo+ICsgICAgICAgIHAgPSBzdHJzdHIoYXJndltpXSwgIi0tY29uZmlnIik7Cj4gKyAgICAgICAg
aWYgKHAgIT0gYXJndltpXSkgewoKc3RybmNtcCBpbnN0ZWFkID8KCj4gKyAgICAgICAgICAgIHAg
PSBzdHJzdHIoYXJndltpXSwgIi1jb25maWciKTsKPiArICAgICAgICB9Cj4gKyAgICAgICAgaWYg
KHAgIT0gYXJndltpXSkgewo+ICsgICAgICAgICAgICBjb250aW51ZTsKPiArICAgICAgICB9Cj4g
KyAgICAgICAgcSA9IHN0cnN0cihwLCAiPSIpOwoKVGhpcyB3aWxsIGFsc28gYWNjZXB0ICItY29u
ZmlnLXdoYXRldmVyPXZhbHVlIgoKPiArICAgICAgICBpZiAocSkgewo+ICsgICAgICAgICAgICBv
cHRpb25zLT51c2VyX2NvbmZpZ19maWxlID0gc3RyZHVwKHEgKyAxKTsKPiArICAgICAgICAgICAg
Y29udGludWU7Cj4gKyAgICAgICAgfQo+ICsgICAgICAgIGlmIChpIDwgYXJnYyAtIDEpIHsKPiAg
ICAgICAgICAgICAgb3B0aW9ucy0+dXNlcl9jb25maWdfZmlsZSA9IHN0cmR1cChhcmd2W2kgKyAx
XSk7Cj4gICAgICAgICAgICAgIGkrKzsKPiAgICAgICAgICB9Cj4gKyAgICB9Cj4gIH0KPiAgCj4g
IGludCBvcHRpb25zX3BhcnNlX2FyZ3VtZW50cyhpbnQgYXJnYywgY2hhciAqYXJndltdLCBvcHRp
b25zX3QgKm9wdGlvbnMpCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
