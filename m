Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8E11B76B
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 15:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB515896A3;
	Mon, 13 May 2019 13:52:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42321896A3
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:52:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D4E2D5947D
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:52:48 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (unknown [10.35.206.29])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4257E60C4D
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:52:48 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 13 May 2019 16:52:46 +0300
Message-Id: <20190513135246.14849-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 13 May 2019 13:52:48 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent] Remove -Wchkp warning,
 deprecated in GCC 9
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

U2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KLS0tCiBt
NC9tYW55d2FybmluZ3MubTQgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvbTQvbWFueXdhcm5pbmdzLm00IGIvbTQvbWFueXdhcm5pbmdzLm00CmluZGV4
IDRmNzAxZjQuLjM4NjQxMDAgMTAwNjQ0Ci0tLSBhL200L21hbnl3YXJuaW5ncy5tNAorKysgYi9t
NC9tYW55d2FybmluZ3MubTQKQEAgLTExNiw3ICsxMTYsNiBAQCBBQ19ERUZVTihbZ2xfTUFOWVdB
Uk5fQUxMX0dDQ10sCiAgICAgLVdidWlsdGluLW1hY3JvLXJlZGVmaW5lZCBcCiAgICAgLVdjYXN0
LWFsaWduIFwKICAgICAtV2NoYXItc3Vic2NyaXB0cyBcCi0gICAgLVdjaGtwIFwKICAgICAtV2Ns
b2JiZXJlZCBcCiAgICAgLVdjb21tZW50IFwKICAgICAtV2NvbW1lbnRzIFwKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
