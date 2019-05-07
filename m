Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E643160CE
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 11:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4830889EFF;
	Tue,  7 May 2019 09:25:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6B889EFF
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:25:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 77CC730842A0
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:25:14 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (dhcp-4-106.tlv.redhat.com
 [10.35.4.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D736F5B0A0
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:25:13 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  7 May 2019 12:25:11 +0300
Message-Id: <20190507092512.2696-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 07 May 2019 09:25:14 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice] Remove -Wchkp warning,
 deprecated in GCC 9
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

U2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KLS0tCiBt
NC9tYW55d2FybmluZ3MubTQgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvbTQvbWFueXdhcm5pbmdzLm00IGIvbTQvbWFueXdhcm5pbmdzLm00CmluZGV4
IDRmNzAxZjRlLi4zODY0MTAwMSAxMDA2NDQKLS0tIGEvbTQvbWFueXdhcm5pbmdzLm00CisrKyBi
L200L21hbnl3YXJuaW5ncy5tNApAQCAtMTE2LDcgKzExNiw2IEBAIEFDX0RFRlVOKFtnbF9NQU5Z
V0FSTl9BTExfR0NDXSwKICAgICAtV2J1aWx0aW4tbWFjcm8tcmVkZWZpbmVkIFwKICAgICAtV2Nh
c3QtYWxpZ24gXAogICAgIC1XY2hhci1zdWJzY3JpcHRzIFwKLSAgICAtV2Noa3AgXAogICAgIC1X
Y2xvYmJlcmVkIFwKICAgICAtV2NvbW1lbnQgXAogICAgIC1XY29tbWVudHMgXAotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
