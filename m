Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F051F5D2
	for <lists+spice-devel@lfdr.de>; Wed, 15 May 2019 15:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C4E8911F;
	Wed, 15 May 2019 13:46:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9558911F
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 13:46:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7A5AF300180E
 for <spice-devel@lists.freedesktop.org>; Wed, 15 May 2019 13:46:39 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8AABA5C1A3;
 Wed, 15 May 2019 13:46:38 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 15 May 2019 14:46:33 +0100
Message-Id: <20190515134633.8493-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 15 May 2019 13:46:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] ci: Clean everything at the
 beginning
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

SXQgc2VlbXMgc29tZXRpbWVzIHRoZSB3b3JraW5nIGRpcmVjdG9yeSBpcyBub3QgcHJvcGVybHkg
Y2xlYW5lZApjYXVzaW5nIHNvbWUgaXNzdWUuCk1ha2Ugc3VyZSBpdCdzIGNsZWFuIGJlZm9yZSBk
b2luZyBhIG91dC1vZi10cmVlIGJ1aWxkICh3aGljaCBoYXZlCnByb2JsZW1zIHdpdGggbm90IGNs
ZWFuZWQgZGlyZWN0b3J5KS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgotLS0KIC5naXRsYWItY2kueW1sIHwgMiArKwogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1j
aS55bWwKaW5kZXggMjZjNmY1NDcuLjc3NjY1MzllIDEwMDY0NAotLS0gYS8uZ2l0bGFiLWNpLnlt
bAorKysgYi8uZ2l0bGFiLWNpLnltbApAQCAtMzAsNiArMzAsOCBAQCBmZWRvcmEtYXV0b3Rvb2xz
OgogICAgIC0gKGNkIHNwaWNlLXByb3RvY29sICYmIC4vYXV0b2dlbi5zaCAtLXByZWZpeD0vdXNy
ICYmIG1ha2UgaW5zdGFsbCkKIAogICBzY3JpcHQ6CisgICAgLSBnaXQgY2xlYW4gLXhmZAorICAg
IC0gZ2l0IHN1Ym1vZHVsZSBmb3JlYWNoIC0tcmVjdXJzaXZlIGdpdCBjbGVhbiAteGZkCiAgICAg
IyBSdW4gd2l0aCBkZWZhdWx0IG9wdGlvbnMgKyBvdXQtb2YtdHJlZQogICAgIC0gbWtkaXIgYnVp
bGQKICAgICAtIGNkIGJ1aWxkCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
