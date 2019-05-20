Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD5A22D47
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 09:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AED3D891D7;
	Mon, 20 May 2019 07:39:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C992C88A56
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 72ACC307D869
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:53 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5401E5C57D;
 Mon, 20 May 2019 07:39:52 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 20 May 2019 08:39:44 +0100
Message-Id: <20190520073947.5382-2-fziglio@redhat.com>
In-Reply-To: <20190520073947.5382-1-fziglio@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 20 May 2019 07:39:53 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/4] ci: Test we can create a no
 dirty package
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

TWFrZSBzdXJlIHRoZXJlJ3Mgbm90aGluZyBsZWZ0IGR1cmluZyBidWlsZCBvciB0aGF0CmR1cmlu
ZyBidWlsZCBmaWxlcyBhcmUgbm90IGNoYW5nZWQgaW4gdGhlIHdyb25nIHdheS4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIC5naXRsYWIt
Y2kueW1sIHwgMTQgKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCA3
NzY2NTM5ZS4uYTZjYjJjZGEgMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRs
YWItY2kueW1sCkBAIC0xMiw2ICsxMiw3IEBAIHZhcmlhYmxlczoKICAgICAgICAgICAgICAgIHBv
bGtpdC1kZXZlbCB2YWxhIGx6NC1kZXZlbCBvcHVzLWRldmVsIHBpeG1hbi1kZXZlbAogICAgICAg
ICAgICAgICAgbGliY2FjYXJkLWRldmVsIGNlbHQwNTEtZGV2ZWwgbGlicGhvZGF2LWRldmVsIHVz
YnV0aWxzCiAgICAgICAgICAgICAgICB1c2JyZWRpci1kZXZlbCBsaWJ1c2J4LWRldmVsIGxpYnNv
dXAtZGV2ZWwganNvbi1nbGliLWRldmVsCisgICAgICAgICAgICAgICBiemlwMgogCiAgIERFUFNf
TUlOR1c6IG1pbmd3NjQtZ2NjIG1pbmd3NjQtcGtnLWNvbmZpZyBtaW5ndzY0LXBpeG1hbiBtaW5n
dzY0LW9wZW5zc2wKICAgICAgICAgICAgICAgbWluZ3c2NC1ndGszIG1pbmd3NjQtanNvbi1nbGli
IG1pbmd3NjQtb3B1cwpAQCAtMzksNiArNDAsMTkgQEAgZmVkb3JhLWF1dG90b29sczoKICAgICAt
IG1ha2UgLWo0CiAgICAgLSBtYWtlIGNoZWNrCiAgICAgLSBjZCAuLgorICAgICMgUnVuIGRpc3Qs
IGNoZWNrIHdlIGRvbid0IGhhdmUgLWRpcnR5IGluIHRoZSBidWlsZAorICAgIC0gZ2l0IGNsZWFu
IC14ZmQKKyAgICAtIGdpdCBzdWJtb2R1bGUgZm9yZWFjaCAtLXJlY3Vyc2l2ZSBnaXQgY2xlYW4g
LXhmZAorICAgIC0gZ2l0IHJlc2V0IC0taGFyZCBIRUFECisgICAgLSAuL2F1dG9nZW4uc2ggLS1k
aXNhYmxlLWRlcGVuZGVuY3ktdHJhY2tpbmcgLS1lbmFibGUtY2VsdDA1MQorICAgIC0gbWFrZSBn
aXRpZ25vcmUKKyAgICAtIChjZCBzdWJwcm9qZWN0cy9zcGljZS1jb21tb24gJiYgbWFrZSBnaXRp
Z25vcmUpCisgICAgLSAuL2F1dG9nZW4uc2ggLS1kaXNhYmxlLWRlcGVuZGVuY3ktdHJhY2tpbmcg
LS1lbmFibGUtY2VsdDA1MQorICAgIC0gaWYgZ3JlcCAtcSAnVkVSU0lPTj0uKi1kaXJ0eScgY29u
ZmlndXJlOyB0aGVuIGVjaG8gJ1ZlcnNpb24gaXMgZGlydHkhJzsgZmFsc2U7IGZpCisgICAgLSBt
YWtlIC1qNAorICAgIC0gbWFrZSBkaXN0CisgICAgLSB0ZXN0IC1lIHNwaWNlLWd0ay0qLnRhci5i
ejIKKyAgICAtIHRlc3QgXCEgLWUgc3BpY2UtZ3RrLSotZGlydHkudGFyLmJ6MgogICAgICMgUnVu
IHdpdGhvdXQgZmVhdHVyZXMKICAgICAtIGdpdCBjbGVhbiAteGZkCiAgICAgLSBnaXQgc3VibW9k
dWxlIGZvcmVhY2ggLS1yZWN1cnNpdmUgZ2l0IGNsZWFuIC14ZmQKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
