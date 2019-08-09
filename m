Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FCE87CBA
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC696EE38;
	Fri,  9 Aug 2019 14:28:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC746EE37
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:28:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B0A8F4E83E;
 Fri,  9 Aug 2019 14:28:33 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 079DE10016EA;
 Fri,  9 Aug 2019 14:28:31 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:47 +0100
Message-Id: <20190809142651.2967-30-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 09 Aug 2019 14:28:33 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 29/33] usb-redir: enable
 redirection of emulated CD drive
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

RnJvbTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgoKQWRk
IGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIGRldmljZSB0byBidWlsZC4KTm93IGl0IGlzIHBv
c3NpYmxlIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogWXVy
aSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9tZXNv
bi5idWlsZCB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAppbmRleCBmZTE5YzE2
MC4uMzgzN2E5ZGMgMTAwNjQ0Ci0tLSBhL3NyYy9tZXNvbi5idWlsZAorKysgYi9zcmMvbWVzb24u
YnVpbGQKQEAgLTEyNCw2ICsxMjQsMTMgQEAgc3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyA9IFsK
ICAgJ3VzYi1iYWNrZW5kLmMnLAogICAndXNiLWVtdWxhdGlvbi5oJywKICAgJ3VzYi1iYWNrZW5k
LmgnLAorICAndXNiLWRldmljZS1jZC5jJywKKyAgJ3VzYi1kZXZpY2UtY2QuaCcsCisgICdjZC1z
Y3NpLmMnLAorICAnY2Qtc2NzaS5oJywKKyAgJ2NkLXNjc2ktZGV2LXBhcmFtcy5oJywKKyAgJ2Nk
LXVzYi1idWxrLW1zZC5jJywKKyAgJ2NkLXVzYi1idWxrLW1zZC5oJywKICAgJ3ZtY3N0cmVhbS5j
JywKICAgJ3ZtY3N0cmVhbS5oJywKIF0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
