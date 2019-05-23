Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C14A72781F
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E5D89D40;
	Thu, 23 May 2019 08:37:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E3089D2F
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1C6433092656
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:50 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BF465D9C3;
 Thu, 23 May 2019 08:37:49 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:20 +0200
Message-Id: <20190523083725.1554-9-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Thu, 23 May 2019 08:37:50 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 08/13] spice-win: define SERVICE_NAME
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

U2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBzcGlj
ZS9zcGljZS13ZWJkYXZkLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBi
L3NwaWNlL3NwaWNlLXdlYmRhdmQuYwppbmRleCA2ODFlOTA5Li5jNzdjODcwIDEwMDY0NAotLS0g
YS9zcGljZS9zcGljZS13ZWJkYXZkLmMKKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCkBAIC0z
MSw2ICszMSw3IEBACiAjaW5jbHVkZSA8Z2lvL2d3aW4zMmlucHV0c3RyZWFtLmg+CiAjaW5jbHVk
ZSA8Z2lvL2d3aW4zMm91dHB1dHN0cmVhbS5oPgogI2luY2x1ZGUgPHdpbmRvd3MuaD4KKyNkZWZp
bmUgU0VSVklDRV9OQU1FICJzcGljZS13ZWJkYXZkIgogI2VuZGlmCiAKICNpZmRlZiBXSVRIX0FW
QUhJCkBAIC0xMDYyLDcgKzEwNjMsNyBAQCBzZXJ2aWNlX21haW4gKERXT1JEIGFyZ2MsIFRDSEFS
ICphcmd2W10pCiAgIGdfbXV0ZXhfaW5pdCgmc2VydmljZV9kYXRhLm11dGV4KTsKIAogICBzZXJ2
aWNlX3N0YXR1c19oYW5kbGUgPQotICAgIFJlZ2lzdGVyU2VydmljZUN0cmxIYW5kbGVyRXggKCJz
cGljZS13ZWJkYXZkIiwgc2VydmljZV9jdHJsX2hhbmRsZXIsICZzZXJ2aWNlX2RhdGEpOworICAg
IFJlZ2lzdGVyU2VydmljZUN0cmxIYW5kbGVyRXggKFNFUlZJQ0VfTkFNRSwgc2VydmljZV9jdHJs
X2hhbmRsZXIsICZzZXJ2aWNlX2RhdGEpOwogCiAgIGdfcmV0dXJuX2lmX2ZhaWwgKHNlcnZpY2Vf
c3RhdHVzX2hhbmRsZSAhPSAwKTsKIApAQCAtMTE1NCw3ICsxMTU1LDcgQEAgbWFpbiAoaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKIAogICBTRVJWSUNFX1RBQkxFX0VOVFJZIHNlcnZpY2VfdGFibGVb
XSA9CiAgICAgewotICAgICAgeyAoY2hhciAqKSJzcGljZS13ZWJkYXZkIiwgc2VydmljZV9tYWlu
IH0sIHsgTlVMTCwgTlVMTCB9CisgICAgICB7IFNFUlZJQ0VfTkFNRSwgc2VydmljZV9tYWluIH0s
IHsgTlVMTCwgTlVMTCB9CiAgICAgfTsKICAgaWYgKCFub19zZXJ2aWNlICYmICFnZXRlbnYoIkRF
QlVHIikpCiAgICAgewotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
