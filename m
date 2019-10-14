Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE3CD5EB7
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 11:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E443A6E1F6;
	Mon, 14 Oct 2019 09:22:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0356E1F6
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B5FC885543
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:33 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7EB4D60619;
 Mon, 14 Oct 2019 09:22:32 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:22:17 +0100
Message-Id: <20191014092217.24405-8-fziglio@redhat.com>
In-Reply-To: <20191014092217.24405-1-fziglio@redhat.com>
References: <20191014092217.24405-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 14 Oct 2019 09:22:33 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 7/7] red-channel-client: Reuse
 red_channel_client_shutdown
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
Cc: cfergeau@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cmVkX2NoYW5uZWxfY2xpZW50X3NodXRkb3duIHJlbW92ZSB0aGUgd2F0Y2ggYW5kIHNodXRkb3du
IHRoZQpzb2NrZXQuIFJldXNlIGluIHJlZF9jaGFubmVsX2NsaWVudF9kaXNjb25uZWN0LgpDYWxs
aW5nIHNodXRkb3duIHdpbGwgY2xvc2UgdGhlIGNvbm5lY3Rpb24gZWFybGllci4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9y
ZWQtY2hhbm5lbC1jbGllbnQuYyB8IDUgKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xp
ZW50LmMgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKaW5kZXggYTRhNTdjZTMyLi44NDg2
NGVhMTcgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYworKysgYi9zZXJ2
ZXIvcmVkLWNoYW5uZWwtY2xpZW50LmMKQEAgLTE3NDQsMTAgKzE3NDQsNyBAQCB2b2lkIHJlZF9j
aGFubmVsX2NsaWVudF9kaXNjb25uZWN0KFJlZENoYW5uZWxDbGllbnQgKnJjYykKICAgICAgICAg
cmV0dXJuOwogICAgIH0KICAgICByZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9jbGVhcihyY2MpOwot
ICAgIGlmIChyY2MtPnByaXYtPnN0cmVhbS0+d2F0Y2gpIHsKLSAgICAgICAgY29yZS0+d2F0Y2hf
cmVtb3ZlKGNvcmUsIHJjYy0+cHJpdi0+c3RyZWFtLT53YXRjaCk7Ci0gICAgICAgIHJjYy0+cHJp
di0+c3RyZWFtLT53YXRjaCA9IE5VTEw7Ci0gICAgfQorICAgIHJlZF9jaGFubmVsX2NsaWVudF9z
aHV0ZG93bihyY2MpOwogICAgIGlmIChyY2MtPnByaXYtPmxhdGVuY3lfbW9uaXRvci50aW1lcikg
ewogICAgICAgICBjb3JlLT50aW1lcl9yZW1vdmUoY29yZSwgcmNjLT5wcml2LT5sYXRlbmN5X21v
bml0b3IudGltZXIpOwogICAgICAgICByY2MtPnByaXYtPmxhdGVuY3lfbW9uaXRvci50aW1lciA9
IE5VTEw7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
