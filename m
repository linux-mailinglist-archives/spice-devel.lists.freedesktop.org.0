Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC8961B49
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D3E89C51;
	Mon,  8 Jul 2019 07:30:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E2989C51
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5B516308620E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AC2C19936
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:13 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 414591833001
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:30:13 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:30:13 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <27830610.26606082.1562571013223.JavaMail.zimbra@redhat.com>
In-Reply-To: <1385934176.25082690.1561707925942.JavaMail.zimbra@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
 <2139512998.22408143.1560318907382.JavaMail.zimbra@redhat.com>
 <474474113.23631567.1560938707382.JavaMail.zimbra@redhat.com>
 <1385934176.25082690.1561707925942.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: Check distribution with CI
Thread-Index: iVFZenijvVdr7GvE8hclyL15UtwpJIQSUYhY/mDDTIsQ+QmkCoBSCCct
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 08 Jul 2019 07:30:13 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/4] Check distribution with CI
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

cGluZwoKPiAKPiBwaW5nIDQKPiAKPiA+IAo+ID4gcGluZyAzCj4gPiAKPiA+ID4gCj4gPiA+IHBp
bmcKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gcGluZyB0aGUgc2VyaWVzCj4gPiA+ID4gCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IE1ha2Ugc3VyZSB3ZSBjYW4gYnVpbGQgZGlzdHJpYnV0aW9uLgo+ID4g
PiA+ID4gU29tZSBzbWFsbCB1cGRhdGVzIGFsc28gdG8gZml4IHNvbWUgbWlub3IgaXNzdWVzLgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBDSSByZXN1bHRzIGF0Cj4gPiA+ID4gPiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZnppZ2xpby9zcGljZS1ndGsvcGlwZWxpbmVzLzM3NzQ0Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+IEZyZWRpYW5vIFppZ2xpbyAoNCk6Cj4gPiA+ID4gPiAgIGNpOiBUZXN0
IHdlIGNhbiBjcmVhdGUgYSBubyBkaXJ0eSBwYWNrYWdlCj4gPiA+ID4gPiAgIHNwaWNlLWNsaWVu
dC1ndGstbW9kdWxlOiBSZW1vdmUgdW51c2VkIGZpbGUKPiA+ID4gPiA+ICAgYnVpbGQ6IERvIGFk
ZGl0aW9uYWwgY2hhbmdlcyB0byBNZXNvbiBkaXN0cmlidXRpb24KPiA+ID4gPiA+ICAgY2k6IFRy
eSBNZXNvbiBkaXN0Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAuZ2l0bGFiLWNpLnltbCAgICAgICAg
ICAgICAgICB8IDIwICsrKysrKysrKysrKysrKysKPiA+ID4gPiA+ICBNYWtlZmlsZS5hbSAgICAg
ICAgICAgICAgICAgICB8ICAxICsKPiA+ID4gPiA+ICBidWlsZC1hdXgvbWVzb24tZGlzdCAgICAg
ICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiA+ICBtZXNvbi5idWlsZCAg
ICAgICAgICAgICAgICAgICB8ICAyICstCj4gPiA+ID4gPiAgc3JjL3NwaWNlLWNsaWVudC1ndGst
bW9kdWxlLmMgfCA0NQo+ID4gPiA+ID4gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gPiA+ID4gPiAgNSBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCA0NiBkZWxl
dGlvbnMoLSkKPiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA3NTUgYnVpbGQtYXV4L21lc29uLWRp
c3QKPiA+ID4gPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgc3JjL3NwaWNlLWNsaWVudC1ndGstbW9k
dWxlLmMKPiA+ID4gPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
