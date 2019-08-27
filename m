Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C8C9E406
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21AE89916;
	Tue, 27 Aug 2019 09:23:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710D189916
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 01B383082E09
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:55 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A1255D9CC;
 Tue, 27 Aug 2019 09:23:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:39 +0100
Message-Id: <20190827092246.10276-23-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 27 Aug 2019 09:23:55 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 22/29] CI: Add usbredir packages
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
