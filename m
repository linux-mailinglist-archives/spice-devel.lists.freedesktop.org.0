Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC6396334
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 16:55:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC2888E66;
	Tue, 20 Aug 2019 14:55:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B48588E66
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 14:55:40 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AB3A29B281
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 14:55:39 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id j16so7153140wrn.5
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 07:55:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lKva1LlDZlqNENwaDHyoILGP6vcfC2wfoNWkU+KeS00=;
 b=T2P1sI/jbMlVc6DohV1EWqrWiTXbY+lw8DeN6z5Jg2/E6YozzaWhLXSqtovStWSAG8
 E2nZjsG/35s+9R8yhGX7y8CmdYKsRDz/FwHszqiToiOuL2iW2yASeVJlLYwoIkUM1F8L
 446MJGJjk21vaUnlimmTXnRfpzZ2ObGipq0Ghlbckee3drt8i6KSuMZUb1y5HwKxUjEn
 T0RyGPNjzZliOgeHOXsROkuftwRPTCYdy1sbtR5oP9CbQWo5OJXXIMUxzx08MlF0lwPm
 y+Ig035XJA9jSNH/9qeSInzAWzAYY8dvGes+/qS8Bd89qOmWQ1SFJoqeahZ5FSwTE9Iy
 jJcg==
X-Gm-Message-State: APjAAAXFodE5EB7I5jPHIN5AbzySr9qdMMit03FpbZ9bjJoYOUmVUbBW
 +lOZ63yhYqGwSoygy0DsUBLtZV5xUFesS2aHwOr2NjDfNTK3D7wVEfQeAbboCBpjmfuru3yp7zj
 cL+veKNSd3X0ggdVnt6c5NpVECuUwLFk=
X-Received: by 2002:adf:d1b4:: with SMTP id w20mr35003607wrc.301.1566312938260; 
 Tue, 20 Aug 2019 07:55:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzq24JAuLqHGtCJslSRgJxR1SrKTSeJiVtFa9S2188PZV7987DejPnXkdYn+paYkVAHy1IrJg==
X-Received: by 2002:adf:d1b4:: with SMTP id w20mr35003592wrc.301.1566312938101; 
 Tue, 20 Aug 2019 07:55:38 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:2cf1:592d:314d:825])
 by smtp.gmail.com with ESMTPSA id a142sm362289wme.2.2019.08.20.07.55.37
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 07:55:37 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:55:18 +0200
Message-Id: <20190820145518.14854-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <954100180.5882976.1565856769970.JavaMail.zimbra@redhat.com>
References: <954100180.5882976.1565856769970.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-gtk] channel-display: fix bug when
 sending preferred video codecs
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

VGhlIHRyYW5zZmVyIGJldHdlZW4gdGhlIGNvZGVjcyBhcnJheSBhbmQgdGhlIG1lc3NhZ2UgcGF5
bG9hZCBjYW5ub3QKYmUgZG9uZSB3aXRoIG1lbWNweSBiZWNhdXNlIHRoZSBkYXRhLXR5cGVzIGFy
ZSBkaWZmZXJlbnQKKGdpbnQvdWludDhfdCkuCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQg
PGtwb3VnZXRAcmVkaGF0LmNvbT4KLS0tCiBzcmMvY2hhbm5lbC1kaXNwbGF5LmMgfCAxMCArKysr
KysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXku
YwppbmRleCA0NDU1NWUzLi41OWM4MDlkIDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LmMKKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS5jCkBAIC02MTUsMTEgKzYxNSwxNyBAQCBzdGF0
aWMgdm9pZCBzcGljZV9kaXNwbGF5X3NlbmRfY2xpZW50X3ByZWZlcnJlZF92aWRlb19jb2RlY3Mo
U3BpY2VDaGFubmVsICpjaGFubgogewogICAgIFNwaWNlTXNnT3V0ICpvdXQ7CiAgICAgU3BpY2VN
c2djRGlzcGxheVByZWZlcnJlZFZpZGVvQ29kZWNUeXBlICptc2c7CisgICAgaW50IGk7CgogICAg
IG1zZyA9IGdfbWFsbG9jMChzaXplb2YoU3BpY2VNc2djRGlzcGxheVByZWZlcnJlZFZpZGVvQ29k
ZWNUeXBlKSArCi0gICAgICAgICAgICAgICAgICAgIChzaXplb2YoU3BpY2VWaWRlb0NvZGVjVHlw
ZSkgKiBuY29kZWNzKSk7CisgICAgICAgICAgICAgICAgICAgIChzaXplb2YobXNnLT5jb2RlY3Nb
MF0pICogbmNvZGVjcykpOwogICAgIG1zZy0+bnVtX29mX2NvZGVjcyA9IG5jb2RlY3M7Ci0gICAg
bWVtY3B5KG1zZy0+Y29kZWNzLCBjb2RlY3MsIHNpemVvZigqY29kZWNzKSAqIG5jb2RlY3MpOwor
CisgICAgLyogY2Fubm90IG1lbWNweSBiZWNhdXNlIGNvZGVjcyBpcyBnaW50LCBidXQgbXNnLT5j
b2RlY3MgaXMgdWludDhfdAorICAgICAqIGJ1dCBzYWZlIGJlY2F1c2UgU3BpY2VWaWRlb0NvZGVj
VHlwZSA8PSAyNTUgKi8KKyAgICBmb3IgKGkgPSAwOyBpIDwgbmNvZGVjczsgaSsrKSB7CisgICAg
ICAgIG1zZy0+Y29kZWNzW2ldID0gY29kZWNzW2ldOworICAgIH0KCiAgICAgb3V0ID0gc3BpY2Vf
bXNnX291dF9uZXcoY2hhbm5lbCwgU1BJQ0VfTVNHQ19ESVNQTEFZX1BSRUZFUlJFRF9WSURFT19D
T0RFQ19UWVBFKTsKICAgICBvdXQtPm1hcnNoYWxsZXJzLT5tc2djX2Rpc3BsYXlfcHJlZmVycmVk
X3ZpZGVvX2NvZGVjX3R5cGUob3V0LT5tYXJzaGFsbGVyLCBtc2cpOwotLQoyLjIxLjAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
