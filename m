Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77369712D7
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC41C6E145;
	Tue, 23 Jul 2019 07:27:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232636E14B
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:46 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id u25so27126517wmc.4
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SSpSmf+I+fmhbHiby6TPX6zDwTa/4IaYOCY3vFCvt/Q=;
 b=t/cYtpUob0rvbA1Ng4t8qQFwXTK+8zl+nBGHzwipkds9kaCuNljLuVy60u++U1/qql
 ZQEEuXkdRIMYn2+D93ZyWKZMrF14Qv7/xciWJBM9xWLNVMvGxuoae/7nRdLTVogr/zGi
 PZDklXG+Mcg4hHic0PRGpbe53seGxmlZcs1oGOcC5b3t68UqslcQmyciYQu+SCFPBkhF
 LLct9aZzFtEp55F8JXqbPISz2rmzhjjHUEJ1bpi1htpFHIQ4v/wZMuuzswCXK8c3aXZ6
 AGL/lqSsY2FktmnyJ8IShf1d6LDX/SvdOTP/JcOB4HuxbNUYL+kAt/HDYT0CSdye8Oel
 4e/w==
X-Gm-Message-State: APjAAAX+oNO7A3GQ9wWUeCgrJm1VTeR5nQuu73He+EbN5Z4+syQKmXlU
 8p4KupEeFLnzbLO3rZvbfcH1JQRN
X-Google-Smtp-Source: APXvYqx6hDmZGCr0RcxNfwZfETKxKloX0DBnmaekpwye0RxRmohYitpi7+yrcsUrbh+KaBe5we+Oww==
X-Received: by 2002:a1c:56d7:: with SMTP id k206mr65427309wmb.56.1563866864561; 
 Tue, 23 Jul 2019 00:27:44 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:44 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:06 +0300
Message-Id: <20190723072708.2575-8-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SSpSmf+I+fmhbHiby6TPX6zDwTa/4IaYOCY3vFCvt/Q=;
 b=ce+rs/auDcH5JImd5rfMh7Wl7VL4Sl1r2keo2m6a0A/Xls3d9/p6WW60uakQx8GhUY
 BIkSfoYH2YzzxaoQVsBkTm5JyCvUYrhXk6TmDAUI4c1YJNMfiYH0EfJJTIqrf2O0etWx
 2VZhNPspPd2cf9Iny2Nr2EmY83x808xs/KbBIYdjpQxOdzvhvfbCKbQO+LmuWmrvNLGK
 L3BaRR+E8KiwoqFo4Xxlug+6dG++58lJF5DUvlVuVpH7LKESr0WyoRysMCPyVFEghRlm
 f+NZsYIgeXjljMbcgJt7tY+DMa92U91e5+2DQHy3KXkGhC/XjWbWcIxRPTCvROQdbULx
 1Nzw==
Subject: [Spice-devel] [spice-gtk v2 7/9] usb-redir: pass GError to hotplug
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
LS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDE1ODFm
OTAuLjQ4Njg3NWUgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2It
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
TElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCisgICAgICAgICAgICAgICAg
ICAgICJFcnJvciBvbiBVU0IgaG90cGx1ZyBkZXRlY3Rpb246ICVzIFslaV0iLCBkZXNjLCByYyk7
CiAgICAgICAgIHJldHVybiBGQUxTRTsKICAgICB9CiAgICAgcmV0dXJuIFRSVUU7CmRpZmYgLS1n
aXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCmluZGV4IDZkYTM5ODEu
LjgxNGRhNDYgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2ItYmFj
a2VuZC5oCkBAIC02MCw3ICs2MCw4IEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2hhbmRs
ZV9ldmVudHMoU3BpY2VVc2JCYWNrZW5kICpiZSk7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2lu
dGVycnVwdF9ldmVudF9oYW5kbGVyKFNwaWNlVXNiQmFja2VuZCAqYmUpOwogZ2Jvb2xlYW4gc3Bp
Y2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICp1c2VyX2RhdGEs
Ci0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYl9ob3RfcGx1
Z19jYWxsYmFjayBwcm9jKTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdXNiX2hvdF9wbHVnX2NhbGxiYWNrIHByb2MsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycm9yKTsKIHZvaWQgc3BpY2VfdXNiX2Jh
Y2tlbmRfZGVyZWdpc3Rlcl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUpOwogCiAvKiBTcGlj
ZSBVU0IgYmFja2VuZCBkZXZpY2UgQVBJICovCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1t
YW5hZ2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggOTMwMGFkMi4uODU3ZDA1
NyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2
aWNlLW1hbmFnZXIuYwpAQCAtMjU3LDcgKzI1Nyw4IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGljZV91
c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwKIAog
ICAgIC8qIFN0YXJ0IGxpc3RlbmluZyBmb3IgdXNiIGRldmljZXMgcGx1ZyAvIHVucGx1ZyAqLwog
ICAgIGlmICghc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1Zyhwcml2LT5jb250ZXh0
LCBzZWxmLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfaG90cGx1Z19jYikpIHsKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2hvdHBsdWdf
Y2IsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVycikpIHsK
ICAgICAgICAgcmV0dXJuIEZBTFNFOwogICAgIH0KICNpZm5kZWYgR19PU19XSU4zMgotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
