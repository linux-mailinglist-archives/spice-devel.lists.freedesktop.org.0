Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4349E402
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36FAB898ED;
	Tue, 27 Aug 2019 09:23:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE8D898EE
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 58FAF3082E61
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:45 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A3F575D9CC;
 Tue, 27 Aug 2019 09:23:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:35 +0100
Message-Id: <20190827092246.10276-19-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 27 Aug 2019 09:23:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 18/29] build: Do not build
 usbredir dependent file is usbredir disabled
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

VGhlc2UgZmlsZXMgd291bGQgZW5kIHVwIHRvIGNvbXBpbGUgZW1wdHkgY29kZSwgbm8gcmVhc29u
CnRvIGNvbXBpbGUgYW5kIGxpbmsgdGhlbS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy9tZXNvbi5idWlsZCB8IDEwICsrKysrLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvc3JjL21lc29uLmJ1aWxkIGIvc3JjL21lc29uLmJ1aWxkCmluZGV4IDAwZWIyNzc4
Li4wNDYxZGVhNiAxMDA2NDQKLS0tIGEvc3JjL21lc29uLmJ1aWxkCisrKyBiL3NyYy9tZXNvbi5i
dWlsZApAQCAtMTE5LDExICsxMTksNiBAQCBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzID0gWwog
ICAnc3BpY2UtdXJpLXByaXYuaCcsCiAgICdzcGljZS11dGlsLXByaXYuaCcsCiAgICd1c2ItZGV2
aWNlLW1hbmFnZXItcHJpdi5oJywKLSAgJ3VzYnV0aWwuYycsCi0gICd1c2J1dGlsLmgnLAotICAn
dXNiLWJhY2tlbmQuYycsCi0gICd1c2ItZW11bGF0aW9uLmgnLAotICAndXNiLWJhY2tlbmQuaCcs
CiAgICd2bWNzdHJlYW0uYycsCiAgICd2bWNzdHJlYW0uaCcsCiBdCkBAIC0xNTksNiArMTU0LDEx
IEBAIGVuZGlmCiAKIGlmIHNwaWNlX2d0a19oYXNfdXNicmVkaXIKICAgc3BpY2VfY2xpZW50X2ds
aWJfc291cmNlcyArPSBbCisgICAgJ3VzYnV0aWwuYycsCisgICAgJ3VzYnV0aWwuaCcsCisgICAg
J3VzYi1iYWNrZW5kLmMnLAorICAgICd1c2ItZW11bGF0aW9uLmgnLAorICAgICd1c2ItYmFja2Vu
ZC5oJywKICAgICAndXNiLWRldmljZS1jZC5jJywKICAgICAndXNiLWRldmljZS1jZC5oJywKICAg
ICAnY2Qtc2NzaS5jJywKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
