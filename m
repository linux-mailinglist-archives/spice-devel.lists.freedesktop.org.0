Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1626D2781E
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCA289D1D;
	Thu, 23 May 2019 08:37:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 679AF89D02
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D2DA77FDFA
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:48 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2CC15D9C3;
 Thu, 23 May 2019 08:37:47 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:19 +0200
Message-Id: <20190523083725.1554-8-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 23 May 2019 08:37:48 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 07/13] spice: unref GSocketAddress
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

Tm8gbmVlZCB0byBrZWVwIGl0IGFyb3VuZCBhZnRlciBjYWxsaW5nCmdfc29ja2V0X2xpc3RlbmVy
X2FkZF9hZGRyZXNzKCkuCgpTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRo
YXQuY29tPgotLS0KIHNwaWNlL3NwaWNlLXdlYmRhdmQuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jIGIvc3Bp
Y2Uvc3BpY2Utd2ViZGF2ZC5jCmluZGV4IGQ5YjFmYWUuLjY4MWU5MDkgMTAwNjQ0Ci0tLSBhL3Nw
aWNlL3NwaWNlLXdlYmRhdmQuYworKysgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKQEAgLTExMzcs
NiArMTEzNyw3IEBAIG1haW4gKGludCBhcmdjLCBjaGFyICphcmd2W10pCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBOVUxMLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgTlVMTCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZlcnJvcik7CisgIGdf
b2JqZWN0X3VucmVmIChzYWRkcik7CiAgIGlmIChlcnJvcikKICAgICB7CiAgICAgICBnX3ByaW50
ZXJyICgiJXNcbiIsIGVycm9yLT5tZXNzYWdlKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
