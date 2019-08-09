Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 541A987CAD
	for <lists+spice-devel@lfdr.de>; Fri,  9 Aug 2019 16:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5DAD6EE2C;
	Fri,  9 Aug 2019 14:27:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2936EE2F
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 66E208EA21
 for <spice-devel@lists.freedesktop.org>; Fri,  9 Aug 2019 14:27:56 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-160.brq.redhat.com [10.40.204.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B92071001DE0;
 Fri,  9 Aug 2019 14:27:54 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  9 Aug 2019 15:26:35 +0100
Message-Id: <20190809142651.2967-18-fziglio@redhat.com>
In-Reply-To: <20190809142651.2967-1-fziglio@redhat.com>
References: <20190809142651.2967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 09 Aug 2019 14:27:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 17/33] fixup! usb-redir: add
 files for SCSI and USB MSC implementation
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

RnJlZSBhbGwgcG9zc2libGUgZGF0YSBpbiBjZF9zY3NpX3RhcmdldF9mcmVlLgpBdm9pZCBzb21l
IGxlYWtzLgotLS0KIHNyYy9jZC1zY3NpLmMgfCAxNSArKysrKysrKysrKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Ny
Yy9jZC1zY3NpLmMgYi9zcmMvY2Qtc2NzaS5jCmluZGV4IDY2ZTRkZGVmLi5mOWU4NDQxYyAxMDA2
NDQKLS0tIGEvc3JjL2NkLXNjc2kuYworKysgYi9zcmMvY2Qtc2NzaS5jCkBAIC00MjMsMTAgKzQy
MywxOSBAQCBDZFNjc2lUYXJnZXQgKmNkX3Njc2lfdGFyZ2V0X2FsbG9jKHZvaWQgKnRhcmdldF91
c2VyX2RhdGEsIHVpbnQzMl90IG1heF9sdW5zKQogICAgIHJldHVybiBzdDsKIH0KIAotdm9pZCBj
ZF9zY3NpX3RhcmdldF9mcmVlKENkU2NzaVRhcmdldCAqc2NzaV90YXJnZXQpCit2b2lkIGNkX3Nj
c2lfdGFyZ2V0X2ZyZWUoQ2RTY3NpVGFyZ2V0ICpzdCkKIHsKLSAgICBjZF9zY3NpX3RhcmdldF9y
ZXNldChzY3NpX3RhcmdldCk7Ci0gICAgZ19mcmVlKHNjc2lfdGFyZ2V0KTsKKyAgICB1aW50MzJf
dCBsdW47CisKKyAgICBjZF9zY3NpX3RhcmdldF9yZXNldChzdCk7CisgICAgZm9yIChsdW4gPSAw
OyBsdW4gPCBzdC0+bWF4X2x1bnM7IGx1bisrKSB7CisgICAgICAgIENkU2NzaUxVICp1bml0ID0g
JnN0LT51bml0c1tsdW5dOworICAgICAgICBpZiAodW5pdC0+cmVhbGl6ZWQpIHsKKyAgICAgICAg
ICAgIGNkX3Njc2lfZGV2X3VucmVhbGl6ZShzdCwgbHVuKTsKKyAgICAgICAgfQorICAgIH0KKyAg
ICBnX2NsZWFyX29iamVjdCgmc3QtPmNhbmNlbGxhYmxlKTsKKyAgICBnX2ZyZWUoc3QpOwogfQog
CiAvKiBTQ1NJIERldmljZSAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
