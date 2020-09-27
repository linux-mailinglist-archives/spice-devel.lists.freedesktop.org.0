Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AD727A171
	for <lists+spice-devel@lfdr.de>; Sun, 27 Sep 2020 16:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90CB6E0D8;
	Sun, 27 Sep 2020 14:58:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3786E0D8
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Sep 2020 14:58:09 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601218687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=emFydObY5sOmzVU7aR2Oxn+24L3b3rXtNM8x9eSycYY=;
 b=UEIb/IgDc+wZxixa0WD1Y40ww1my6xYW88SeIhWdCHcmePYn0b9doG9AYNPVliFAQlmrFY
 ktIkWaxAP5Klvg7IXFb+udZFr5y0gu5oV3HpM9HIhZKFjwRQ7o7IPVFEH1tomQVlKNDzgM
 1Yy405ZiJw6NVRclz1hgUY44zkPHJLk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-NwAf63WvN329U0R4_XFiRA-1; Sun, 27 Sep 2020 10:58:05 -0400
X-MC-Unique: NwAf63WvN329U0R4_XFiRA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0215C1DDE2;
 Sun, 27 Sep 2020 14:58:04 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CD1C55777;
 Sun, 27 Sep 2020 14:57:54 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Sun, 27 Sep 2020 18:57:45 +0400
Message-Id: <20200927145751.365446-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v3 0/6] Add physical display dimensions to
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
IG1lcmdlZC4NCg0KdjM6DQogLSBzaW1wbGlmeSB0aGUgaGFuZGxpbmcgb2YgU3BpY2UgbW9uaXRv
ciBjb25maWd1cmF0aW9uIChGcmVkaWFubykNCnYyOg0KIC0gYWRkIGEgcGF0Y2ggdG8gInNwaWNl
OiByZW1vdmUgdGhlIHNpbmdsZSBtb25pdG9yIGNvbmZpZyBsb2dpYyIgKEdlcmQpDQoNCk1hcmMt
QW5kcsOpIEx1cmVhdSAoNik6DQogIGVkaWQ6IGZpeCBwaHlzaWNhbCBkaXNwbGF5IHNpemUgY29t
cHV0YXRpb24NCiAgZWRpZDogdXNlIHBoeXNpY2FsIGRpbWVuc2lvbnMgaWYgYXZhaWxhYmxlDQog
IHVpOiBhZGQgZ2V0dGVyIGZvciBVSUluZm8NCiAgc3BpY2U6IHJlbW92ZSB0aGUgc2luZ2xlIG1v
bml0b3IgY29uZmlnIGxvZ2ljDQogIHNwaWNlOiBnZXQgbW9uaXRvcnMgcGh5c2ljYWwgZGltZW5z
aW9uDQogIHZpcnRpby1ncHU6IHNldCBwaHlzaWNhbCBkaW1lbnNpb25zIGZvciBFRElEDQoNCiBo
dy9kaXNwbGF5L2VkaWQtZ2VuZXJhdGUuYyAgICAgfCAzNiArKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tDQogaHcvZGlzcGxheS92aXJ0aW8tZ3B1LWJhc2UuYyAgIHwgIDIgKysNCiBo
dy9kaXNwbGF5L3ZpcnRpby1ncHUuYyAgICAgICAgfCAgMiArKw0KIGluY2x1ZGUvaHcvZGlzcGxh
eS9lZGlkLmggICAgICB8ICA1ICsrKystDQogaW5jbHVkZS9ody92aXJ0aW8vdmlydGlvLWdwdS5o
IHwgIDEgKw0KIGluY2x1ZGUvdWkvY29uc29sZS5oICAgICAgICAgICB8ICA0ICsrKysNCiBxZW11
LWVkaWQuYyAgICAgICAgICAgICAgICAgICAgfCAxMSArKysrKysrKystLQ0KIHVpL2NvbnNvbGUu
YyAgICAgICAgICAgICAgICAgICB8ICA3ICsrKysrKysNCiB1aS9zcGljZS1kaXNwbGF5LmMgICAg
ICAgICAgICAgfCAzNSArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiA5IGZpbGVz
IGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDM3IGRlbGV0aW9ucygtKQ0KDQotLSANCjIuMjYu
Mg0KDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
Cg==
