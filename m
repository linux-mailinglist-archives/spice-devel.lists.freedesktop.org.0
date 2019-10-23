Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D10CE144D
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 10:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EECF36E9E3;
	Wed, 23 Oct 2019 08:34:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7056E9E1
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:17 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-urtmDcFrNZeLrR6YyqJmSA-1; Wed, 23 Oct 2019 04:34:14 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D89D476
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:14 +0000 (UTC)
Received: from wingsuit.redhat.com (unknown [10.40.205.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 81B7A5C1B2
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:13 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 23 Oct 2019 10:34:10 +0200
Message-Id: <20191023083410.12489-3-victortoso@redhat.com>
In-Reply-To: <20191023083410.12489-1-victortoso@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
 <20191023083410.12489-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: urtmDcFrNZeLrR6YyqJmSA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571819656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t3nwVbPKPxeSRmYmEjl9wKJGde6SO7Hc4B8YzPXhthI=;
 b=ADlyINvghp1VisaSzSa/814Se/cfYs+/EGDyW0sNTOcyLzkG/r3xhXrBXf9mHZAzKOsCC2
 jnxz/68CZxNBYadanKdqi1x/qNLG/lDYvzVGBNA33HddmpunB560vGnqlaHJaReJn2D78q
 qh0JdA6hfjahl3e8x7QccVY4E7LOPng=
Subject: [Spice-devel] [spice-protocol 2/2] fixup: gitlab-ci: to fix after
 mingw
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKLS0tCiAuZ2l0bGFiLWNpLnlt
bCB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCBkYTRm
NTEyLi5jNzAyOGRkIDEwMDY0NAotLS0gYS8uZ2l0bGFiLWNpLnltbAorKysgYi8uZ2l0bGFiLWNp
LnltbApAQCAtNCw5ICs0LDEwIEBAIHZhcmlhYmxlczoKICAgREVQU19DT01NT046IGdpdCBsaWJ0
b29sIG1ha2UgcHl0aG9uMyBweXRob24zLXNpeCByZWRoYXQtcnBtLWNvbmZpZwogICAgICAgICAg
ICAgICAgcHl0aG9uMy1weXBhcnNpbmcgbWVzb24gbmluamEtYnVpbGQgZ3RrLWRvYyBnbGliMi1k
ZXZlbAogICAgICAgICAgICAgICAgZ2V0dGV4dCBnZXR0ZXh0LWRldmVsIGJ6aXAyIHJwbWxpbnQg
cnBtLWJ1aWxkCisgIERFUFNfTUlOR1c6IG1pbmd3MzItZmlsZXN5c3RlbSBtaW5ndzY0LWZpbGVz
eXN0ZW0KIAogYmVmb3JlX3NjcmlwdDoKLS0gZG5mIGluc3RhbGwgLXkgJERFUFNfQ09NTU9OCist
IGRuZiBpbnN0YWxsIC15ICRERVBTX0NPTU1PTiAkREVQU19NSU5HVwogCiBmZWRvcmEtYXV0b3Rv
b2xzOgogICBzY3JpcHQ6Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
