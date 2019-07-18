Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F286A6CA18
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEE66E320;
	Thu, 18 Jul 2019 07:40:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFFA6E336
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C7FD30821C2
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8408619C67
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7DA0E4EA30
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:40:44 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:40:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <2101936264.688104.1563435644485.JavaMail.zimbra@redhat.com>
In-Reply-To: <468729087.26605953.1562570963658.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
 <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
 <1644185886.23872973.1561102512272.JavaMail.zimbra@redhat.com>
 <1043795662.25083171.1561708103515.JavaMail.zimbra@redhat.com>
 <468729087.26605953.1562570963658.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: red-worker: Remove warning
Thread-Index: IYikIAqrrvK3LDfWnE/5b6T+50W4l4euGaXfqFDCfjW6dV2Sia9Zy8Jb
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 18 Jul 2019 07:40:44 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IEluIHNvbWUgY29uZmlndXJhdGlvbiBfR05VX1NPVVJDRSBpcyBkZWZpbmVkIGJ5IHRoZSBjb21w
aWxlcgo+ID4gPiA+ID4gYW5kIGRlZmluaW5nIGFnYWluIGNhdXNlIGEgd2FybmluZy4KPiA+ID4g
PiA+IERvIG5vdCBkZWZpbmUgYWdhaW4gdG8gYXZvaWQgdGhlIHdhcm5pbmcuCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQu
Y29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgc2VydmVyL3JlZC13b3JrZXIuYyB8IDIgKysK
PiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLXdvcmtlci5jIGIvc2VydmVyL3JlZC13b3Jr
ZXIuYwo+ID4gPiA+ID4gaW5kZXggZDY0YzI2ZTgzLi5iMzMzNWE1M2EgMTAwNjQ0Cj4gPiA+ID4g
PiAtLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+ID4gPiArKysgYi9zZXJ2ZXIvcmVkLXdv
cmtlci5jCj4gPiA+ID4gPiBAQCAtMTcsNyArMTcsOSBAQAo+ID4gPiA+ID4gICovCj4gPiA+ID4g
PiAgI2luY2x1ZGUgPGNvbmZpZy5oPgo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gKyNpZm5kZWYgX0dO
VV9TT1VSQ0UKPiA+ID4gPiA+ICAjZGVmaW5lIF9HTlVfU09VUkNFCj4gPiA+ID4gPiArI2VuZGlm
Cj4gPiA+ID4gPiAgI2luY2x1ZGUgPHN0ZGlvLmg+Cj4gPiA+ID4gPiAgI2luY2x1ZGUgPHN0ZGFy
Zy5oPgo+ID4gPiA+ID4gICNpbmNsdWRlIDxzdGRsaWIuaD4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
