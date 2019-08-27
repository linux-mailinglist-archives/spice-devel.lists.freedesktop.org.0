Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DD29EA9A
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 16:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139EC89BFB;
	Tue, 27 Aug 2019 14:14:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EE789BFB
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:14:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 265AB18012CE
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:14:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 191E11001B30
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:14:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F22F24F2F;
 Tue, 27 Aug 2019 14:14:17 +0000 (UTC)
Date: Tue, 27 Aug 2019 10:14:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <2144937467.9401034.1566915256886.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827122720.irrvxbhcjd5ixlao@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-15-fziglio@redhat.com>
 <20190827122720.irrvxbhcjd5ixlao@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.79, 10.4.195.28]
Thread-Topic: fixup! usb-redir: add implementation of emulated CD device
Thread-Index: OJmtwWm+NFHZvqRnc4Iyy6wmfdxNpQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Tue, 27 Aug 2019 14:14:17 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 14/29] fixup! usb-redir: add
 implementation of emulated CD device
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

PiAKPiBIaSwKPiAKPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAxMDoyMjozMUFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBBZGQgY29tbWVudCBvbiBjb25zdGFudAo+ID4gLS0t
Cj4gPiAgc3JjL3VzYi1kZXZpY2UtY2QuYyB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtY2QuYyBiL3Ny
Yy91c2ItZGV2aWNlLWNkLmMKPiA+IGluZGV4IGMzM2JiMjkwLi4yMjM0Mjg5YyAxMDA2NDQKPiA+
IC0tLSBhL3NyYy91c2ItZGV2aWNlLWNkLmMKPiA+ICsrKyBiL3NyYy91c2ItZGV2aWNlLWNkLmMK
PiA+IEBAIC01Nyw2ICs1Nyw3IEBAIHR5cGVkZWYgc3RydWN0IFNwaWNlQ2RMVSB7Cj4gPiAgCj4g
PiAgI2RlZmluZSBNQVhfTFVOX1BFUl9ERVZJQ0UgICAgICAgICAgICAgIDEKPiA+ICAjZGVmaW5l
IFVTQjJfQkNEICAgICAgICAgICAgICAgICAgICAgICAgMHgyMDAKPiA+ICsvKiBSZWQgSGF0IFVT
QiBWSUQgKi8KPiAKPiBJIGRvbid0IG1pbmQgYWRkaW5nIGEgY29tbWVudCBidXQgcGVyaGFwcyBT
UElDRSBVU0IgVklEIGluc3RlYWQ/Cj4gCgpObywgU1BJQ0UgaXMgYSBwcm9qZWN0LCBub3QgYSB2
ZW5kb3IsIHRoZSAweDJiMjMgaXMgcmVzZXJ2ZWQgYnkgVVNCCnN0YW5kYXJkcyBmb3IgUmVkIEhh
dCwgbm90IGZvciBTUElDRS4KQW5vdGhlciByZWFzb24gd2h5IHRoZSBjb21tZW50IG1ha2Ugc2Vu
c2UgOi0pCgo+ID4gICNkZWZpbmUgQ0RfREVWX1ZJRCAgICAgICAgICAgICAgICAgICAgICAweDJi
MjMKPiA+ICAjZGVmaW5lIENEX0RFVl9QSUQgICAgICAgICAgICAgICAgICAgICAgMHhDRENECj4g
PiAgI2RlZmluZSBDRF9ERVZfQ0xBU1MgICAgICAgICAgICAgICAgICAgIDgKCkZyZWRpYW5vCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
