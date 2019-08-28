Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0711A06F7
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B10789D83;
	Wed, 28 Aug 2019 16:09:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADEC89D83
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:09:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1611310576E2
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:09:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D69E1001DC0
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:09:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03E021802216;
 Wed, 28 Aug 2019 16:09:19 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:09:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <141657454.9966730.1567008558847.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190828160234.8182-1-uril@redhat.com>
References: <20190828160234.8182-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.21]
Thread-Topic: vdagentd: daemonize: check fprintf return value
Thread-Index: NJMTbrLpPCM56ZbResLKQY1Fr/tA+Q==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Wed, 28 Aug 2019 16:09:19 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-vdagent PATCH 1/2] vdagentd: daemonize:
 check fprintf return value
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

PiAKPiBPdGhlciBmcHJpbnRmIGNhbGxzIGFyZSBjaGVja2VkLgo+IAo+IElmIGZwcmludGYgZmFp
bHMgd3JpdGUgYW4gZXJyb3IgbWVzc2FnZSBhbmQgY29udGludWUuCj4gCj4gTWFrZSBjb3ZzY2Fu
IGhhcHB5Cj4gCj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiAgPHVyaWxAcmVkaGF0LmNvbT4K
PiAtLS0KPiAgc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3Jj
L3ZkYWdlbnRkL3ZkYWdlbnRkLmMgYi9zcmMvdmRhZ2VudGQvdmRhZ2VudGQuYwo+IGluZGV4IDcy
YTNlMTMuLjIyYTYyYjggMTAwNjQ0Cj4gLS0tIGEvc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMKPiAr
KysgYi9zcmMvdmRhZ2VudGQvdmRhZ2VudGQuYwo+IEBAIC05OTYsNyArOTk2LDEwIEBAIHN0YXRp
YyB2b2lkIGRhZW1vbml6ZSh2b2lkKQo+ICAgICAgICAgIH0KPiAgICAgICAgICBwaWRmaWxlID0g
Zm9wZW4ocGlkZmlsZW5hbWUsICJ3Iik7Cj4gICAgICAgICAgaWYgKHBpZGZpbGUpIHsKPiAtICAg
ICAgICAgICAgZnByaW50ZihwaWRmaWxlLCAiJWRcbiIsIChpbnQpZ2V0cGlkKCkpOwo+ICsgICAg
ICAgICAgICBpbnQgciA9IGZwcmludGYocGlkZmlsZSwgIiVkXG4iLCAoaW50KWdldHBpZCgpKTsK
PiArICAgICAgICAgICAgaWYgKHIgPCAwKSB7Cj4gKyAgICAgICAgICAgICAgICBzeXNsb2coTE9H
X0VSUiwgIkVycm9yIHdyaXRpbmcgdG8gJXM6ICVtIiwgcGlkZmlsZW5hbWUpOwo+ICsgICAgICAg
ICAgICB9Cj4gICAgICAgICAgICAgIGZjbG9zZShwaWRmaWxlKTsKPiAgICAgICAgICB9Cj4gICAg
ICAgICAgYnJlYWs7CgpZb3UgY2FuIHdyYXAgdGhlIGNvZGUgKGZwcmludGYgbGluZSBpbiB0aGlz
IGNhc2UpIGluCgojaWZuZGVmIF9fY2xhbmdfYW5hbHl6ZXJfXwouLi4gY29kZSAuLi4KI2VuZGlm
CgpBcyBhbHJlYWR5IGRpc2N1c3NlZCBpbiBhIHByZXZpb3VzIHByb3Bvc2FsIGlzIG1vcmUgY29t
bW9uIHRoYXQgZmlsZQpjcmVhdGlvbiBmYWlscyBidXQgdGhpcyBpcyBzaWxlbnRseSBpZ25vcmVk
LgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
