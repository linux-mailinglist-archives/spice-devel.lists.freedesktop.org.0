Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B766F87CAF
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8CC6EE3E;
	Fri,  9 Aug 2019 14:28:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DD16EE1F
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 005AD76521
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:02 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A41F910018F9;
 Fri,  9 Aug 2019 14:27:59 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:37 +0100
Message-Id: <20190809142651.2967-20-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 09 Aug 2019 14:28:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 19/33] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

UmVtb3ZlIHBvdGVudGlhbCBpbnRlZ2VyIG92ZXJmbG93Lgpjb3VudCBjYW4gYmUgc3BlY2lmaWVk
IHdpdGggYWxsIGJpdHMuCi0tLQogc3JjL2NkLXNjc2kuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9jZC1zY3Np
LmMgYi9zcmMvY2Qtc2NzaS5jCmluZGV4IDFjYjI2OGJmLi5kMDM5ZTNjNCAxMDA2NDQKLS0tIGEv
c3JjL2NkLXNjc2kuYworKysgYi9zcmMvY2Qtc2NzaS5jCkBAIC0yNTQ1LDcgKzI1NDUsNyBAQCBz
dGF0aWMgdm9pZCBjZF9zY3NpX2NtZF9yZWFkKENkU2NzaUxVICpkZXYsIENkU2NzaVJlcXVlc3Qg
KnJlcSkKICAgICByZXEtPm9mZnNldCA9IHJlcS0+bGJhICogZGV2LT5ibG9ja19zaXplOwogCiAg
ICAgcmVxLT5jb3VudCA9IHNjc2lfY2RiX3hmZXJfbGVuZ3RoKHJlcS0+Y2RiLCByZXEtPmNkYl9s
ZW4pOyAvKiB4ZmVyIGluIGJsb2NrcyAqLwotICAgIHJlcS0+cmVxX2xlbiA9IHJlcS0+Y291bnQg
KiBkZXYtPmJsb2NrX3NpemU7CisgICAgcmVxLT5yZXFfbGVuID0gKHVpbnQ2NF90KSByZXEtPmNv
dW50ICogZGV2LT5ibG9ja19zaXplOwogCiAgICAgY2Rfc2NzaV9yZWFkX2FzeW5jX3N0YXJ0KGRl
diwgcmVxKTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
