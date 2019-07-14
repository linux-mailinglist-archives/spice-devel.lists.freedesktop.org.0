Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B595267F2D
	for <lists+spice-devel@lfdr.de>; Sun, 14 Jul 2019 16:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D5D897C8;
	Sun, 14 Jul 2019 14:07:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1CE89755
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 14:07:51 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id y4so14412446wrm.2
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 07:07:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WlCni+NCTj3AHYyfBk/4r3SyMW3Ex4y26HUSpeymQFw=;
 b=JUom9OMDWd6B4BY8BqwwSGeZfODXd5RBd/5q/7cQONio3f5Rq1gImtyssBgncKtax5
 ATlUarY2TFu8AJcGKtNVTvut6+5kQnH7JA2nF5BTVDZ90VGwnyD2Ia0fLS8PDluqZ9gh
 9GQr64/e0TFqrj2d3tDna6gPCnbj/umkvF3CWC+eYJZ2/t2XzyjFhZsqvv8os/Phk9AY
 qM6T1lHeHapw4myorL2+YKpnzAT71CL/4KW4Ax1y5+pXMDS4jrx1SCBGyx8NvsbbQTeI
 x+QKx+P/FodHhQmfG+Rp2hsYReKz1A0v6jVl+czRXNOEE+Zm3vZ9nnVtXLP2/YFMqtsU
 zUpw==
X-Gm-Message-State: APjAAAXdZ+xj7Vl9cRfFWmyuPYCwB8VF4f1rgyYi0xtF/MYmI0CNsgf+
 e0g88Oz+SvSaeYAMhKIEw8pCoZJA
X-Google-Smtp-Source: APXvYqzrMwLU25mLyaXsq7UOeJ38rXtt5HpgBJ/opElVbHSAOtbbSQj3tJKjYvQFqt5ULhPTddREWg==
X-Received: by 2002:adf:f8cf:: with SMTP id f15mr22995422wrq.333.1563113269806; 
 Sun, 14 Jul 2019 07:07:49 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id z19sm10223328wmi.7.2019.07.14.07.07.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 07:07:49 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 14 Jul 2019 17:07:36 +0300
Message-Id: <20190714140741.3274-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=WlCni+NCTj3AHYyfBk/4r3SyMW3Ex4y26HUSpeymQFw=;
 b=PgjTum2r6fIxOxXMSj7fU5G30Y1isT/n+C9ox+DneTID4VBSj5IIVUWNtNFL8IKL6c
 C3+/FbbUilKAu0sPYJhw7c1Vs1wolKwQOX5vZkHIhEesz8+sFl/4Cc1tOE7sHgNYz/eh
 zbmonX8Xfy4e8DLxJN7nByC5itAi7vyDdbO7ok0BUvpQhIuB0A1dxmiAtoZLmhrbqZmX
 gLPCoQOceYISKQVAcjev2iovtSTkyZS81RkNvQRPK8GBCHSx4bYgiQHWm1XBHedrsFFo
 cW0d3EXEtoY2j/0Ke1HeLTRHVaokuSTUuh2/8dkDDG7bMJU2iEjkV5K2VgvExIOG+ED/
 Ae1A==
Subject: [Spice-devel] [spice-gtk 0/5] usb-redir: unification of Linux and
 Windows code
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

VGhpcyBzZXJpZXMgaXMgZGVkaWNhdGVkIHRvIHVuaWZpY2F0aW9uIG9mIExpbnV4IFdpbmRvd3Mg
Zmxvd3MKaW4gdXNiLWRldmljZS1tYW5hZ2VyLiBJdCBtb3ZlcyBkaWZmZXJlbmNlcyByZWxhdGVk
IHRvIGxpYnVzYgp0byBVU0IgYmFja2VuZCBtb2R1bGUgYW5kIHNpbXBsaWZpZXMgaW1wbGVtZW50
YXRpb24gb2YgcHJvY2VkdXJlCnJlbGF0ZWQgdG8gVVNCIHJlZGlyZWN0aW9uLgoKWXVyaSBCZW5k
aXRvdmljaCAoNSk6CiAgYnVpbGQ6IHJlcXVpcmUgbWluaW1hbCBsaWJ1c2IgdmVyc2lvbiAxLjAu
MjEKICB1c2ItcmVkaXI6IHVuaWZ5IGRldmljZSBob3RwbHVnL3VucGx1ZyBmb3IgV2luZG93cyBh
bmQgTGludXgKICB1c2ItcmVkaXI6IHBhc3MgR0Vycm9yIHRvIGhvdHBsdWcgcmVnaXN0cmF0aW9u
IHByb2NlZHVyZQogIHVzYi1yZWRpcjogZGVsZXRlIHVzYi1iYWNrZW5kIGNvbnRleHQgb24gaW5p
dGlhbGl6YXRpb24gZXJyb3IKICB1c2ItcmVkaXI6IG1vdmUgVVNCIGV2ZW50cyBoYW5kbGluZyB0
byBVU0IgYmFja2VuZAoKIG1lc29uLmJ1aWxkICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBz
cmMvY2hhbm5lbC11c2JyZWRpci5jICAgICAgICB8ICAyOCAtLS0KIHNyYy9tZXNvbi5idWlsZCAg
ICAgICAgICAgICAgIHwgICA0ICstCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgICAgICB8IDQx
MyArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQogc3JjL3VzYi1iYWNrZW5kLmggICAg
ICAgICAgICAgfCAgMTMgKy0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oIHwgICA2IC0K
IHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyAgICAgIHwgMTQwICstLS0tLS0tLS0tCiBzcmMvd2lu
LXVzYi1kZXYuYyAgICAgICAgICAgICB8IDQzNiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCiBzcmMvd2luLXVzYi1kZXYuaCAgICAgICAgICAgICB8ICA4NCAtLS0tLS0tCiA5IGZp
bGVzIGNoYW5nZWQsIDI5NiBpbnNlcnRpb25zKCspLCA4MzIgZGVsZXRpb25zKC0pCiBkZWxldGUg
bW9kZSAxMDA2NDQgc3JjL3dpbi11c2ItZGV2LmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcmMvd2lu
LXVzYi1kZXYuaAoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
