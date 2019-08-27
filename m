Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE439E3F1
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EB389870;
	Tue, 27 Aug 2019 09:23:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C544B8985A
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6EE3318C892C
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:06 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 54D5B5D9CC;
 Tue, 27 Aug 2019 09:23:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:21 +0100
Message-Id: <20190827092246.10276-5-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Tue, 27 Aug 2019 09:23:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 04/29] fixup! usb-redir: move
 implementation of device description to USB backend
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

UmVhbGx5IG1pbm9yIHNwYWNlIHJlbW92YWwKLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IGFhMTFj
NzkxLi4yNTJjMGE2NCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3Vz
Yi1iYWNrZW5kLmMKQEAgLTg0NSw4ICs4NDUsOCBAQCBzcGljZV91c2JfYmFja2VuZF9jaGFubmVs
X2dldF9ndWVzdF9maWx0ZXIoU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsCiAgICAgfQogfQog
Ci1nY2hhciAqIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9nZXRfZGVzY3JpcHRpb24oU3BpY2VV
c2JCYWNrZW5kRGV2aWNlICpkZXYsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29uc3QgZ2NoYXIgKmZvcm1hdCkKK2djaGFyICpzcGljZV91c2JfYmFj
a2VuZF9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2LAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgZ2No
YXIgKmZvcm1hdCkKIHsKICAgICBndWludDE2IGJ1cywgYWRkcmVzcywgdmlkLCBwaWQ7CiAgICAg
Z2NoYXIgKmRlc2NyaXB0aW9uLCAqZGVzY3JpcHRvciwgKm1hbnVmYWN0dXJlciA9IE5VTEwsICpw
cm9kdWN0ID0gTlVMTDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
