Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A31A06C8
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 17:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F6FF89CD3;
	Wed, 28 Aug 2019 15:57:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CA789CD3
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:57:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B45BA796EE
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:57:17 +0000 (UTC)
Received: from localhost.localdomain.com (unknown [10.35.4.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 23F8A165D7
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:57:16 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 18:57:16 +0300
Message-Id: <20190828155716.6294-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 28 Aug 2019 15:57:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] meson: Bump minimum required
 meson_version to 0.50
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

VGhpcyB3aWxsIGRyb3AgdGhlIGZvbGxvd2luZyB3YXJuaW5nOgoiUHJvamVjdCBzcGVjaWZpZXMg
YSBtaW5pbXVtIG1lc29uX3ZlcnNpb24gJz49IDAuNDknIGJ1dCB1c2VzCiBmZWF0dXJlcyB3aGlj
aCB3ZXJlIGFkZGVkIGluIG5ld2VyIHZlcnNpb25zIgoKU2lnbmVkLW9mZi1ieTogU25pciBTaGVy
aWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KLS0tCiBtZXNvbi5idWlsZCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21l
c29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggMDdkYmI3MC4uZWVhZTM1NiAxMDA2NDQKLS0t
IGEvbWVzb24uYnVpbGQKKysrIGIvbWVzb24uYnVpbGQKQEAgLTQsNyArNCw3IEBACiBwcm9qZWN0
KCdzcGljZS1ndGsnLCAnYycsCiAgICAgICAgICB2ZXJzaW9uIDogcnVuX2NvbW1hbmQoJ2J1aWxk
LWF1eC9naXQtdmVyc2lvbi1nZW4nLCAnQDBALy50YXJiYWxsLXZlcnNpb24nLmZvcm1hdChtZXNv
bi5zb3VyY2Vfcm9vdCgpKSwgY2hlY2sgOiB0cnVlKS5zdGRvdXQoKS5zdHJpcCgpLAogICAgICAg
ICAgbGljZW5zZSA6ICdMR1BMdjIuMScsCi0gICAgICAgICBtZXNvbl92ZXJzaW9uIDogJz49IDAu
NDknKQorICAgICAgICAgbWVzb25fdmVyc2lvbiA6ICc+PSAwLjUwJykKIAogbWVzb24uYWRkX2Rp
c3Rfc2NyaXB0KCdidWlsZC1hdXgvbWVzb24tZGlzdCcsIG1lc29uLnByb2plY3RfdmVyc2lvbigp
LCBtZXNvbi5zb3VyY2Vfcm9vdCgpKQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
