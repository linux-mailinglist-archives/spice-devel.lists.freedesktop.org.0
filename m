Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C21FF9E5A5
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D176899FF;
	Tue, 27 Aug 2019 10:28:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6464089A08
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:28:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1215310C696B
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:28:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 08A6645D5
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:28:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EFDC018089C8;
 Tue, 27 Aug 2019 10:28:18 +0000 (UTC)
Date: Tue, 27 Aug 2019 06:28:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <114667165.9359804.1566901698940.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827102712.hy7vwckrwgqvweuz@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-12-fziglio@redhat.com>
 <20190827102712.hy7vwckrwgqvweuz@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.114, 10.4.195.25]
Thread-Topic: fixup! usb-redir: add files for SCSI and USB MSC implementation
Thread-Index: NQlv5EYwHmAd+zufCb6aeufJ/Aivnw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 27 Aug 2019 10:28:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 11/29] fixup! usb-redir: add
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

PiAKPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAxMDoyMjoyOEFNICswMTAwLCBGcmVkaWFubyBa
aWdsaW8gd3JvdGU6Cj4gPiBEbyBub3Qgd3JhcCBhbGwgZGVjbGFyYXRpb25zLCBrZWVwIG91dCBl
eHRlcm5hbCBoZWFkZXJzCj4gPiAtLS0KPiA+ICBzcmMvY2QtdXNiLWJ1bGstbXNkLmggfCA0ICsr
LS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL2NkLXVzYi1idWxrLW1zZC5oIGIvc3JjL2NkLXVzYi1i
dWxrLW1zZC5oCj4gPiBpbmRleCA4NTY2MTE2NS4uYzE2NWMxODcgMTAwNjQ0Cj4gPiAtLS0gYS9z
cmMvY2QtdXNiLWJ1bGstbXNkLmgKPiA+ICsrKyBiL3NyYy9jZC11c2ItYnVsay1tc2QuaAo+ID4g
QEAgLTIxLDEyICsyMSwxMiBAQAo+ID4gIAo+ID4gICNwcmFnbWEgb25jZQo+ID4gIAo+ID4gLUdf
QkVHSU5fREVDTFMKPiA+IC0KPiA+ICAjaW5jbHVkZSA8Z2lvL2dpby5oPgo+ID4gIAo+ID4gICNp
bmNsdWRlICJjZC1zY3NpLWRldi1wYXJhbXMuaCIKPiA+ICAKPiA+ICtHX0JFR0lOX0RFQ0xTCj4g
PiArCj4gCj4gRGlkIHlvdSBnZXQgYSB3YXJuaW5nPwo+IEFja2VkLWJ5OiBWaWN0b3IgVG9zbyA8
dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+IAoKSSBkaWRuJ3QgY29tcGlsZSB3aXRoIEMrKyBidXQg
SSBrbm93IGhvdyBpdCB3b3Jrcy4KCj4gPiAgdHlwZWRlZiBlbnVtIENkVXNiQnVsa1N0YXR1cyB7
Cj4gPiAgICAgIEJVTEtfU1RBVFVTX0dPT0QgPSAwLAo+ID4gICAgICBCVUxLX1NUQVRVU19FUlJP
UiwKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
