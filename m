Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E1ED60CD
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 13:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71C589DE6;
	Mon, 14 Oct 2019 11:00:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78C989DE6
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:00:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 687C23C93D
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:00:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 519771001947
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 11:00:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4144418089C8;
 Mon, 14 Oct 2019 11:00:04 +0000 (UTC)
Date: Mon, 14 Oct 2019 07:00:03 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1667386683.6531462.1571050803803.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191014103336.28115-1-victortoso@redhat.com>
References: <20191014103336.28115-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.25]
Thread-Topic: docs: include protocol and for-newbies documents
Thread-Index: 90gQn6w4XEJjBlw0VJg7W7NY56SYgA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 14 Oct 2019 11:00:04 +0000 (UTC)
Subject: Re: [Spice-devel] [spice/docs] docs: include protocol and
 for-newbies documents
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gT25seSBieSBi
dWlsZGluZyBhbmQgc2hhcmluZyB0aGUgZG9jdW1lbnRzIHdlIHdpbGwgYmUgYWJsZSB0byBnZXQg
dGhlbQo+IHVwIHRvIGRhdGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3Rv
cnRvc29AcmVkaGF0LmNvbT4KPiAtLS0KPiAgZG9jcy9tZXNvbi5idWlsZCB8IDE0ICsrKysrKysr
KystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kb2NzL21lc29uLmJ1aWxkIGIvZG9jcy9tZXNvbi5idWlsZAo+
IGluZGV4IDgyODY0YmI4Li5jZTAzMzRjMCAxMDA2NDQKPiAtLS0gYS9kb2NzL21lc29uLmJ1aWxk
Cj4gKysrIGIvZG9jcy9tZXNvbi5idWlsZAo+IEBAIC0xLDExICsxLDE3IEBACj4gK2FzY2lpZG9j
X2ZpbGVzID0gWydzcGljZV9mb3JfbmV3YmllcycsCj4gKyAgICAgICAgICAgICAgICAgICdzcGlj
ZV9wcm90b2NvbCcsCj4gKyAgICAgICAgICAgICAgICAgICdzcGljZV9zdHlsZScsCj4gKyAgICAg
ICAgICAgICAgICAgICdzcGljZV90aHJlYWRpbmdfbW9kZWwnLAo+ICsgICAgICAgICAgICAgICAg
ICAndmRfaW50ZXJmYWNlcyddCj4gKwoKT25seSBhIG1pbm9yLCB3aHkgbm90IG1haW50YWluaW5n
IHRoZSBzYW1lIG9yZGVyIG9mIE1ha2VmaWxlLmFtCihJIHdvdWxkIHNheSBlaXRoZXIgY2hhbmdp
bmcgTWFrZWZpbGUuYW0gb3IgbWVzb24uYnVpbGQpID8KCj4gIGlmIGdldF9vcHRpb24oJ21hbnVh
bCcpCj4gICAgYXNjaWlkb2MgPSBmaW5kX3Byb2dyYW0oJ2FzY2lpZG9jJywgcmVxdWlyZWQgOiBm
YWxzZSkKPiAgICBpZiBhc2NpaWRvYy5mb3VuZCgpCj4gICAgICBhc2NpaWRvY19hcmdzID0gWyct
YScsICdkYXRhLXVyaScsICctYScsICdpY29ucycsICctYScsICd0b2MnXQo+IC0gICAgZm9yZWFj
aCBkb2MgOiBbJ3N0eWxlJywgJ3RocmVhZGluZ19tb2RlbCddCj4gLSAgICAgIGN1c3RvbV90YXJn
ZXQoJ3NwaWNlX0AwQC5odG1sJy5mb3JtYXQoZG9jKSwKPiAtICAgICAgICAgICAgICAgICAgICBp
bnB1dCA6ICdzcGljZV9AMEAudHh0Jy5mb3JtYXQoZG9jKSwKPiAtICAgICAgICAgICAgICAgICAg
ICBvdXRwdXQgOiAnc3BpY2VfQDBALmh0bWwnLmZvcm1hdChkb2MpLAo+ICsgICAgZm9yZWFjaCBk
b2MgOiBhc2NpaWRvY19maWxlcwo+ICsgICAgICBjdXN0b21fdGFyZ2V0KCdAMEAuaHRtbCcuZm9y
bWF0KGRvYyksCj4gKyAgICAgICAgICAgICAgICAgICAgaW5wdXQgOiAnQDBALnR4dCcuZm9ybWF0
KGRvYyksCj4gKyAgICAgICAgICAgICAgICAgICAgb3V0cHV0IDogJ0AwQC5odG1sJy5mb3JtYXQo
ZG9jKSwKPiAgICAgICAgICAgICAgICAgICAgICBidWlsZF9ieV9kZWZhdWx0OiB0cnVlLAo+ICAg
ICAgICAgICAgICAgICAgICAgIGNvbW1hbmQgOiBbYXNjaWlkb2MsICctbicsIGFzY2lpZG9jX2Fy
Z3MsICctbycsCj4gICAgICAgICAgICAgICAgICAgICAgJ0BPVVRQVVRAJywgJ0BJTlBVVEAnXSkK
PiAgICAgIGVuZGZvcmVhY2gKCk90aGVyd2lzZSwKICBBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
