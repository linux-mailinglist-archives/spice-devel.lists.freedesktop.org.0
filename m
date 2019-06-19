Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71564B5E0
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 12:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BEA6E348;
	Wed, 19 Jun 2019 10:05:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94316E348
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7F314307D910
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 756A35C220
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6BD7254D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 10:05:07 +0000 (UTC)
Date: Wed, 19 Jun 2019 06:05:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <474474113.23631567.1560938707382.JavaMail.zimbra@redhat.com>
In-Reply-To: <2139512998.22408143.1560318907382.JavaMail.zimbra@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
 <2139512998.22408143.1560318907382.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.27]
Thread-Topic: Check distribution with CI
Thread-Index: iVFZenijvVdr7GvE8hclyL15UtwpJIQSUYhY/mDDTIs=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 19 Jun 2019 10:05:07 +0000 (UTC)
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

cGluZyAzCgo+IAo+IHBpbmcKPiAKPiA+IAo+ID4gcGluZyB0aGUgc2VyaWVzCj4gPiAKPiA+ID4g
Cj4gPiA+IE1ha2Ugc3VyZSB3ZSBjYW4gYnVpbGQgZGlzdHJpYnV0aW9uLgo+ID4gPiBTb21lIHNt
YWxsIHVwZGF0ZXMgYWxzbyB0byBmaXggc29tZSBtaW5vciBpc3N1ZXMuCj4gPiA+IAo+ID4gPiBD
SSByZXN1bHRzIGF0Cj4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9memlnbGlv
L3NwaWNlLWd0ay9waXBlbGluZXMvMzc3NDQKPiA+ID4gCj4gPiA+IEZyZWRpYW5vIFppZ2xpbyAo
NCk6Cj4gPiA+ICAgY2k6IFRlc3Qgd2UgY2FuIGNyZWF0ZSBhIG5vIGRpcnR5IHBhY2thZ2UKPiA+
ID4gICBzcGljZS1jbGllbnQtZ3RrLW1vZHVsZTogUmVtb3ZlIHVudXNlZCBmaWxlCj4gPiA+ICAg
YnVpbGQ6IERvIGFkZGl0aW9uYWwgY2hhbmdlcyB0byBNZXNvbiBkaXN0cmlidXRpb24KPiA+ID4g
ICBjaTogVHJ5IE1lc29uIGRpc3QKPiA+ID4gCj4gPiA+ICAuZ2l0bGFiLWNpLnltbCAgICAgICAg
ICAgICAgICB8IDIwICsrKysrKysrKysrKysrKysKPiA+ID4gIE1ha2VmaWxlLmFtICAgICAgICAg
ICAgICAgICAgIHwgIDEgKwo+ID4gPiAgYnVpbGQtYXV4L21lc29uLWRpc3QgICAgICAgICAgfCAy
OCArKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICBtZXNvbi5idWlsZCAgICAgICAgICAgICAg
ICAgICB8ICAyICstCj4gPiA+ICBzcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYyB8IDQ1IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ICA1IGZpbGVzIGNoYW5nZWQs
IDUwIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAw
NzU1IGJ1aWxkLWF1eC9tZXNvbi1kaXN0Cj4gPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgc3JjL3Nw
aWNlLWNsaWVudC1ndGstbW9kdWxlLmMKPiA+ID4gCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
