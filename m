Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A256D0AC
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B166E3DA;
	Thu, 18 Jul 2019 15:06:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6179F6E3DA
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:06:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F1D0630C62A0;
 Thu, 18 Jul 2019 15:06:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E70C8177C8;
 Thu, 18 Jul 2019 15:06:38 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD7461800205;
 Thu, 18 Jul 2019 15:06:38 +0000 (UTC)
Date: Thu, 18 Jul 2019 11:06:38 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1330885980.784816.1563462398586.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190718143200.16380-2-jwhite@codeweavers.com>
References: <20190718143200.16380-1-jwhite@codeweavers.com>
 <20190718143200.16380-2-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.2]
Thread-Topic: Bug fix: a listen specification from the config file was ignored
Thread-Index: BzWHdxgIDFq/0qNHXDp5F+AT1hX9xQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 18 Jul 2019 15:06:39 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice 2/2] Bug fix: a listen
 specification from the config file was ignored
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+
Cj4gLS0tCj4gIHNyYy9vcHRpb25zLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvb3B0aW9ucy5j
IGIvc3JjL29wdGlvbnMuYwo+IGluZGV4IDBkMzEzOGQwLi5jZjc1ZTU0ZSAxMDA2NDQKPiAtLS0g
YS9zcmMvb3B0aW9ucy5jCj4gKysrIGIvc3JjL29wdGlvbnMuYwo+IEBAIC0zNTUsNyArMzU1LDkg
QEAgaW50IG9wdGlvbnNfcGFyc2VfYXJndW1lbnRzKGludCBhcmdjLCBjaGFyICphcmd2W10sCj4g
b3B0aW9uc190ICpvcHRpb25zKQo+ICAgICAgaWYgKHJjID09IDApIHsKPiAgICAgICAgICBpZiAo
b3B0aW5kID49IGFyZ2MpIHsKPiAgICAgICAgICAgICAgLyogRGVmYXVsdCAqLwo+IC0gICAgICAg
ICAgICBvcHRpb25zLT5saXN0ZW4gPSBzdHJkdXAoIjU5MDAiKTsKPiArICAgICAgICAgICAgaWYg
KCFvcHRpb25zLT5saXN0ZW4pIHsKCk1pbm9yICJpZiAob3B0aW9ucy0+bGlzdGVuID09IE5VTEwp
IHsiLiBGb3IgbWUgYm90aCBhcmUgZmluZS4KCj4gKyAgICAgICAgICAgICAgICBvcHRpb25zLT5s
aXN0ZW4gPSBzdHJkdXAoIjU5MDAiKTsKCk5vdGUgdGhhdCBpbiBjYXNlIG9mIG9wdGlvbiB0aGlz
IHdhcyBpbml0aWFsaXplZCBmb3JtIEdsaWIKc28gaXQncyBhIG1peCBvZiBnbGliICh3aGljaCBy
ZXF1aXJlIGdfZnJlZSkgYW5kIEMgc3RyZHVwCih3aGljaCByZXF1aXJlcyBmcmVlKS4KQnV0IHRo
aXMgaXMgbm90IGEgcmVncmVzc2lvbi4KCj4gKyAgICAgICAgICAgIH0KPiAgICAgICAgICB9IGVs
c2UgaWYgKG9wdGluZCA8IChhcmdjIC0gMSkpIHsKPiAgICAgICAgICAgICAgZnByaW50ZihzdGRl
cnIsICJFcnJvcjogdG9vIG1hbnkgYXJndW1lbnRzXG4iKTsKPiAgICAgICAgICAgICAgcmMgPSBY
MTFTUElDRV9FUlJfQkFEQVJHUzsKCk90aGVyd2lzZSwgYWNrCgpGcmVkaWFubwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
