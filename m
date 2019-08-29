Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1487AA19DB
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 14:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3D76E0A8;
	Thu, 29 Aug 2019 12:16:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB3E6E0A8
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 12:16:21 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF4822D6A0D
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 12:16:20 +0000 (UTC)
Received: by mail-wm1-f72.google.com with SMTP id v4so1209246wmh.9
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 05:16:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2ZHh5BtTlTOxFCjcCpcY2j7JrywzspAnUq4oMjpamok=;
 b=GsJ6EvR+sMgMuWOoKfzov7ZXvgIhG6p2r2GwJ/7XzPqFxPg7vkRhpacZED6TzCl0kw
 OVb6Kn7haAOXo7XxIRiTcAp1k4h8Op0LELcM132TEKaOgl4RkrednwM/6AM3z2+CoBDs
 SaN4rToiSUopUZBRj+UeDIA1ymf6g/cutCW9lGLVWTy1hwNIM0+LF24HiP6k/DbKh3uC
 zj3I3Y3iZUf2DOuWIfWeHM1r+9w3CEnpm8Tp/NzSdcP8W11PGWGuFcAgtwqPRlSPzhLu
 pvCqS8wUWLLDZhauAH0vAO2laANlpQr6MbP2ptl7zSOog4SJVx6PDGNrStqLYaX9vpXU
 cr9A==
X-Gm-Message-State: APjAAAVYPDONi0kai59EhyzIwDTUsY5RuC3lB4u1Ge0ywbosWW8ZixaQ
 J54Ck+NzPl+oW8aedcbv/0XF0myVPDzWSTAi0z7jJ/4CMGvNnlNLkcW6vaeTehJ/lqkQTfGY/en
 9kw1UNvau41fBxj9fG0rFBmUO1zrcw/Y=
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr11096298wru.43.1567080979374; 
 Thu, 29 Aug 2019 05:16:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzajS04HCSXMvRJ0a55ZTg8GbfzppymxB6yXupUeP2X4Sts+it9drSCaDCsfeoliJoU5xJ5zQ==
X-Received: by 2002:a5d:4f01:: with SMTP id c1mr11096256wru.43.1567080979065; 
 Thu, 29 Aug 2019 05:16:19 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id z25sm2850583wml.5.2019.08.29.05.16.18
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 05:16:18 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 14:16:02 +0200
Message-Id: <20190829121602.16695-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <782333838.10040153.1567072456525.JavaMail.zimbra@redhat.com>
References: <782333838.10040153.1567072456525.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] streaming: make draw-area visible on MJPEG
 encoder creation
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

