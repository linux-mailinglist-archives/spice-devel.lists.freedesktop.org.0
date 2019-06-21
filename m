Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61784E148
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 09:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC266E84C;
	Fri, 21 Jun 2019 07:35:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE83B6E84B
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 647E8356EA
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 56EC05D71D
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:12 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C97C206D1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:35:12 +0000 (UTC)
Date: Fri, 21 Jun 2019 03:35:12 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1644185886.23872973.1561102512272.JavaMail.zimbra@redhat.com>
In-Reply-To: <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
 <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.2]
Thread-Topic: red-worker: Remove warning
Thread-Index: IYikIAqrrvK3LDfWnE/5b6T+50W4l4euGaXf
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Fri, 21 Jun 2019 07:35:12 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IEluIHNvbWUgY29uZmlndXJhdGlvbiBfR05VX1NP
VVJDRSBpcyBkZWZpbmVkIGJ5IHRoZSBjb21waWxlcgo+ID4gYW5kIGRlZmluaW5nIGFnYWluIGNh
dXNlIGEgd2FybmluZy4KPiA+IERvIG5vdCBkZWZpbmUgYWdhaW4gdG8gYXZvaWQgdGhlIHdhcm5p
bmcuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+ID4gLS0tCj4gPiAgc2VydmVyL3JlZC13b3JrZXIuYyB8IDIgKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIv
cmVkLXdvcmtlci5jIGIvc2VydmVyL3JlZC13b3JrZXIuYwo+ID4gaW5kZXggZDY0YzI2ZTgzLi5i
MzMzNWE1M2EgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiArKysgYi9z
ZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiBAQCAtMTcsNyArMTcsOSBAQAo+ID4gICovCj4gPiAgI2lu
Y2x1ZGUgPGNvbmZpZy5oPgo+ID4gIAo+ID4gKyNpZm5kZWYgX0dOVV9TT1VSQ0UKPiA+ICAjZGVm
aW5lIF9HTlVfU09VUkNFCj4gPiArI2VuZGlmCj4gPiAgI2luY2x1ZGUgPHN0ZGlvLmg+Cj4gPiAg
I2luY2x1ZGUgPHN0ZGFyZy5oPgo+ID4gICNpbmNsdWRlIDxzdGRsaWIuaD4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
