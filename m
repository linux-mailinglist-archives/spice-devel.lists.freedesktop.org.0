Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50910684ED
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 10:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0C58981B;
	Mon, 15 Jul 2019 08:11:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23E68981B
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 08:11:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5D711C0528CB;
 Mon, 15 Jul 2019 08:11:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 54E0360C4C;
 Mon, 15 Jul 2019 08:11:22 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C736184365F;
 Mon, 15 Jul 2019 08:11:22 +0000 (UTC)
Date: Mon, 15 Jul 2019 04:11:21 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Brendan Shanks <bshanks@codeweavers.com>
Message-ID: <1562691018.61558.1563178281984.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190712174610.10581-1-bshanks@codeweavers.com>
References: <20190711174317.3095-1-bshanks@codeweavers.com>
 <20190712174610.10581-1-bshanks@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.14]
Thread-Topic: Fix hang when launching with invalid config
Thread-Index: AnqLUbSTgwLa+xLNQ1+ol4KlHvhXbA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 15 Jul 2019 08:11:22 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice v2] Fix hang when launching with
 invalid config
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

PiAKPiBXaGVuIGxhdW5jaGluZyB3aXRoIG5vIGNvbmZpZyBmaWxlIG9yIGFyZ3VtZW50cywgdGhl
ICJZb3UgbXVzdCBwcm92aWRlCj4gc29tZSBhdXRoZW50aWNhdGlvbiBtZXRob2QiIGRpYWxvZyBh
cHBlYXJzLiBDbGlja2luZyB0aGUgQ2xvc2UgYnV0dG9uCj4gd291bGQgaGFuZyB0aGUgYXBwbGlj
YXRpb24gYW5kIGl0IHdvdWxkIG5ldmVyIHF1aXQuCj4gCj4gcy0+ZHJhd19jb21tYW5kX2luX3By
b2dyZXNzIHdhcyB1bmluaXRpYWxpemVkLCBhbmQgZmx1c2hfYW5kX2xvY2soKQo+IHdvdWxkIGdl
dCBzdHVjayBpbiBhbiBpbmZpbml0ZSBsb29wIHdhaXRpbmcgZm9yIGl0IHRvIGJlIDAuCj4gCj4g
SW5pdGlhbGl6ZSB0aGUgZW50aXJlIHNlc3Npb24gc3RydWN0IHRvIDAuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQnJlbmRhbiBTaGFua3MgPGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgoKQWNrZWQKCj4g
LS0tCj4gIHNyYy9tYWluLmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL21haW4uYyBiL3NyYy9tYWluLmMKPiBpbmRleCA1ZGRl
MjMzLi43ZjMyMWFmIDEwMDY0NAo+IC0tLSBhL3NyYy9tYWluLmMKPiArKysgYi9zcmMvbWFpbi5j
Cj4gQEAgLTYzLDYgKzYzLDggQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiAg
ICAgIGludCBzZXNzaW9uX2NyZWF0ZWQgPSAwOwo+ICAgICAgaW50IHNlc3Npb25fc3RhcnRlZCA9
IDA7Cj4gIAo+ICsgICAgbWVtc2V0KCZzZXNzaW9uLCAwLCBzaXplb2Yoc2Vzc2lvbikpOwo+ICsK
PiAgICAgIC8qLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICAgICAqKiAgUGFyc2UgYXJndW1lbnRzCj4gICAg
ICAqKi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0qLwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
