Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 988BEF408
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 12:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BB788F9F;
	Tue, 30 Apr 2019 10:15:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F4788F9F
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:15:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A44D0753EC
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:15:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1E86C509
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:15:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BC3041F3C;
 Tue, 30 Apr 2019 10:15:53 +0000 (UTC)
Date: Tue, 30 Apr 2019 06:15:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <644291405.15614295.1556619351870.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190430100740.8085-1-uril@redhat.com>
References: <20190430100740.8085-1-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.22, 10.4.195.17]
Thread-Topic: gitlab-ci: build out-of-tree too
Thread-Index: Luz06ceoGpGfCGXM0jEy78Bwq9M2/A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 30 Apr 2019 10:15:53 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] gitlab-ci: build out-of-tree too
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

VGhpcyBpcyBmb3IgU1BJQ0Ugc2VydmVyIChtaXNzaW5nIGluIHRoZSBzdWJqZWN0KS4KCj4gCj4g
U2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgo+IC0tLQo+IAo+IFRo
ZSByZWxldmFudCBqb2Igb2YgdGhlIHBpcGVsaW5lIGlzOgo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy91cmlsL3NwaWNlLy0vam9icy8yNjk3MzUKPiAKPiAtLS0KPiAgLmdpdGxhYi1j
aS55bWwgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnlt
bAo+IGluZGV4IDljZTk1YzAwZS4uNDNjZGI0NWFjIDEwMDY0NAo+IC0tLSBhLy5naXRsYWItY2ku
eW1sCj4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiBAQCAtMTQsMTIgKzE0LDE1IEBAIGJlZm9yZV9z
Y3JpcHQ6Cj4gIAo+ICBtYWtlY2hlY2s6Cj4gICAgc2NyaXB0Ogo+ICsgIC0gbWtkaXIgYnVpbGRk
aXIKCkkgd291bGQgcHV0IGEgY29tbWVudCBiZWZvcmUgdGhpcyAibWtkaXIiIGxpa2UgaW4gc3Bp
Y2UtZ3RrLgpPdGhlciB0ZXN0cyAoSU1ITyBjb3JyZWN0bHkpIHJ1biBhbHNvIGluLXRyZWUgc28g
Ym90aCBjb25kaXRpb25zCmFyZSB0ZXN0ZWQuCgo+ICsgIC0gY2QgYnVpbGRkaXIKPiAgICAtID4K
PiAgICAgIENGTEFHUz0nLU8yIC1waXBlIC1nIC1mc2FuaXRpemU9YWRkcmVzcyAtZm5vLW9taXQt
ZnJhbWUtcG9pbnRlcgo+ICAgICAgLVdmcmFtZS1sYXJnZXItdGhhbj00MDkyMCcKPiAgICAgIExE
RkxBR1M9Jy1mc2FuaXRpemU9YWRkcmVzcyAtbGFzYW4nCj4gLSAgICAuL2F1dG9nZW4uc2ggLS1l
bmFibGUtY2VsdDA1MQo+ICsgICAgLi4vYXV0b2dlbi5zaCAtLWVuYWJsZS1jZWx0MDUxCj4gICAg
LSBtYWtlCj4gICAgLSBtYWtlIC1DIHNlcnZlciBjaGVjayB8fCAoY2F0IHNlcnZlci90ZXN0cy90
ZXN0LXN1aXRlLmxvZyAmJiBleGl0IDEpCj4gKyAgLSBjZCAuLgo+ICAKPiAgbWVzb24tbWFrZWNo
ZWNrOgo+ICAgIHNjcmlwdDoKCk90aGVyd2lzZSBmaW5lIHdpdGggaXQuCgpGcmVkaWFubwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
