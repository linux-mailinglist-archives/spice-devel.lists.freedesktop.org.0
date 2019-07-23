Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5CB71B2A
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 17:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCA789E23;
	Tue, 23 Jul 2019 15:14:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF0D389D8D
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 15:14:01 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id a15so38939937wmj.5
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:14:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TmsVAYAMUdKGkO/T/a/QyJ6EOHBT2nlkyEgFgKcB074=;
 b=TvPIbSScJpTrNw8qNK6Z10fhpd/skL+ulF6W1GT71+LOD61rGP0dcxH4rFtVajh0vD
 v0oSz/OXODLi7nMijPIksD8ocZzFhnxBaHCJpo2XciwIrVfwjuL7buufs41Uq4lBiW92
 3XYek/h34ADWRzEzv5/u0Pb1bfnml4jmKRkqGbCkhsHKBeUFIxf49vPombeHmcDXFbmw
 N6Wp/gfxojRaWoZP5OwIld+0FKncmf1IvR1bRouqIZfqu1tq0Q5ADVrnyrZd7HKxJUsL
 M1db7A2ufUjpk2MpleIbY5Pd+CxY9SptgGZFizv9HWH+R5faE3dHH/o4Js2fpKhqxmUE
 pE9A==
X-Gm-Message-State: APjAAAU6PvNRGeIfRj6GujsH0a2WdoUwhVKZh8YxvZ6AB4YmLDGjErEB
 dxlckifBM3LmxGgSHzzwM666lDEs
X-Google-Smtp-Source: APXvYqyB6S7UwmMk2a4VWuGjW9nB7zXQqM8kM8nSFi7ewtJPIKW6RH9ie8k6p0WBAUzLKfufcOFmUw==
X-Received: by 2002:a1c:7d08:: with SMTP id y8mr49822931wmc.50.1563894840371; 
 Tue, 23 Jul 2019 08:14:00 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id t6sm46633438wmb.29.2019.07.23.08.13.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 08:13:59 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 18:13:47 +0300
Message-Id: <20190723151349.6490-3-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723151349.6490-1-yuri.benditovich@daynix.com>
References: <20190723151349.6490-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TmsVAYAMUdKGkO/T/a/QyJ6EOHBT2nlkyEgFgKcB074=;
 b=UL37P22tUOCNz8e6kjr47fkN2FQAut4OcJsAXTkkeoH9InMXSZCaQEvA4jyIGSrh+I
 4BbVilLmH2Iuvqi4YhfFyz0Sj9uaXFaor67copzTv7tu1lVZy39O7iZZ/8ZUkp9CEb38
 CROoY6w5m0u5Sc6XHm2ehMz9p6NuPguZ2T8nGNeR9MLdaZGfhG07yxSfkPXM4+LAlv7c
 egWf5YA+QMVBjPJ2AbaQSnbvaRAIx53MoO2/MVN4nGl/l5hQY0lISLih1shWTbnpjhj5
 Cp3TWYo6wJa7JB4g6HEn5lHjpp72FdRaziAiFHSlSlyTGKS4nCcyMYLKRnj532oVqO3a
 zmEw==
Subject: [Spice-devel] [spice-gtk v3 2/4] usb-redir: pass GError to hotplug
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
LS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDNmOTk3
MzkuLjJhMmY5ZmEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2It
YmFja2VuZC5jCkBAIC00NDYsNyArNDQ2LDggQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJl
Z2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSkKIAogZ2Jvb2xlYW4gc3BpY2VfdXNi
X2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICp1c2VyX2RhdGEsCi0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYl9ob3RfcGx1Z19jYWxs
YmFjayBwcm9jKQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
c2JfaG90X3BsdWdfY2FsbGJhY2sgcHJvYywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyb3IpCiB7CiAgICAgaW50IHJjOwogICAgIGNvbnN0
IGNoYXIgKmRlc2M7CkBAIC00NjAsNiArNDYxLDggQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tl
bmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAogICAgIGlmIChyYyAhPSBM
SUJVU0JfU1VDQ0VTUykgewogICAgICAgICBnX3dhcm5pbmcoIkVycm9yIGluaXRpYWxpemluZyBV
U0IgaG90cGx1ZyBzdXBwb3J0OiAlcyBbJWldIiwgZGVzYywgcmMpOwogICAgICAgICBiZS0+aG90
cGx1Z19jYWxsYmFjayA9IE5VTEw7CisgICAgICAgIGdfc2V0X2Vycm9yKGVycm9yLCBTUElDRV9D
TElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCisgICAgICAgICAgICAgICAg
ICAgIF8oIkVycm9yIG9uIFVTQiBob3RwbHVnIGRldGVjdGlvbjogJXMgWyVpXSIpLCBkZXNjLCBy
Yyk7CiAgICAgICAgIHJldHVybiBGQUxTRTsKICAgICB9CiAgICAgcmV0dXJuIFRSVUU7CmRpZmYg
LS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCmluZGV4IDZkYTM5
ODEuLjgxNGRhNDYgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2It
YmFja2VuZC5oCkBAIC02MCw3ICs2MCw4IEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2hh
bmRsZV9ldmVudHMoU3BpY2VVc2JCYWNrZW5kICpiZSk7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5k
X2ludGVycnVwdF9ldmVudF9oYW5kbGVyKFNwaWNlVXNiQmFja2VuZCAqYmUpOwogZ2Jvb2xlYW4g
c3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQgKmJlLAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICp1c2VyX2Rh
dGEsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYl9ob3Rf
cGx1Z19jYWxsYmFjayBwcm9jKTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdXNiX2hvdF9wbHVnX2NhbGxiYWNrIHByb2MsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycm9yKTsKIHZvaWQgc3BpY2VfdXNi
X2JhY2tlbmRfZGVyZWdpc3Rlcl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUpOwogCiAvKiBT
cGljZSBVU0IgYmFja2VuZCBkZXZpY2UgQVBJICovCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggOTMwMGFkMi4uODU3
ZDA1NyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYwpAQCAtMjU3LDcgKzI1Nyw4IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwK
IAogICAgIC8qIFN0YXJ0IGxpc3RlbmluZyBmb3IgdXNiIGRldmljZXMgcGx1ZyAvIHVucGx1ZyAq
LwogICAgIGlmICghc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1Zyhwcml2LT5jb250
ZXh0LCBzZWxmLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
cGljZV91c2JfZGV2aWNlX21hbmFnZXJfaG90cGx1Z19jYikpIHsKKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2hvdHBs
dWdfY2IsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVycikp
IHsKICAgICAgICAgcmV0dXJuIEZBTFNFOwogICAgIH0KICNpZm5kZWYgR19PU19XSU4zMgotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
