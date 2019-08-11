Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2868911F
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6836E31E;
	Sun, 11 Aug 2019 09:42:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C4F6E31E
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:42:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC51D3086258
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:42:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E1EDA3467E
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:42:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D3D2C2551B;
 Sun, 11 Aug 2019 09:42:53 +0000 (UTC)
Date: Sun, 11 Aug 2019 05:42:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1700352039.5452357.1565516573430.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190811092605.31952-1-uril@redhat.com>
References: <20190811092605.31952-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.53, 10.4.195.21]
Thread-Topic: ptypes.py: remove useless condition member != None
Thread-Index: wo8uXBYjLX6k7+xZZ4Zdth/sDztcOQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Sun, 11 Aug 2019 09:42:53 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-common PATCH 1/2] ptypes.py: remove
 useless condition member != None
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

PiAKPiBtZW1iZXIgPSBOb25lIGlzIHNldCBiZWZvcmUgdGhlIGlmL2Vsc2UgY29uZGl0aW9uLgo+
IEluIHRoZSBlbHNlIGNvZGUsIHdoZW4gbWVtYmVyIGlzIHNldCBpdCBpcyBjaGVja2VkCj4gYW5k
IGlmIG5vdC1Ob25lIGl0IGJyZWFrcyBvdXQgb2YgdGhlIGxvb3AuCj4gSWYgdGhlIGNvZGUgaXMg
c3RpbGwgaW4gdGhlIGxvb3AgZm9yIHN1cmUgbWVtYmVyIGlzIE5vbmUuCj4gCj4gRm91bmQgYnkg
Y292c2Nhbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+
CgpBY2tlZAoKPiAtLS0KPiAgcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5IHwgMiAtLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVs
ZXMvcHR5cGVzLnB5IGIvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4gaW5kZXggYjA4MTcwZS4u
MzExY2UzZCAxMDA2NDQKPiAtLS0gYS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiArKysgYi9w
eXRob25fbW9kdWxlcy9wdHlwZXMucHkKPiBAQCAtODg0LDggKzg4NCw2IEBAIGNsYXNzIENvbnRh
aW5lclR5cGUoVHlwZSk6Cj4gICAgICAgICAgICAgICAgICAgICAgbWVtYmVyID0gbS5sb29rdXBf
Y2FzZV9tZW1iZXIobmFtZSkKPiAgICAgICAgICAgICAgICAgICAgICBpZiBtZW1iZXIgIT0gTm9u
ZToKPiAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWsKPiAtICAgICAgICAgICAgICAgIGlm
IG1lbWJlciAhPSBOb25lOgo+IC0gICAgICAgICAgICAgICAgICAgIGJyZWFrCj4gIAo+ICAgICAg
ICAgIGlmIG1lbWJlciA9PSBOb25lOgo+ICAgICAgICAgICAgICByYWlzZSBFeGNlcHRpb24oIk5v
IG1lbWJlciBjYWxsZWQgJXMgZm91bmQiICUgbmFtZSkKCkZyZWRpYW5vCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
