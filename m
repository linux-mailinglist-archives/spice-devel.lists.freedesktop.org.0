Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA6C80C19
	for <lists+spice-devel@lfdr.de>; Sun,  4 Aug 2019 21:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8396F89D8E;
	Sun,  4 Aug 2019 19:16:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E1A189D8E
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Aug 2019 19:16:33 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id n4so82312631wrs.3
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Aug 2019 12:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3BBnhqm4tZI0l1rnSw+880CsFicGHDM0z5tz42ynfY8=;
 b=bVdui2pp472iBr0GxgJpWBvzHtXfIcRWZYZCjQ3GQP1WdK4h4a1aqS5TDXbpQ/RKMl
 RrrM3y09F17K5isqL72VZkaTUq0XwHDTsM4Jy7D8pAzOuH4xNVdhhz9ilBDhctKCXyKp
 k0ZocinnZ0LcVYATEGMV+oVzTaawXCHtB6lMcCKfyRbumDSdZxNR5IoHJqTsViXhLwzu
 AoRCqpwJb8R2GY5do07Z/IYjyRgBI2cPXyj98AVdRcZWpCjc3Ly6lpAx1DPMxYE7jbqs
 q0lKjwl3LX+73WhUpnevNogmvXk9INgeG61Y+CdszfpTG8Lj3WgdMN0A9eBPv7KBWvWg
 kMsw==
X-Gm-Message-State: APjAAAUfMoTRgeDPLCuv1Mj6mPp/955mV6YjAdAFupPoXvM/RD3ARN+p
 +ceKjg6HH8BanN4GUlGcoCodx8Bl
X-Google-Smtp-Source: APXvYqz4UWb75wVzKwfYptbFmEMe5CUGT2I0zYrhyMMwiXSwiNV/eqobs651PwdHDg4CGufvFOlqVA==
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr56353971wrx.193.1564946191912; 
 Sun, 04 Aug 2019 12:16:31 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id f204sm136527687wme.18.2019.08.04.12.16.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 12:16:30 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  4 Aug 2019 22:16:16 +0300
Message-Id: <20190804191624.29235-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=3BBnhqm4tZI0l1rnSw+880CsFicGHDM0z5tz42ynfY8=;
 b=NVvkFAafA+fO7KoIjZpj/k2l2C/XyhudLRRXd/KuJPInXgI+bLRqMkWNEf4OHuvuRg
 UPbaoMhEgBGxyhJN3iMU4hiQJQeO8CHya8R2ZvhXftHiAyQhNUkRwc5sWlrSjHlYwJqZ
 bAV8Qg7XmsjqwE5dADbSBWWNcGX0MGt0PuILQ65MsgSA9dP+/L29fuE16zoLCRKfvEJS
 Mfp+MyRyA2spgdGOgc8RqNqMQo/2YKsXyHjLGR8OcU8etWkosBQhLCl7TYZhywJDNx/O
 xZ0a13+OgbpCFJL3bctgXy+3KEyX4iiK8bcOw6+qwEL/BEZ4huFj/gOZfNYRM94QdfcJ
 hUXA==
Subject: [Spice-devel] [spice-gtk v2 0/8] added feature of sharing CD image
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

VGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBhZGRzIGZlYXR1cmUgb2Ygc2hhcmluZyBDRCBpbWFnZSB2
aWEKcmVkaXJlY3Rpb24gb2YgZW11bGF0ZWQgQ0QgZGV2aWNlLiBDdXJyZW50bHkgdGhlIHRyaWdn
ZXIgdG8KY3JlYXRlIHRoZSBkZXZpY2UgaXMgY29tbWFuZC1saW5lIG9wdGlvbjoKJy0tc3BpY2Ut
c2hhcmUtY2QgPElTTyBmaWxlIG5hbWU+CgpDaGFuZ2VzIGZyb20gdjE6IGZpeGVzIHJlc3VsdGVk
IGJ5IHJldmlld3MgKG1haW5seSBiYXNlZCBvbiBmaXh1cHMKb2YgRnJlZGlhbm8gWmlnbGlvKQoK
WXVyaSBCZW5kaXRvdmljaCAoOCk6CiAgdXNiLXJlZGlyOiBkZWZpbmUgaW50ZXJmYWNlcyB0byBz
dXBwb3J0IGVtdWxhdGVkIGRldmljZXMKICB1c2ItcmVkaXI6IG1vdmUgaW1wbGVtZW50YXRpb24g
b2YgZGV2aWNlIGRlc2NyaXB0aW9uIHRvIFVTQiBiYWNrZW5kCiAgdXNiLXJlZGlyOiBkbyBub3Qg
dXNlIHNwaWNlX3VzYl9hY2xfaGVscGVyIGZvciBlbXVsYXRlZCBkZXZpY2VzCiAgdXNiLXJlZGly
OiBleHRlbmQgVVNCIGJhY2tlbmQgdG8gc3VwcG9ydCBlbXVsYXRlZCBkZXZpY2VzCiAgdXNiLXJl
ZGlyOiBhZGQgZmlsZXMgZm9yIFNDU0kgYW5kIFVTQiBNU0MgaW1wbGVtZW50YXRpb24KICB1c2It
cmVkaXI6IGFkZCBpbXBsZW1lbnRhdGlvbiBvZiBlbXVsYXRlZCBDRCBkZXZpY2UKICB1c2ItcmVk
aXI6IGVuYWJsZSByZWRpcmVjdGlvbiBvZiBlbXVsYXRlZCBDRCBkcml2ZQogIHVzYi1yZWRpcjog
Y29tbWFuZC1saW5lIG9wdGlvbiB0byBjcmVhdGUgZW11bGF0ZWQgQ0QgZHJpdmUKCiBzcmMvY2Qt
c2NzaS1kZXYtcGFyYW1zLmggfCAgIDQ5ICsKIHNyYy9jZC1zY3NpLmMgICAgICAgICAgICB8IDI3
NTggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIHNyYy9jZC1zY3NpLmgg
ICAgICAgICAgICB8ICAxMjEgKysKIHNyYy9jZC11c2ItYnVsay1tc2QuYyAgICB8ICA1NDYgKysr
KysrKysKIHNyYy9jZC11c2ItYnVsay1tc2QuaCAgICB8ICAxMzQgKysKIHNyYy9jaGFubmVsLXVz
YnJlZGlyLmMgICB8ICAgMzEgKy0KIHNyYy9tZXNvbi5idWlsZCAgICAgICAgICB8ICAgIDggKwog
c3JjL3Njc2ktY29uc3RhbnRzLmggICAgIHwgIDMyNCArKysrKwogc3JjL3NwaWNlLW9wdGlvbi5j
ICAgICAgIHwgICAxNyArCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgfCAgNzI4ICsrKysrKysr
Ky0KIHNyYy91c2ItYmFja2VuZC5oICAgICAgICB8ICAgIDQgKwogc3JjL3VzYi1kZXZpY2UtY2Qu
YyAgICAgIHwgIDc5MCArKysrKysrKysrKwogc3JjL3VzYi1kZXZpY2UtY2QuaCAgICAgIHwgICAz
NyArCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAgIDYzICstCiBzcmMvdXNiLWVtdWxhdGlv
bi5oICAgICAgfCAgIDkxICsrCiAxNSBmaWxlcyBjaGFuZ2VkLCA1NjM4IGluc2VydGlvbnMoKyks
IDYzIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC1zY3NpLWRldi1wYXJh
bXMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC1zY3NpLmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBzcmMvY2Qtc2NzaS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5j
CiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5oCiBjcmVhdGUgbW9kZSAx
MDA2NDQgc3JjL3Njc2ktY29uc3RhbnRzLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWRl
dmljZS1jZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3VzYi1kZXZpY2UtY2QuaAogY3JlYXRl
IG1vZGUgMTAwNjQ0IHNyYy91c2ItZW11bGF0aW9uLmgKCi0tIAoyLjE3LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
