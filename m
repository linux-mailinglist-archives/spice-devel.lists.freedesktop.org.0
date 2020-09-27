Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644627A178
	for <lists+spice-devel@lfdr.de>; Sun, 27 Sep 2020 16:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086786E10D;
	Sun, 27 Sep 2020 14:59:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2F76E10D
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Sep 2020 14:59:26 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601218765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PQD54WdAZS3iIKMslHPFTacgZs+8lfyKf4zASmwmDHo=;
 b=MdSBh/hMZbSBMDBo1ciStgazvwK4+iR7SNxBINoK2d4TzNRkLWntJsCbL3WJxM5mhp22zr
 koMX8YC/YhxHSU1WEFFzaFjaJkztNnAKo+FWSyjS+fOjhBg2hsTN3uJxd1W7Suoi+3W89T
 FKl0QucFIGWa2TqVCgYSR/ulCCbjJLU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-260-k-zpFqQAOJ6mkyBYcCIQXg-1; Sun, 27 Sep 2020 10:59:23 -0400
X-MC-Unique: k-zpFqQAOJ6mkyBYcCIQXg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 809231DDEB;
 Sun, 27 Sep 2020 14:59:22 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F0C145D9CA;
 Sun, 27 Sep 2020 14:59:12 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Sun, 27 Sep 2020 18:57:51 +0400
Message-Id: <20200927145751.365446-7-marcandre.lureau@redhat.com>
In-Reply-To: <20200927145751.365446-1-marcandre.lureau@redhat.com>
References: <20200927145751.365446-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v3 6/6] virtio-gpu: set physical dimensions
 for EDID
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+CgpT
aWduZWQtb2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0
LmNvbT4KLS0tCiBody9kaXNwbGF5L3ZpcnRpby1ncHUtYmFzZS5jICAgfCAyICsrCiBody9kaXNw
bGF5L3ZpcnRpby1ncHUuYyAgICAgICAgfCAyICsrCiBpbmNsdWRlL2h3L3ZpcnRpby92aXJ0aW8t
Z3B1LmggfCAxICsKIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvaHcvZGlzcGxheS92aXJ0aW8tZ3B1LWJhc2UuYyBiL2h3L2Rpc3BsYXkvdmlydGlvLWdwdS1i
YXNlLmMKaW5kZXggYWViODcyMzU0Mi4uNDBjY2QwMGY5NCAxMDA2NDQKLS0tIGEvaHcvZGlzcGxh
eS92aXJ0aW8tZ3B1LWJhc2UuYworKysgYi9ody9kaXNwbGF5L3ZpcnRpby1ncHUtYmFzZS5jCkBA
IC04Miw2ICs4Miw4IEBAIHN0YXRpYyBpbnQgdmlydGlvX2dwdV91aV9pbmZvKHZvaWQgKm9wYXF1
ZSwgdWludDMyX3QgaWR4LCBRZW11VUlJbmZvICppbmZvKQogICAgIGctPnJlcV9zdGF0ZVtpZHhd
LnkgPSBpbmZvLT55b2ZmOwogICAgIGctPnJlcV9zdGF0ZVtpZHhdLndpZHRoID0gaW5mby0+d2lk
dGg7CiAgICAgZy0+cmVxX3N0YXRlW2lkeF0uaGVpZ2h0ID0gaW5mby0+aGVpZ2h0OworICAgIGct
PnJlcV9zdGF0ZVtpZHhdLndpZHRoX21tID0gaW5mby0+d2lkdGhfbW07CisgICAgZy0+cmVxX3N0
YXRlW2lkeF0uaGVpZ2h0X21tID0gaW5mby0+aGVpZ2h0X21tOwogCiAgICAgaWYgKGluZm8tPndp
ZHRoICYmIGluZm8tPmhlaWdodCkgewogICAgICAgICBnLT5lbmFibGVkX291dHB1dF9iaXRtYXNr
IHw9ICgxIDw8IGlkeCk7CmRpZmYgLS1naXQgYS9ody9kaXNwbGF5L3ZpcnRpby1ncHUuYyBiL2h3
L2Rpc3BsYXkvdmlydGlvLWdwdS5jCmluZGV4IDkwYmU0ZTNlZDcuLmYzYjcxZmE5YzcgMTAwNjQ0
Ci0tLSBhL2h3L2Rpc3BsYXkvdmlydGlvLWdwdS5jCisrKyBiL2h3L2Rpc3BsYXkvdmlydGlvLWdw
dS5jCkBAIC0yMTIsNiArMjEyLDggQEAgdmlydGlvX2dwdV9nZW5lcmF0ZV9lZGlkKFZpcnRJT0dQ
VSAqZywgaW50IHNjYW5vdXQsCiB7CiAgICAgVmlydElPR1BVQmFzZSAqYiA9IFZJUlRJT19HUFVf
QkFTRShnKTsKICAgICBxZW11X2VkaWRfaW5mbyBpbmZvID0geworICAgICAgICAud2lkdGhfbW0g
PSBiLT5yZXFfc3RhdGVbc2Nhbm91dF0ud2lkdGhfbW0sCisgICAgICAgIC5oZWlnaHRfbW0gPSBi
LT5yZXFfc3RhdGVbc2Nhbm91dF0uaGVpZ2h0X21tLAogICAgICAgICAucHJlZnggPSBiLT5yZXFf
c3RhdGVbc2Nhbm91dF0ud2lkdGgsCiAgICAgICAgIC5wcmVmeSA9IGItPnJlcV9zdGF0ZVtzY2Fu
b3V0XS5oZWlnaHQsCiAgICAgfTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvaHcvdmlydGlvL3ZpcnRp
by1ncHUuaCBiL2luY2x1ZGUvaHcvdmlydGlvL3ZpcnRpby1ncHUuaAppbmRleCA0NTVlMGE3NDMz
Li4xYWVkNzI3NWM4IDEwMDY0NAotLS0gYS9pbmNsdWRlL2h3L3ZpcnRpby92aXJ0aW8tZ3B1LmgK
KysrIGIvaW5jbHVkZS9ody92aXJ0aW8vdmlydGlvLWdwdS5oCkBAIC02Miw2ICs2Miw3IEBAIHN0
cnVjdCB2aXJ0aW9fZ3B1X3NjYW5vdXQgewogfTsKIAogc3RydWN0IHZpcnRpb19ncHVfcmVxdWVz
dGVkX3N0YXRlIHsKKyAgICB1aW50MTZfdCB3aWR0aF9tbSwgaGVpZ2h0X21tOwogICAgIHVpbnQz
Ml90IHdpZHRoLCBoZWlnaHQ7CiAgICAgaW50IHgsIHk7CiB9OwotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
