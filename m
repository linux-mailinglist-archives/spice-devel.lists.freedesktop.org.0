Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6E72781A
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD7989CE1;
	Thu, 23 May 2019 08:37:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9818689CE1
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E27E81E0D
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:44 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2DC5D5D9C3;
 Thu, 23 May 2019 08:37:42 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:15 +0200
Message-Id: <20190523083725.1554-4-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 23 May 2019 08:37:44 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 03/13] spice: handle SIGINT properly
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

QWNjb3JkaW5nIHRvIFswXSwgZ19kZWJ1ZyBzaG91bGQgbm90IGJlIHVzZWQgaW4gYSBzaWduYWwg
aGFuZGxlci4KU28sIHRvIGF2b2lkIHJlZW50cmFuY3ksIGRvIG5vdCBwcmludCBkZWJ1ZyBtZXNz
YWdlIHdoZW4gcXVpdCBpcwpjYWxsZWQgd2l0aCBTSUdJTlQuCgpbMF0gaHR0cHM6Ly9kb2NzLm1p
Y3Jvc29mdC5jb20vZW4tdXMvY3BwL2MtcnVudGltZS1saWJyYXJ5L3JlZmVyZW5jZS9zaWduYWw/
dmlldz12cy0yMDE5CgpTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQu
Y29tPgotLS0KIHNwaWNlL3NwaWNlLXdlYmRhdmQuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3BpY2Uvc3BpY2Ut
d2ViZGF2ZC5jIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCmluZGV4IGU0OTQ2OTIuLmNkZmE3M2Qg
MTAwNjQ0Ci0tLSBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYworKysgYi9zcGljZS9zcGljZS13ZWJk
YXZkLmMKQEAgLTIzNyw3ICsyMzcsOCBAQCBzdGF0aWMgdm9pZCBtZG5zX3VucmVnaXN0ZXJfc2Vy
dmljZSAodm9pZCk7CiBzdGF0aWMgdm9pZAogcXVpdCAoaW50IHNpZykKIHsKLSAgZ19kZWJ1ZyAo
InF1aXQgJWQiLCBzaWcpOworICBpZiAoc2lnICE9IFNJR0lOVCkKKyAgICBnX2RlYnVnICgicXVp
dCAlZCIsIHNpZyk7CiAKICAgaWYgKHNpZyA9PSBTSUdJTlQgfHwgc2lnID09IFNJR1RFUk0pCiAg
ICAgICBxdWl0X3NlcnZpY2UgPSBUUlVFOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
