Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A38DC630
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 15:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D00289B78;
	Fri, 18 Oct 2019 13:35:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CE689A86
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 13:35:35 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id c2so1060533wrr.10
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 06:35:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IAuRq2vjdKwohJJt5fGBNtHHDlyeIKYjbE22P4kCBO8=;
 b=bbtvvWM44bmV2OBsPa28PPhsQtzU/5hJqV2480hG1JtMiRrOlzxDDeAzUwnxVSPbvb
 MIBxknMEQu7akeBUqT1kp4KHldh0ByT2zV3sUhWPR8RZaGHMDlkenPzpcmw+dCXa0siE
 j6M9aTlZe2j/Uw+BnupyV1IM5WWMRY9aowL4PvCRIthcEHU8uUuS9T3FRD62O7Zn7XXZ
 jdHrKxn2S9jxjuqMEJPD6oqPtzTqoruaO5FZmQNcRAwb26V/ng8znSn2279xNB1tIOkT
 9m1fzopnipErocgTDu3BHenWKI7QugtPQjYcY3rzJfPyiVdxsALd+wZ32k185kNfR6k7
 8X/Q==
X-Gm-Message-State: APjAAAXJGC978pjU+tsYZ/DZLZM1dOc0VxeqjjZa/zsEh8D06LjUWLs4
 ngHtRMoI4KHgYS9Kaw3IrU3j73yDUGE=
X-Google-Smtp-Source: APXvYqwfv+wY28M/MYiWv6MjjgqLfjfNnJxDESPG/55ZPPeevbMr4LnxGDEU+w14fThquzfW4tDDuQ==
X-Received: by 2002:a5d:518f:: with SMTP id k15mr7551299wrv.328.1571405734129; 
 Fri, 18 Oct 2019 06:35:34 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-176-43-106.red.bezeqint.net.
 [79.176.43.106])
 by smtp.gmail.com with ESMTPSA id h63sm8039576wmf.15.2019.10.18.06.35.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 06:35:33 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 16:35:22 +0300
Message-Id: <20191018133522.30080-4-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018133522.30080-1-yuri.benditovich@daynix.com>
References: <20191018133522.30080-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IAuRq2vjdKwohJJt5fGBNtHHDlyeIKYjbE22P4kCBO8=;
 b=k2T+xf0zJr21jOhFCRDsRoUnAMA97Xx4GR4VEl+qfeivDkYJdpO+nkk0NfBCaPke8A
 R2ZfwWHVdLarugi7r0PnwVeNknsNUWcWZ0U617WMrOjPGYarRgRXNIUJVijb9hXpAmMk
 /k4uC5h/4rU7afzCtRzWgjjCwEQ8Vy+i2U2wOGbSuMHMgLb9rJ2fN8V8gna8iwCNI7XZ
 BB9mbejUhoof3DkODtj2EdHpgE/y7AlImrMvX1+nfNM+NuVEubJRtHM2EzNDa7LDH00Z
 ZBDQthehZMwvoqPUCSBXiCOSq+dtZI9M86MuUT0jxRUUamTr0LJgQ5e7qmMCcDncuU9o
 98Zg==
Subject: [Spice-devel] [PATCH 3/3] win32/vd_agent: Optionally disable
 installation of x86 MSI on x64 system
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

Q3VycmVudGx5IHRoZSBNU0kgYnVpbHQgZm9yIHg4NiBzeXN0ZW0gY2FuIGJlIGVhc2lseSBpbnN0
YWxsZWQKb24geDY0IHN5c3RlbS4gV2hlbiB0aGUgc2NyaXB0IGlzIHByb2Nlc3NlZCBieSBXSVgg
dGhpcyBjYW4gYmUKcHJldmVudGVkIGJ5IHBhc3NpbmcgJy1kTm9XT1c9eWVzJyB0byB0aGUgV0lY
LWNhbmRsZS4KClNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3Zp
Y2hAZGF5bml4LmNvbT4KLS0tCiBzcGljZS12ZGFnZW50Lnd4cy5pbiB8IDUgKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcGljZS12ZGFnZW50Lnd4
cy5pbiBiL3NwaWNlLXZkYWdlbnQud3hzLmluCmluZGV4IDc3NzhjMjcuLmM0NTFmMTMgMTAwNjQ0
Ci0tLSBhL3NwaWNlLXZkYWdlbnQud3hzLmluCisrKyBiL3NwaWNlLXZkYWdlbnQud3hzLmluCkBA
IC0zMSw2ICszMSwxMSBAQAogICAgICAgPFVwZ3JhZGVWZXJzaW9uIE1pbmltdW09IjAuMC4wIiBN
YXhpbXVtPSIkKHZhci5WZXJzaW9uKSIgSW5jbHVkZU1pbmltdW09InllcyIgSW5jbHVkZU1heGlt
dW09Im5vIiBQcm9wZXJ0eT0iT0xERVJWRVJTSU9OQkVJTkdVUEdSQURFRCIvPgogICAgIDwvVXBn
cmFkZT4KICAgICA8Q29uZGl0aW9uIE1lc3NhZ2U9IlByb2R1Y3QgYWxyZWFkeSBpbnN0YWxsZWQu
Ij5OT1QgTkVXRVJWRVJTSU9OREVURUNURUQ8L0NvbmRpdGlvbj4KKyAgICA8P2lmICQodmFyLldp
bjY0KSA9IG5vIEFORCAkKHZhci5Ob1dPVykgPSB5ZXMgPz4KKyAgICAgIDxDb25kaXRpb24gTWVz
c2FnZT0iRXJyb3I6IDMyLWJpdCB2ZXJzaW9uIG9mICQoZW52LlBST0RVQ1QpIGNhbiBub3QgYmUg
aW5zdGFsbGVkIG9uIDY0LWJpdCBXaW5kb3dzLiI+CisgICAgICAgICAgPCFbQ0RBVEFbTm90IFZl
cnNpb25OVDY0XV0+CisgICAgICA8L0NvbmRpdGlvbj4KKyAgICA8P2VuZGlmPz4KICAgICA8SW5z
dGFsbEV4ZWN1dGVTZXF1ZW5jZT4KICAgICAgIDxSZW1vdmVFeGlzdGluZ1Byb2R1Y3RzIEFmdGVy
PSJJbnN0YWxsRmluYWxpemUiLz4KICAgICA8L0luc3RhbGxFeGVjdXRlU2VxdWVuY2U+Ci0tIAoy
LjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
