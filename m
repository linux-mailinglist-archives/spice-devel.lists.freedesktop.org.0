Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CAB89AA0
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F20089E52;
	Mon, 12 Aug 2019 09:57:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D966E4E3
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:57:46 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id p17so104004891wrf.11
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 02:57:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wVIvbLcFyJx6+MTIrfuzYTVQXmrKd/zlIjd0rneJUOE=;
 b=X829dBC+IYvuv1MoU4OePtkrv1XP9xZda3yuE7xe6B9eQRBHNWYYrBRqlHVM7pAs9o
 WAmLXhS41WDTFBAPOLpWEdwrktbZ9CZzGH4A/9Mdf7Pr3Y6QZu8JbsA0efzMuJj5Z8kJ
 5nnfQamv4XGhe5fMHsotwy2HWrljsnlItNZldcUv3lyGFxr0qaoICW9YanVkMiZjsju6
 kSrGmmFpPRNXawoSmqVnDo7TokvNpxxJGNQ3FmgSn/ZH+fYK5bXDKCYhVvnw2JWJAFwI
 P9v/oKy8maPyYd0YZRwWoEXSRBwun4sayKtkj+zC66B3CS/9NBymCt56V5Ax3Hk1NldP
 LSOw==
X-Gm-Message-State: APjAAAUO6F9hoNJ1aPjAvqdRfLozb/KDa7/ikPUynfg1/ShAF+XHYiOK
 Qj9pd7DuPWS4c7aSELadAqCLJFixaLM=
X-Google-Smtp-Source: APXvYqz4D13V1+LOCZQqcizyC+hqv8zzDu1/ezc+2YJhmX6jCEY7ObjvRaxN7HR126wh3mzIsK9xag==
X-Received: by 2002:adf:fc87:: with SMTP id g7mr35227071wrr.319.1565603864703; 
 Mon, 12 Aug 2019 02:57:44 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id g14sm11930659wrb.38.2019.08.12.02.57.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 02:57:44 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 12:57:22 +0300
Message-Id: <20190812095729.32692-3-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812095729.32692-1-yuri.benditovich@daynix.com>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wVIvbLcFyJx6+MTIrfuzYTVQXmrKd/zlIjd0rneJUOE=;
 b=yD8DSDvwdhJQTaVFFIO27EjHyN3BWDs3Qppil2FmR1LtTfoGl8RbuVzxDzIvDu8h9s
 KUysxqjWVVWdlIrX7oSPXB8WxzszDO3TgN8ls/jCKHVyKX88OMLPF7ke3P3kyrehrzU+
 WCaWzZoVb+lRmxWIiXDAHDh89eAexEHYOicNtwIseD/C/ggMqObg1khAnKUys23c/ZMy
 Ni9V1bPtdlczPlKAqeK4wagoRAKVpUhgKAbo0nRhvvVe89mJ83HOKx3pTPI4sfueCtso
 8Y7lwTxdVMSvUqCQAwGb9Lhhwc2WuG/czU9Oi2HYeOFwoEfMT9QjtC5D2C783BESvyWL
 BVIA==
