Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7DD6FEAB
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 13:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D94689C46;
	Mon, 22 Jul 2019 11:26:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A6389C46
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:26:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 88BA8309B145
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:26:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5EC2F17D28;
 Mon, 22 Jul 2019 11:26:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 12:25:59 +0100
Message-Id: <20190722112600.1338-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 22 Jul 2019 11:26:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2] spice-widget-egl: Use sizeof
 instead of hand coded constant
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c3JjL3NwaWNlLXdpZGdldC1lZ2wuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS13aWRnZXQtZWdsLmMg
Yi9zcmMvc3BpY2Utd2lkZ2V0LWVnbC5jCmluZGV4IDdiYWU0ZTU4Li43ZGI2NjA4MiAxMDA2NDQK
LS0tIGEvc3JjL3NwaWNlLXdpZGdldC1lZ2wuYworKysgYi9zcmMvc3BpY2Utd2lkZ2V0LWVnbC5j
CkBAIC0xMjksNyArMTI5LDcgQEAgc3RhdGljIGdib29sZWFuIHNwaWNlX2VnbF9pbml0X3NoYWRl
cnMoU3BpY2VEaXNwbGF5ICpkaXNwbGF5LCBHRXJyb3IgKiplcnIpCiAgICAgZ2xMaW5rUHJvZ3Jh
bShkLT5lZ2wucHJvZyk7CiAgICAgZ2xHZXRQcm9ncmFtaXYoZC0+ZWdsLnByb2csIEdMX0xJTktf
U1RBVFVTLCAmc3RhdHVzKTsKICAgICBpZiAoIXN0YXR1cykgewotICAgICAgICBnbEdldFByb2dy
YW1JbmZvTG9nKGQtPmVnbC5wcm9nLCAxMDAwLCAmbGVuLCBsb2cpOworICAgICAgICBnbEdldFBy
b2dyYW1JbmZvTG9nKGQtPmVnbC5wcm9nLCBzaXplb2YobG9nKSwgJmxlbiwgbG9nKTsKICAgICAg
ICAgZ19zZXRfZXJyb3IoZXJyLCBTUElDRV9DTElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJP
Ul9GQUlMRUQsCiAgICAgICAgICAgICAgICAgICAgICJlcnJvciBsaW5raW5nIHNoYWRlcnM6ICVz
IiwgbG9nKTsKICAgICAgICAgZ290byBlbmQ7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
