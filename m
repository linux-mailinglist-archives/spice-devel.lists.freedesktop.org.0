Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C8C2058C
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 13:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BD389100;
	Thu, 16 May 2019 11:45:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E96890F7
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:45:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C24006439B
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:45:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B922010021B2
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 11:45:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A9B8C206D1;
 Thu, 16 May 2019 11:45:30 +0000 (UTC)
Date: Thu, 16 May 2019 07:45:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <429982799.18700582.1558007129285.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190516114413.32185-1-victortoso@redhat.com>
References: <20190516113000.31578-1-victortoso@redhat.com>
 <20190516114413.32185-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.11]
Thread-Topic: build-sys: Ship keycodemapdb's meson.build on release
Thread-Index: F7qZmO/bEjsfGCYkcVmhMUZ3bQ3Pow==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 16 May 2019 11:45:30 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 5/6] build-sys: Ship keycodemapdb's
 meson.build on release
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gT3RoZXJ3aXNl
IHdlIGJyZWFrIG1lc29uIGJ1aWxkcyB3aXRoICJtZXNvbi5idWlsZDo0NDowOiBFUlJPUjoKPiBT
dWJwcm9qZWN0IGV4aXN0cyBidXQgaGFzIG5vIG1lc29uLmJ1aWxkIGZpbGUiCj4gCj4gU2lnbmVk
LW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KCkFja2VkCgo+IC0t
LQo+ICBzcmMvTWFrZWZpbGUuYW0gfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL01ha2VmaWxlLmFtIGIvc3JjL01ha2VmaWxlLmFt
Cj4gaW5kZXggN2I5ODE4MC4uN2E3ZWNiNCAxMDA2NDQKPiAtLS0gYS9zcmMvTWFrZWZpbGUuYW0K
PiArKysgYi9zcmMvTWFrZWZpbGUuYW0KPiBAQCAtMzAsNiArMzAsNyBAQCBFWFRSQV9ESVNUID0J
CQkJCVwKPiAgCSQoS0VZTUFQUykJCQkJXAo+ICAJJChLRVlNQVBfQ1NWKQkJCQlcCj4gIAkkKEtF
WU1BUF9HRU4pCQkJCVwKPiArCSQoS0VZTUFQX0RJU1QpCQkJCVwKPiAgCW1hcC1maWxlCQkJCVwK
PiAgCXNwaWNlLWdsaWItc3ltLWZpbGUJCQlcCj4gIAlzcGljZS1ndGstc3ltLWZpbGUJCQlcCj4g
QEAgLTY1LDYgKzY2LDcgQEAgZW5kaWYKPiAgCj4gIEtFWU1BUF9HRU4gPSAkKHRvcF9zcmNkaXIp
L3N1YnByb2plY3RzL2tleWNvZGVtYXBkYi90b29scy9rZXltYXAtZ2VuCj4gIEtFWU1BUF9DU1Yg
PSAkKHRvcF9zcmNkaXIpL3N1YnByb2plY3RzL2tleWNvZGVtYXBkYi9kYXRhL2tleW1hcHMuY3N2
Cj4gK0tFWU1BUF9ESVNUID0gJCh0b3Bfc3JjZGlyKS9zdWJwcm9qZWN0cy9rZXljb2RlbWFwZGIv
bWVzb24uYnVpbGQKPiAgCj4gIFNQSUNFX0NPTU1PTl9DUFBGTEFHUyA9CQkJCQkJXAo+ICAJLURT
UElDRV9DT01QSUxBVElPTgkJCQkJXApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
