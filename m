Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05884249FF
	for <lists+spice-devel@lfdr.de>; Tue, 21 May 2019 10:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9736489124;
	Tue, 21 May 2019 08:15:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04FF89124
 for <spice-devel@lists.freedesktop.org>; Tue, 21 May 2019 08:15:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 54EF33084034;
 Tue, 21 May 2019 08:15:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 41A317D559;
 Tue, 21 May 2019 08:15:48 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E07B54D3C;
 Tue, 21 May 2019 08:15:48 +0000 (UTC)
Date: Tue, 21 May 2019 04:15:46 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1599542555.19354840.1558426546544.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hSsgJ-0001wA-Ec@amboise>
References: <E1hSsgJ-0001wA-Ec@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.28]
Thread-Topic: gstreamer-encoder: Document get_maximum_frame_size()
Thread-Index: 0c5DlZaIk6SXGfoudYQF+6AaGTjh7g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 21 May 2019 08:15:53 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] gstreamer-encoder: Document
 get_maximum_frame_size()
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgo+IC0tLQo+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDcgKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9n
c3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBpbmRleCBi
Y2NiZTA2NjAuLjExMGQxMjk4MSAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29k
ZXIuYwo+ICsrKyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCj4gQEAgLTQwNCw2ICs0MDQs
MTMgQEAgc3RhdGljIHVpbnQzMl90IGdldF9hdmVyYWdlX2ZyYW1lX3NpemUoU3BpY2VHc3RFbmNv
ZGVyCj4gKmVuY29kZXIpCj4gICAgICByZXR1cm4gZW5jb2Rlci0+c3RhdF9zaXplX3N1bSAvIGNv
dW50Owo+ICB9Cj4gIAo+ICsvKiBMb29rIGZvciB0aGUgbGFyZ2VzdCBmcmFtZSBhbmQgc3RvcmUg
aXQgaW4gc3RhdF9zaXplX21heCB0byByZWR1Y2UgaG93Cj4gKyAqIG9mdGVuIHdlIGhhdmUgdG8g
c2NhbiB0aGUgaGlzdG9yeSBmb3IgdGhlIGxhcmdlc3QgZnJhbWUuCj4gKyAqIFRoZW4gYWxsIHdl
IG5lZWQgdG8ga2VlcCB0aGluZ3MgY29uc2lzdGVudCBpcyB0bzoKPiArICogLSBVcGRhdGUgc3Rh
dF9zaXplX21heCB3aGVuIGFkZGluZyBhIGxhcmdlciBmcmFtZSB0byB0aGUgaGlzdG9yeS4KPiAr
ICogLSBSZXNldCBzdGF0X3NpemVfbWF4IHRvIHplcm8gd2hlbiB0aGUgbGFyZ2VzdCBmcmFtZSBm
YWxscyBvdXQgb2YKPiArICogICB0aGUgaGlzdG9yeS4KPiArICovCj4gIHN0YXRpYyB1aW50MzJf
dCBnZXRfbWF4aW11bV9mcmFtZV9zaXplKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlcikKPiAgewo+
ICAgICAgaWYgKGVuY29kZXItPnN0YXRfc2l6ZV9tYXggPT0gMCkgewoKSXQgbG9va3MgZ29vZCB0
byBtZS4KCkknbGwgd2FpdCBhIGNvdXBsZSBvZiBkYXlzIGZvciBjb21tZW50cy4KCkZyZWRpYW5v
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
