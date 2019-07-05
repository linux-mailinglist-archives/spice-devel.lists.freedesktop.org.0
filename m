Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349BC60698
	for <lists+spice-devel@lfdr.de>; Fri,  5 Jul 2019 15:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5506E4AF;
	Fri,  5 Jul 2019 13:30:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51B66E4AF
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:30:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E8FE30C1AEA
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:30:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 454944E6A0
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:30:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CCB718184AD
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 13:30:53 +0000 (UTC)
Date: Fri, 5 Jul 2019 09:30:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1935296595.26515562.1562333451169.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190627150358.16534-1-fziglio@redhat.com>
References: <20190627150358.16534-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.13, 10.4.195.2]
Thread-Topic: websocket: Add header guards
Thread-Index: vF2DbccKEZkTDtRyrgLOExixyooVxg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 05 Jul 2019 13:30:53 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] websocket: Add header
 guards
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvd2Vic29ja2V0LmggfCA1ICsrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L3dlYnNvY2tldC5oIGIvc2VydmVyL3dlYnNvY2tldC5oCj4gaW5kZXggMjIxMjBkOTM5Li43NzA3
ZTY4MDQgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3dlYnNvY2tldC5oCj4gKysrIGIvc2VydmVyL3dl
YnNvY2tldC5oCj4gQEAgLTE1LDYgKzE1LDkgQEAKPiAgICogIExpY2Vuc2UgYWxvbmcgd2l0aCB0
aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlCj4gICA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2Vz
Lz4uCj4gICAqLwo+ICAKPiArI2lmbmRlZiBXRUJTT0NLRVRfSF8KPiArI2RlZmluZSBXRUJTT0NL
RVRfSF8KPiArCj4gIHR5cGVkZWYgc3NpemVfdCAoKndlYnNvY2tldF9yZWFkX2NiX3QpKHZvaWQg
Km9wYXF1ZSwgdm9pZCAqYnVmLCBzaXplX3QKPiAgbmJ5dGUpOwo+ICB0eXBlZGVmIHNzaXplX3Qg
KCp3ZWJzb2NrZXRfd3JpdGVfY2JfdCkodm9pZCAqb3BhcXVlLCBjb25zdCB2b2lkICpidWYsCj4g
IHNpemVfdCBuYnl0ZSk7Cj4gIHR5cGVkZWYgc3NpemVfdCAoKndlYnNvY2tldF93cml0ZXZfY2Jf
dCkodm9pZCAqb3BhcXVlLCBzdHJ1Y3QgaW92ZWMgKmlvdiwKPiAgaW50IGlvdmNudCk7Cj4gQEAg
LTQxLDMgKzQ0LDUgQEAgdm9pZCB3ZWJzb2NrZXRfZnJlZShSZWRzV2ViU29ja2V0ICp3cyk7Cj4g
IGludCB3ZWJzb2NrZXRfcmVhZChSZWRzV2ViU29ja2V0ICp3cywgdWludDhfdCAqYnVmLCBzaXpl
X3QgbGVuLCB1bnNpZ25lZAo+ICAqZmxhZ3MpOwo+ICBpbnQgd2Vic29ja2V0X3dyaXRlKFJlZHNX
ZWJTb2NrZXQgKndzLCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBsZW4sIHVuc2lnbmVkCj4gIGZs
YWdzKTsKPiAgaW50IHdlYnNvY2tldF93cml0ZXYoUmVkc1dlYlNvY2tldCAqd3MsIGNvbnN0IHN0
cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250LAo+ICB1bnNpZ25lZCBmbGFncyk7Cj4gKwo+ICsj
ZW5kaWYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
