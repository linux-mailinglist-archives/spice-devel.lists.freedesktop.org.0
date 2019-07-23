Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE3A71B2C
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 17:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F010089E1B;
	Tue, 23 Jul 2019 15:14:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1C76E2DC
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 15:14:04 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id h19so31347511wme.0
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:14:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Dj8xKNkUKGUOfN4tB676k0Fz1Q7Z7V4SahHYrua7h9A=;
 b=rJNN1IyCaybbNGYacWlx5QKBkh3hvYFdo2vHoAuHXDDCWd/BG5uAdme+PHf+mJoKfX
 3Ovo8jqAodSjJyyrxo2StLsckITaFyrRbmxgsAFnO7dj+dLvC//CGoD7pFZ4qsH9Gafb
 K2Nu0DNYELXbZR+LedwJVPHN1cVSitMBItmVZ9hEGrGA7mj1hnpY3SZmWZAdGEdpyDPO
 CSW84F7g8Yr+Cj8vtCnzcBCHlWvdxcQ7rH77bIGCXysWcx3bzjzzCM6XyBV1zi+Klyk6
 Ox5aG7wnzUYf5SWzupwdm8EvXYD6FNH8M/xQ83/i0CHvgHxfNX+yEeWWaXeTDE+lMYHX
 9L3Q==
X-Gm-Message-State: APjAAAU8jjpUUt/iM6nJZOQDiyopnhZPNnlLWebVaDW5gpOjrI+01KnM
 OtpJW2KOqRlzmvxMHdJY2qzIWZFF
X-Google-Smtp-Source: APXvYqwElQnehPT2MJol6JIKvRQ8/xuY+LESMVZSR1As6k9h4TbQxA+ti7CyyPwEmDf2lg1xP5Eo8g==
X-Received: by 2002:a1c:ca14:: with SMTP id a20mr27892000wmg.71.1563894843394; 
 Tue, 23 Jul 2019 08:14:03 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id t6sm46633438wmb.29.2019.07.23.08.14.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 08:14:02 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 18:13:49 +0300
Message-Id: <20190723151349.6490-5-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723151349.6490-1-yuri.benditovich@daynix.com>
References: <20190723151349.6490-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Dj8xKNkUKGUOfN4tB676k0Fz1Q7Z7V4SahHYrua7h9A=;
 b=DdkUy9O43FylWJiXVfWxbu73A48Ra3e4ch0g3VZ50rPBT2yZCMz4S3aIjwfShioqLT
 1zyBnhM2nB732DrOWvmn2C+wvQ+s3zMcQmXhkVgXiyNc/wzq+MY806FYa+gySgQb0ABs
 q3lqZVsVjIAdSGNaqjV23hBckL7dx71kQAKvGhoDh+oiWuVU+OFYPPw8I8aSkwWKV/Qd
 1J8P8uDcibw56ceK2YJnjUrJ59fuu40eQmOKKaeoK96YXZYLurzNnsI6OuCrRAoojdyi
 60tJN+RKVtRXwGMAAQaNjcRkdZjlNIwirsbOIjwBoK1KFiGQd6XtcMGENGobyRVqJbpG
 H3LQ==
Subject: [Spice-devel] [spice-gtk v3 4/4] usb-redir: use g_thread_try_new
 instead of g_thread_new
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

TmV3ZXIgQVBJIChnbGliIDIuMzIpIGlzIHNhZmUsIGluIGNhc2Ugb2YgZXJyb3IgaXQgZG9lcyBu
b3QKYWJvcnQgdGhlIHByb2Nlc3MgYW5kIHJldHVybnMgZXJyb3IgaW5mb3JtYXRpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+
Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCAxMSArKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJh
Y2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDdjOWI1NDQuLjlhYzg1OTUgMTAwNjQ0
Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC00NzMs
OSArNDczLDE0IEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX3JlZ2lzdGVyX2hvdHBsdWco
U3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICB9CiAKICAgICBnX2F0b21pY19pbnRfc2V0KCZiZS0+
ZXZlbnRfdGhyZWFkX3J1biwgVFJVRSk7Ci0gICAgYmUtPmV2ZW50X3RocmVhZCA9IGdfdGhyZWFk
X25ldygidXNiX2V2X3RocmVhZCIsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBoYW5kbGVfbGlidXNiX2V2ZW50cywKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGJlKTsKKyAgICBiZS0+ZXZlbnRfdGhyZWFkID0gZ190aHJlYWRfdHJ5X25ldygidXNiX2V2
X3RocmVhZCIsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGFuZGxl
X2xpYnVzYl9ldmVudHMsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
YmUsIGVycm9yKTsKKyAgICBpZiAoIWJlLT5ldmVudF90aHJlYWQpIHsKKyAgICAgICAgZ193YXJu
aW5nKCJFcnJvciBzdGFydGluZyBldmVudCB0aHJlYWQiKTsKKyAgICAgICAgc3BpY2VfdXNiX2Jh
Y2tlbmRfZGVyZWdpc3Rlcl9ob3RwbHVnKGJlKTsKKyAgICAgICAgcmV0dXJuIEZBTFNFOworICAg
IH0KICAgICByZXR1cm4gVFJVRTsKIH0KIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
