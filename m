Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DF87BBCD
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 10:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E3C89D4A;
	Wed, 31 Jul 2019 08:36:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F3689C82
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:36:45 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id n4so68751614wrs.3
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 01:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/jbA7BhCV0JFxQXrhQ/pdlZK7UoOZmGjO+ojuMcms4k=;
 b=YAZFCNQgXWUewEkphS9XYEH3NY+IXXx4EMSX7jKhHr/FQp7emhzFSk8ILmVhkLDedo
 BJGtErTvvryTsDuT/AHkV4QIiH40x54dbF0Km8oHvXaZ04RlJ6/bCvXwmuVWGA4KSwv/
 OGxJUYOYH/JlUkHZwYGuojHdb2gssmv5f2T0NKSpNsFLSOzl702ysDPECBJVe4nDWwoY
 L9eSYvq9EGgt+GSKTC0lxbYknMxFuiA9lF0wtOapCycZPfTmPpMQ6AkbFFIlQ/PRCRgA
 LfMTw8pFjIo8QIFYUyYc3dZ02YBYd4S6vHoCajm67d1BoLe49V0Wf95VxUcvYeCMUlb2
 Z8PQ==
X-Gm-Message-State: APjAAAWXB6v+YwEacJobFAf2x5PZjLnCYXL7uaclU2KlcraqGO30e8TR
 mUK+YUq3Ez1YsElcAmqwtq786z8WFH4TZQ==
X-Google-Smtp-Source: APXvYqwLDYu+fLvXXisDP1uMFgku0l2QbAM6Tztcw9TC/s2d20O6K5NrOPSiEkAiV7SGzHI6AHNNHg==
X-Received: by 2002:a5d:6190:: with SMTP id j16mr11345643wru.49.1564562203729; 
 Wed, 31 Jul 2019 01:36:43 -0700 (PDT)
Received: from localhost.localdomain (25.119.19.109.rev.sfr.net.
 [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id j17sm111641863wrb.35.2019.07.31.01.36.42
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:36:43 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Date: Wed, 31 Jul 2019 10:36:36 +0200
Message-Id: <20190731083636.21493-5-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731083636.21493-1-kpouget@redhat.com>
References: <20190731083636.21493-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-gtk 1/1] spice-widget: make draw-area
 visible on update_image
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

V2hlbiBzd2l0Y2hpbmcgZnJvbSBhIEdzdHJlYW1lciB2aWRlbyBzdHJlYW0gKG9uIHRoZSBnc3Qt
YXJlYSkgdG8gYW4KbWpwZWcgc3RyZWFtLCB0aGUgImRyYXctYXJlYSIgd2FzIG5vdCBzZXQgYXMg
dmlzaWJsZS4gRHVyaW5nIHRoZQptanBlZy0+Z3N0IHN3aXRjaCwgdGhlIHByb2JsZW0gZG9lcyBu
b3QgaGFwcGVuLCBhcyB0aGUgZ3N0cmVhbWVyCm92ZXJsYXkgaXMgYWxyZWFkeSByZS1jcmVhdGVk
IGFuZCBtYWRlIHZpc2libGUuCgpUaGlzIHBhdGNoIG1ha2VzIHRoZSBkcmF3LWFyZWEgYWx3YXlz
IHZpc2libGUgb24gdXBkYXRlX2ltYWdlLiBBcwpHc3RyZWFtZXIgb3ZlcmxheSBpcyBjcmVhdGVk
IGFmdGVyd2FyZHMgKGlmIGl0J3MgYSBnc3RyZWFtZXIgc3RyZWFtKSwKd2UgYXJlIHN1cmUgdGhh
dCB0aGUgcmlnaHQgYXJlYSB3aWxsIGJlIHZpc2libGUuCgotLS0KVGhpcyBtYXkgbm90IGJlIHRo
ZSBiZXN0IHBsYWNlIGZvciB0aGlzIGxpbmUuLi4KCi0tLQogc3JjL3NwaWNlLXdpZGdldC5jIHwg
MiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9z
cGljZS13aWRnZXQuYyBiL3NyYy9zcGljZS13aWRnZXQuYwppbmRleCBhOWJhMWYxLi43Mzk5YTY5
IDEwMDY0NAotLS0gYS9zcmMvc3BpY2Utd2lkZ2V0LmMKKysrIGIvc3JjL3NwaWNlLXdpZGdldC5j
CkBAIC0yMjEwLDYgKzIyMTAsOCBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfaW1hZ2UoU3BpY2VEaXNw
bGF5ICpkaXNwbGF5KQogICAgIFNwaWNlRGlzcGxheVByaXZhdGUgKmQgPSBkaXNwbGF5LT5wcml2
OwoKICAgICBzcGljZV9jYWlyb19pbWFnZV9jcmVhdGUoZGlzcGxheSk7CisgICAgZ3RrX3N0YWNr
X3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ssICJkcmF3LWFyZWEiKTsKKwogICAgIGlm
IChkLT5jYW52YXMuY29udmVydCkKICAgICAgICAgZG9fY29sb3JfY29udmVydChkaXNwbGF5LCAm
ZC0+YXJlYSk7CiB9Ci0tCjIuMjEuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
