Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C7A712D5
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7A16E13F;
	Tue, 23 Jul 2019 07:27:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081C56E13B
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:43 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id s15so16134248wmj.3
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/JJsba+QeQ+UhZMdoZq07DI+EunHzsZC4ipHXOkni+U=;
 b=H/brww/nIL0mB9HIzHC43FIGe+E/f/wt6ba2zX7reNxGSDz47nXuCTtCav2bVgK50z
 DjCppMdm1E60Ke4gic8SZ6vsbMhbVxiykMMcBK1BMZ1BDZmi+gaxAjMhYK9DZBGMQDO5
 6P7OoYhn00vlMQVBIhQSXsss+BAOMOrsUzWyhhz2vb371dtrEC8x3GvkMoxgCsbVIUtl
 16qo9IyoyujZHYiTwM4Xj5JVWFubDDuPMc3U5myFUE1mSjrjPcokkloLuVLpYeSB0Ihs
 dD3X8JauFlqq8ZNrJCGb6A2YohPJFD0yJnBV6IryfvR5ps6ZJT5AxOcw3DGvx+E4ABxZ
 p46g==
X-Gm-Message-State: APjAAAUYZwg+JT1eZ28c+jiI7ALmswvBpnlJRJFiHKaHdjNcuJz53tt8
 85O3u8M+kvV12s7U9MJljAC6otTq
X-Google-Smtp-Source: APXvYqy1hLMTykLmOiUFCaA1Kw2C2h0GqdbKf72oCEpAtkKB7otIMDnowDfCPyo9nrrKbqtj6MZmpQ==
X-Received: by 2002:a05:600c:389:: with SMTP id
 w9mr42163694wmd.139.1563866861489; 
 Tue, 23 Jul 2019 00:27:41 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:41 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:03 +0300
Message-Id: <20190723072708.2575-5-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/JJsba+QeQ+UhZMdoZq07DI+EunHzsZC4ipHXOkni+U=;
 b=xGREPDxCf+fsYgyQxc5iZoGpC2+RAv49flDoRyTRkOrw8cMDSjdICR5YuseV8wyS3y
 uAC1PtHw/80L7D+9wbPb8gKxiCd9I/ICqenSqADY4P0s3URdBXBLd5nlKJQkPnq1Hl1P
 8cajfobkTEJixAmIknlGYmQQlbCqjk5PwJ89Dsw+G5RQogtVdPMiOiGFpcwDeHAtLFjL
 Vd4OcknV6BdjmrvfdptP5iG2BU4V4IJIf2QslckpjtxMiPuSRC05G0W5RtCOCxk18k9r
 cNvLHm8tDMxkH0TwpHM5DMJcMp9q1IoOjlzn46kBvRPEInZutfgD1Ha7IgCjJMwWsbkB
 UoNg==
Subject: [Spice-devel] [spice-gtk v2 4/9] usb-redir: change parameter name
 'bdev' to 'dev'
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

VW5pZnkgd2l0aCBvdGhlciBwbGFjZXMgZm9yIGJldHRlciByZWFkYWJpbGl0eS4KClNpZ25lZC1v
ZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KLS0t
CiBzcmMvdXNiLWJhY2tlbmQuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIv
c3JjL3VzYi1iYWNrZW5kLmMKaW5kZXggYzIyNjhlMy4uNTNhYzQzMCAxMDA2NDQKLS0tIGEvc3Jj
L3VzYi1iYWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTgzLDEwICs4MywxMCBA
QCBzdGF0aWMgdm9pZCBnZXRfdXNiX2RldmljZV9pbmZvX2Zyb21fbGlidXNiX2RldmljZShVc2JE
ZXZpY2VJbmZvcm1hdGlvbiAqaW5mbywKICAgICBpbmZvLT5wcm90b2NvbCA9IGRlc2MuYkRldmlj
ZVByb3RvY29sOwogfQogCi1zdGF0aWMgZ2Jvb2xlYW4gZmlsbF91c2JfaW5mbyhTcGljZVVzYkJh
Y2tlbmREZXZpY2UgKmJkZXYpCitzdGF0aWMgZ2Jvb2xlYW4gZmlsbF91c2JfaW5mbyhTcGljZVVz
YkJhY2tlbmREZXZpY2UgKmRldikKIHsKLSAgICBVc2JEZXZpY2VJbmZvcm1hdGlvbiAqaW5mbyA9
ICZiZGV2LT5kZXZpY2VfaW5mbzsKLSAgICBnZXRfdXNiX2RldmljZV9pbmZvX2Zyb21fbGlidXNi
X2RldmljZShpbmZvLCBiZGV2LT5saWJ1c2JfZGV2aWNlKTsKKyAgICBVc2JEZXZpY2VJbmZvcm1h
dGlvbiAqaW5mbyA9ICZkZXYtPmRldmljZV9pbmZvOworICAgIGdldF91c2JfZGV2aWNlX2luZm9f
ZnJvbV9saWJ1c2JfZGV2aWNlKGluZm8sIGRldi0+bGlidXNiX2RldmljZSk7CiAKICAgICBpZiAo
aW5mby0+YWRkcmVzcyA9PSAweGZmIHx8IC8qIHJvb3QgaHViIChIQ0QpICovCiAgICAgICAgIGlu
Zm8tPmFkZHJlc3MgPD0gMSB8fCAvKiByb290IGh1YiBvciBiYWQgYWRkcmVzcyAqLwotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
