Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC49A8CEC9
	for <lists+spice-devel@lfdr.de>; Wed, 14 Aug 2019 10:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B456E44E;
	Wed, 14 Aug 2019 08:48:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDA96E457
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 08:48:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 340A73023087
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 08:48:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 89AE25C220;
 Wed, 14 Aug 2019 08:48:36 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 14 Aug 2019 09:48:22 +0100
Message-Id: <20190814084822.27811-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 14 Aug 2019 08:48:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] protocol: Removed unneeded type
 specifications
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

RGVmYXVsdCB0eXBlIGlzIGFscmVhZHkgdWludDhfdC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNwaWNlLnByb3RvIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3NwaWNlLnByb3RvIGIvc3BpY2UucHJvdG8KaW5kZXggM2JiZWMwYy4uMzRiYTNjOCAxMDA2
NDQKLS0tIGEvc3BpY2UucHJvdG8KKysrIGIvc3BpY2UucHJvdG8KQEAgLTEwOSw3ICsxMDksNyBA
QCBtZXNzYWdlIEVtcHR5IHsKIH0gQGRlY2xhcmU7CiAKIG1lc3NhZ2UgRGF0YSB7Ci0gICAgdWlu
dDggZGF0YVtdIEBlbmQgQGN0eXBlKHVpbnQ4X3QpOworICAgIHVpbnQ4IGRhdGFbXSBAZW5kOwog
fSBAbm9jb3B5IEBkZWNsYXJlOwogCiBlbnVtOCBkYXRhX2NvbXByZXNzaW9uX3R5cGUgewpAQCAt
MTU2LDcgKzE1Niw3IEBAIGNoYW5uZWwgQmFzZUNoYW5uZWwgewogICAgIG1lc3NhZ2UgewogICAg
ICAgICB1aW50MzIgaWQ7CiAgICAgICAgIHVpbnQ2NCB0aW1lc3RhbXA7Ci0gICAgICAgIHVpbnQ4
IGRhdGFbXSBAY3R5cGUodWludDhfdCkgQGFzX3B0cihkYXRhX2xlbik7CisgICAgICAgIHVpbnQ4
IGRhdGFbXSBAYXNfcHRyKGRhdGFfbGVuKTsKICAgICB9IEBkZWNsYXJlIHBpbmc7CiAKICAgICBt
ZXNzYWdlIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
