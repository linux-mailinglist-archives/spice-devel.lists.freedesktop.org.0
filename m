Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045AC1147C7
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0346F8F4;
	Thu,  5 Dec 2019 19:42:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 204986E150
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:40 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id q10so4642018wrm.11
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AhE37mBc4/TgXezCNM15wqbCphmaR43bf7O9X/JhX4k=;
 b=rohik3pqc8U1yhwaIG5of7anj4ggLLwx429RBVTwsaCO6XMBq1cI/zBJGtgh65qw9I
 YgX3/9z3ahydyyz6DBE3pQl8a4F9q+8XhwLSKvSjzkOYS8SdFac/YSPDks3HIptrSxjo
 aLXVLfrW8yL6kp9YBs2AUjjwbqENbqYAWXS54DLsw/ztgtWQOo8AaKWCVh9FcMczDwu6
 JGYqBVDXfVElk38CVjxuqH6+Q4Ti7QjmW9QzlrbAUSVmB5K1VDT2cpbcppiratwq9/JQ
 AyCp8Ix4lNOuGMBRgLtaCjeNfbUkJMl6AivEyqbiwMXBoc3NCaqEvlhile7gxD2p4xNe
 CCmQ==
X-Gm-Message-State: APjAAAVtC8Dar9P4rhMejQOHPmreWXOOdLwMCUzMiU/kbo3ajjd9gkdg
 UAYPuaK37fQxD7BvWuMXaMxrWhPdMD+GpQ==
X-Google-Smtp-Source: APXvYqzotPo5pOIXN/Fr5kAr54Nz1XV//+O2fgLosKEOsKwSfXloETIJxMDxjx6LvxYz81p1YSH/cQ==
X-Received: by 2002:adf:f244:: with SMTP id b4mr11211322wrp.88.1575567818544; 
 Thu, 05 Dec 2019 09:43:38 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:37 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:06 +0200
Message-Id: <20191205174915.24546-1-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AhE37mBc4/TgXezCNM15wqbCphmaR43bf7O9X/JhX4k=;
 b=fHXHwCwKI2+wNa7cy4E/C0BauaIN1i0/S/ixx5JescIXnlSsHt73IQX5uaQPPfp24U
 gOtI7/295Ze4PB1OJLq5QB33F/VIy5oYZFwkNmAxOTeUx0IIKstBi3vwyX2lOoTJmWlv
 E0/k9pWsIR8lN2MJOaw6UhJN4V/vbZ4U9wnGnMNf7HNB3uXNfd3Yw5X4kQmirG31GUss
 t8aTys6ydQpeIOV82hiKZ6xFugY/lMSrWT+VB6d5aZmaxkJ2hV37JHx1LSax6YMz2EQZ
 z7gqB7zBOTG4dInemvJ/9QY9+B7yg+GvVe/G8NBIO/V2Ef/2gx5Eec3ofeiiiKS5AfzK
 Z2tg==
