Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E96667FA
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jul 2019 09:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AF36E2E6;
	Fri, 12 Jul 2019 07:52:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52CB26E2E6
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jul 2019 07:52:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DBF98308219E;
 Fri, 12 Jul 2019 07:52:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CDDF119C67;
 Fri, 12 Jul 2019 07:52:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3DBB18184A5;
 Fri, 12 Jul 2019 07:52:18 +0000 (UTC)
Date: Fri, 12 Jul 2019 03:52:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Brendan Shanks <bshanks@codeweavers.com>
Message-ID: <696843125.27393827.1562917936911.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190711174317.3095-1-bshanks@codeweavers.com>
References: <20190711174317.3095-1-bshanks@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.13, 10.4.195.28]
Thread-Topic: Fix hang when launching with invalid config
Thread-Index: yKxlWexC48pZwoG77EoroZ4At8R6KQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 12 Jul 2019 07:52:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice] Fix hang when launching with
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
SW5pdGlhbGl6ZSBzLT5kcmF3X2NvbW1hbmRfaW5fcHJvZ3Jlc3MgdG8gMC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBCcmVuZGFuIFNoYW5rcyA8YnNoYW5rc0Bjb2Rld2VhdmVycy5jb20+Cj4gLS0tCj4g
IHNyYy9zZXNzaW9uLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL3NyYy9zZXNzaW9uLmMgYi9zcmMvc2Vzc2lvbi5jCj4gaW5kZXggMWU1
OTQxNS4uYzVhNDM5YyAxMDA2NDQKPiAtLS0gYS9zcmMvc2Vzc2lvbi5jCj4gKysrIGIvc3JjL3Nl
c3Npb24uYwo+IEBAIC0zMDYsNiArMzA2LDcgQEAgaW50IHNlc3Npb25fY3JlYXRlKHNlc3Npb25f
dCAqcykKPiAgICAgIHMtPmNvbm5lY3RlZCA9IEZBTFNFOwo+ICAgICAgcy0+Y29ubmVjdF9waWQg
PSAwOwo+ICAgICAgcy0+ZGlzY29ubmVjdF9waWQgPSAwOwo+ICsgICAgcy0+ZHJhd19jb21tYW5k
X2luX3Byb2dyZXNzID0gMDsKCldoeSBub3QgdXNpbmcgRkFMU0UgaW5zdGVhZD8KCj4gIAo+ICAg
ICAgaWYgKHMtPm9wdGlvbnMuYXVkaXQpCj4gICAgICAgICAgcmMgPSBiZWdpbl9hdWRpdChzKTsK
Ck1heWJlIGl0IHdvdWxkIGJlIGFsc28gc2FmZSB0byBpbml0aWFsaXplIHRoZSAic2Vzc2lvbiIg
dmFyaWFibGUgaW4gbWFpbgp3aXRoIGEgbWVtc2V0PwoKRnJlZGlhbm8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
