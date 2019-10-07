Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 910D0CDF78
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 12:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B0E6E52F;
	Mon,  7 Oct 2019 10:39:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D67A96E532
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6F96085362
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:23 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 210055D6D0;
 Mon,  7 Oct 2019 10:39:19 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:39:05 +0100
Message-Id: <20191007103906.30517-8-fziglio@redhat.com>
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 07 Oct 2019 10:39:23 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 7/8] red-channel-client: Remove
 useless check
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

TWVzc2FnZSBpcyBjaGVja2VkIGJ5IGdlbmVyYXRlZCBtZXNzYWdlIHBhcnNlci4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9y
ZWQtY2hhbm5lbC1jbGllbnQuYyB8IDQgLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3Jl
ZC1jaGFubmVsLWNsaWVudC5jCmluZGV4IDM1ZWFmYTdhLi44MzJiNDE3NSAxMDA2NDQKLS0tIGEv
c2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jCisrKyBiL3NlcnZlci9yZWQtY2hhbm5lbC1jbGll
bnQuYwpAQCAtMTQ2NCwxMCArMTQ2NCw2IEBAIGJvb2wgcmVkX2NoYW5uZWxfY2xpZW50X2hhbmRs
ZV9tZXNzYWdlKFJlZENoYW5uZWxDbGllbnQgKnJjYywgdWludDE2X3QgdHlwZSwKIHsKICAgICBz
d2l0Y2ggKHR5cGUpIHsKICAgICBjYXNlIFNQSUNFX01TR0NfQUNLX1NZTkM6Ci0gICAgICAgIGlm
IChzaXplICE9IHNpemVvZih1aW50MzJfdCkpIHsKLSAgICAgICAgICAgIHJlZF9jaGFubmVsX3dh
cm5pbmcocmVkX2NoYW5uZWxfY2xpZW50X2dldF9jaGFubmVsKHJjYyksICJiYWQgbWVzc2FnZSBz
aXplIik7Ci0gICAgICAgICAgICByZXR1cm4gRkFMU0U7Ci0gICAgICAgIH0KICAgICAgICAgcmNj
LT5wcml2LT5hY2tfZGF0YS5jbGllbnRfZ2VuZXJhdGlvbiA9ICoodWludDMyX3QgKikobWVzc2Fn
ZSk7CiAgICAgICAgIGJyZWFrOwogICAgIGNhc2UgU1BJQ0VfTVNHQ19BQ0s6Ci0tIAoyLjIxLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
