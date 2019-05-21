Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F18D124943
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 09:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4774A890BB;
	Tue, 21 May 2019 07:47:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F96890BB
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 07:47:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B23AE307D855;
 Tue, 21 May 2019 07:47:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A7B7F5D9CA;
 Tue, 21 May 2019 07:47:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9EC6F1806B0E;
 Tue, 21 May 2019 07:47:30 +0000 (UTC)
Date: Tue, 21 May 2019 03:47:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <920148765.19344707.1558424849003.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hSscl-0001LG-MA@amboise>
References: <E1hSscl-0001LG-MA@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.1]
Thread-Topic: gstreamer-encoder: Show the source fps when the system is too
 slow
Thread-Index: A5414k/E0169TSkvtPGJj82kwaWDDA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 21 May 2019 07:47:30 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v2] gstreamer-encoder: Show the source fps
 when the system is too slow
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBUaGUgc291cmNlIGZyYW1lcmF0ZSBpcyBhcyBpbXBvcnRhbnQgYXMgdGhlIHJlc29sdXRp
b24gd2hlbiB0cnlpbmcgdG8KPiB1bmRlcnN0YW5kIGlmIHRoZSBzeXN0ZW0gc2hvdWxkIGJlIGZh
c3QgZW5vdWdoIHRvIGVuY29kZSB0aGUgdmlkZW8KPiBzdHJlYW0gaW4gcmVhbCB0aW1lLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+
CgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cgo+IC0tLQo+
IAo+IHYyOiBUd2Vha2VkIHRoZSBtZXNzYWdlLgo+IAo+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29k
ZXIuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVy
L2dzdHJlYW1lci1lbmNvZGVyLmMKPiBpbmRleCAwMTAxYjM2ZmEuLmJjY2JlMDY2MCAxMDA2NDQK
PiAtLS0gYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+ICsrKyBiL3NlcnZlci9nc3RyZWFt
ZXItZW5jb2Rlci5jCj4gQEAgLTU0Miw3ICs1NDIsNyBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfbmV4
dF9mcmFtZV9tbV90aW1lKFNwaWNlR3N0RW5jb2Rlcgo+ICplbmNvZGVyKQo+ICAgICAgdWludDY0
X3QgcGVyaW9kX25zID0gTlNFQ19QRVJfU0VDIC8gZ2V0X3NvdXJjZV9mcHMoZW5jb2Rlcik7Cj4g
ICAgICB1aW50NjRfdCBtaW5fZGVsYXlfbnMgPSBnZXRfYXZlcmFnZV9lbmNvZGluZ190aW1lKGVu
Y29kZXIpOwo+ICAgICAgaWYgKG1pbl9kZWxheV9ucyA+IHBlcmlvZF9ucykgewo+IC0gICAgICAg
IHNwaWNlX3dhcm5pbmcoInlvdXIgc3lzdGVtIHNlZW1zIHRvIGJlIHRvbyBzbG93IHRvIGVuY29k
ZSB0aGlzICVkeCVkCj4gdmlkZW8gaW4gcmVhbCB0aW1lIiwgZW5jb2Rlci0+d2lkdGgsIGVuY29k
ZXItPmhlaWdodCk7Cj4gKyAgICAgICAgc3BpY2Vfd2FybmluZygieW91ciBzeXN0ZW0gc2VlbXMg
dG8gYmUgdG9vIHNsb3cgdG8gZW5jb2RlIHRoaXMKPiAlZHglZEAlZCB2aWRlbyBpbiByZWFsIHRp
bWUiLCBlbmNvZGVyLT53aWR0aCwgZW5jb2Rlci0+aGVpZ2h0LAo+IGdldF9zb3VyY2VfZnBzKGVu
Y29kZXIpKTsKPiAgICAgIH0KPiAgCj4gICAgICBtaW5fZGVsYXlfbnMgPSBNSU4obWluX2RlbGF5
X25zLCBTUElDRV9HU1RfTUFYX1BFUklPRCk7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
