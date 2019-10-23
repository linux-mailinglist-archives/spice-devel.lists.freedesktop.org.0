Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBE3E144C
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 10:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C1D6E9E1;
	Wed, 23 Oct 2019 08:34:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E4C6E9E1
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:16 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-fDwJ_LWoPNisTJn_i_APIg-1; Wed, 23 Oct 2019 04:34:13 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24B3A1005509
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:13 +0000 (UTC)
Received: from wingsuit.redhat.com (unknown [10.40.205.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 774195C1B2
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:12 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 23 Oct 2019 10:34:09 +0200
Message-Id: <20191023083410.12489-2-victortoso@redhat.com>
In-Reply-To: <20191023083410.12489-1-victortoso@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
 <20191023083410.12489-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: fDwJ_LWoPNisTJn_i_APIg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571819655;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bsviml/SIIM+CVyEOXozngDrYilcxPEWUUYZZwQnhho=;
 b=EZusEb2N4Pp6upq49h6ODMCtTUwnXkKpWB1vBhr/N6J55Kywn8HN5nKHfOM6nknRa0+xDt
 ItnFuexX/pA36PScDoTpu3iCYt1Kz8KS5aao4sB2sL0zetL101EtlJnCPU1lu08hjWi+qM
 ZPLXjSO070/6nlNaIiIQ8ZIP3cvUndY=
Subject: [Spice-devel] [spice-protocol 1/2] fixup: gitlab-ci: to be added
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKU28gd2UgY2FuIGNoZWNrIHJw
bSBpcyB3b3JraW5nIGZpbmUuCi0tLQogLmdpdGxhYi1jaS55bWwgfCA0ICsrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS8uZ2l0
bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCmluZGV4IGIzZmFkNjQuLmRhNGY1MTIgMTAwNjQ0
Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRsYWItY2kueW1sCkBAIC0zLDcgKzMsNyBA
QCBpbWFnZTogZmVkb3JhOmxhdGVzdAogdmFyaWFibGVzOgogICBERVBTX0NPTU1PTjogZ2l0IGxp
YnRvb2wgbWFrZSBweXRob24zIHB5dGhvbjMtc2l4IHJlZGhhdC1ycG0tY29uZmlnCiAgICAgICAg
ICAgICAgICBweXRob24zLXB5cGFyc2luZyBtZXNvbiBuaW5qYS1idWlsZCBndGstZG9jIGdsaWIy
LWRldmVsCi0gICAgICAgICAgICAgICBnZXR0ZXh0IGdldHRleHQtZGV2ZWwgYnppcDIKKyAgICAg
ICAgICAgICAgIGdldHRleHQgZ2V0dGV4dC1kZXZlbCBiemlwMiBycG1saW50IHJwbS1idWlsZAog
CiBiZWZvcmVfc2NyaXB0OgogLSBkbmYgaW5zdGFsbCAteSAkREVQU19DT01NT04KQEAgLTE0LDYg
KzE0LDggQEAgZmVkb3JhLWF1dG90b29sczoKICAgICAtIC4vYXV0b2dlbi5zaAogICAgIC0gbWFr
ZQogICAgIC0gbWFrZSBkaXN0Y2hlY2sKKyAgICAtIHJwbWxpbnQgc3BpY2UtcHJvdG9jb2wuc3Bl
YworICAgIC0gcnBtYnVpbGQgLXRhIHNwaWNlLXByb3RvY29sLSoudGFyLmJ6MgogCiBmZWRvcmEt
bWVzb246CiAgIHNjcmlwdDoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
