Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 127FC2D8C4
	for <lists+spice-devel@lfdr.de>; Wed, 29 May 2019 11:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE458930B;
	Wed, 29 May 2019 09:15:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F91C890A9
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:15:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DCE343D37
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:15:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D340F174AB
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:15:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C7053206D1
 for <spice-devel@lists.freedesktop.org>; Wed, 29 May 2019 09:15:30 +0000 (UTC)
Date: Wed, 29 May 2019 05:15:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190520073947.5382-1-fziglio@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.11]
Thread-Topic: Check distribution with CI
Thread-Index: iVFZenijvVdr7GvE8hclyL15UtwpJA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 29 May 2019 09:15:30 +0000 (UTC)
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IE1ha2Ugc3VyZSB3ZSBjYW4gYnVpbGQgZGlzdHJpYnV0aW9u
Lgo+IFNvbWUgc21hbGwgdXBkYXRlcyBhbHNvIHRvIGZpeCBzb21lIG1pbm9yIGlzc3Vlcy4KPiAK
PiBDSSByZXN1bHRzIGF0Cj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8v
c3BpY2UtZ3RrL3BpcGVsaW5lcy8zNzc0NAo+IAo+IEZyZWRpYW5vIFppZ2xpbyAoNCk6Cj4gICBj
aTogVGVzdCB3ZSBjYW4gY3JlYXRlIGEgbm8gZGlydHkgcGFja2FnZQo+ICAgc3BpY2UtY2xpZW50
LWd0ay1tb2R1bGU6IFJlbW92ZSB1bnVzZWQgZmlsZQo+ICAgYnVpbGQ6IERvIGFkZGl0aW9uYWwg
Y2hhbmdlcyB0byBNZXNvbiBkaXN0cmlidXRpb24KPiAgIGNpOiBUcnkgTWVzb24gZGlzdAo+IAo+
ICAuZ2l0bGFiLWNpLnltbCAgICAgICAgICAgICAgICB8IDIwICsrKysrKysrKysrKysrKysKPiAg
TWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGJ1aWxkLWF1eC9tZXNvbi1k
aXN0ICAgICAgICAgIHwgMjggKysrKysrKysrKysrKysrKysrKysrKwo+ICBtZXNvbi5idWlsZCAg
ICAgICAgICAgICAgICAgICB8ICAyICstCj4gIHNyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVsZS5j
IHwgNDUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgNSBmaWxlcyBjaGFu
Z2VkLCA1MCBpbnNlcnRpb25zKCspLCA0NiBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAw
NzU1IGJ1aWxkLWF1eC9tZXNvbi1kaXN0Cj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcmMvc3BpY2Ut
Y2xpZW50LWd0ay1tb2R1bGUuYwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
