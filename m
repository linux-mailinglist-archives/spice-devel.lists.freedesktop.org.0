Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD1C87CBE
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A2C6EE37;
	Fri,  9 Aug 2019 14:28:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765CD6EE36
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 21375316E536
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:43 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6EE2D10018F9;
 Fri,  9 Aug 2019 14:28:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:51 +0100
Message-Id: <20190809142651.2967-34-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Fri, 09 Aug 2019 14:28:43 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 33/33] CI: Add usbredir packages
 to Windows
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

QWxsb3dzIFdpbmRvd3Mgam9iIHRvIGJ1aWxkIFVTQiBjb2RlIHBhcnQgdG8gbWFrZSBzdXJlIGl0
IGNvbXBpbGVzCmNvcnJlY3RseS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIC5naXRsYWItY2kueW1sIHwgMSArCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWIt
Y2kueW1sCmluZGV4IDhiY2VmNjVkLi5lMmQxYzU1YiAxMDA2NDQKLS0tIGEvLmdpdGxhYi1jaS55
bWwKKysrIGIvLmdpdGxhYi1jaS55bWwKQEAgLTE3LDYgKzE3LDcgQEAgdmFyaWFibGVzOgogICBE
RVBTX01JTkdXOiBtaW5ndzY0LWdjYyBtaW5ndzY0LXBrZy1jb25maWcgbWluZ3c2NC1waXhtYW4g
bWluZ3c2NC1vcGVuc3NsCiAgICAgICAgICAgICAgIG1pbmd3NjQtZ3RrMyBtaW5ndzY0LWpzb24t
Z2xpYiBtaW5ndzY0LW9wdXMKICAgICAgICAgICAgICAgbWluZ3c2NC1nc3RyZWFtZXIxLXBsdWdp
bnMtYmFzZSBtaW5ndzY0LWdzdHJlYW1lcjEtcGx1Z2lucy1nb29kCisgICAgICAgICAgICAgIG1p
bmd3NjQtdXNicmVkaXIgbWluZ3czMi11c2JyZWRpcgogCiBmZWRvcmE6CiAgIGFydGlmYWN0czoK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
