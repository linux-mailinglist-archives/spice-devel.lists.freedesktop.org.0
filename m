Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE8767F31
	for <lists+spice-devel@lfdr.de>; Sun, 14 Jul 2019 16:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DD989864;
	Sun, 14 Jul 2019 14:07:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2927897E7
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 14:07:55 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id z1so14353598wru.13
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 07:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iuNlxvhNpiX5wtVVSVURIkAqbNq5BpteJACZ3b7y85Q=;
 b=Piyf6JPZaVws51HVG9VBUw8Xlr4RBFWRTYkHx0Dx7vU56zKBJ0QMxUYukQfeYAoVUk
 p0ivHj478R3LohppG33yJPuht4FkD2Kp5FxRIPKHeOe9LpuMQU7iRlmaTCoEFGrY7k2z
 iJ9aDCDxOYi5rqeBNce6GSg1e1rsMekXmLNkWCqIisDi21poZ2+KJyhLTogI/SF6LkMZ
 C/YquR0TM5GamaEQg99M+h/GEgWxXpQBIOWUyRN/BH34xgvQfCYNRkGX7DHiZZf40DEb
 l/Dns0JBPJ5mAq7nH9FpOghu2bRNxRxkqzZo0wSsFybu/eIqzflcc72VZw9zoy9gBWlG
 JjQA==
X-Gm-Message-State: APjAAAXtRcVkylgOFogYSbVEG1IykrGJOu9YkEP9OnzBDnIx1X8m/0e8
 C24Bd2PvQalIBw98Q+ru+qB2vuS9
X-Google-Smtp-Source: APXvYqxSw/oUe5L0CDQtA48hcqVoHrl1gapy9oQZUzMco9RkegR282/SeF2UJY2g1JUi4Uc1wcp9PA==
X-Received: by 2002:a5d:6b07:: with SMTP id v7mr23559500wrw.169.1563113274198; 
 Sun, 14 Jul 2019 07:07:54 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id z19sm10223328wmi.7.2019.07.14.07.07.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 07:07:53 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 14 Jul 2019 17:07:40 +0300
Message-Id: <20190714140741.3274-5-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190714140741.3274-1-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iuNlxvhNpiX5wtVVSVURIkAqbNq5BpteJACZ3b7y85Q=;
 b=rQGYRfjCnftreJ4SzyFq9WdJJz82GxOMq/w700DTEOlDzoIMgCZQ7H95T66ZB7mmU5
 a5CDo8WYI2MsJ9jvv3ulifMEGXIQCZw+Hm8jYkzuP6CAWuDtPyHJbLxZlBW99Tmv+uOI
 bE7iSP+KTz/ZTgQSSRYliZW9+sQfJVkQudx6AxN0HRSxDYKHUr+H5r/q6YMSGVqDL9og
 xB+/0AQTpiwD3FLwucHmekW3qgSTztSYsaR+0S8b+4j2TIMlN1O+5mbU7LL3nVLTJwpO
 25zqFtR5pIJ0TTChSK2I2MCtz5V9og8LDCkfZyrJlIRfCkwwGjI4jFwgVMkcfH2GPvEg
 97Kg==
Subject: [Spice-devel] [spice-gtk 4/5] usb-redir: delete usb-backend context
 on initialization error
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

VGhlIGRlbGV0ZSBpbiBlcnJvciBmbG93IHdhcyBtaXNzaW5nLgoKU2lnbmVkLW9mZi1ieTogWXVy
aSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpk
aWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIvc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jCmluZGV4IDg1N2QwNTcuLjcxMDVmZjEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItZGV2aWNl
LW1hbmFnZXIuYworKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKQEAgLTI1OSw2ICsyNTks
NyBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2luaXRhYmxlX2lu
aXQoR0luaXRhYmxlICAqaW5pdGFibGUsCiAgICAgaWYgKCFzcGljZV91c2JfYmFja2VuZF9yZWdp
c3Rlcl9ob3RwbHVnKHByaXYtPmNvbnRleHQsIHNlbGYsCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9ob3RwbHVnX2Ni
LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIpKSB7Cisg
ICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RlbGV0ZShwcml2LT5jb250ZXh0KTsKICAgICAgICAg
cmV0dXJuIEZBTFNFOwogICAgIH0KICNpZm5kZWYgR19PU19XSU4zMgotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
