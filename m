Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F9D87CAC
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0D26EE2E;
	Fri,  9 Aug 2019 14:27:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0686EE2E
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F18F730BD1C8
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:53 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DE7DF1001F43;
 Fri,  9 Aug 2019 14:27:51 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:34 +0100
Message-Id: <20190809142651.2967-17-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 09 Aug 2019 14:27:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 16/33] fixup! usb-redir: add
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

VXNlIGdfZnJlZSBpbnN0ZWFkIG9mIGZyZWUgYW5kIGdfY2xlYXJfcG9pbnRlci4KRG8gbm90IG1p
eCBmcmVlIGFuZCBnX2ZyZWUsIG9uIHNvbWUgcGxhdGZvcm0gb3Igd2l0aCBzb21lIHNldHRpbmdz
CmNhbiBiZSBxdWl0ZSBkaWZmZXJlbnQgZnVuY3Rpb24gb3IgaGVhcC4KLS0tCiBzcmMvY2Qtc2Nz
aS5jIHwgMjAgKysrKy0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jZC1zY3NpLmMgYi9zcmMv
Y2Qtc2NzaS5jCmluZGV4IGJjZTcxOTFiLi42NmU0ZGRlZiAxMDA2NDQKLS0tIGEvc3JjL2NkLXNj
c2kuYworKysgYi9zcmMvY2Qtc2NzaS5jCkBAIC02MzQsMjIgKzYzNCwxMCBAQCBpbnQgY2Rfc2Nz
aV9kZXZfdW5yZWFsaXplKENkU2NzaVRhcmdldCAqc3QsIHVpbnQzMl90IGx1bikKICAgICB9CiAg
ICAgZGV2ID0gJnN0LT51bml0c1tsdW5dOwogCi0gICAgaWYgKGRldi0+dmVuZG9yICE9IE5VTEwp
IHsKLSAgICAgICAgZnJlZShkZXYtPnZlbmRvcik7Ci0gICAgICAgIGRldi0+dmVuZG9yID0gTlVM
TDsKLSAgICB9Ci0gICAgaWYgKGRldi0+cHJvZHVjdCAhPSBOVUxMKSB7Ci0gICAgICAgIGZyZWUo
ZGV2LT5wcm9kdWN0KTsKLSAgICAgICAgZGV2LT5wcm9kdWN0ID0gTlVMTDsKLSAgICB9Ci0gICAg
aWYgKGRldi0+dmVyc2lvbiAhPSBOVUxMKSB7Ci0gICAgICAgIGZyZWUoZGV2LT52ZXJzaW9uKTsK
LSAgICAgICAgZGV2LT52ZXJzaW9uID0gTlVMTDsKLSAgICB9Ci0gICAgaWYgKGRldi0+c2VyaWFs
ICE9IE5VTEwpIHsKLSAgICAgICAgZnJlZShkZXYtPnNlcmlhbCk7Ci0gICAgICAgIGRldi0+c2Vy
aWFsID0gTlVMTDsKLSAgICB9CisgICAgZ19jbGVhcl9wb2ludGVyKCZkZXYtPnZlbmRvciwgZ19m
cmVlKTsKKyAgICBnX2NsZWFyX3BvaW50ZXIoJmRldi0+cHJvZHVjdCwgZ19mcmVlKTsKKyAgICBn
X2NsZWFyX3BvaW50ZXIoJmRldi0+dmVyc2lvbiwgZ19mcmVlKTsKKyAgICBnX2NsZWFyX3BvaW50
ZXIoJmRldi0+c2VyaWFsLCBnX2ZyZWUpOwogCiAgICAgZGV2LT5sb2FkZWQgPSBGQUxTRTsKICAg
ICBkZXYtPnJlYWxpemVkID0gRkFMU0U7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
