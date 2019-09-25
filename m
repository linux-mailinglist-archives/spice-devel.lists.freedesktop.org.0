Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54863BDB43
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E012889895;
	Wed, 25 Sep 2019 09:40:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B6889895
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:40:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9E58518CB8E7
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:40:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 94AA010018F8
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:40:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BEBA1808876;
 Wed, 25 Sep 2019 09:40:51 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:40:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <171959826.3206101.1569404451539.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-1-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.19]
Thread-Topic: migrate.py
Thread-Index: bYoKQ73SF02ZZg4tJG5b/W2mN0vpsg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Wed, 25 Sep 2019 09:40:51 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 0/8] migrate.py
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gU29tZSBjaGFu
Z2VzIHRvIG1ha2UgdGhpcyB1c2FibGUuIE1vcmUgZml4ZXMgdG8gY29tZSBsYXRlci4KPiAKPiBW
aWN0b3IgVG9zbyAoOCk6Cj4gICB0ZXN0czogbWlncmF0ZTogcmVtb3ZlIHNwaWNlYyBvcHRpb24K
PiAgIHRlc3RzOiBtaWdyYXRlOiB1c2UgdXJpIGZvciBkZWZhdWx0J3Mgc3BpY3kgY2xpZW50Cj4g
ICB0ZXN0czogbWlncmF0ZTogYWRkIHN1cHBvcnQgdG8gcnVuIHdpdGggcmVtb3RlLXZpZXdlcgo+
ICAgdGVzdHM6IG1pZ3JhdGU6IGZpeCByZWxhdGl2ZSBxbXAucHkgcGF0aAo+ICAgdGVzdHM6IG1p
Z3JhdGU6IHJlbW92ZSBtdWx0aXBsZSBjbGllbnQgb3B0aW9uCj4gICB0ZXN0czogbWlncmF0ZTog
Ym9vbCBpbnN0ZWFkIG9mIG9uL29mZiBvcHRpb24gaW4gY21kIGxpbmUKPiAgIHRlc3RzOiBtaWdy
YXRlOiBhZGQgb3B0aW9uIHRvIHdhaXQgdXNlciBpbnB1dAo+ICAgdGVzdHM6IG1pZ3JhdGU6IGFk
ZCBjb3VudGVyIGZvciB0ZXN0cwo+IAo+ICB0ZXN0cy9taWdyYXRlLnB5IHwgNDAgKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCgpUaGV5IG1ha2Ugc2Vuc2UuCgpNYXliZSBh
bHNvIHNvbWUgY29tbWVudHMgb24gaG93IHRvIGJldHRlciAoYW5kIGVhc2lseT8pCnNldHVwIGFs
bCB0aGUgcmVxdWlyZW1lbnRzLgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
