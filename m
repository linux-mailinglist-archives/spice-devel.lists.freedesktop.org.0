Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B75532E87
	for <lists+spice-devel@lfdr.de>; Mon,  3 Jun 2019 13:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F3C89232;
	Mon,  3 Jun 2019 11:22:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2FE8922A
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 11:22:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 896522F8BC6
 for <spice-devel@lists.freedesktop.org>; Mon,  3 Jun 2019 11:22:21 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4F6661169;
 Mon,  3 Jun 2019 11:22:19 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  3 Jun 2019 12:22:13 +0100
Message-Id: <20190603112214.15093-2-fziglio@redhat.com>
In-Reply-To: <20190603112214.15093-1-fziglio@redhat.com>
References: <20190603112214.15093-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 03 Jun 2019 11:22:21 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/3] Remove a warning on MIPS
 machine
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

VGhlIGZvcm11bGEgaXMgaGVyZSB0byBtYWtlIHN1cmUgZ2x5cGggaXMgYWxpZ25lZCB0byA0IGJ5
dGVzIHNvCnRlbGwgdG8gdGhlIGNvbXBpbGVyIHRvIGF2b2lkIGEgd2FybmluZy4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9y
ZWQtcGFyc2UtcXhsLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1wYXJzZS1xeGwuYyBiL3Nl
cnZlci9yZWQtcGFyc2UtcXhsLmMKaW5kZXggYWZhZTk0MzE2Li44OWI2MWMwNmYgMTAwNjQ0Ci0t
LSBhL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMKKysrIGIvc2VydmVyL3JlZC1wYXJzZS1xeGwuYwpA
QCAtOTQxLDkgKzk0MSw5IEBAIHN0YXRpYyBTcGljZVN0cmluZyAqcmVkX2dldF9zdHJpbmcoUmVk
TWVtU2xvdEluZm8gKnNsb3RzLCBpbnQgZ3JvdXBfaWQsCiAgICAgICAgIHNwaWNlX2Fzc2VydChn
bHlwaF9zaXplIDw9IChjaGFyKikgZW5kIC0gKGNoYXIqKSAmc3RhcnQtPmRhdGFbMF0pOwogICAg
ICAgICBtZW1jcHkoZ2x5cGgtPmRhdGEsIHN0YXJ0LT5kYXRhLCBnbHlwaF9zaXplKTsKICAgICAg
ICAgc3RhcnQgPSAoUVhMUmFzdGVyR2x5cGgqKSgmc3RhcnQtPmRhdGFbZ2x5cGhfc2l6ZV0pOwot
ICAgICAgICBnbHlwaCA9IChTcGljZVJhc3RlckdseXBoKikKKyAgICAgICAgZ2x5cGggPSAoU3Bp
Y2VSYXN0ZXJHbHlwaCopIFNQSUNFX0FMSUdORURfQ0FTVCh1aW50MzJfdCosCiAgICAgICAgICAg
ICAoKCh1aW50OF90ICopZ2x5cGgpICsKLSAgICAgICAgICAgICBTUElDRV9BTElHTihzaXplb2Yo
U3BpY2VSYXN0ZXJHbHlwaCkgKyBnbHlwaF9zaXplLCA0KSk7CisgICAgICAgICAgICAgU1BJQ0Vf
QUxJR04oc2l6ZW9mKFNwaWNlUmFzdGVyR2x5cGgpICsgZ2x5cGhfc2l6ZSwgNCkpKTsKICAgICB9
CiAKICAgICBpZiAoZnJlZV9kYXRhKSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
