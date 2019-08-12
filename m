Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 225CD89AA7
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 11:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D906E4E1;
	Mon, 12 Aug 2019 09:57:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC4D6E4CD
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 09:57:54 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id p17so104005238wrf.11
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 02:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aZnN1aU5PBJesOyMWCkO3ksU7ym8IcZkZIg53cLPr8g=;
 b=MsLnqGy0HbKGMxscE36lcNvsL5G+iqSSabBcVhqueOonveR7E75YjQW7hEqzISqxk4
 MS4SusL4s/ntEi4tVzmFJRO3opencUzvdjUhca93r5umLl6dpa/C5fxIzZCOQtDzsZy6
 n7oXjAvAiNqZVOScD8YqGIPwcxJ3WsrrVcss3bKGviAPBp4Prz7XL8/o/bM3zq6SkQrB
 mPZFslk393C5SuTq5Bdoyk2eKBye9G7ueTIDSjV+13iwpO8FB/lah03hv4w7lxy4Wjyw
 ZdC5+i7hIQVU1WWLPYyGTDRsb4X+gABasNzRsQomvBCPY2GhdcweeOojd/us04dwLnaX
 5VNg==
X-Gm-Message-State: APjAAAVPhWc7ZWdA1NJ/CE6ZLuMe58rWWZtkwp4F3w33pa+RHhMa39l0
 uZUQsssNlpGu4UyNgFxS98aJ/AiRm8w=
X-Google-Smtp-Source: APXvYqyHhpcpcOXCtbZSa1069HBnGk8hqE7dZSfwHIUZ7KeNtXsQUL2F3jkWJs1D6MDe9oDtH7GWaA==
X-Received: by 2002:adf:b64e:: with SMTP id i14mr40435640wre.248.1565603872458; 
 Mon, 12 Aug 2019 02:57:52 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id g14sm11930659wrb.38.2019.08.12.02.57.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 02:57:51 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 12 Aug 2019 12:57:28 +0300
Message-Id: <20190812095729.32692-9-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812095729.32692-1-yuri.benditovich@daynix.com>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aZnN1aU5PBJesOyMWCkO3ksU7ym8IcZkZIg53cLPr8g=;
 b=IhZOjRxCMcb671da9XPX8dcAX3w5yZvI6qU6QuIz6veOvMLNr20lYBtDoYkkolQeuS
 Se0JTQxGIx3UTlaAcSsBojtoU4W+35fh8IOBjMDbvkxJ4DMD1VwCwV1LBFOlnF8dFUpd
 WTXfLrE6CFvFiMMwvxLaXwBJUsvgM2BMTqOdcqPwWBMHcHXBsksSSdryYHVqbO+kUXdn
 N4C4N0JSeJV8GZPcl7D7l1r1N9oU4MpHO55lEM27hoFhuB9lShNTXjPJdOztlWrla9tu
 S4HtHFzJB7tKwWrSaW5mqh56T4sF9/BMoNFU+fxqGLp61RHHegGPvbdPEk1fcIHTW75V
 VVeQ==
Subject: [Spice-devel] [spice-gtk v3 8/9] usb-redir: enable redirection of
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

QWRkIGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIGRldmljZSB0byBidWlsZC4KTm93IGl0IGlz
IHBvc3NpYmxlIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTog
WXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9t
ZXNvbi5idWlsZCB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAppbmRleCBmZTE5
YzE2Li4zODM3YTlkIDEwMDY0NAotLS0gYS9zcmMvbWVzb24uYnVpbGQKKysrIGIvc3JjL21lc29u
LmJ1aWxkCkBAIC0xMjQsNiArMTI0LDEzIEBAIHNwaWNlX2NsaWVudF9nbGliX3NvdXJjZXMgPSBb
CiAgICd1c2ItYmFja2VuZC5jJywKICAgJ3VzYi1lbXVsYXRpb24uaCcsCiAgICd1c2ItYmFja2Vu
ZC5oJywKKyAgJ3VzYi1kZXZpY2UtY2QuYycsCisgICd1c2ItZGV2aWNlLWNkLmgnLAorICAnY2Qt
c2NzaS5jJywKKyAgJ2NkLXNjc2kuaCcsCisgICdjZC1zY3NpLWRldi1wYXJhbXMuaCcsCisgICdj
ZC11c2ItYnVsay1tc2QuYycsCisgICdjZC11c2ItYnVsay1tc2QuaCcsCiAgICd2bWNzdHJlYW0u
YycsCiAgICd2bWNzdHJlYW0uaCcsCiBdCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
