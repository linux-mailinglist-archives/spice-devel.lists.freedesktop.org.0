Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE62AE144B
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 10:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA88A6E9E2;
	Wed, 23 Oct 2019 08:34:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41816E9E1
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:15 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-H1ofF2weP62QQJ6W7kRJaw-1; Wed, 23 Oct 2019 04:34:12 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B648800D49
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:12 +0000 (UTC)
Received: from wingsuit.redhat.com (unknown [10.40.205.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6C2395C1B2
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 08:34:11 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 23 Oct 2019 10:34:08 +0200
Message-Id: <20191023083410.12489-1-victortoso@redhat.com>
In-Reply-To: <20191022083358.14214-1-fziglio@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: H1ofF2weP62QQJ6W7kRJaw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571819654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=skbIOwefy7e6v+NnKzNoPj19U9hRkpnb9jUlPLMG340=;
 b=ZgGlgoIqucVz/pIqufegWh2htBNW/tqei/eZqrBQsxWxw9AOs2h7ljIxH1jbmMiyvwKqFD
 09zgq8wpY72LWI+3xGwNKedp2+Z/6OkF+NWWMcl867suM7iAh33tu/E5Faj+nA/ZR+h+CH
 J3AcqFkLaPqf1zPMs45BAHMICAouOQ8=
Subject: [Spice-devel] [spice-protocol 0/2] add gitlabci check
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksIHR3byBwYXRjaGVzIHRv
IGJlIHNxdWFzaGVkIGlmIHlvdSBhZ3JlZS4gQm90aCBmb3IgZmVkb3JhLWF1dG90b29scwpzdGFn
ZSBpbiBnaXRsYWItY2kuCgpWaWN0b3IgVG9zbyAoMik6CiAgZml4dXA6IGdpdGxhYi1jaTogdG8g
YmUgYWRkZWQKICBmaXh1cDogZ2l0bGFiLWNpOiB0byBmaXggYWZ0ZXIgbWluZ3cKCiAuZ2l0bGFi
LWNpLnltbCB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
