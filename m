Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D52CB7AAA
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 15:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5AB86F461;
	Thu, 19 Sep 2019 13:39:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43826F461
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:39:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7541B18C8935
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 13:39:55 +0000 (UTC)
Received: from work-vm (ovpn-116-229.ams2.redhat.com [10.36.116.229])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 517D160C18;
 Thu, 19 Sep 2019 13:39:52 +0000 (UTC)
Date: Thu, 19 Sep 2019 14:39:49 +0100
From: "Dr. David Alan Gilbert" <dgilbert@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919133949.GB2870@work-vm>
References: <20190919101725.20686-1-fziglio@redhat.com>
 <20190919130409.i4ubnvr7lw2obnp3@wingsuit>
 <992634810.2527448.1568899476026.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <992634810.2527448.1568899476026.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 19 Sep 2019 13:39:55 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-qxl: Make sure we have
 at least one monitor
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

KiBGcmVkaWFubyBaaWdsaW8gKGZ6aWdsaW9AcmVkaGF0LmNvbSkgd3JvdGU6Cj4gPiAKPiA+IE9u
IFRodSwgU2VwIDE5LCAyMDE5IGF0IDExOjE3OjI1QU0gKzAxMDAsIEZyZWRpYW5vIFppZ2xpbyB3
cm90ZToKPiA+ID4gSXQgZG9lcyBub3QgbWFrZSBzZW5zZSB0byBoYXZlIGEgZ3JhcGhpYyBjYXJk
IHdpdGhvdXQgYSBtb25pdG9yLgo+ID4gPiBJbiBzcGljZV9xeGxfc2V0X21heF9tb25pdG9ycyB3
ZSBwcmV2ZW50IHRvIHNldCAwIG1vbml0b3JzLCBkbwo+ID4gPiB0aGUgc2FtZSBpbiBzcGljZV9x
eGxfc2V0X2RldmljZV9pbmZvLgo+ID4gPiAKPiA+ID4gVGhpcyBmaXhlcyBodHRwczovL2J1Z3pp
bGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTE2OTE3MjEuCj4gPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IAo+ID4g
QWNrZWQtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gPiAKPiAKPiBD
YW4gSSBhZGQgYSAKPiAKPiBUZXN0ZWQtYnk6IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgPGRnaWxi
ZXJ0QHJlZGhhdC5jb20+Cj4gCgpZZXMgeW91IGNhbjsgZml4ZXMgaXQgbmljZWx5IGZvciBtZS4K
CkRhdmUKCj4gCj4gCj4gPiA+IC0tLQo+ID4gPiAgc2VydmVyL3JlZC1xeGwuYyB8IDIgKy0KPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAK
PiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtcXhsLmMgYi9zZXJ2ZXIvcmVkLXF4bC5jCj4g
PiA+IGluZGV4IDAzMzQ4MjcwLi5kYmZjZDQ0MCAxMDA2NDQKPiA+ID4gLS0tIGEvc2VydmVyL3Jl
ZC1xeGwuYwo+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLXF4bC5jCj4gPiA+IEBAIC04MDQsNyArODA0
LDcgQEAgdm9pZCBzcGljZV9xeGxfc2V0X2RldmljZV9pbmZvKFFYTEluc3RhbmNlICppbnN0YW5j
ZSwKPiA+ID4gICAgICB9Cj4gPiA+ICAKPiA+ID4gICAgICBpbnN0YW5jZS0+c3QtPm1vbml0b3Jz
X2NvdW50ID0gZGV2aWNlX2Rpc3BsYXlfaWRfY291bnQ7Cj4gPiA+IC0gICAgaW5zdGFuY2UtPnN0
LT5tYXhfbW9uaXRvcnMgPSBkZXZpY2VfZGlzcGxheV9pZF9jb3VudDsKPiA+ID4gKyAgICBpbnN0
YW5jZS0+c3QtPm1heF9tb25pdG9ycyA9IE1BWCgxdSwgZGV2aWNlX2Rpc3BsYXlfaWRfY291bnQp
Owo+ID4gPiAgCj4gPiA+ICAgICAgcmVkc19zZW5kX2RldmljZV9kaXNwbGF5X2luZm8ocmVkX3F4
bF9nZXRfc2VydmVyKGluc3RhbmNlLT5zdCkpOwo+ID4gPiAgfQotLQpEci4gRGF2aWQgQWxhbiBH
aWxiZXJ0IC8gZGdpbGJlcnRAcmVkaGF0LmNvbSAvIE1hbmNoZXN0ZXIsIFVLCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
