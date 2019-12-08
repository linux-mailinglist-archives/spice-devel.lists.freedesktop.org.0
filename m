Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF50116227
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784686E0A2;
	Sun,  8 Dec 2019 13:58:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDCE6E2D8
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:58:02 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z3so13078732wru.3
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:58:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FoGHmP7h7lRwLCcx0zR+QbrVbKe/fCyjFh13MDxeoYo=;
 b=dlrMbCH6MFqvG7S71hNn8VX3LFzVrgsDAv6jt+4hqeKQKYGAmMjLlKn2v9v7TGrljO
 Bqbwc/4u+XwyYUCEc9uiNpIlliRgfCmjbG84/WlGK6QzDoZ813J18i2YMbyEE87sfYdY
 d4mUq1ah31DWfqefd/HRlw6M46INX9jE2y1NjLFyZ04yG1ElrCW6Qmng6Bq5pcgP3NHk
 m9wxhsbtQXyxjuz6SmDX+7hJf/DsQkvWzooOd/5jEyN/axjzuEBLmzNyQN94GTDMgt8y
 3UVhPJ0TwgvGvMezs1hsnyry2Wgx9Esc8q9k+wIjSI5vJSQs3+0X/O4Qvga+xkSR2QPE
 Udcg==
X-Gm-Message-State: APjAAAVo8/MFioK1Hnh1PMdXMJViiS4vA0aIJ9un6YfB8yL1uMgpklEj
 nph8tVm6u8Ry9buuyDnA8odzs8lAn5OPTw==
X-Google-Smtp-Source: APXvYqy9Z2RyD8OswJsKa5XTgfe5x6gPsdTXJAaPPiwGI9FoqQAzF1x3ZVgk5TtnxaXeQUIRkmdg1w==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr26757370wrq.196.1575813481118; 
 Sun, 08 Dec 2019 05:58:01 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:58:00 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:19 +0200
Message-Id: <20191208140319.22172-10-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FoGHmP7h7lRwLCcx0zR+QbrVbKe/fCyjFh13MDxeoYo=;
 b=1kS9sikqWG6SjSQg4Wa/1CJbIJj2323+KzI3289MXMmQ8ga05pfTmeJr/CPNuldBkS
 4xRZjDFgXaCbF7HK/E/fLuFza7JdsjMn7E/UQQwd0mjmqH5qB0re8M6/T4tROgXx2ph8
 RT9zka04AGdn4Ln/x/K1Dze8r7y5XkI0NL9Z4X94CVk3f03Q7BN4sNcVO2wz2NeL7cEw
 yEWUhE931jR4bFaL9fdKfyAVHe89ERCbkOBvbkqYaGzc3CopnptT1++FOi1U4fWAZShL
 oNtyewAYnMq2bedmJDV7sNCCRQ/vBtRnJYz7r6zhe943qlhWjaYiF0cM7YmaTFJdu9Wo
 QkNw==
Subject: [Spice-devel] [PATCH shared-cd v1 9/9] remove unconnected shared
 CDs upon usb-device-widget construction
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
Cc: Yan Vugenfirer <yan@daynix.com>, Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClNvbWUgY29y
bmVyIGVycm9yIHNjZW5hcmlvcyBtYXkgbGVhdmUgZGFuZ2xpbmcgbm90IGNvbm5lY3RlZCBzaGFy
ZWQgQ0QgZGV2aWNlcy4KQXMgdGhlIGN1cnJlbnQgZmxvdyBwcmVjbHVkZXMgbWFpbnRlbmFuY2Ug
b2Ygc3VjaCBkZXZpY2VzLCBpdCBtYXkgYmUgcHJ1ZGVudAp0byBpZGVudGlmeSBhbmQgcmVtb3Zl
IHRoZW0uCgpTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRo
YXQuY29tPgotLS0KIHNyYy91c2ItZGV2aWNlLXdpZGdldC5jIHwgMTIgKysrKysrKysrKystCiAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL3NyYy91c2ItZGV2aWNlLXdpZGdldC5jIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKaW5k
ZXggYTgyMTllNS4uYzYzNWEzNiAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMK
KysrIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKQEAgLTI5NCw5ICsyOTQsMTkgQEAgc3RhdGlj
IHZvaWQgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfY29uc3RydWN0ZWQoR09iamVjdCAqZ29iamVj
dCkKIAogICAgIGRldmljZXMgPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0X2RldmljZXMo
cHJpdi0+bWFuYWdlcik7CiAgICAgaWYgKGRldmljZXMgIT0gTlVMTCkgeworICAgICAgICBTcGlj
ZVVzYkRldmljZSAqZGV2aWNlOwogICAgICAgICBpbnQgaTsKKwogICAgICAgICBmb3IgKGkgPSAw
OyBpIDwgZGV2aWNlcy0+bGVuOyBpKyspIHsKLSAgICAgICAgICAgIGRldmljZV9hZGRlZF9jYihO
VUxMLCBnX3B0cl9hcnJheV9pbmRleChkZXZpY2VzLCBpKSwgc2VsZik7CisgICAgICAgICAgICBk
ZXZpY2UgPSBnX3B0cl9hcnJheV9pbmRleChkZXZpY2VzLCBpKTsKKworICAgICAgICAgICAgaWYg
KHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9pc19kZXZpY2Vfc2hhcmVkX2NkKHByaXYtPm1hbmFn
ZXIsIGRldmljZSkgJiYKKyAgICAgICAgICAgICAgICAhc3BpY2VfdXNiX2RldmljZV9tYW5hZ2Vy
X2lzX2RldmljZV9jb25uZWN0ZWQocHJpdi0+bWFuYWdlciwgZGV2aWNlKSkgeworICAgICAgICAg
ICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9yZW1vdmVfc2hhcmVkX2NkX2RldmljZShw
cml2LT5tYW5hZ2VyLCBkZXZpY2UsIE5VTEwpOworICAgICAgICAgICAgICAgIGNvbnRpbnVlOwor
ICAgICAgICAgICAgfQorCisgICAgICAgICAgICBkZXZpY2VfYWRkZWRfY2IoTlVMTCwgZGV2aWNl
LCBzZWxmKTsKICAgICAgICAgfQogCiAgICAgICAgIGdfcHRyX2FycmF5X3VucmVmKGRldmljZXMp
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
