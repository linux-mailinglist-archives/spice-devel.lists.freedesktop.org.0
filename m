Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEDE13B7D
	for <lists+spice-devel@lfdr.de>; Sat,  4 May 2019 19:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB6A89471;
	Sat,  4 May 2019 17:54:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2890589471
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:54:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C632CC057F3D
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:54:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BD29587BA
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:54:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B089B18089CA;
 Sat,  4 May 2019 17:54:37 +0000 (UTC)
Date: Sat, 4 May 2019 13:54:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <963364228.16496683.1556992477666.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190504143241.28352-2-victortoso@redhat.com>
References: <20190504143241.28352-1-victortoso@redhat.com>
 <20190504143241.28352-2-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.9]
Thread-Topic: channel-usbredir: if disabled, define type without private
Thread-Index: cxxbTvc6eN/UThkN7xY58z/HDeX27Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Sat, 04 May 2019 17:54:37 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 1/2] channel-usbredir: if disabled,
 define type without private
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
IHdlJ2xsIGdldAo+IAo+ICAgICBnX3R5cGVfYWRkX2luc3RhbmNlX3ByaXZhdGU6IGFzc2VydGlv
biAncHJpdmF0ZV9zaXplID4gMCcgZmFpbGVkCj4gCj4gU2lnbmVkLW9mZi1ieTogVmljdG9yIFRv
c28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KCkFja2VkCgo+IC0tLQo+ICBzcmMvY2hhbm5lbC11
c2JyZWRpci5jIHwgNSArKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIv
c3JjL2NoYW5uZWwtdXNicmVkaXIuYwo+IGluZGV4IDM1NjIxNjQuLmY4MDFjOGUgMTAwNjQ0Cj4g
LS0tIGEvc3JjL2NoYW5uZWwtdXNicmVkaXIuYwo+ICsrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGly
LmMKPiBAQCAtMTAxLDEyICsxMDEsMTEgQEAgc3RhdGljIHZvaWQgdXNicmVkaXJfbG9ja19sb2Nr
KHZvaWQgKnVzZXJfZGF0YSk7Cj4gIHN0YXRpYyB2b2lkIHVzYnJlZGlyX3VubG9ja19sb2NrKHZv
aWQgKnVzZXJfZGF0YSk7Cj4gIHN0YXRpYyB2b2lkIHVzYnJlZGlyX2ZyZWVfbG9jayh2b2lkICp1
c2VyX2RhdGEpOwo+ICAKPiArR19ERUZJTkVfVFlQRV9XSVRIX1BSSVZBVEUoU3BpY2VVc2JyZWRp
ckNoYW5uZWwsIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWwsCj4gU1BJQ0VfVFlQRV9DSEFOTkVMKQo+
ICAjZWxzZQo+IC1zdHJ1Y3QgX1NwaWNlVXNicmVkaXJDaGFubmVsUHJpdmF0ZSB7Cj4gLX07Cj4g
K0dfREVGSU5FX1RZUEUoU3BpY2VVc2JyZWRpckNoYW5uZWwsIHNwaWNlX3VzYnJlZGlyX2NoYW5u
ZWwsCj4gU1BJQ0VfVFlQRV9DSEFOTkVMKQo+ICAjZW5kaWYKPiAgCj4gLUdfREVGSU5FX1RZUEVf
V0lUSF9QUklWQVRFKFNwaWNlVXNicmVkaXJDaGFubmVsLCBzcGljZV91c2JyZWRpcl9jaGFubmVs
LAo+IFNQSUNFX1RZUEVfQ0hBTk5FTCkKPiAgCj4gIC8qIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAqLwo+ICAKCkZyZWRp
YW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
