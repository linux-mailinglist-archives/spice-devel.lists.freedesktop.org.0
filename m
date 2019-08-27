Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D229EF88
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 17:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F42289491;
	Tue, 27 Aug 2019 15:59:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E85089491
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 15:59:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AB3D130034A4
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 15:59:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FFE560933
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 15:59:52 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93D964EE50;
 Tue, 27 Aug 2019 15:59:52 +0000 (UTC)
Date: Tue, 27 Aug 2019 11:59:52 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <301963670.9472460.1566921592400.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827102217.l6stdj5ch27x2vk6@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-10-fziglio@redhat.com>
 <20190827102217.l6stdj5ch27x2vk6@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.79, 10.4.195.24]
Thread-Topic: usb-redir: add files for SCSI and USB MSC implementation
Thread-Index: eu2GVlokSU4Jt64AGORZ4/4foI2rQQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 27 Aug 2019 15:59:52 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 09/29] usb-redir: add files
 for SCSI and USB MSC implementation
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
Cc: spice-devel@lists.freedesktop.org,
 Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAxMDoyMjoyNkFNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBGcm9tOiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJl
bmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiAKPiA+IEZpbGVzIGFkZGVkIHdpdGhvdXQgaW5jbHVk
aW5nIHRoZW0gaW4gY29tcGlsYXRpb24uCj4gPiBUaGV5IGNvbnRhaW4gaW1wbGVtZW50YXRpb24g
b2YgU0NTSSBjb21tYW5kcyBmb3IgbG9naWNhbAo+ID4gdW5pdHMgb2YgbWFzcy1zdG9yYWdlIGRl
dmljZSBjbGFzcyBhbmQgVVNCIGJ1bGstb25seQo+ID4gbWFzcy1zdG9yYWdlIGRldmljZSBwcm90
b2NvbC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIE5lemhpbnNreTxhbmV6aGlu
c0ByZWRoYXQuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5i
ZW5kaXRvdmljaEBkYXluaXguY29tPgo+ID4gLS0tCj4gPiAgc3JjL2NkLXNjc2ktZGV2LXBhcmFt
cy5oIHwgICA0OSArCj4gPiAgc3JjL2NkLXNjc2kuYyAgICAgICAgICAgIHwgMjc0MCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIHNyYy9jZC1zY3NpLmggICAgICAg
ICAgICB8ICAxMjAgKysKPiA+ICBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgICAgfCAgNTQ0ICsrKysr
KysrCj4gPiAgc3JjL2NkLXVzYi1idWxrLW1zZC5oICAgIHwgIDEzNCArKwo+ID4gIHNyYy9zY3Np
LWNvbnN0YW50cy5oICAgICB8ICAzMjQgKysrKysKPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDM5MTEg
aW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS1kZXYtcGFy
YW1zLmgKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXNjc2kuYwo+ID4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5oCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC11
c2ItYnVsay1tc2QuYwo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2QtdXNiLWJ1bGstbXNk
LmgKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3Njc2ktY29uc3RhbnRzLmgKPiAKPiBBIGJp
dCB1cHNldHRpbmcgdGhhdCBuZWFyIDRrIGluc2VydGlvbnMgY29tZXMgd2l0aCBjb21taXQgbG9n
IG9mCj4gdHdvIHNlbnRlbmNlcy4gTm90IGZhbWlsaWFyIGF0IGFsbCB3aXRoIHNjc2kgYnV0IHRo
ZSBpZGVhIG9mIGhvdwo+IHRoYXQgd2lsbCBiZSB1c2VkLCBpbnRlcmZhY2VzLCBsaW1pdGF0aW9u
cywgZXRjLiBjb3VsZCBjb21lIGhhbmR5Cj4gaW4gdGhlIGNvbW1pdCBsb2cuCj4gCj4gU2FtZSBn
b2VzIGZvciB0aGUgdXNlciBvZiB0aGlzLCBvbiBwYXRjaCAidXNiLXJlZGlyOiBhZGQKPiBpbXBs
ZW1lbnRhdGlvbiBvZiBlbXVsYXRlZCBDRCBkZXZpY2UiIHdoaWNoIG9ubHkgc2F5cyAiVGhpcwo+
IG1vZHVsZSBjb250YWlucyBpbXBsZW1lbnRhdGlvbiBvZiBlbXVsYXRlZCBkZXZpY2UgaW50ZXJm
YWNlIGZvcgo+IHNoYXJlZCBDRC4iCj4gCgpCZXNpZGUgdGhhdCBJJ20gcGVyc29uYWxseSBmaW5l
IHdpdGggdGhlIHN0YXRlIG9mIHRoaXMgcGF0Y2guCgpOb3QgMTAwJSBzdXJlIHRoYXQgdGhlIGNv
ZGUgaXMgMTAwJSBjb21wbGFpbnRzIHdpdGggU0NTSSBhbmQgU1BDL01NQwpzdGFuZGFyZHMgYnV0
IEkgZGlkbid0IGZpbmQgYmlnIGlzc3Vlcy4KTWF5YmUgSSBoYXZlIGEgc21hbGwgcGF0Y2ggdG8g
cHJldmVudCBhIHNtYWxsIGlzc3VlIGJ1dCBjYW4gd2FpdC4KCi4uLiBvbWlzc2lzIC4uLgoKRnJl
ZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
