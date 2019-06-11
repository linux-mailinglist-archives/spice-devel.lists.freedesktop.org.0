Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8990C3D5AC
	for <lists+spice-devel@lfdr.de>; Tue, 11 Jun 2019 20:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E477189218;
	Tue, 11 Jun 2019 18:43:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9606389204
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Jun 2019 18:43:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3AED53092645
 for <spice-devel@lists.freedesktop.org>; Tue, 11 Jun 2019 18:43:52 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-113.brq.redhat.com [10.40.204.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CF4D760BF1;
 Tue, 11 Jun 2019 18:43:50 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 11 Jun 2019 19:43:41 +0100
Message-Id: <20190611184341.16697-2-fziglio@redhat.com>
In-Reply-To: <20190611184341.16697-1-fziglio@redhat.com>
References: <20190611184341.16697-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 11 Jun 2019 18:43:52 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] ci: Add test for 32 bit
 CentOS 7
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

TWFrZSBzdXJlIHRoZSBwcm9qZWN0IGNvbXBpbGUgYW5kIHBhc3MgdGVzdHMgd2l0aG91dCBwcm9i
bGVtcwpvbiBhIDMyIGJpdCBhcmNoaXRlY3R1cmUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiAuZ2l0bGFiLWNpLnltbCB8IDIyICsrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCA5MWVlNDdlZGMu
LjdlYzVjZTBmMCAxMDA2NDQKLS0tIGEvLmdpdGxhYi1jaS55bWwKKysrIGIvLmdpdGxhYi1jaS55
bWwKQEAgLTk0LDYgKzk0LDI4IEBAIG1ha2VjaGVjay1jZW50b3M6CiAgIC0gbWFrZQogICAtIG1h
a2UgLUMgc2VydmVyIGNoZWNrIHx8IChjYXQgc2VydmVyL3Rlc3RzL3Rlc3Qtc3VpdGUubG9nICYm
IGV4aXQgMSkKIAorIyBTYW1lIGFzIG1ha2VjaGVjayBqb2IgYnV0IHVzZSBhIENlbnRvcyBpbWFn
ZQorbWFrZWNoZWNrLWNlbnRvczMyOgorICBiZWZvcmVfc2NyaXB0OgorICAgIC0gPgorICAgICAg
eXVtIGluc3RhbGwgZ2l0IGxpYnRvb2wgbWFrZSBsaWJhc2FuIG9yYy1kZXZlbCBnbGliLW5ldHdv
cmtpbmcKKyAgICAgIHl1bS11dGlscyBnY2MgZ2xpYjItZGV2ZWwgc3BpY2UtcHJvdG9jb2wgY2Vs
dDA1MS1kZXZlbAorICAgICAgb3B1cy1kZXZlbCBwaXhtYW4tZGV2ZWwgb3BlbnNzbC1kZXZlbCBs
aWJqcGVnLWRldmVsCisgICAgICBsaWJjYWNhcmQtZGV2ZWwgY3lydXMtc2FzbC1kZXZlbCBsejQt
ZGV2ZWwKKyAgICAgIGdzdHJlYW1lcjEtZGV2ZWwgZ3N0cmVhbWVyMS1wbHVnaW5zLWJhc2UtZGV2
ZWwKKyAgICAgIGdpdC1jb3JlIHB5cGFyc2luZyBweXRob24tc2l4CisgICAgICAteQorICAgIC0g
Z2l0IGNsb25lICR7Q0lfUkVQT1NJVE9SWV9VUkwvc3BpY2UuZ2l0L3NwaWNlLXByb3RvY29sLmdp
dH0KKyAgICAtIChjZCBzcGljZS1wcm90b2NvbCAmJiAuL2F1dG9nZW4uc2ggLS1wcmVmaXg9L3Vz
ciAmJiBtYWtlIGluc3RhbGwpCisgIGltYWdlOiBpMzg2L2NlbnRvczpsYXRlc3QKKyAgc2NyaXB0
OgorICAtID4KKyAgICBDRkxBR1M9Jy1PMiAtcGlwZSAtZyAtZnNhbml0aXplPWFkZHJlc3MgLWZu
by1vbWl0LWZyYW1lLXBvaW50ZXIgLVdmcmFtZS1sYXJnZXItdGhhbj00MDkyMCcKKyAgICBMREZM
QUdTPSctZnNhbml0aXplPWFkZHJlc3MgLWxhc2FuJworICAgIC4vYXV0b2dlbi5zaCAtLWVuYWJs
ZS1jZWx0MDUxCisgIC0gbWFrZQorICAtIG1ha2UgLUMgc2VydmVyIGNoZWNrIHx8IChjYXQgc2Vy
dmVyL3Rlc3RzL3Rlc3Qtc3VpdGUubG9nICYmIGV4aXQgMSkKKwogIyBTYW1lIGFzIG1ha2VjaGVj
ayBqb2IgYnV0IHVzZSBXaW5kb3dzIGJ1aWxkCiBtYWtlY2hlY2std2luZG93czoKICAgc2NyaXB0
OgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
