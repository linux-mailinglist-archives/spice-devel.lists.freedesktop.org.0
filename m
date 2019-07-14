Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CFB67F2F
	for <lists+spice-devel@lfdr.de>; Sun, 14 Jul 2019 16:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B66897E7;
	Sun, 14 Jul 2019 14:07:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EC2897F0
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 14:07:54 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id a15so12690514wmj.5
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 07:07:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NcnVR3ei8el0LpvI5O6L36MVnYiynUZe5mIuUXNBTEY=;
 b=XWUw0OCLjb0930Hsnsog5Z6EBnvs/Y3rfXYOI9aM3RZgdNcbcqfHkQHQZTADOjVuPq
 HHvQ0vyEU69wjfMXDNUouMetr3N9m/SlzIpXDNxgChPRCtQjAmVOcyp+jN0cfePihZE7
 Sz+JNYQ3AbwHVC//3lV3B4EnQFInkBsZ6BgPgIojRhHgN4jf/KKHKdxe6zn4flaWm4En
 dNN526M8UVOtuXP/BLGJXKeJsDdqADL1cGsx2WFKqv0LFlhO92ZQ0qHJZmN7wFHwKw7y
 m86+nD4s2bWl7qGjIp/+UF4Djhas5NVUY+AuNTJ69KFO4q0vloXG5XCOFgbgX9b4A6QM
 PQMA==
X-Gm-Message-State: APjAAAWAj/6bS8Oh0b0Ka8Jfx0JSzVu+qtDC2ktsxSGVgmgI0c/FwzuI
 Zp2PQ11HYJNz4yVsppojHVzKL3Wq
X-Google-Smtp-Source: APXvYqxky3zr/IRFmylSegZlWnu/8/nrPRJTjkm2pGsolOAnFkmvUTJzg107/P5eCgyU8ggZP50ByA==
X-Received: by 2002:a7b:c3d7:: with SMTP id t23mr19068446wmj.94.1563113273203; 
 Sun, 14 Jul 2019 07:07:53 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id z19sm10223328wmi.7.2019.07.14.07.07.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 07:07:52 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 14 Jul 2019 17:07:39 +0300
Message-Id: <20190714140741.3274-4-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190714140741.3274-1-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NcnVR3ei8el0LpvI5O6L36MVnYiynUZe5mIuUXNBTEY=;
 b=vMUp1/GtODya7uXIdikoE6c3fu5ui2bULxfWugHIlTDLo80n8t1Tk0YHgkGEXV9dSD
 SH3yNmSOuiveOeqPLtI14NKmrvIKF/k5o4HSOUmutPdbeWFKexi2KTYy5nGcJ5yzn15n
 hRUQlvhKZyXL4iZxRyFFE0wcQs4wwKgBsuV3Af7DEjvcPDDVgXENwCQbMuYPO3rAZCO5
 zV7Ux7/zk1gnSJqiDkb4FJZ4LQEY1RGLOwJ2+3N5iUwzLdeOqmDcffEXqpsXUv8dDhxV
 1oe60C5hwqZsE+1gr1XSsfX0ozbLCwlI4NL6QzewcWkoIbQg/mEYomFKcU68acFvcfEG
 WSJA==
Subject: [Spice-devel] [spice-gtk 3/5] usb-redir: pass GError to hotplug
 registration procedure
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

