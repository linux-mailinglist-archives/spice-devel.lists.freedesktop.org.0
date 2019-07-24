Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE5372CAD
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC076E50E;
	Wed, 24 Jul 2019 10:54:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212036E50E
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:54:10 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id p13so46424600wru.10
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 03:54:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jV76OHTvczxProceXA5Ivqc4GzlpCTgfDggQ7bDMpSk=;
 b=RIjfGrTtJaNHipKuh5v3/uMrAMvkeYhf6YIO1JN6Eq/fTZ7gJfeN5J2bwZRzX1EbrN
 aljavIgD3g2ZLOB7VXJNxFqm1AH1bs3r3hHdcnQXYJ/QuGU7o12alXiYP6z6fY/DHiKg
 B5COjPhppEIT1cKcgkQOHx8YaDgI8KmDvuc//CZlFhffk31/Z2f3f8xTrA0bsKKBwWWV
 nSDqITacgWyIf8G40gC/nZRvAon5B9Id0sXCkvnXmVJETJ8ffih608UaEEGuOBMhbaro
 K8im3CpDimZwxhyZGVVut/QOpTjRvCtPIuQquQi/aBuvSmElXNKAPRab3ybPv1Jc1f2j
 F42Q==
X-Gm-Message-State: APjAAAVuZQS7kEPJNszsBalDh6dzmpXZ9+mIfC6XI5maEUIrCtB8tSX4
 O2Ib6r/V8/DD8QLWfGPKFfVV9yM8
X-Google-Smtp-Source: APXvYqxY7iO7H5vxtNlaHrYz/PCplzSQc5NQ95gHt/RcMvG4Ocr70YFyVkxveYu/FuIKPI3izP36Zg==
X-Received: by 2002:adf:de90:: with SMTP id w16mr51187046wrl.217.1563965648603; 
 Wed, 24 Jul 2019 03:54:08 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id r12sm53542137wrt.95.2019.07.24.03.54.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 03:54:08 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 13:53:51 +0300
Message-Id: <20190724105351.13753-10-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724105351.13753-1-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jV76OHTvczxProceXA5Ivqc4GzlpCTgfDggQ7bDMpSk=;
 b=dVtxvnztUlNsIAT0KNrHslvZt/nOjxSQEuQmhER6Ola9pLtoQoHSuYhI4It7CxshS+
 uM8eB/7sM2z0ot6dA4vum8KNZC4BnZQyuOQmVoHC0y9luaMlqf3Fli7kc1Tj8xbRB7LV
 +TGFkkeUTb/NGPi9BywPDRn600vBsEPqlqW+HN5JghMzHpY1xWkxo4zF/4l00sA/L2rJ
 1GWhv/neCO9OhUP616pTtWFrrHe97TqUKSCtpsCCQs0/XTNVbfm8EZhdXNFDUwdK6Mzl
 h/fYo/d8m0SJbUPtMKxJaHLQruZTXUQZrWwZMHUmWEPZk1+5HeuZwnlsfZXNPgzwrge5
 zNvA==
Subject: [Spice-devel] [spice-gtk 9/9] usb-redir: enable redirection of
 emulated CD drive
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

UmVnaXN0ZXIgY29uc3RydWN0b3IgZm9yIGVtdWxhdGVkIENEIGRldmljZS4gTm93IGNyZWF0aW9u
Cm9mIENEIGRldmljZXMgYXQgc3RhcnR1cCBpcyBwb3NzaWJsZS4KClNpZ25lZC1vZmYtYnk6IFl1
cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KLS0tCiBzcmMvbWVz
b24uYnVpbGQgICB8IDYgKysrKysrCiBzcmMvdXNiLWJhY2tlbmQuYyB8IDEgKwogMiBmaWxlcyBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcmMvbWVzb24uYnVpbGQgYi9z
cmMvbWVzb24uYnVpbGQKaW5kZXggNDlmZWM1Mi4uOTQ0YjA4MyAxMDA2NDQKLS0tIGEvc3JjL21l
c29uLmJ1aWxkCisrKyBiL3NyYy9tZXNvbi5idWlsZApAQCAtMTI0LDYgKzEyNCwxMiBAQCBzcGlj
ZV9jbGllbnRfZ2xpYl9zb3VyY2VzID0gWwogICAndXNiLWJhY2tlbmQuYycsCiAgICd1c2ItZW11
bGF0aW9uLmgnLAogICAndXNiLWJhY2tlbmQuaCcsCisgICd1c2ItZGV2aWNlLWNkLmMnLAorICAn
Y2Qtc2NzaS5jJywKKyAgJ2NkLXNjc2kuaCcsCisgICdjZC1zY3NpLWRldi1wYXJhbXMuaCcsCisg
ICdjZC11c2ItYnVsay1tc2QuYycsCisgICdjZC11c2ItYnVsay1tc2QuaCcsCiAgICd2bWNzdHJl
YW0uYycsCiAgICd2bWNzdHJlYW0uaCcsCiBdCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQu
YyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IDAyMzY5ZDIuLjc2MGRjMTYgMTAwNjQ0Ci0tLSBh
L3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC00MzIsNiArNDMy
LDcgQEAgU3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXcoR0Vycm9yICoqZXJy
b3IpCiAjZW5kaWYKICNlbmRpZgogICAgICAgICBiZS0+b3duX2RldmljZXNfbWFzayA9IDM7IC8q
IGV4Y2x1ZGUgYWRkcmVzc2VzIDAgYW5kIDEgKi8KKyAgICAgICAgc3BpY2VfdXNiX2RldmljZV9y
ZWdpc3Rlcl9jZChiZSk7CiAgICAgfQogICAgIFNQSUNFX0RFQlVHKCIlcyA8PCIsIF9fRlVOQ1RJ
T05fXyk7CiAgICAgcmV0dXJuIGJlOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