VGhpcyBwYXRjaCBhbGxvd3MgdGhlIE1KUEVHIGVuY29kZXIgdG8gaW5mb3JtIHRoZSBzcGljZS13
aWRnZXQgdGhhdAppdHMgdmlkZW8gZHJhd2luZyBhcmVhIChkcmF3LWFyZWEpIHNob3VsZCBiZSBt
YWRlIHZpc2libGUgb24gc2NyZWVuLgoKVGhpcyBpcyByZXF1aXJlZCB0byBzd2l0Y2ggZnJvbSBH
U1QgdmlkZW8gZGVjb2RpbmcgdG8gbmF0aXZlIE1KUEVHCmRlY29kaW5nLCBvdGhlcndpc2UgdGhl
IGdzdC1hcmVhIHJlbWFpbmVkIG9uIHRvcCBhbmQgdGhlIE1KUEVHIHZpZGVvCnN0cmVhbSB3YXMg
bmV2ZXIgc2hvd24uCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0
LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMgfCAzICsrKwogc3JjL3NwaWNl
LXdpZGdldC5jICAgICAgICAgIHwgOSArKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3Bs
YXktbWpwZWcuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwppbmRleCA2NDdkMzFiLi42
MzZhOThiIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LW1qcGVnLmMKKysrIGIvc3Jj
L2NoYW5uZWwtZGlzcGxheS1tanBlZy5jCkBAIC0zMDAsNSArMzAwLDggQEAgVmlkZW9EZWNvZGVy
KiBjcmVhdGVfbWpwZWdfZGVjb2RlcihpbnQgY29kZWNfdHlwZSwgZGlzcGxheV9zdHJlYW0gKnN0
cmVhbSkKIAogICAgIC8qIEFsbCB0aGUgb3RoZXIgZmllbGRzIGFyZSBpbml0aWFsaXplZCB0byB6
ZXJvIGJ5IGdfbmV3MCgpLiAqLwogCisgICAgLyogbWFrZXMgdGhlIGRyYXctYXJlYSB2aXNpYmxl
ICovCisgICAgaGFuZF9waXBlbGluZV90b193aWRnZXQoc3RyZWFtLCBOVUxMKTsKKwogICAgIHJl
dHVybiAoVmlkZW9EZWNvZGVyKilkZWNvZGVyOwogfQpkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXdp
ZGdldC5jIGIvc3JjL3NwaWNlLXdpZGdldC5jCmluZGV4IGE5YmExZjEuLjdjMjU3ZmYgMTAwNjQ0
Ci0tLSBhL3NyYy9zcGljZS13aWRnZXQuYworKysgYi9zcmMvc3BpY2Utd2lkZ2V0LmMKQEAgLTI3
ODAsMTMgKzI3ODAsMjAgQEAgc3RhdGljIHZvaWQgZ3N0X3NpemVfYWxsb2NhdGUoR3RrV2lkZ2V0
ICp3aWRnZXQsIEdka1JlY3RhbmdsZSAqYSwgZ3BvaW50ZXIgZGF0YSkKIH0KIAogLyogVGhpcyBj
YWxsYmFjayBzaG91bGQgcGFzcyB0byB0aGUgd2lkZ2V0IGEgcG9pbnRlciBvZiB0aGUgcGlwZWxp
bmUKLSAqIHNvIHRoYXQgd2UgY2FuIHNldCBwaXBlbGluZSBhbmQgb3ZlcmxheSByZWxhdGVkIGNh
bGxzIGZyb20gaGVyZS4KKyAqIHNvIHRoYXQgd2UgY2FuIHRoZSBzZXQgR1NUIHBpcGVsaW5lIGFu
ZCBvdmVybGF5IHJlbGF0ZWQgY2FsbHMgZnJvbQorICogaGVyZS4gIElmIHRoZSBwaXBlbGluZSBw
b2ludGVyIGlzIE5VTEwsIHRoZSBkcmF3aW5nIGFyZWEgb2YgdGhlCisgKiBuYXRpdmUgcmVuZGVy
ZXIgaXMgc2V0IHZpc2libGUuCiAgKi8KIHN0YXRpYyBnYm9vbGVhbiBzZXRfb3ZlcmxheShTcGlj
ZUNoYW5uZWwgKmNoYW5uZWwsIHZvaWQqIHBpcGVsaW5lX3B0ciwgU3BpY2VEaXNwbGF5ICpkaXNw
bGF5KQogewogI2lmIGRlZmluZWQoR0RLX1dJTkRPV0lOR19YMTEpCiAgICAgU3BpY2VEaXNwbGF5
UHJpdmF0ZSAqZCA9IGRpc3BsYXktPnByaXY7CiAKKyAgICBpZiAocGlwZWxpbmVfcHRyID09IE5V
TEwpIHsKKyAgICAgICAgZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ss
ICJkcmF3LWFyZWEiKTsKKyAgICAgICAgcmV0dXJuIHRydWU7CisgICAgfQorCiAgICAgLyogR3N0
VmlkZW9PdmVybGF5IGlzIGN1cnJlbnRseSB1c2VkIG9ubHkgdW5kZXIgeCAqLwogICAgIGlmICgh
Z19nZXRlbnYoIkRJU0FCTEVfR1NUVklERU9PVkVSTEFZIikgJiYKICAgICAgICAgR0RLX0lTX1gx
MV9ESVNQTEFZKGdka19kaXNwbGF5X2dldF9kZWZhdWx0KCkpKSB7Ci0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
