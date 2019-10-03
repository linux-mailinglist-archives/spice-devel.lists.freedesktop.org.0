Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2625C9F8A
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 15:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6964389A14;
	Thu,  3 Oct 2019 13:35:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E1D89A14
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:35:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B68530832EA
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:35:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 811AD1001B23
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 13:35:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 76B534EE50;
 Thu,  3 Oct 2019 13:35:35 +0000 (UTC)
Date: Thu, 3 Oct 2019 09:35:35 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <623105803.5434117.1570109735285.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191003133305.12645-2-uril@redhat.com>
References: <20191003133305.12645-1-uril@redhat.com>
 <20191003133305.12645-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.2]
Thread-Topic: gitignore: ignore tar.xz
Thread-Index: vF94v4JWQluKB4QF3MFYG3Lpjh0/PQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 03 Oct 2019 13:35:35 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-streaming-agent PATCH v2 1/3] gitignore:
 ignore tar.xz
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

PiAKPiAibWFrZSBkaXN0IiBnZW5lcmF0ZXMgaXQgKGRpc3QteHogaXMgc3BlY2lmaWVkIGluIGNv
bmZpZ3VyZS5hYykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5j
b20+CgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpTbywg
YWxsIHRoZSBzZXJpZXMgZ290IGFja2VkLgoKPiAtLS0KPiAgLmdpdGlnbm9yZSB8IDEgKwo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvLmdpdGlnbm9y
ZSBiLy5naXRpZ25vcmUKPiBpbmRleCA2MDFjYzlmLi4yOWQ0YTkyIDEwMDY0NAo+IC0tLSBhLy5n
aXRpZ25vcmUKPiArKysgYi8uZ2l0aWdub3JlCj4gQEAgLTQsNiArNCw3IEBACj4gICoubG8KPiAg
Ki50YXIuYnoyCj4gICoudGFyLmd6Cj4gKyoudGFyLnh6Cj4gIC4qLnN3Pwo+ICAuZGVwcwo+ICAu
ZGlyc3RhbXAKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
