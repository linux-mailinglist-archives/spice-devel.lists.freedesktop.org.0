Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5D722D48
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 09:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11EE6891DA;
	Mon, 20 May 2019 07:39:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9247B891D2
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3EABF3082A49
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:56 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40A1679581;
 Mon, 20 May 2019 07:39:55 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 20 May 2019 08:39:46 +0100
Message-Id: <20190520073947.5382-4-fziglio@redhat.com>
In-Reply-To: <20190520073947.5382-1-fziglio@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 20 May 2019 07:39:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 3/4] build: Do additional changes to
 Meson distribution
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

LSBjb3B5IG1pc3NpbmcgcmVjb3JkZXIgZmlsZXM7Ci0gZ2VuZXJhdGUgVEhBTktTIGZpbGUuCgpT
aWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBN
YWtlZmlsZS5hbSAgICAgICAgICB8ICAxICsKIGJ1aWxkLWF1eC9tZXNvbi1kaXN0IHwgMjggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogbWVzb24uYnVpbGQgICAgICAgICAgfCAgMiArLQog
MyBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUg
bW9kZSAxMDA3NTUgYnVpbGQtYXV4L21lc29uLWRpc3QKCmRpZmYgLS1naXQgYS9NYWtlZmlsZS5h
bSBiL01ha2VmaWxlLmFtCmluZGV4IDNjNjA3YzlhLi42YmE4YzAyOCAxMDA2NDQKLS0tIGEvTWFr
ZWZpbGUuYW0KKysrIGIvTWFrZWZpbGUuYW0KQEAgLTI3LDYgKzI3LDcgQEAgRVhUUkFfRElTVCA9
CQkJCQlcCiAJbWVzb25fb3B0aW9ucy50eHQJCQlcCiAJcG8vbWVzb24uYnVpbGQJCQkJXAogCWJ1
aWxkLWF1eC9naXQtdmVyc2lvbi1nZW4JCVwKKwlidWlsZC1hdXgvbWVzb24tZGlzdAkJCVwKIAln
dGstZG9jLm1ha2UJCQkJXAogCS52ZXJzaW9uCQkJCVwKIAkkKE5VTEwpCmRpZmYgLS1naXQgYS9i
dWlsZC1hdXgvbWVzb24tZGlzdCBiL2J1aWxkLWF1eC9tZXNvbi1kaXN0Cm5ldyBmaWxlIG1vZGUg
MTAwNzU1CmluZGV4IDAwMDAwMDAwLi45YTE4ZmYyZAotLS0gL2Rldi9udWxsCisrKyBiL2J1aWxk
LWF1eC9tZXNvbi1kaXN0CkBAIC0wLDAgKzEsMjggQEAKKyMhL2Jpbi9iYXNoCisKK3NldCAtZQor
c2V0IC1vIHBpcGVmYWlsCisKK2lmIHRlc3QgIiQxIiA9ICIiOyB0aGVuCisgICAgZWNobyAiVmVy
c2lvbiBub3QgcHJvdmlkZWQiID4mMgorICAgIGV4aXQgMQorZmkKK2lmICEgdGVzdCAtZCAiJDIi
OyB0aGVuCisgICAgZWNobyAiU291cmNlIGRpcmVjdG9yeSBub3QgcHJvdmlkZWQiID4mMgorICAg
IGV4aXQgMQorZmkKKworIyBnZW5lcmF0ZSB0YXJiYWxsIHZlcnNpb24KK2VjaG8gIiQxIiA+ICIk
TUVTT05fRElTVF9ST09ULy50YXJiYWxsLXZlcnNpb24iCisKKyMgYWRkIG1pc3NpbmcgcmVjb3Jk
ZXIgZmlsZXMKKyhjZCAiJDIiICYmIGxzIC0xIHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbi9jb21t
b24vcmVjb3JkZXIvcmVjb3JkZXIuW2NoXSBcCisgICAgc3VicHJvamVjdHMvc3BpY2UtY29tbW9u
L2NvbW1vbi9yZWNvcmRlci9yZWNvcmRlcl9yaW5nLltjaF0gfCBcCisgICAgdGFyIGNmIC0gLVQg
LSkgfCAoY2QgIiRNRVNPTl9ESVNUX1JPT1QiICYmIGV4ZWMgdGFyIHhmIC0pCisKKyMgZ2VuZXJh
dGUgVEhBTktTIGZpbGUKK3sKKwkgIGVjaG8gIlRoZSBzcGljZS1ndGsgdGVhbSB3b3VsZCBsaWtl
IHRvIHRoYW5rIHRoZSBmb2xsb3dpbmcgY29udHJpYnV0b3JzOiIKKwkgIGVjaG8KKwkgIChjZCAi
JDIiICYmIGV4ZWMgZ2l0IGxvZyAtLWZvcm1hdD0nJWFOIDwlYUU+JykgfCBzb3J0IC11Cit9ID4g
IiRNRVNPTl9ESVNUX1JPT1QvVEhBTktTIgpkaWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNv
bi5idWlsZAppbmRleCA4YzYyODhmMy4uNTg5NjE1NTEgMTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxk
CisrKyBiL21lc29uLmJ1aWxkCkBAIC02LDcgKzYsNyBAQCBwcm9qZWN0KCdzcGljZS1ndGsnLCAn
YycsCiAgICAgICAgICBsaWNlbnNlIDogJ0xHUEx2Mi4xJywKICAgICAgICAgIG1lc29uX3ZlcnNp
b24gOiAnPj0gMC40OScpCiAKLW1lc29uLmFkZF9kaXN0X3NjcmlwdCgnc2gnLCAnLWMnLCAnZWNo
byBAMEA+IiRNRVNPTl9ESVNUX1JPT1QvLnRhcmJhbGwtdmVyc2lvbiInLmZvcm1hdChtZXNvbi5w
cm9qZWN0X3ZlcnNpb24oKSkpCittZXNvbi5hZGRfZGlzdF9zY3JpcHQoJ2J1aWxkLWF1eC9tZXNv
bi1kaXN0JywgbWVzb24ucHJvamVjdF92ZXJzaW9uKCksIG1lc29uLnNvdXJjZV9yb290KCkpCiAK
ICMKICMgZ2xvYmFsIEMgZGVmaW5lcwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
