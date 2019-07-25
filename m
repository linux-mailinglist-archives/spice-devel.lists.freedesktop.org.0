Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0512974B71
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 12:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB8F6E6C7;
	Thu, 25 Jul 2019 10:22:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73DA96E6C7;
 Thu, 25 Jul 2019 10:21:37 +0000 (UTC)
Received: by mail-pl1-x643.google.com with SMTP id ay6so23274024plb.9;
 Thu, 25 Jul 2019 03:21:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JpFXTqBiiF/d0FWq+ji6QHY6zUynDSMtWm/er7s/Jh0=;
 b=k+2t2AG1afkfdGZiUlqy+b2rrE9ejmdosmGz9/SWqaAiXuDXNUdsZ9EDcbxjsEHPYM
 cLpfSQQ6T8amgBP0aNdyOUQOr2WecduX9WWDQ8+tkLyvjUjZU6VrfnkebOlKqbN6N4gH
 ZXfoMI5NVMY+8s1oULk9gnN6dNPeaLT8R3DIUwBUm0tsVhMEx9ysex00nT10NnqSR0JS
 hccF7zSCxPJ2V22E4Qe8t+q5rURfI5fAZ9x9/ft1OM/0I2mLDolnJf+6dj8f1JgYcZ4T
 3+kJP2EaVHKjDgrGyYFelRbJXSGg9pKd9BNhL5M0mpN6JYEOsJtemVMmtG7dN9xrvOnp
 VyJQ==
X-Gm-Message-State: APjAAAUTHOMh75PngiKNCfh9sgM/gdyAsy8GYXaaXrBH10+Y3r3S4CZl
 dIQ70RBIj4M6Lvnb7TwRkVw=
X-Google-Smtp-Source: APXvYqzh1lqPLfRIcHRSuzwanRKOlrhGFebC2GTMee0mYsp8VZxX5o3zpNO6UUAl4caXFvOkglFXdg==
X-Received: by 2002:a17:902:7c96:: with SMTP id
 y22mr92009461pll.39.1564050097023; 
 Thu, 25 Jul 2019 03:21:37 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id p27sm74548188pfq.136.2019.07.25.03.21.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 03:21:36 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: airlied@redhat.com, kraxel@redhat.com, airlied@linux.ie, daniel@ffwll.ch
Date: Thu, 25 Jul 2019 18:21:27 +0800
Message-Id: <20190725102127.16086-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Mailman-Approved-At: Thu, 25 Jul 2019 10:22:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JpFXTqBiiF/d0FWq+ji6QHY6zUynDSMtWm/er7s/Jh0=;
 b=kji/UF2eV8qHYMdbqskMt6Ux4Dd8KtsNq7korGFByiRLA//9JNBlfJnLK3kLPqni24
 LZlQcEqlULQCkSFaswVc4umI+nHSlLgVEcuANIcOLfDEL/syjIcQ/48J4Cc+UoCXEQdJ
 x8HPK7REeezOh69mIMxMAnlD/IRMr3WI/r/A0facrnc1RXNNFa6Yd/ZkNnP6WXB8+nC/
 Pslct7+Sv3kxiQBp1niRy1cJ38JMklfghh6U1RtUCYe5QexyeepJ2TCzm9lwrC7Ejv3k
 OpmTrsVFBcg1GpFxhgS2KyUgSsvTwzaGERRHQhafwNdEPm4Jgc/Yysi5PnnQnrj5/UK4
 j51w==
Subject: [Spice-devel] [PATCH] gpu: drm: qxl: Fix possible null-pointer
 dereferences in qxl_crtc_atomic_flush()
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
Cc: spice-devel@lists.freedesktop.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SW4gcXhsX2NydGNfYXRvbWljX2ZsdXNoKCksIHRoZXJlIGlzIGFuIGlmIHN0YXRlbWVudCBvbiBs
aW5lIDM3NiB0bwpjaGVjayB3aGV0aGVyIGNydGMtPnN0YXRlIGlzIE5VTEw6CiAgICBpZiAoY3J0
Yy0+c3RhdGUgJiYgY3J0Yy0+c3RhdGUtPmV2ZW50KQoKV2hlbiBjcnRjLT5zdGF0ZSBpcyBOVUxM
IGFuZCBxeGxfY3J0Y191cGRhdGVfbW9uaXRvcnNfY29uZmlnKCkgaXMgY2FsbCwgCnF4bF9jcnRj
X3VwZGF0ZV9tb25pdG9yc19jb25maWcoKSB1c2VzIGNydGMtPnN0YXRlIG9uIGxpbmUgMzI2Ogog
ICAgaWYgKGNydGMtPnN0YXRlLT5hY3RpdmUpCmFuZCBvbiBsaW5lIDM1ODoKICAgIERSTV9ERUJV
R19LTVMoLi4uLCBjcnRjLT5zdGF0ZS0+YWN0aXZlLCAuLi4pOwoKVGh1cywgcG9zc2libGUgbnVs
bC1wb2ludGVyIGRlcmVmZXJlbmNlcyBtYXkgb2NjdXIuCgpUbyBmaXggdGhlc2UgYnVncywgY3J0
Yy0+c3RhdGUgaXMgY2hlY2tlZCBiZWZvcmUgY2FsbGluZwpxeGxfY3J0Y191cGRhdGVfbW9uaXRv
cnNfY29uZmlnKCkuCgpUaGVzZSBidWdzIGFyZSBmb3VuZCBieSBhIHN0YXRpYyBhbmFseXNpcyB0
b29sIFNUQ2hlY2sgd3JpdHRlbiBieSB1cy4KClNpZ25lZC1vZmYtYnk6IEppYS1KdSBCYWkgPGJh
aWppYWp1MTk5MEBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZGlzcGxh
eS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMKaW5kZXggOGIzMTllYmJiMGZiLi5mYWUxOGVm
MWJhNTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMKQEAgLTM4Miw3ICszODIsOCBAQCBz
dGF0aWMgdm9pZCBxeGxfY3J0Y19hdG9taWNfZmx1c2goc3RydWN0IGRybV9jcnRjICpjcnRjLAog
CQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXYtPmV2ZW50X2xvY2ssIGZsYWdzKTsKIAl9CiAK
LQlxeGxfY3J0Y191cGRhdGVfbW9uaXRvcnNfY29uZmlnKGNydGMsICJmbHVzaCIpOworCWlmIChj
cnRjLT5zdGF0ZSkKKwkJcXhsX2NydGNfdXBkYXRlX21vbml0b3JzX2NvbmZpZyhjcnRjLCAiZmx1
c2giKTsKIH0KIAogc3RhdGljIHZvaWQgcXhsX2NydGNfZGVzdHJveShzdHJ1Y3QgZHJtX2NydGMg
KmNydGMpCi0tIAoyLjE3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
