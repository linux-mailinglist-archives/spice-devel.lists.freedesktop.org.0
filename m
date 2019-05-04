Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7192213B7E
	for <lists+spice-devel@lfdr.de>; Sat,  4 May 2019 19:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8CBC893E8;
	Sat,  4 May 2019 17:57:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8BE893E8
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:57:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 34B72308A958
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:57:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2925A60A98
 for <spice-devel@lists.freedesktop.org>; Sat,  4 May 2019 17:57:31 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1BE323FB10;
 Sat,  4 May 2019 17:57:31 +0000 (UTC)
Date: Sat, 4 May 2019 13:57:31 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <677830588.16497376.1556992651025.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190504143241.28352-1-victortoso@redhat.com>
References: <20190504143241.28352-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.27]
Thread-Topic: channel-usbredir ifdef USE_USBREDIR fixes
Thread-Index: ISL4N65ZnkmmNEBuFh2itIdZSFPS5w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Sat, 04 May 2019 17:57:31 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 0/2] channel-usbredir ifdef
 USE_USBREDIR fixes
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gSGksCj4gCj4g
QSBjb21waWxlciB3YXJuaW5nIGZpeCBvbiBmaXJzdCBwYXRjaC4gSSBjYW4gdHJpZ2dlciB0aGF0
IHdhcm5pbmcgd2hlbiBJCj4gZGlzYWJsZSB1c2JyZWRpci4gSSdtIHVzaW5nIGdjYyA4LjMuMSBi
dXQgSSB0aGluayBJIHNhdyBpdCBsb25nIHRpbWUKPiBhZ28gdG9vLgo+IAoKSXQgb2NjdXJzIGFs
c28gaGVyZQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3BpY2UtZ3RrLy0v
am9icy8yNzU0NzEKCj4gU2Vjb25kIHBhdGNoIGlzIHNlbGYgZXhwbGFuYXRvcnksIEkgaG9wZSBp
dCBzb3VuZHMgcmVhc29uYWJsZS4KPiAKCkFncmVlZAoKPiBnaXRsYWItY2k6Cj4gaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL3ZpY3RvcnRvc28vc3BpY2UtZ3RrL3BpcGVsaW5lcy8zNTA3
Nwo+IAo+IENoZWVycywKPiAKPiBWaWN0b3IgVG9zbyAoMik6Cj4gICBjaGFubmVsLXVzYnJlZGly
OiBpZiBkaXNhYmxlZCwgZGVmaW5lIHR5cGUgd2l0aG91dCBwcml2YXRlCj4gICBjaGFubmVsLXVz
YnJlZGlyOiByZWR1Y2UgYW1vdW50IG9mICNpZmRlZiBVU0VfVVNCUkVESVIKPiAKPiAgc3JjL2No
YW5uZWwtdXNicmVkaXIuYyB8IDMyICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPiAKCkZy
ZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
