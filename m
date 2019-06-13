Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94F2433C2
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2989989623;
	Thu, 13 Jun 2019 07:37:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 357AB89623
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:37:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 71BE77FDF8
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:37:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A67B5D9C5
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:37:41 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 60ADDC589;
 Thu, 13 Jun 2019 07:37:41 +0000 (UTC)
Date: Thu, 13 Jun 2019 03:37:39 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1283681387.22540589.1560411459831.JavaMail.zimbra@redhat.com>
In-Reply-To: <d93c0eab-437d-bb9e-ae8e-5577b73d9d73@redhat.com>
References: <20190612151308.8226-1-fziglio@redhat.com>
 <d93c0eab-437d-bb9e-ae8e-5577b73d9d73@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.51, 10.4.195.6]
Thread-Topic: Remove dependencies from copr build
Thread-Index: 3AxKj6bQVaCOuiAK2EPW/DvQRHY9pA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 13 Jun 2019 07:37:41 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] ci: Remove dependencies from
 copr build
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

PiAKPiBBc3N1bWluZyBpdCBwYXNzZWQgdGhlIENJLCBBY2suCj4gCgpZZXMgYW5kIG5vdC4gWWVz
IGFzIHRoZSBzcGVjaWZpYyBqb2IgcGFzc2VzLgpObyBhcyB0aGVyZSBhcmUgc29tZSBwZW5kaW5n
IHBhdGNoZXMgd2hpY2ggYXJlIHJlcXVpcmVkIGluIG9yZGVyIHRvCmNvbXBpbGVyIGZvciBGZWRv
cmEgMzAgKG9uZSBmb3IgV2luZG93cyB0aGF0IEkgc2VudCB5ZXN0ZXJkYXksIHRoZSBvdGhlcnMK
c29tZSB3ZWVrcyBhZ28gYWJvdXQgYWxpZ25tZW50KS4KCj4gQWNrZWQtYnk6IFNuaXIgU2hlcmli
ZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+Cj4gCj4gT24gNi8xMi8xOSA2OjEzIFBNLCBGcmVkaWFu
byBaaWdsaW8gd3JvdGU6Cj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWds
aW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gICAuZ2l0bGFiLWNpLnltbCB8IDEzICsrKysrKysr
LS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAo+
ID4gaW5kZXggOTFlZTQ3ZWRjLi5lMjFlYTk3ZGUgMTAwNjQ0Cj4gPiAtLS0gYS8uZ2l0bGFiLWNp
LnltbAo+ID4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiA+IEBAIC03OSwxMiArNzksMTUgQEAgZGlz
dGNoZWNrOgo+ID4gICBtYWtlY2hlY2stY2VudG9zOgo+ID4gICAgIGJlZm9yZV9zY3JpcHQ6Cj4g
PiAgICAgICAtID4KPiA+IC0gICAgICB5dW0gaW5zdGFsbCBnaXQgbGlidG9vbCBtYWtlIGxpYmFz
YW4gb3JjLWRldmVsCj4gPiAtICAgICAgcHl0aG9uMyBweXRob24zLXNpeCBweXRob24zLXB5cGFy
c2luZyBnbGliLW5ldHdvcmtpbmcKPiA+IC0gICAgICB5dW0tdXRpbHMgeXVtLXBsdWdpbi1jb3By
Cj4gPiArICAgICAgeXVtIGluc3RhbGwgZ2l0IGxpYnRvb2wgbWFrZSBsaWJhc2FuIG9yYy1kZXZl
bCBnbGliLW5ldHdvcmtpbmcKPiA+ICsgICAgICB5dW0tdXRpbHMgZ2NjIGdsaWIyLWRldmVsIGNl
bHQwNTEtZGV2ZWwKPiA+ICsgICAgICBvcHVzLWRldmVsIHBpeG1hbi1kZXZlbCBvcGVuc3NsLWRl
dmVsIGxpYmpwZWctZGV2ZWwKPiA+ICsgICAgICBsaWJjYWNhcmQtZGV2ZWwgY3lydXMtc2FzbC1k
ZXZlbCBsejQtZGV2ZWwKPiA+ICsgICAgICBnc3RyZWFtZXIxLWRldmVsIGdzdHJlYW1lcjEtcGx1
Z2lucy1iYXNlLWRldmVsCj4gPiArICAgICAgZ2l0LWNvcmUgcHlwYXJzaW5nIHB5dGhvbi1zaXgK
PiA+ICAgICAgICAgLXkKPiA+IC0gICAgLSB5dW0gY29wciBlbmFibGUgQHNwaWNlL25pZ2h0bHkg
LXkKPiA+IC0gICAgLSB5dW0tYnVpbGRkZXAgc3BpY2UgLXkKPiA+ICsgICAgLSBnaXQgY2xvbmUg
JHtDSV9SRVBPU0lUT1JZX1VSTC9zcGljZS5naXQvc3BpY2UtcHJvdG9jb2wuZ2l0fQo+ID4gKyAg
ICAtIChjZCBzcGljZS1wcm90b2NvbCAmJiAuL2F1dG9nZW4uc2ggLS1wcmVmaXg9L3VzciAmJiBt
YWtlIGluc3RhbGwpCj4gPiAgICAgaW1hZ2U6IGNlbnRvczpsYXRlc3QKPiA+ICAgICBzY3JpcHQ6
Cj4gPiAgICAgLSA+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