SW4gY2FzZSBvZiBwb3NzaWJsZSBlcnJvciB0aGUgcHJvY2VkdXJlIG9mIGhvdHBsdWcKcmVnaXN0
cmF0aW9uIGRvZXMgbm90IHJldHVybiBlcnJvciBpbmZvcm1hdGlvbiwganVzdAppc3N1ZXMgd2Fy
bmluZyB0byB0aGUgc3RkZXJyLCBzbyB0aGUgcmVhc29uIG9mIHRoZSBwcm9ibGVtLAppZiBhbnks
IGlzIG5vdCB2aXNpYmxlLiBDdXJyZW50IGNvbW1pdCBhZGRzIEdFcnJvciBwYXJhbWV0ZXIKdG8g
dGhlIHByb2NlZHVyZSB0byByZXR1cm4gdGhlIGVycm9yIGRldGFpbHMgY29udmVudGlvbmFsbHku
CgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5p
eC5jb20+Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgICAgICAgIHwgNSArKysrLQogc3JjL3VzYi1i
YWNrZW5kLmggICAgICAgIHwgMyArKy0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDMgKyst
CiAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDk5NjRj
NGYuLjgyOWQ4MWQgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2It
YmFja2VuZC5jCkBAIC00NDIsNyArNDQyLDggQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJl
Z2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSkKIAogZ2Jvb2xlYW4gc3BpY2VfdXNi
X2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICp1c2VyX2RhdGEsCi0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYl9ob3RfcGx1Z19jYWxs
YmFjayBwcm9jKQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
c2JfaG90X3BsdWdfY2FsbGJhY2sgcHJvYywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyb3IpCiB7CiAgICAgaW50IHJjOwogICAgIGNvbnN0
IGNoYXIgKmRlc2M7CkBAIC00NTYsNiArNDU3LDggQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tl
bmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgIGlmIChyYyAhPSBM
SUJVU0JfU1VDQ0VTUykgewogICAgICAgICBnX3dhcm5pbmcoIkVycm9yIGluaXRpYWxpemluZyBV
U0IgaG90cGx1ZyBzdXBwb3J0OiAlcyBbJWldIiwgZGVzYywgcmMpOwogICAgICAgICBiZS0+aG90
cGx1Z19jYWxsYmFjayA9IE5VTEw7CisgICAgICAgIGdfc2V0X2Vycm9yKGVycm9yLCBTUElDRV9D
TElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCisgICAgICAgICAgICJFcnJv
ciBvbiBVU0IgaG90cGx1ZyBkZXRlY3Rpb246ICVzIFslaV0iLCBkZXNjLCByYyk7CiAgICAgICAg
IHJldHVybiBGQUxTRTsKICAgICB9CiAgICAgcmV0dXJuIFRSVUU7CmRpZmYgLS1naXQgYS9zcmMv
dXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCmluZGV4IDZkYTM5ODEuLjgxNGRhNDYg
MTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2ItYmFja2VuZC5oCkBA
IC02MCw3ICs2MCw4IEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2hhbmRsZV9ldmVudHMo
U3BpY2VVc2JCYWNrZW5kICpiZSk7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2ludGVycnVwdF9l
dmVudF9oYW5kbGVyKFNwaWNlVXNiQmFja2VuZCAqYmUpOwogZ2Jvb2xlYW4gc3BpY2VfdXNiX2Jh
Y2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICp1c2VyX2RhdGEsCi0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYl9ob3RfcGx1Z19jYWxsYmFj
ayBwcm9jKTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNi
X2hvdF9wbHVnX2NhbGxiYWNrIHByb2MsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEdFcnJvciAqKmVycm9yKTsKIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGVy
ZWdpc3Rlcl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUpOwogCiAvKiBTcGljZSBVU0IgYmFj
a2VuZCBkZXZpY2UgQVBJICovCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMg
Yi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggOTMwMGFkMi4uODU3ZDA1NyAxMDA2NDQK
LS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFn
ZXIuYwpAQCAtMjU3LDcgKzI1Nyw4IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV91c2JfZGV2aWNl
X21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwKIAogICAgIC8qIFN0
YXJ0IGxpc3RlbmluZyBmb3IgdXNiIGRldmljZXMgcGx1ZyAvIHVucGx1ZyAqLwogICAgIGlmICgh
c3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1Zyhwcml2LT5jb250ZXh0LCBzZWxmLAot
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV91c2JfZGV2
aWNlX21hbmFnZXJfaG90cGx1Z19jYikpIHsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2hvdHBsdWdfY2IsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVycikpIHsKICAgICAgICAg
cmV0dXJuIEZBTFNFOwogICAgIH0KICNpZm5kZWYgR19PU19XSU4zMgotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
