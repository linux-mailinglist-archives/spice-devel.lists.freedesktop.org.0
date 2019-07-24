Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B3C72CA6
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A006E506;
	Wed, 24 Jul 2019 10:54:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB6F6E501
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:53:59 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id r1so46445176wrl.7
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 03:53:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JFJadIeC1w6mveFaUxtQWmxroZ4JljEw/jIEPIfSXT8=;
 b=lyyqxygstrpt1IJwtASugjPFPctixo9MaaCXaIh0g5C8ZGKQ+foqRdklufenuu6nb4
 3Cn4xRbVLTNfnZd12U10cO8yMc7Z+pm5QQa0nxtwAGM1MQzirbEF2e6Mxv6Jbs6maBHK
 7VL/+lvJky8zOvZZ/T1AH70NGqa6yr7XWPhZgJM3qRYK8c8VeJuBlFlrMIeHrGT+oXcO
 H/xFynFPrvGIEqBcuSgoCQVaNdvlN3H1bIhBK2/UO2VsDNWuaRr8pkMHjYZXOGzByH0c
 yzjG0UX33yPz+bQdX45vH64SH/veeBvAh/d6H9CkyjgeiXbP6P1O87cLmIvnmjsSUNkG
 Ti0A==
X-Gm-Message-State: APjAAAXY413ynKi2XbASaFT8eG52QHWQqYeyrt6JiO1gTFGLv8OjYjJv
 j6/tA8u7/H8aYCzDywX7xxZHjM9j
X-Google-Smtp-Source: APXvYqyx5TDVHsdspbor+4AxV2elLiG83no69yN/j4WFqoq9+83WJFbRM/AOShbl7NXoNQGBYyl9+A==
X-Received: by 2002:a5d:4206:: with SMTP id n6mr20528421wrq.110.1563965638260; 
 Wed, 24 Jul 2019 03:53:58 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id r12sm53542137wrt.95.2019.07.24.03.53.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 03:53:57 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 13:53:42 +0300
Message-Id: <20190724105351.13753-1-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=JFJadIeC1w6mveFaUxtQWmxroZ4JljEw/jIEPIfSXT8=;
 b=Z0GGhF2wWZ4dm3oANQ/j+ReHf5hPLqD0VM4OFLidjQtNN7F32y/Kl1VNFvMCRz9gmU
 gHEeb/3yPNPWb063kxs6DeT6gE7HLalQPlJI48L9EC5+iteZlaskkIQuvG9L4SjRzlcr
 ok3mMIwfJsdgaO8aKDjlXumKYZFiMTjD5CIIW56To/v3AIjPoU0miMoBciC7hQkegZEu
 UMQQC0MKbMO5Dlah9oUVVbtiqh0KEUqPhyPBq3Wz8K7dM6XIRTs8LTW4WCpcjMmpTtBO
 bPLbiwXVONbfP9XOMVPzeoAz5Ow7+6mIQY6t0/WWothYpGuud0JxlHBC9srW/bHWGFWh
 n03g==
Subject: [Spice-devel] [spice-gtk 0/9] added feature of sharing CD image
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
c2hhcmUtY2QgPElTTyBmaWxlIG5hbWU+CgpZdXJpIEJlbmRpdG92aWNoICg5KToKICB1c2ItcmVk
aXI6IGRlZmluZSBpbnRlcmZhY2VzIHRvIHN1cHBvcnQgZW11bGF0ZWQgZGV2aWNlcwogIHVzYi1y
ZWRpcjogZGV2aWNlIGVycm9yIHNpZ25hbCB3aXRob3V0IGRldmljZSBvYmplY3QKICB1c2ItcmVk
aXI6IFByZXBhcmUgZm9yIGNyZWF0aW9uIG9mIGVtdWxhdGVkIENEIGRyaXZlCiAgdXNiLXJlZGly
OiBkZXZpY2UgZGVzY3JpcHRpb24gZm9yIGVtdWxhdGVkIGRldmljZXMKICB1c2ItcmVkaXI6IGRv
IG5vdCB1c2Ugc3BpY2VfdXNiX2FjbF9oZWxwZXIgZm9yIGVtdWxhdGVkIGRldmljZXMKICB1c2It
cmVkaXI6IGV4dGVuZCBVU0IgYmFja2VuZCB0byBzdXBwb3J0IGVtdWxhdGVkIGRldmljZXMKICB1
c2ItcmVkaXI6IGFkZCBmaWxlcyBmb3IgU0NTSSBhbmQgVVNCIE1TQyBpbXBsZW1lbnRhdGlvbgog
IHVzYi1yZWRpcjogYWRkIGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIENEIGRldmljZQogIHVz
Yi1yZWRpcjogZW5hYmxlIHJlZGlyZWN0aW9uIG9mIGVtdWxhdGVkIENEIGRyaXZlCgogc3JjL2Nk
LXNjc2ktZGV2LXBhcmFtcy5oIHwgICA1MiArCiBzcmMvY2Qtc2NzaS5jICAgICAgICAgICAgfCAy
NzcwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBzcmMvY2Qtc2NzaS5o
ICAgICAgICAgICAgfCAgMTIyICsrCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmMgICAgfCAgNTU1ICsr
KysrKysrCiBzcmMvY2QtdXNiLWJ1bGstbXNkLmggICAgfCAgMTM0ICsrCiBzcmMvY2hhbm5lbC11
c2JyZWRpci5jICAgfCAgIDI5ICstCiBzcmMvbWVzb24uYnVpbGQgICAgICAgICAgfCAgICA3ICsK
IHNyYy9zY3NpLWNvbnN0YW50cy5oICAgICB8ICAzMjQgKysrKysKIHNyYy9zcGljZS1vcHRpb24u
YyAgICAgICB8ICAgMTUgKwogc3JjL3VzYi1iYWNrZW5kLmMgICAgICAgIHwgIDcxNSArKysrKysr
KystCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAgIDM2ICstCiBzcmMvdXNiLWRldmljZS1j
ZC5jICAgICAgfCAgNzk0ICsrKysrKysrKysrCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAg
IDU3ICstCiBzcmMvdXNiLWVtdWxhdGlvbi5oICAgICAgfCAgIDg4ICsrCiAxNCBmaWxlcyBjaGFu
Z2VkLCA1NjU4IGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAw
NjQ0IHNyYy9jZC1zY3NpLWRldi1wYXJhbXMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IHNyYy9jZC1z
Y3NpLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvY2Qtc2NzaS5oCiBjcmVhdGUgbW9kZSAxMDA2
NDQgc3JjL2NkLXVzYi1idWxrLW1zZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL2NkLXVzYi1i
dWxrLW1zZC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3JjL3Njc2ktY29uc3RhbnRzLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWRldmljZS1jZC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3Jj
L3VzYi1lbXVsYXRpb24uaAoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
