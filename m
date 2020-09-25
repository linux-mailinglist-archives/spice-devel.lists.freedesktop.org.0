Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6745A2789F2
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 15:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783036EB3D;
	Fri, 25 Sep 2020 13:51:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88236EB3D
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 13:51:22 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601041881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=EcxuaihQf+q3fMDO0K/qhspHbpdXxw1wN+4jE1kNrAk=;
 b=MlkPwKwGFkU/pR+u3F+kBS9frJMeTZ5l4thDfwUe/DaND7HAUUF9y3vjJmTY9OoC5miqNa
 +xL/qh1FpDGodE732jfEgFQHcfAD0t0nncu70Qz7/HUhNDWowQN6/e+wCS97NqwUB192F3
 sJ7sf0BjYre8p8xxfvPuPDBZZAOdR38=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-nEk74T3vOaqLF9Z6QCJLLQ-1; Fri, 25 Sep 2020 09:51:16 -0400
X-MC-Unique: nEk74T3vOaqLF9Z6QCJLLQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD55F80EFA7;
 Fri, 25 Sep 2020 13:51:15 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 598B57369E;
 Fri, 25 Sep 2020 13:51:00 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Fri, 25 Sep 2020 17:50:51 +0400
Message-Id: <20200925135057.291556-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v2 0/6] Add physical display dimensions to
 spice/virtio-gpu
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+DQoK
SGksDQoNClRoaXMgc2VyaWVzIGltcHJvdmVzIHRoZSBzdXBwb3J0IGZvciBIaURQSSBkaXNwbGF5
cyB3aXRoIFNwaWNlLg0KVGhlIHJlbGF0ZWQgc3BpY2Ugc2VyaWVzIGhhdmUgYWxyZWFkeSBiZWVu
IG1lcmdlZC4NCg0KdjI6DQotIGFkZCBwYXRjaCB0byAic3BpY2U6IHJlbW92ZSB0aGUgc2luZ2xl
IG1vbml0b3IgY29uZmlnIGxvZ2ljIiAoR2VyZCkNCg0KTWFyYy1BbmRyw6kgTHVyZWF1ICg2KToN
CiAgZWRpZDogZml4IHBoeXNpY2FsIGRpc3BsYXkgc2l6ZSBjb21wdXRhdGlvbg0KICBlZGlkOiB1
c2UgcGh5c2ljYWwgZGltZW5zaW9ucyBpZiBhdmFpbGFibGUNCiAgdWk6IGFkZCBnZXR0ZXIgZm9y
IFVJSW5mbw0KICBzcGljZTogcmVtb3ZlIHRoZSBzaW5nbGUgbW9uaXRvciBjb25maWcgbG9naWMN
CiAgc3BpY2U6IGdldCBtb25pdG9ycyBwaHlzaWNhbCBkaW1lbnNpb24NCiAgdmlydGlvLWdwdTog
c2V0IHBoeXNpY2FsIGRpbWVuc2lvbnMgZm9yIEVESUQNCg0KIGh3L2Rpc3BsYXkvZWRpZC1nZW5l
cmF0ZS5jICAgICB8IDM2ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KIGh3L2Rp
c3BsYXkvdmlydGlvLWdwdS1iYXNlLmMgICB8ICAyICsrDQogaHcvZGlzcGxheS92aXJ0aW8tZ3B1
LmMgICAgICAgIHwgIDIgKysNCiBpbmNsdWRlL2h3L2Rpc3BsYXkvZWRpZC5oICAgICAgfCAgNSAr
KysrLQ0KIGluY2x1ZGUvaHcvdmlydGlvL3ZpcnRpby1ncHUuaCB8ICAxICsNCiBpbmNsdWRlL3Vp
L2NvbnNvbGUuaCAgICAgICAgICAgfCAgNCArKysrDQogcWVtdS1lZGlkLmMgICAgICAgICAgICAg
ICAgICAgIHwgMTEgKysrKysrKystLQ0KIHVpL2NvbnNvbGUuYyAgICAgICAgICAgICAgICAgICB8
ICA3ICsrKysrKysNCiB1aS9zcGljZS1kaXNwbGF5LmMgICAgICAgICAgICAgfCAzNyArKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQogOSBmaWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRp
b25zKCspLCAzNyBkZWxldGlvbnMoLSkNCg0KLS0gDQoyLjI2LjINCg0KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
