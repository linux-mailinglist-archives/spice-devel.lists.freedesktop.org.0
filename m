Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC34127A176
	for <lists+spice-devel@lfdr.de>; Sun, 27 Sep 2020 16:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DCF86E0F8;
	Sun, 27 Sep 2020 14:59:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D286E0F8
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Sep 2020 14:59:13 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601218752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EWT3eeP8M1S4mF5jrWBk/Kh6soLRKqtXBG4/bKeL4bg=;
 b=OmENrQlKN3RGgVJjMvVEFPoM01X99Q0ior3I6EmwUGd0dRH48CsNlyp/OtmmCOH0vR8SP7
 AHIg3kymGEwjJ8O5IF6DP6Enyn8boc7kJpeolYJD/vE125SAKpc3ftEagag0ZNQRiXgbeP
 I8YaGzcg90aTIexke7YA28gcx6ifgFA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-Xq8ATs5mOLmMQx8X147b_g-1; Sun, 27 Sep 2020 10:59:09 -0400
X-MC-Unique: Xq8ATs5mOLmMQx8X147b_g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92680807322;
 Sun, 27 Sep 2020 14:59:08 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5BBFA78801;
 Sun, 27 Sep 2020 14:58:59 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Sun, 27 Sep 2020 18:57:50 +0400
Message-Id: <20200927145751.365446-6-marcandre.lureau@redhat.com>
In-Reply-To: <20200927145751.365446-1-marcandre.lureau@redhat.com>
References: <20200927145751.365446-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v3 5/6] spice: get monitors physical dimension
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

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+CgpX
aXRoIHVwY29taW5nIFNwaWNlIHNlcnZlciB2ZXJzaW9uIDAuMTQuNCwgdGhlIG1vbml0b3IgY29u
ZmlndXJhdGlvbiBjYW4KY29udGFpbiBhZGRpdGlvbmFsIGZpZWxkcyBmb3IgdGhlIG1vbml0b3Ig
cGh5c2ljYWwgZGltZW5zaW9ucy4KClNpZ25lZC1vZmYtYnk6IE1hcmMtQW5kcsOpIEx1cmVhdSA8
bWFyY2FuZHJlLmx1cmVhdUByZWRoYXQuY29tPgotLS0KIGluY2x1ZGUvdWkvY29uc29sZS5oIHwg
MyArKysKIHVpL3NwaWNlLWRpc3BsYXkuYyAgIHwgNyArKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VpL2NvbnNvbGUuaCBiL2lu
Y2x1ZGUvdWkvY29uc29sZS5oCmluZGV4IDM1M2QyZTQ5YTEuLmU3MzAzZDhiOTggMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvdWkvY29uc29sZS5oCisrKyBiL2luY2x1ZGUvdWkvY29uc29sZS5oCkBAIC0x
MTksNiArMTE5LDkgQEAgdHlwZWRlZiBzdHJ1Y3QgRGlzcGxheVN1cmZhY2UgewogfSBEaXNwbGF5
U3VyZmFjZTsKIAogdHlwZWRlZiBzdHJ1Y3QgUWVtdVVJSW5mbyB7CisgICAgLyogcGh5c2ljYWwg
ZGltZW5zaW9uICovCisgICAgdWludDE2X3Qgd2lkdGhfbW07CisgICAgdWludDE2X3QgaGVpZ2h0
X21tOwogICAgIC8qIGdlb21ldHJ5ICovCiAgICAgaW50ICAgICAgIHhvZmY7CiAgICAgaW50ICAg
ICAgIHlvZmY7CmRpZmYgLS1naXQgYS91aS9zcGljZS1kaXNwbGF5LmMgYi91aS9zcGljZS1kaXNw
bGF5LmMKaW5kZXggYjMwNGMxMzE0OS4uMDE3OGQ1NzY2ZCAxMDA2NDQKLS0tIGEvdWkvc3BpY2Ut
ZGlzcGxheS5jCisrKyBiL3VpL3NwaWNlLWRpc3BsYXkuYwpAQCAtNjc4LDYgKzY3OCwxMyBAQCBz
dGF0aWMgaW50IGludGVyZmFjZV9jbGllbnRfbW9uaXRvcnNfY29uZmlnKFFYTEluc3RhbmNlICpz
aW4sCiAgICAgaWYgKG1jLT5udW1fb2ZfbW9uaXRvcnMgPiBoZWFkKSB7CiAgICAgICAgIGluZm8u
d2lkdGggID0gbWMtPm1vbml0b3JzW2hlYWRdLndpZHRoOwogICAgICAgICBpbmZvLmhlaWdodCA9
IG1jLT5tb25pdG9yc1toZWFkXS5oZWlnaHQ7CisjaWYgU1BJQ0VfU0VSVkVSX1ZFUlNJT04gPj0g
MHgwMDBlMDQgLyogcmVsZWFzZSAwLjE0LjQgKi8KKyAgICAgICAgaWYgKG1jLT5mbGFncyAmIFZE
X0FHRU5UX0NPTkZJR19NT05JVE9SU19GTEFHX1BIWVNJQ0FMX1NJWkUpIHsKKyAgICAgICAgICAg
IFZEQWdlbnRNb25pdG9yTU0gKm1tID0gKHZvaWQgKikmbWMtPm1vbml0b3JzW21jLT5udW1fb2Zf
bW9uaXRvcnNdOworICAgICAgICAgICAgaW5mby53aWR0aF9tbSA9IG1tW2hlYWRdLndpZHRoOwor
ICAgICAgICAgICAgaW5mby5oZWlnaHRfbW0gPSBtbVtoZWFkXS5oZWlnaHQ7CisgICAgICAgIH0K
KyNlbmRpZgogICAgIH0KIAogICAgIHRyYWNlX3FlbXVfc3BpY2VfdWlfaW5mbyhzc2QtPnF4bC5p
ZCwgaW5mby53aWR0aCwgaW5mby5oZWlnaHQpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
