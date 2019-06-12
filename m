Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E1741BD1
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44848925C;
	Wed, 12 Jun 2019 05:57:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DF38925C
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:57:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D2E9E811D8
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CA15B614C8
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2EB81806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:59 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:56:59 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-5-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: red-worker: Remove warning
Thread-Index: IYikIAqrrvK3LDfWnE/5b6T+50W4lw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 12 Jun 2019 05:56:59 +0000 (UTC)
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

cGluZwoKPiAKPiBJbiBzb21lIGNvbmZpZ3VyYXRpb24gX0dOVV9TT1VSQ0UgaXMgZGVmaW5lZCBi
eSB0aGUgY29tcGlsZXIKPiBhbmQgZGVmaW5pbmcgYWdhaW4gY2F1c2UgYSB3YXJuaW5nLgo+IERv
IG5vdCBkZWZpbmUgYWdhaW4gdG8gYXZvaWQgdGhlIHdhcm5pbmcuCj4gCj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNlcnZlci9y
ZWQtd29ya2VyLmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC13b3JrZXIuYyBiL3NlcnZlci9yZWQtd29ya2VyLmMK
PiBpbmRleCBkNjRjMjZlODMuLmIzMzM1YTUzYSAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvcmVkLXdv
cmtlci5jCj4gKysrIGIvc2VydmVyL3JlZC13b3JrZXIuYwo+IEBAIC0xNyw3ICsxNyw5IEBACj4g
ICovCj4gICNpbmNsdWRlIDxjb25maWcuaD4KPiAgCj4gKyNpZm5kZWYgX0dOVV9TT1VSQ0UKPiAg
I2RlZmluZSBfR05VX1NPVVJDRQo+ICsjZW5kaWYKPiAgI2luY2x1ZGUgPHN0ZGlvLmg+Cj4gICNp
bmNsdWRlIDxzdGRhcmcuaD4KPiAgI2luY2x1ZGUgPHN0ZGxpYi5oPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
