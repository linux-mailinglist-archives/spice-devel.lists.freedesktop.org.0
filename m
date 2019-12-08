Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E57116222
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CB76E219;
	Sun,  8 Dec 2019 13:58:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDE16E1A8
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:57:59 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y17so13059932wrh.5
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:57:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A8fH/fwm6uq1Ggce76GYyZnqkqXGhOrUzy5D2AJ17ao=;
 b=BWZNoDoT2YNjKBYPJv/GAdKOmqS2V46t7E4O4Ce7ch2rSXmNm+dlvCD78u8VyS35pe
 c93pyaPlukVBcXIw5ifwnTuRp3Qjuki/QswsXO5dX/cbv4P8VfXKlCD3Duj/jgxvwQZE
 075pe6OJxmJ81Sssvva3+smv+BsWTCTw93zpsca9GUDVGis7kvCXY37xWughUqQcJGuG
 Y0kNaxvFiR/spSJY6VeoriTd5tDQOQlHh98EPdvXWBY6+bXE2dXzBKRpZldG2V2TkwmC
 BbLJYKOTpEv44leEcYBBc0ME6B6oMirfV1JATlLKgJWw7pNyYa0tJWpwtYrzLuISR2al
 vT3g==
X-Gm-Message-State: APjAAAWEpRyTemXVFjCQBE8O0HeBrdefNE7LV6LS4jIgrn3gQDLZrrZW
 W27EsrLVAuCWRsbhIznjJp9wlH3bvoKEpg==
X-Google-Smtp-Source: APXvYqys1sFN6kvrGZbAtMEjbhsH5Xwu2F/vYRtOHt2vTHZAYlxTTPpBE0CBhl5XE9guR6GFqxb4Kw==
X-Received: by 2002:a5d:49cc:: with SMTP id t12mr13075728wrs.363.1575813477897; 
 Sun, 08 Dec 2019 05:57:57 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:57 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:16 +0200
Message-Id: <20191208140319.22172-7-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A8fH/fwm6uq1Ggce76GYyZnqkqXGhOrUzy5D2AJ17ao=;
 b=Qd+YqC3r4at5W+R9tP9XWvQMupdn23mgHK4omPRqAITw1uuMnT3gTrwGYT10s10Kh5
 2bLXwPA5BGXYAsFpr3ovGMfCMjVCqxE9NVGVjnQYp0cKeYhS/tbLPeRyKO1156zAiixq
 /kMRVIk0OxQnU3RPa8ZSL5A9qnYBf/1fIoC+HY8bPOpE2L04SrYFNci1GLj/Ldp9K6An
 L+f/lRFHpiaVk/0pgxd6YkOcATUiYiZD5hnrcEgzcbNv04UFG9sZv8i/qJrLtkM2rbgb
 uUdjsFyCTdEaOE7uf9ItExtNHIwrRzvVao1gLcJcARgskQq6jxdmgk0xAotpciavk8r/
 WuBg==
Subject: [Spice-devel] [PATCH shared-cd v1 6/9] Auto-remove shared CD
 devices on disconnect in usb-device-widget
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClNpZ25lZC1v
ZmYtYnk6IEFsZXhhbmRlciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L3VzYi1kZXZpY2Utd2lkZ2V0LmMgfCAxOSArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy91
c2ItZGV2aWNlLXdpZGdldC5jIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKaW5kZXggMjZjMGRi
MC4uOTIyMTA4ZCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKKysrIGIvc3Jj
L3VzYi1kZXZpY2Utd2lkZ2V0LmMKQEAgLTUxOCwxMCArNTE4LDI3IEBAIHN0YXRpYyB2b2lkIF9k
aXNjb25uZWN0X2NiKEdPYmplY3QgKmdvYmplY3QsIEdBc3luY1Jlc3VsdCAqcmVzLCBncG9pbnRl
ciB1c2VyX2RhCiB7CiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyID0gU1BJQ0Vf
VVNCX0RFVklDRV9NQU5BR0VSKGdvYmplY3QpOwogICAgIGNvbm5lY3RfY2JfZGF0YSAqZGF0YSA9
IHVzZXJfZGF0YTsKKyAgICBTcGljZVVzYkRldmljZSAqZGV2aWNlID0gZ19vYmplY3RfZ2V0X2Rh
dGEoR19PQkpFQ1QoZGF0YS0+Y2hlY2spLCAidXNiLWRldmljZSIpOwogICAgIEdFcnJvciAqZXJy
ID0gTlVMTDsKKyAgICBnYm9vbGVhbiByYzsKIAogICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdl
cl9kaXNjb25uZWN0X2RldmljZV9maW5pc2gobWFuYWdlciwgcmVzLCAmZXJyKTsKLSAgICBpZiAo
ZXJyKSB7CisgICAgaWYgKCFlcnIpIHsKKyAgICAgICAgaWYgKHNwaWNlX3VzYl9kZXZpY2VfbWFu
YWdlcl9pc19kZXZpY2Vfc2hhcmVkX2NkKG1hbmFnZXIsIGRldmljZSkpIHsKKyAgICAgICAgICAg
IHJjID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3JlbW92ZV9zaGFyZWRfY2RfZGV2aWNlKG1h
bmFnZXIsIGRldmljZSwgJmVycik7CisgICAgICAgICAgICBpZiAoIXJjKSB7CisgICAgICAgICAg
ICAgICAgaWYgKGVycikgeworICAgICAgICAgICAgICAgICAgICBTUElDRV9ERUJVRygiRmFpbGVk
IHRvIHJlbW92ZSAlcywgJXMiLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBndGtf
YnV0dG9uX2dldF9sYWJlbChHVEtfQlVUVE9OKGRhdGEtPmNoZWNrKSksCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGVyci0+bWVzc2FnZSk7CisgICAgICAgICAgICAgICAgICAgIGdf
ZXJyb3JfZnJlZShlcnIpOworICAgICAgICAgICAgICAgIH0gZWxzZSB7CisgICAgICAgICAgICAg
ICAgICAgIFNQSUNFX0RFQlVHKCJGYWlsZWQgdG8gcmVtb3ZlICVzIiwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZ3RrX2J1dHRvbl9nZXRfbGFiZWwoR1RLX0JVVFRPTihkYXRhLT5j
aGVjaykpKTsKKyAgICAgICAgICAgICAgICB9CisgICAgICAgICAgICB9CisgICAgICAgIH0KKyAg
ICB9IGVsc2UgewogICAgICAgICBTUElDRV9ERUJVRygiRGV2aWNlIGRpc2Nvbm5lY3Rpb24gZmFp
bGVkIik7CiAgICAgICAgIGdfZXJyb3JfZnJlZShlcnIpOwogICAgIH0KLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
