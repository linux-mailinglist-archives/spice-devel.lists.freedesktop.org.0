Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484F6A499A
	for <lists+spice-devel@lfdr.de>; Sun,  1 Sep 2019 15:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA2B898C2;
	Sun,  1 Sep 2019 13:50:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C82898C2
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Sep 2019 13:50:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 21C57356EF
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Sep 2019 13:50:15 +0000 (UTC)
Received: from lub.com (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 819895D6B7
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Sep 2019 13:50:14 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Sep 2019 16:50:12 +0300
Message-Id: <20190901135012.2035-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Sun, 01 Sep 2019 13:50:15 +0000 (UTC)
Subject: [Spice-devel] [spice-common patch] test-ssl-verify: test_generic:
 initialize num_entries
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

SWYgbmFtZSBpcyBudWxsIG51bV9lbnRyaWVzIG1heSBob2xkIGdhcmJhZ2UgdmFsdWUKCmNsYW5n
IHdhcm5pbmc6IEFzc2lnbmVkIHZhbHVlIGlzIGdhcmJhZ2Ugb3IgdW5kZWZpbmVkCiAgIGdfYXNz
ZXJ0X2NtcGludChudW1fZW50cmllcywgPT0sIGVudHJ5X2NvdW50KTsKICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgpBbHNvIGNoZWNrIG5hbWUgYmVmb3Jl
IG51bV9lbnRyaWVzLgoKU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29t
PgotLS0KIHRlc3RzL3Rlc3Qtc3NsLXZlcmlmeS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvdGVzdC1zc2wt
dmVyaWZ5LmMgYi90ZXN0cy90ZXN0LXNzbC12ZXJpZnkuYwppbmRleCBmNWM1ODgxLi5mODBlYjRj
IDEwMDY0NAotLS0gYS90ZXN0cy90ZXN0LXNzbC12ZXJpZnkuYworKysgYi90ZXN0cy90ZXN0LXNz
bC12ZXJpZnkuYwpAQCAtNzksNyArNzksNyBAQCBzdGF0aWMgdm9pZCB0ZXN0X2dlbmVyaWMoY29u
c3Qgdm9pZCAqYXJnKQogewogICAgIGNvbnN0IFRlc3RHZW5lcmljUGFyYW1zICpwYXJhbXMgPSBh
cmc7CiAgICAgWDUwOV9OQU1FICpuYW1lOwotICAgIGludCBudW1fZW50cmllczsKKyAgICBpbnQg
bnVtX2VudHJpZXMgPSAtMTsKIAogICAgIHNldHVwX3Jlc3VsdHMocGFyYW1zLT5vdXRwdXQpOwog
ICAgIG5hbWUgPSBzdWJqZWN0X3RvX3g1MDlfbmFtZShwYXJhbXMtPmlucHV0LCAmbnVtX2VudHJp
ZXMpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