Subject: [Spice-devel] [PATCH 0/9] Spice CD functionality added to
 usb-device-widget
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClRoaXMgcGF0
Y2gtc2V0IGFkZHMgc2hhcmVkIFNwaWNlIENEIGZ1bmN0aW9uYWxpdHkgdG8gdXNiLWRldmljZS13
aWRnZXQuCgpFdmVyeSB0aW1lIHRoZSB3aWRnZXQgaXMgY3JlYXRlZCBvciByZWRyYXduLCBhIHBs
YWNlaG9sZGVyIHRvZ2dsZSBuYW1lZAoiU3BpY2UgQ0QgKGVtcHR5KSIgYXBwZWFycyBvbiB0b3Ag
b2YgdGhlIGF2YWlsYWJsZSBVU0IgZGV2aWNlcyBsaXN0LgpJdCBhbGxvd3MgYWRkaW5nIENEIGRl
dmljZXMgYW5kLCB3aGVuIGNsaWNrZWQsIGZpcmVzIHVwIGEgZmlsZSBjaG9vc2VyLgoKSWYgYW4g
aW1hZ2UgcGF0aCBoYXMgYmVlbiBzZWxlY3RlZCwgYSBuZXcgU3BpY2UgVVNCIENEIGRldmljZSBp
cyBjcmVhdGVkLgpBZnRlciB0aGUgbmV3IGRldmljZSBpcyBhZGRlZCBhbmQgdGhpcyBldmVudCBp
cyBzaWduYWxsZWQgdG8gdGhlIHdpZGdldCwKdGhlIG9yaWdpbmFsIHRvZ2dsZSBzaG93cyB0aGUg
aW1hZ2UgZmlsZSBwYXRoIGFuZCBzdGFydHMgcmVwcmVzZW50aW5nCnRoZSBDRC4gQSBuZXcgcGxh
Y2Vob2xkZXIgdG9nZ2xlIGZvciBhbiBlbXB0eSBTcGljZSBDRCBpcyBhZGRlZC4KCldoZW4gdGhl
IG1lZGlhIGlzIHVubG9hZGVkLCB0aGUgc2hhcmVkIENEIGRldmljZSBpcyByZW1vdmVkLiBPdGhl
cndpc2UsCmFsbCBzdGFuZGFyZCBzY2VuYXJpb3MgZm9yIFNwaWNlIFVTQiBkZXZpY2UgcmVtb3Zh
bCBhcmUgc3VwcG9ydGVkLgoKTmVjZXNzYXJ5IGZ1bmN0aW9uYWxpdHkgYW5kIGFwaSBmb3Igc2hh
cmVkIENEIG1haW50YWluYW5jZSBoYXZlIGJlZW4gYWRkZWQKdG8gdXNiLWRldmljZS1tYW5hZ2Vy
LgoKQWxleGFuZGVyIE5lemhpbnNreSAoOSk6CiAgbW92ZSBzcGljZV91c2JfYmFja2VuZF9kZXZp
Y2Vfe2VqZWN0fHJlcG9ydF9jaGFuZ2V9IHRvIHVzYl9iYWNrZW5kLmgKICBhZGQgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyIHNoYXJlZCBDRCByZWxhdGVkIGFwaSBmdW5jdGlvbnMKICBBZGQgLS1z
cGljZS1zaGFyZS1jZCBjb21tYW5kIGxpbmUgb3B0aW9uCiAgSW1wbGVtZW50IHNwaWNlX3VzYl9k
ZXZpY2Vfd2lkZ2V0X2FkZF9lcnJfbXNnKCkgaW4gdXNiLWRldmljZS13aWRnZXQKICBBZGQgZW1w
dHkgQ0QgZW50cnkgdG8gdXNiLWRldmljZS13aWRnZXQsIGNyZWF0ZSBzaGFyZWQgQ0Qgd2hlbiB0
b2dnbGVkCiAgSW1wbGVtZW50IHNoYXJlZCBDRCBkZXZpY2UgYXV0by1yZW1vdmFsIG9uIGRpc2Nv
bm5lY3QsIGluCiAgICB1c2ItZGV2aWNlLXdpZGdldAogIHJlbW92ZSBzaGFyZWQgQ0QgZGV2aWNl
IG9uIGNvbm5lY3QtZmFpbCBkdXJpbmcgVVNCIHJlZGlyZWN0IGF0dGVtcHQKICBhdXRvLWNvbm5l
Y3Qgc2hhcmVkIENEIGRldmljZXMgYWRkZWQgdXNpbmcgY29tbWFuZCBsaW5lCiAgcmVtb3ZlIHVu
LWNvbm5lY3RlZCBzaGFyZWQgQ0QgZGV2aWNlcyB1cG9uIHVzYi1kZXZpY2Utd2lkZ2V0CiAgICBj
b25zdHJ1Y3Rpb24KCiBzcmMvbWFwLWZpbGUgICAgICAgICAgICAgfCAgIDMgKwogc3JjL3NwaWNl
LW9wdGlvbi5jICAgICAgIHwgIDI3ICsrKysrKysKIHNyYy91c2ItYmFja2VuZC5oICAgICAgICB8
ICAgMiArCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAxMTQgKysrKysrKysrKysrKysrKysr
KysrKysrKystLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5oIHwgIDE0ICsrKysKIHNyYy91c2It
ZGV2aWNlLXdpZGdldC5jICB8IDE1OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0KIHNyYy91c2ItZW11bGF0aW9uLmggICAgICB8ICAgMyArLQogNyBmaWxlcyBjaGFuZ2Vk
LCAyOTcgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
