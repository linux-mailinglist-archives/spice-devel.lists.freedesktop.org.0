Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 383E9107EA
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 14:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6E58936E;
	Wed,  1 May 2019 12:31:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE9458936E
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5940F3082DCE
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:39 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (dhcp-4-106.tlv.redhat.com
 [10.35.4.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BDD4E438A
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:38 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  1 May 2019 15:31:35 +0300
Message-Id: <20190501123135.1321-3-ssheribe@redhat.com>
In-Reply-To: <20190501123135.1321-1-ssheribe@redhat.com>
References: <20190501123135.1321-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Wed, 01 May 2019 12:31:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH 3/3] Remove unnecessary Xlib.h include
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

SW5jbHVkZWQgYWxzbyBpbiB4MTEtZGlzcGxheS1pbmZvLmhwcAoKU2lnbmVkLW9mZi1ieTogU25p
ciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KLS0tCiBzcmMvZ3N0LXBsdWdpbi5jcHAg
ICAgIHwgMSAtCiBzcmMvbWpwZWctZmFsbGJhY2suY3BwIHwgMSAtCiAyIGZpbGVzIGNoYW5nZWQs
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVnaW4uY3BwIGIvc3JjL2dz
dC1wbHVnaW4uY3BwCmluZGV4IDgwYjU2YWUuLjk4NThiZWIgMTAwNjQ0Ci0tLSBhL3NyYy9nc3Qt
cGx1Z2luLmNwcAorKysgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKQEAgLTE3LDcgKzE3LDYgQEAKIAog
I2RlZmluZSBYTElCX0NBUFRVUkUgMQogI2lmIFhMSUJfQ0FQVFVSRQotI2luY2x1ZGUgPFgxMS9Y
bGliLmg+CiAjaW5jbHVkZSA8Z3N0L2FwcC9nc3RhcHBzcmMuaD4KICNlbmRpZgogCmRpZmYgLS1n
aXQgYS9zcmMvbWpwZWctZmFsbGJhY2suY3BwIGIvc3JjL21qcGVnLWZhbGxiYWNrLmNwcAppbmRl
eCBlZjdhMTNkLi4wMzI0N2ExIDEwMDY0NAotLS0gYS9zcmMvbWpwZWctZmFsbGJhY2suY3BwCisr
KyBiL3NyYy9tanBlZy1mYWxsYmFjay5jcHAKQEAgLTE2LDcgKzE2LDYgQEAKICNpbmNsdWRlIDxz
c3RyZWFtPgogI2luY2x1ZGUgPG1lbW9yeT4KICNpbmNsdWRlIDxzeXNsb2cuaD4KLSNpbmNsdWRl
IDxYMTEvWGxpYi5oPgogCiB1c2luZyBuYW1lc3BhY2Ugc3BpY2U6OnN0cmVhbWluZ19hZ2VudDsK
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
