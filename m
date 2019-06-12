Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E56741BAF
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3294489243;
	Wed, 12 Jun 2019 05:55:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D374189243
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7FCE73082129
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7284548CFB
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67A761806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:07 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:55:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2139512998.22408143.1560318907382.JavaMail.zimbra@redhat.com>
In-Reply-To: <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: Check distribution with CI
Thread-Index: iVFZenijvVdr7GvE8hclyL15UtwpJIQSUYhY
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 12 Jun 2019 05:55:07 +0000 (UTC)
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

cGluZyAKCj4gCj4gcGluZyB0aGUgc2VyaWVzCj4gCj4gPiAKPiA+IE1ha2Ugc3VyZSB3ZSBjYW4g
YnVpbGQgZGlzdHJpYnV0aW9uLgo+ID4gU29tZSBzbWFsbCB1cGRhdGVzIGFsc28gdG8gZml4IHNv
bWUgbWlub3IgaXNzdWVzLgo+ID4gCj4gPiBDSSByZXN1bHRzIGF0Cj4gPiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZnppZ2xpby9zcGljZS1ndGsvcGlwZWxpbmVzLzM3NzQ0Cj4gPiAK
PiA+IEZyZWRpYW5vIFppZ2xpbyAoNCk6Cj4gPiAgIGNpOiBUZXN0IHdlIGNhbiBjcmVhdGUgYSBu
byBkaXJ0eSBwYWNrYWdlCj4gPiAgIHNwaWNlLWNsaWVudC1ndGstbW9kdWxlOiBSZW1vdmUgdW51
c2VkIGZpbGUKPiA+ICAgYnVpbGQ6IERvIGFkZGl0aW9uYWwgY2hhbmdlcyB0byBNZXNvbiBkaXN0
cmlidXRpb24KPiA+ICAgY2k6IFRyeSBNZXNvbiBkaXN0Cj4gPiAKPiA+ICAuZ2l0bGFiLWNpLnlt
bCAgICAgICAgICAgICAgICB8IDIwICsrKysrKysrKysrKysrKysKPiA+ICBNYWtlZmlsZS5hbSAg
ICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ICBidWlsZC1hdXgvbWVzb24tZGlzdCAgICAgICAg
ICB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ICBtZXNvbi5idWlsZCAgICAgICAgICAg
ICAgICAgICB8ICAyICstCj4gPiAgc3JjL3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMgfCA0NSAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIDUgZmlsZXMgY2hhbmdlZCwg
NTAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNzU1
IGJ1aWxkLWF1eC9tZXNvbi1kaXN0Cj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IHNyYy9zcGljZS1j
bGllbnQtZ3RrLW1vZHVsZS5jCj4gPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
