Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39AC278A02
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 15:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8796ECDC;
	Fri, 25 Sep 2020 13:53:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456366ECDC
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 13:53:10 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601041989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PQD54WdAZS3iIKMslHPFTacgZs+8lfyKf4zASmwmDHo=;
 b=aw0R0fum+7vvcsDbU1/I+zt6YD4nsjfx2Q79Tgq+DkPZNoJHL2C819/q+B305YAzOGvlYv
 6eZDYSX2CYVJCwtXMijHAWahdseSyr6ijJ18xiDFl3kP/z6PEr1+6WuQSnlpNO8xSrdE1f
 ExdR9Nmbgmr5Pe4YV9c/4gP+nCKdrFU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-MjvUL94UMTyXjLVelvq5eg-1; Fri, 25 Sep 2020 09:53:03 -0400
X-MC-Unique: MjvUL94UMTyXjLVelvq5eg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4AE0110BBED4;
 Fri, 25 Sep 2020 13:53:02 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B19D960CCC;
 Fri, 25 Sep 2020 13:52:49 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Fri, 25 Sep 2020 17:50:57 +0400
Message-Id: <20200925135057.291556-7-marcandre.lureau@redhat.com>
In-Reply-To: <20200925135057.291556-1-marcandre.lureau@redhat.com>
References: <20200925135057.291556-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v2 6/6] virtio-gpu: set physical dimensions
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
