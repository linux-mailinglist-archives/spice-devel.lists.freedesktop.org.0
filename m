Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F8961B43
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BFDB89BDB;
	Mon,  8 Jul 2019 07:29:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D06189BA9
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BCEBD3086217
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B4F465C238
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AD0E21833001
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:23 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:29:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <468729087.26605953.1562570963658.JavaMail.zimbra@redhat.com>
In-Reply-To: <1043795662.25083171.1561708103515.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
 <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
 <1644185886.23872973.1561102512272.JavaMail.zimbra@redhat.com>
 <1043795662.25083171.1561708103515.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: red-worker: Remove warning
Thread-Index: IYikIAqrrvK3LDfWnE/5b6T+50W4l4euGaXfqFDCfjW6dV2SiQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 08 Jul 2019 07:29:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 05/13] red-worker: Remove
 warning
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBJbiBzb21lIGNvbmZpZ3VyYXRpb24gX0dOVV9TT1VSQ0Ug
aXMgZGVmaW5lZCBieSB0aGUgY29tcGlsZXIKPiA+ID4gPiBhbmQgZGVmaW5pbmcgYWdhaW4gY2F1
c2UgYSB3YXJuaW5nLgo+ID4gPiA+IERvIG5vdCBkZWZpbmUgYWdhaW4gdG8gYXZvaWQgdGhlIHdh
cm5pbmcuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIHNlcnZlci9yZWQtd29ya2Vy
LmMgfCAyICsrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+ID4g
PiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC13b3JrZXIuYyBiL3NlcnZlci9yZWQt
d29ya2VyLmMKPiA+ID4gPiBpbmRleCBkNjRjMjZlODMuLmIzMzM1YTUzYSAxMDA2NDQKPiA+ID4g
PiAtLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+ID4gKysrIGIvc2VydmVyL3JlZC13b3Jr
ZXIuYwo+ID4gPiA+IEBAIC0xNyw3ICsxNyw5IEBACj4gPiA+ID4gICovCj4gPiA+ID4gICNpbmNs
dWRlIDxjb25maWcuaD4KPiA+ID4gPiAgCj4gPiA+ID4gKyNpZm5kZWYgX0dOVV9TT1VSQ0UKPiA+
ID4gPiAgI2RlZmluZSBfR05VX1NPVVJDRQo+ID4gPiA+ICsjZW5kaWYKPiA+ID4gPiAgI2luY2x1
ZGUgPHN0ZGlvLmg+Cj4gPiA+ID4gICNpbmNsdWRlIDxzdGRhcmcuaD4KPiA+ID4gPiAgI2luY2x1
ZGUgPHN0ZGxpYi5oPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
