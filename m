Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435C57E00A
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 18:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77BF6E721;
	Thu,  1 Aug 2019 16:22:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D086E729
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 02CF075718
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ED3B01001947
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E52BA1800202
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:28 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:22:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1492692732.4230537.1564676548884.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190722110841.31711-1-fziglio@redhat.com>
References: <20190722110841.31711-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: glz-encoder-dict: Remove useless __packed__ attribute
Thread-Index: InjwO5IAJqC8QY620YJgKUSweYgr3g==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 01 Aug 2019 16:22:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/3] glz-encoder-dict: Remove
 useless __packed__ attribute
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

cGluZwoKPiAKPiBUaGUgc3RydWN0dXJlIGhhcyBubyBob2xlcywgYWRkaW5nIHRoaXMgYXR0cmli
dXRlIGNvdWxkIG9ubHkKPiBkZWNyZWFzZSBlZmZpY2llbmN5Lgo+IE5vdGUgdGhhdCBIYXNoRW50
cnkgc3RydWN0dXJlIGlzIHVzZWQgZm9yIGEgbGFyZ2UgKDhNQikgYXJyYXkgc28KPiB0aGlzIHdv
bid0IGFmZmVjdCBtdWNoIHBvc3NpYmxlIGNvbnRhaW5lciBzaXplLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIv
Z2x6LWVuY29kZXItcHJpdi5oIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2dsei1lbmNvZGVyLXBy
aXYuaCBiL3NlcnZlci9nbHotZW5jb2Rlci1wcml2LmgKPiBpbmRleCAwOGRjMDA3Y2UuLjc3NTdm
MjMyYyAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvZ2x6LWVuY29kZXItcHJpdi5oCj4gKysrIGIvc2Vy
dmVyL2dsei1lbmNvZGVyLXByaXYuaAo+IEBAIC03Niw3ICs3Niw3IEBAIHN0cnVjdCBXaW5kb3dJ
bWFnZVNlZ21lbnQgewo+ICB9Owo+ICAKPiAgCj4gLXN0cnVjdCAgX19hdHRyaWJ1dGVfXyAoKF9f
cGFja2VkX18pKSBIYXNoRW50cnkgewo+ICtzdHJ1Y3QgSGFzaEVudHJ5IHsKPiAgICAgIHVpbnQz
Ml90IGltYWdlX3NlZ19pZHg7Cj4gICAgICB1aW50MzJfdCByZWZfcGl4X2lkeDsKPiAgfTsKPiAt
LQo+IDIuMjAuMQo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
