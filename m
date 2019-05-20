Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4237522D49
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 09:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C59891DB;
	Mon, 20 May 2019 07:39:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 174AF891DB
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B4702C05B1CD
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:57 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A46D05C57D;
 Mon, 20 May 2019 07:39:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 20 May 2019 08:39:47 +0100
Message-Id: <20190520073947.5382-5-fziglio@redhat.com>
In-Reply-To: <20190520073947.5382-1-fziglio@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 20 May 2019 07:39:57 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 4/4] ci: Try Meson dist
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

TWFrZSBzdXJlIE1lc29uIGlzIGFibGUgdG8gZ2VuZXJhdGUgYSBjb3JyZWN0IHRhcmJhbGwuCgpT
aWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiAu
Z2l0bGFiLWNpLnltbCB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCBhNmNi
MmNkYS4uNWRkYjRkYjggMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRsYWIt
Y2kueW1sCkBAIC04Miw2ICs4MiwxMiBAQCBmZWRvcmEtbWVzb246CiAKICAgc2NyaXB0OgogICAg
IC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSBidWlsZC1kZWZhdWx0CisgICAgIyBNZXNvbiBk
b2VzIG5vdCB1cGRhdGUgc3VibW9kdWxlcyByZWN1cnNpdmVseQorICAgIC0gZ2l0IHN1Ym1vZHVs
ZSB1cGRhdGUgLS1pbml0IC0tcmVjdXJzaXZlCisgICAgIyB0aGlzIGZpeCBhbiBpc3N1ZSB3aXRo
IE1lc29uIGRpc3QKKyAgICAtIGlmICEgdGVzdCAtciAuLi9zcGljZS1jb21tb24uZ2l0OyB0aGVu
IERJUj1gYmFzZW5hbWUgIiRQV0QiYDsgbG4gLXMgIiRESVIvLmdpdC9tb2R1bGVzL3NwaWNlLWNv
bW1vbiIgLi4vc3BpY2UtY29tbW9uLmdpdDsgZmkKKyAgICAtIHJtIC1yZiBtZXNvbi1kaXN0Cisg
ICAgLSBuaW5qYSAtQyBidWlsZC1kZWZhdWx0IGRpc3QKICAgICAtIG5pbmphIC1DIGJ1aWxkLWRl
ZmF1bHQKICAgICAtIG5pbmphIC1DIGJ1aWxkLWRlZmF1bHQgdGVzdAogCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