Subject: [Spice-devel] [spice-gtk v3 2/9] usb-redir: cosmetic style fixes
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
Cc: yan@daynix.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgotLS0KIHNyYy91c2It
YmFja2VuZC5jIHwgMTcgKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5j
IGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggZGUyYjU1ZS4uN2Y5ZmNjMSAxMDA2NDQKLS0tIGEv
c3JjL3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTIwMCw3ICsyMDAs
NyBAQCBzdGF0aWMgaW50IGNvbXBhcmVfZGV2X2xpc3RfZmlyZV9jYWxsYmFjayhTcGljZVVzYkJh
Y2tlbmQgKmJlLAogfQogCiBzdGF0aWMgTFJFU1VMVCBzdWJjbGFzc19wcm9jKEhXTkQgaFduZCwg
VUlOVCB1TXNnLCBXUEFSQU0gd1BhcmFtLCBMUEFSQU0gbFBhcmFtLAotICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFVJTlRfUFRSIHVJZFN1YmNsYXNzLCBEV09SRF9QVFIgZHdSZWZEYXRhKQor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBVSU5UX1BUUiB1SWRTdWJjbGFzcywgRFdPUkRf
UFRSIGR3UmVmRGF0YSkKIHsKICAgICBTcGljZVVzYkJhY2tlbmQgKmJlID0gKFNwaWNlVXNiQmFj
a2VuZCAqKWR3UmVmRGF0YTsKICAgICBpZiAodU1zZyA9PSBXTV9ERVZJQ0VDSEFOR0UgJiYgIWJl
LT5yZWRpcmVjdGluZykgewpAQCAtMzA2LDE0ICszMDYsMTYgQEAgc3RhdGljIGludCBlbmFibGVf
aG90cGx1Z19zdXBwb3J0KFNwaWNlVXNiQmFja2VuZCAqYmUsIGNvbnN0IGNoYXIgKiplcnJvcl9v
bl9lbmEKICAgICByZXR1cm4gcmM7CiB9CiAKLXN0YXRpYyBpbmxpbmUgdm9pZCBzZXRfcmVkaXJl
Y3RpbmcoU3BpY2VVc2JCYWNrZW5kICpiZSwgZ2Jvb2xlYW4gb24pIHsKK3N0YXRpYyBpbmxpbmUg
dm9pZCBzZXRfcmVkaXJlY3RpbmcoU3BpY2VVc2JCYWNrZW5kICpiZSwgZ2Jvb2xlYW4gb24pCit7
CiAgICAgLyogbm90aGluZyBvbiBMaW51eCAqLwogfQogCiAjZW5kaWYKIAogLyogbG9jayBmdW5j
dGlvbnMgZm9yIHVzYnJlZGlyaG9zdCBhbmQgdXNicmVkaXJwYXJzZXIgKi8KLXN0YXRpYyB2b2lk
ICp1c2JyZWRpcl9hbGxvY19sb2NrKHZvaWQpIHsKK3N0YXRpYyB2b2lkICp1c2JyZWRpcl9hbGxv
Y19sb2NrKHZvaWQpCit7CiAgICAgR011dGV4ICptdXRleDsKIAogICAgIG11dGV4ID0gZ19uZXcw
KEdNdXRleCwgMSk7CkBAIC0zMjIsMjAgKzMyNCwyMyBAQCBzdGF0aWMgdm9pZCAqdXNicmVkaXJf
YWxsb2NfbG9jayh2b2lkKSB7CiAgICAgcmV0dXJuIG11dGV4OwogfQogCi1zdGF0aWMgdm9pZCB1
c2JyZWRpcl9mcmVlX2xvY2sodm9pZCAqdXNlcl9kYXRhKSB7CitzdGF0aWMgdm9pZCB1c2JyZWRp
cl9mcmVlX2xvY2sodm9pZCAqdXNlcl9kYXRhKQorewogICAgIEdNdXRleCAqbXV0ZXggPSB1c2Vy
X2RhdGE7CiAKICAgICBnX211dGV4X2NsZWFyKG11dGV4KTsKICAgICBnX2ZyZWUobXV0ZXgpOwog
fQogCi1zdGF0aWMgdm9pZCB1c2JyZWRpcl9sb2NrX2xvY2sodm9pZCAqdXNlcl9kYXRhKSB7Citz
dGF0aWMgdm9pZCB1c2JyZWRpcl9sb2NrX2xvY2sodm9pZCAqdXNlcl9kYXRhKQorewogICAgIEdN
dXRleCAqbXV0ZXggPSB1c2VyX2RhdGE7CiAKICAgICBnX211dGV4X2xvY2sobXV0ZXgpOwogfQog
Ci1zdGF0aWMgdm9pZCB1c2JyZWRpcl91bmxvY2tfbG9jayh2b2lkICp1c2VyX2RhdGEpIHsKK3N0
YXRpYyB2b2lkIHVzYnJlZGlyX3VubG9ja19sb2NrKHZvaWQgKnVzZXJfZGF0YSkKK3sKICAgICBH
TXV0ZXggKm11dGV4ID0gdXNlcl9kYXRhOwogCiAgICAgZ19tdXRleF91bmxvY2sobXV0ZXgpOwot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
