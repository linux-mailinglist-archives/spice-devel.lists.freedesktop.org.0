Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1531CDC62D
	for <lists+spice-devel@lfdr.de>; Fri, 18 Oct 2019 15:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55EC189A75;
	Fri, 18 Oct 2019 13:35:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65EBF89A75
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 13:35:32 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id r3so6316706wrj.6
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Oct 2019 06:35:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qwSh6fc57+oSXSw/rn+i69GdYBh9+WeIadcYot37O0c=;
 b=UpVAvBwGJpsqFD6ZekvF5ZV5vWC3uLHVDrV0yGSjpywTj95R6pihdgxQXrkE7Eo4ww
 kefR1L4q/61wxoq9dGgd7z1Upx8LZSCQA5Ve0jhExGlz6Eq12RBtHWzt9lSpeALB5hyY
 +mwNdr0qW0VJXI1pXiHcmyRpmYd3JOw09G5bW9MBE9+LlqoyX14GIMvbE0Jy/Lw0Wu+g
 4Bn6bkrOKzcJNrUj8ux4a4b3cfvSJcmI2Xknr63PlLD46IpiAYIaMN9RKmdFmzHNzzEI
 Z0JAiSJLKQ6eXLQcmW0Jmqpa9/kcdM7rE0D1l0t/py4+gjACKem3dGSqn/BIfZjS7xzT
 6D0w==
X-Gm-Message-State: APjAAAVfA9xIeGkUT+Y9RnP8t2Hh7vc5TT7a660I1Aif48zrA08tz2mi
 2nHqJdd3IHOrFgoWTELPHro12dbgSv8=
X-Google-Smtp-Source: APXvYqy2Qk+QymzW15YLMj51iclFT1CaDLS5Jdnw9fPQrlekRcoKbgEdMwgpJlWQ1HjKRgZoIseWIA==
X-Received: by 2002:adf:f342:: with SMTP id e2mr8372350wrp.61.1571405729789;
 Fri, 18 Oct 2019 06:35:29 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-176-43-106.red.bezeqint.net.
 [79.176.43.106])
 by smtp.gmail.com with ESMTPSA id h63sm8039576wmf.15.2019.10.18.06.35.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 06:35:29 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 18 Oct 2019 16:35:19 +0300
Message-Id: <20191018133522.30080-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=qwSh6fc57+oSXSw/rn+i69GdYBh9+WeIadcYot37O0c=;
 b=zCjL5MMK177dl+hqAul9ihLbHC4i7gqmYh4j7PhZH8rrynV2ylSVQa//hCEKCG+RSw
 IJML41yibJ2EKpcxzkmnOYlTfQ5lPSj7/L//ilBOFcgyA5xW8lryx6fW8OfndTPbmEuw
 cyrFcx2hAq4+on3YZmZA2VBZy3y6NwiQakTwwn0BquFvj71Hy/U+lIntlCS6vzR1fjM5
 5B2pt1BJZDutrtJCsxjJivQJWGoay4nN4bziaUn/8NodXdSaTM333/SoLNLx/CbnBrPw
 bnUzbMsHC3gPFGR2r3AEeebwxjoQP3KZHGMqp5IPITPUgfgdypmQPpzIMaZQpygvtr4K
 iZFg==
Subject: [Spice-devel] [PATCH 0/3] Make WIX script to be useful in Windows
 build
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

VGhpcyBzZXJpZXMgY29udGFpbnMgdXBkYXRlcyBvZiBXSVgoTCkgc2NyaXB0IGFuZCByZWxhdGVk
IGNoYW5nZXM6Ck1ha2UgaXQgY29tcGF0aWJsZSB3aXRoIFdJWCAoY3VycmVudGx5IFdJWCByYWlz
ZXMgZXJyb3Igb24geDY0IGJ1aWxkKQpDdXN0b21pemUgc2V2ZXJhbCBwcm9wZXJ0aWVzIGR1cmlu
ZyBidWlsZCBvZiBNU0kKRW5hYmxlIHByZXZlbnRpb24gb2YgeDg2IGluc3RhbGwgb24geDY0IHN5
c3RlbQoKQXZhaWxhYmxlIGF0Cmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy95dXJpX2Jl
bmRpdG92aWNoL3ZkX2FnZW50L3RyZWUvd2l4X2FsaWduCgpZdXJpIEJlbmRpdG92aWNoICgzKToK
ICB3aW4zMi92ZF9hZ2VudDogRml4IFdJWCBlcnJvciBvbiAud3hzIHNjcmlwdAogIHdpbjMyL3Zk
X2FnZW50OiBDdXN0b21pemUgTVNJIHByb2R1Y3QgbmFtZSBhbmQgaW5zdGFsbCBsb2NhdGlvbgog
IHdpbjMyL3ZkX2FnZW50OiBPcHRpb25hbGx5IGRpc2FibGUgaW5zdGFsbGF0aW9uIG9mIHg4NiBN
U0kgb24geDY0CiAgICBzeXN0ZW0KCiBNYWtlZmlsZS5hbSAgICAgICAgICB8ICA1ICsrKystCiBz
cGljZS12ZGFnZW50Lnd4cy5pbiB8IDE3ICsrKysrKysrKysrLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
