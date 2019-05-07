Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F16D160CF
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 11:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA3C89F89;
	Tue,  7 May 2019 09:25:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC56289EFF
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:25:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 683AC308338F
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:25:15 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (dhcp-4-106.tlv.redhat.com
 [10.35.4.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA87953E20
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:25:14 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  7 May 2019 12:25:12 +0300
Message-Id: <20190507092512.2696-2-ssheribe@redhat.com>
In-Reply-To: <20190507092512.2696-1-ssheribe@redhat.com>
References: <20190507092512.2696-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 07 May 2019 09:25:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] Remove -Wchkp warning,
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

LS0tCiBtNC9tYW55d2FybmluZ3MubTQgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvbTQvbWFueXdhcm5pbmdzLm00IGIvbTQvbWFueXdhcm5pbmdzLm00
CmluZGV4IDkwODIzYjAuLjE1MGJhYTIgMTAwNjQ0Ci0tLSBhL200L21hbnl3YXJuaW5ncy5tNAor
KysgYi9tNC9tYW55d2FybmluZ3MubTQKQEAgLTExNCw3ICsxMTQsNiBAQCBBQ19ERUZVTihbZ2xf
TUFOWVdBUk5fQUxMX0dDQ10sCiAgICAgLVdidWlsdGluLW1hY3JvLXJlZGVmaW5lZCBcCiAgICAg
LVdjYXN0LWFsaWduIFwKICAgICAtV2NoYXItc3Vic2NyaXB0cyBcCi0gICAgLVdjaGtwIFwKICAg
ICAtV2Nsb2JiZXJlZCBcCiAgICAgLVdjb21tZW50IFwKICAgICAtV2NvbW1lbnRzIFwKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
