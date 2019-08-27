Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB1B9E3FD
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28CE898CA;
	Tue, 27 Aug 2019 09:23:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6632898D9
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7DD0D3B738
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:35 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CCD2B5DD64;
 Tue, 27 Aug 2019 09:23:33 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:31 +0100
Message-Id: <20190827092246.10276-15-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 27 Aug 2019 09:23:35 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 14/29] fixup! usb-redir: add
 implementation of emulated CD device
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

QWRkIGNvbW1lbnQgb24gY29uc3RhbnQKLS0tCiBzcmMvdXNiLWRldmljZS1jZC5jIHwgMSArCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmlj
ZS1jZC5jIGIvc3JjL3VzYi1kZXZpY2UtY2QuYwppbmRleCBjMzNiYjI5MC4uMjIzNDI4OWMgMTAw
NjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNlLWNkLmMKKysrIGIvc3JjL3VzYi1kZXZpY2UtY2QuYwpA
QCAtNTcsNiArNTcsNyBAQCB0eXBlZGVmIHN0cnVjdCBTcGljZUNkTFUgewogCiAjZGVmaW5lIE1B
WF9MVU5fUEVSX0RFVklDRSAgICAgICAgICAgICAgMQogI2RlZmluZSBVU0IyX0JDRCAgICAgICAg
ICAgICAgICAgICAgICAgIDB4MjAwCisvKiBSZWQgSGF0IFVTQiBWSUQgKi8KICNkZWZpbmUgQ0Rf
REVWX1ZJRCAgICAgICAgICAgICAgICAgICAgICAweDJiMjMKICNkZWZpbmUgQ0RfREVWX1BJRCAg
ICAgICAgICAgICAgICAgICAgICAweENEQ0QKICNkZWZpbmUgQ0RfREVWX0NMQVNTICAgICAgICAg
ICAgICAgICAgICA4Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
