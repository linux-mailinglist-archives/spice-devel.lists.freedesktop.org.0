Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A7E179E7
	for <lists+spice-devel@lfdr.de>; Wed,  8 May 2019 15:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D9689916;
	Wed,  8 May 2019 13:07:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E96DD89916
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 13:07:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 92145307E04C
 for <spice-devel@lists.freedesktop.org>; Wed,  8 May 2019 13:07:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9CFB60C61;
 Wed,  8 May 2019 13:07:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  8 May 2019 14:06:59 +0100
Message-Id: <20190508130659.4756-2-fziglio@redhat.com>
In-Reply-To: <20190508130659.4756-1-fziglio@redhat.com>
References: <20190508130659.4756-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 08 May 2019 13:07:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] dcc: Avoid usage of not
 aligned GlzEncDictRestoreData structure
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

Q29weSB0by9mcm9tIHVuYWxpZ25lZCBmaWVsZCB0byBhdm9pZCBwb3RlbnRpYWwgdW5hbGlnbmVk
IGFjY2Vzcy4KQWx0aG91Z2ggaXQgYWRkcyBhIGNvcHkgaXQncyBub3QgaW4gYSBob3QgcGF0aCAo
bWlncmF0aW9uKSBhbmQKdGhlIHN0cnVjdHVyZSBpcyBwcmV0dHkgc21hbGwuCgpTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvZGNj
LXNlbmQuYyB8IDQgKysrLQogc2VydmVyL2RjYy5jICAgICAgfCAzICsrLQogMiBmaWxlcyBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVy
L2RjYy1zZW5kLmMgYi9zZXJ2ZXIvZGNjLXNlbmQuYwppbmRleCBlOWIwMWIzOC4uOWZjNTQwNDYg
MTAwNjQ0Ci0tLSBhL3NlcnZlci9kY2Mtc2VuZC5jCisrKyBiL3NlcnZlci9kY2Mtc2VuZC5jCkBA
IC0xODQ1LDggKzE4NDUsMTAgQEAgc3RhdGljIHZvaWQgZGlzcGxheV9jaGFubmVsX21hcnNoYWxs
X21pZ3JhdGVfZGF0YShSZWRDaGFubmVsQ2xpZW50ICpyY2MsCiAgICAgbWVtY3B5KGRpc3BsYXlf
ZGF0YS5waXhtYXBfY2FjaGVfY2xpZW50cywgZGNjLT5wcml2LT5waXhtYXBfY2FjaGUtPnN5bmMs
CiAgICAgICAgICAgIHNpemVvZihkaXNwbGF5X2RhdGEucGl4bWFwX2NhY2hlX2NsaWVudHMpKTsK
IAorICAgIEdsekVuY0RpY3RSZXN0b3JlRGF0YSBnbHpfZGljdF9kYXRhOwogICAgIGltYWdlX2Vu
Y29kZXJzX2dsel9nZXRfcmVzdG9yZV9kYXRhKGVuY29kZXJzLCAmZGlzcGxheV9kYXRhLmdsel9k
aWN0X2lkLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkaXNwbGF5
X2RhdGEuZ2x6X2RpY3RfZGF0YSk7CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJmdsel9kaWN0X2RhdGEpOworICAgIGRpc3BsYXlfZGF0YS5nbHpfZGljdF9kYXRhID0g
Z2x6X2RpY3RfZGF0YTsKIAogICAgIC8qIGFsbCBkYXRhIGJlc2lkZWQgdGhlIHN1cmZhY2VzIHJl
ZiAqLwogICAgIHNwaWNlX21hcnNoYWxsZXJfYWRkKGJhc2VfbWFyc2hhbGxlciwKZGlmZiAtLWdp
dCBhL3NlcnZlci9kY2MuYyBiL3NlcnZlci9kY2MuYwppbmRleCBmZGIwZmJmMS4uMjcxYTQ2NmIg
MTAwNjQ0Ci0tLSBhL3NlcnZlci9kY2MuYworKysgYi9zZXJ2ZXIvZGNjLmMKQEAgLTEyNTEsMTAg
KzEyNTEsMTEgQEAgYm9vbCBkY2NfaGFuZGxlX21lc3NhZ2UoUmVkQ2hhbm5lbENsaWVudCAqcmNj
LCB1aW50MTZfdCB0eXBlLCB1aW50MzJfdCBzaXplLCB2b2kKIHN0YXRpYyBpbnQgZGNjX2hhbmRs
ZV9taWdyYXRlX2dsel9kaWN0aW9uYXJ5KERpc3BsYXlDaGFubmVsQ2xpZW50ICpkY2MsCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTcGljZU1pZ3JhdGVEYXRh
RGlzcGxheSAqbWlncmF0ZSkKIHsKKyAgICBHbHpFbmNEaWN0UmVzdG9yZURhdGEgZ2x6X2RpY3Rf
ZGF0YSA9IG1pZ3JhdGUtPmdsel9kaWN0X2RhdGE7CiAgICAgcmV0dXJuIGltYWdlX2VuY29kZXJz
X3Jlc3RvcmVfZ2x6X2RpY3Rpb25hcnkoJmRjYy0+cHJpdi0+ZW5jb2RlcnMsCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVkX2NoYW5uZWxfY2xpZW50
X2dldF9jbGllbnQoUkVEX0NIQU5ORUxfQ0xJRU5UKGRjYykpLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1pZ3JhdGUtPmdsel9kaWN0X2lkLAotICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZtaWdyYXRlLT5n
bHpfZGljdF9kYXRhKTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAmZ2x6X2RpY3RfZGF0YSk7CiB9CiAKIHN0YXRpYyBib29sIHJlc3RvcmVfc3VyZmFj
ZShEaXNwbGF5Q2hhbm5lbENsaWVudCAqZGNjLCB1aW50MzJfdCBzdXJmYWNlX2lkKQotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
