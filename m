Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F1B712D1
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E8C6E0F8;
	Tue, 23 Jul 2019 07:27:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BAEC6E0F0
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:39 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id f17so37478878wme.2
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5/zbb6o4YwxaOMCuawGRckuv5E3TLHGfrkUEjgl/jv4=;
 b=XQjePO/r+kBog0PQPElFXLrw+QUKOZAoQHpBe9gMAp2YXG77WswMed7N1gbptgkikE
 vw1HkP+t/A98yjI3+0ku1y+lciDxL/o5faT/X/zo1N7dWVIPt7PCQqoLzoM2YjUOpzvF
 M1CyJa/RuzKwVQv0uw1PAO9LzMtH/3fv5D8a/dsOS2OwM4fELtOnd5oIQ/b42ZL0grB4
 bJdyvvTxyVg98u24bXcViilN+t5fu9YqnkVrRetwNeup3OY1zH/kM/RzxwKCi6jymgP4
 64XNNOeysFmsgeEdgbCOWvzVKdpap3xstw4GgNaoqHiSnaQpbQmgC+i2c71hnqIJHjdQ
 9FHA==
X-Gm-Message-State: APjAAAU6h6Nl7C3otN9dkXUJ0aHgSRKQjlcecfI40JhhGypMbZLx843L
 qnHQMTshOS//0wuWD+i7aHDypeqX
X-Google-Smtp-Source: APXvYqzGilH3AxvN7p0a3/z//J7PBXnBlICeaxtHY2jApvlwcy4dfryeL6iB1kuDAr2v/vx7PLXa1w==
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr69012759wmh.55.1563866857438; 
 Tue, 23 Jul 2019 00:27:37 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:36 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:26:59 +0300
Message-Id: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=5/zbb6o4YwxaOMCuawGRckuv5E3TLHGfrkUEjgl/jv4=;
 b=CEEsRSfTMBaD42oXsR6N5IIXMfvn+/iwL9BFq60A06Brz+TOOAqy/X9OMv8ugFQN5h
 AQWydFF3XoIxdfMH4YNk4jmrKrrogGMo0g+ldTIk8uIMkJ62TdK61HL605/ZTrgz6R28
 8968j2eZ+adlI2mtxxvLGnu7Wn4n4GuAxfdVI7Mi2bww3GNK5gTG985mUTv4QXd+Ok0z
 TeNmKwDzYutajxUYk7tyyS8nBhOQAwrCeVPyLzOmDvAzU+eGnfo/gmht1xSvA5bSfRqh
 Dto3s8CXqT7z/LbOdbzgvZRvD9/dH+8S6E7TsFDi8G3KqGWfLf97N7GnI+CWntjau1ga
 i1Ew==
Subject: [Spice-devel] [spice-gtk v2 0/9] usb-redir: unification of Linux
 and Windows code
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
YXRpb24gb2YgcHJvY2VkdXJlcwpyZWxhdGVkIHRvIFVTQiByZWRpcmVjdGlvbi4KCll1cmkgQmVu
ZGl0b3ZpY2ggKDkpOgogIGJ1aWxkOiByZXF1aXJlIG1pbmltYWwgbGlidXNiIHZlcnNpb24gMS4w
LjIxCiAgdXNiLXJlZGlyOiBtb3ZlIDMgc3RhdGljIHByb2NlZHVyZXMgdXAgZm9yIGZ1cnRoZXIg
cmV1c2UKICB1c2ItcmVkaXI6IHNwbGl0IGZpbGxfdXNiX2luZm8gcHJvY2VkdXJlIGZvciBmdXJ0
aGVyIHJldXNlCiAgdXNiLXJlZGlyOiBjaGFuZ2UgcGFyYW1ldGVyIG5hbWUgJ2JkZXYnIHRvICdk
ZXYnCiAgdXNiLXJlZGlyOiBjb3NtZXRpYyBjaGFuZ2VzIGluIGhvdHBsdWdfY2FsbGJhY2sKICB1
c2ItcmVkaXI6IHVuaWZ5IGRldmljZSBob3RwbHVnL3VucGx1ZyBmb3IgV2luZG93cyBhbmQgTGlu
dXgKICB1c2ItcmVkaXI6IHBhc3MgR0Vycm9yIHRvIGhvdHBsdWcgcmVnaXN0cmF0aW9uIHByb2Nl
ZHVyZQogIHVzYi1yZWRpcjogbW92ZSBVU0IgZXZlbnRzIGhhbmRsaW5nIHRvIFVTQiBiYWNrZW5k
CiAgdXNiLXJlZGlyOiB1c2UgZ190aHJlYWRfdHJ5X25ldyBpbnN0ZWFkIG9mIGdfdGhyZWFkX25l
dwoKIG1lc29uLmJ1aWxkICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBzcmMvY2hhbm5lbC11
c2JyZWRpci5jICAgICAgICB8ICAyOCAtLS0KIHNyYy9tZXNvbi5idWlsZCAgICAgICAgICAgICAg
IHwgICA0ICstCiBzcmMvdXNiLWJhY2tlbmQuYyAgICAgICAgICAgICB8IDQxOSArKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLQogc3JjL3VzYi1iYWNrZW5kLmggICAgICAgICAgICAgfCAg
MTMgKy0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oIHwgICA2IC0KIHNyYy91c2ItZGV2
aWNlLW1hbmFnZXIuYyAgICAgIHwgMTM5ICstLS0tLS0tLS0tCiBzcmMvd2luLXVzYi1kZXYuYyAg
ICAgICAgICAgICB8IDQzNiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBzcmMv
d2luLXVzYi1kZXYuaCAgICAgICAgICAgICB8ICA4NCAtLS0tLS0tCiA5IGZpbGVzIGNoYW5nZWQs
IDMwMSBpbnNlcnRpb25zKCspLCA4MzIgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQg
c3JjL3dpbi11c2ItZGV2LmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBzcmMvd2luLXVzYi1kZXYuaAoK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
