Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC5E1755
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 12:06:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAFE6EA2B;
	Wed, 23 Oct 2019 10:06:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163BE6EA2B
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:46 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-HR5juqo4MumPDXsWApemWg-1; Wed, 23 Oct 2019 06:06:42 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A62680183D
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 986DE5DD78;
 Wed, 23 Oct 2019 10:06:37 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 23 Oct 2019 11:06:30 +0100
Message-Id: <20191023100632.26265-3-fziglio@redhat.com>
In-Reply-To: <20191023100632.26265-1-fziglio@redhat.com>
References: <20191023100632.26265-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: HR5juqo4MumPDXsWApemWg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571825206;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ik/PG4nGysGQH2CVZnMNEstJ5kvlxfOEp9AZ4zokKQY=;
 b=aytgv37E5k+9J/q4UvzT8CzwFGaWluDv0E9qUfvf9GtdrjYbT43I1llQmEGxdhirI2YAGC
 yd4kNc7xmy2mBw+M+EM/AbvRxmHFuLAy3zc5eGypwk3C4eaY/AQXiZLgVAYrcJDEhWVztg
 OIw8UHnn9nkvLFroGSG0daqxvUccaBw=
Subject: [Spice-devel] [PATCH spice-protocol v4 3/5] build-sys: Provide spec
 file during build
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

SGF2aW5nIHRoZSBSUE0gc3BlYyBmaWxlIHByb2R1Y2VkIGJ5IHRoZSBidWlsZCBpcyBoZWxwZnVs
IGluCmRpZmZlcmVudCBzaXR1YXRpb24uIERpZmZlcmVudCB0b29scyBsaWtlIG1vY2sgb3IgY29k
ZQpzY2FubmVycyBhY2NlcHQgc291cmNlIFJQTXMgYXMgaW5wdXQuClByb3ZpZGluZyB0aGlzIGZp
bGUgYWxsb3dzIGVhc2lseSBidWlsZCBvZiB0aGUgc291cmNlIFJQTSAoYW5kCmJpbmFyaWVzKSB1
c2luZyBhIHNpbXBsZSBjb21tYW5kIGxpa2UKCiAgJCBycG1idWlsZCAtdGEgc3BpY2UtcHJvdG9j
b2wtWFhYWC50YXIuYnoyCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0
LmNvbT4KLS0KQ2hhbmdlcyBzaW5jZSB2MzoKLSBhZGQgZ2l0bGFiIGNpIGZyb20gVmljdG9yCi0t
LQogLmdpdGxhYi1jaS55bWwgICAgICAgICB8IDQgKysrLQogTWFrZWZpbGUuYW0gICAgICAgICAg
ICB8IDEgKwogY29uZmlndXJlLmFjICAgICAgICAgICB8IDEgKwogc3BpY2UtcHJvdG9jb2wuc3Bl
Yy5pbiB8IDMgKystCiA0IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCmluZGV4
IGIzZmFkNjQuLmEyMDc3NmUgMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRs
YWItY2kueW1sCkBAIC0zLDcgKzMsNyBAQCBpbWFnZTogZmVkb3JhOmxhdGVzdAogdmFyaWFibGVz
OgogICBERVBTX0NPTU1PTjogZ2l0IGxpYnRvb2wgbWFrZSBweXRob24zIHB5dGhvbjMtc2l4IHJl
ZGhhdC1ycG0tY29uZmlnCiAgICAgICAgICAgICAgICBweXRob24zLXB5cGFyc2luZyBtZXNvbiBu
aW5qYS1idWlsZCBndGstZG9jIGdsaWIyLWRldmVsCi0gICAgICAgICAgICAgICBnZXR0ZXh0IGdl
dHRleHQtZGV2ZWwgYnppcDIKKyAgICAgICAgICAgICAgIGdldHRleHQgZ2V0dGV4dC1kZXZlbCBi
emlwMiBycG1saW50IHJwbS1idWlsZCBweXRob24tdW52ZXJzaW9uZWQtY29tbWFuZAogCiBiZWZv
cmVfc2NyaXB0OgogLSBkbmYgaW5zdGFsbCAteSAkREVQU19DT01NT04KQEAgLTE0LDYgKzE0LDgg
QEAgZmVkb3JhLWF1dG90b29sczoKICAgICAtIC4vYXV0b2dlbi5zaAogICAgIC0gbWFrZQogICAg
IC0gbWFrZSBkaXN0Y2hlY2sKKyAgICAtIHJwbWxpbnQgLW8gIk5ldHdvcmtFbmFibGVkIEZhbHNl
IiBzcGljZS1wcm90b2NvbC5zcGVjCisgICAgLSBycG1idWlsZCAtdGEgc3BpY2UtcHJvdG9jb2wt
Ki50YXIuYnoyCiAKIGZlZG9yYS1tZXNvbjoKICAgc2NyaXB0OgpkaWZmIC0tZ2l0IGEvTWFrZWZp
bGUuYW0gYi9NYWtlZmlsZS5hbQppbmRleCBkYjJkNWJhLi5jNWI5Nzg3IDEwMDY0NAotLS0gYS9N
YWtlZmlsZS5hbQorKysgYi9NYWtlZmlsZS5hbQpAQCAtMjUsNiArMjUsNyBAQCBNQUlOVEFJTkVS
Q0xFQU5GSUxFUyA9CQkJCQkJXAogRVhUUkFfRElTVCA9CQkJCQkJCVwKIAlSRUFETUUubWQJCQkJ
CQlcCiAJQ0hBTkdFTE9HLm1kCQkJCQkJXAorCXNwaWNlLXByb3RvY29sLnNwZWMJCQkJCVwKIAlt
ZXNvbi5idWlsZAogCiAtaW5jbHVkZSAkKHRvcF9zcmNkaXIpL2dpdC5tawpkaWZmIC0tZ2l0IGEv
Y29uZmlndXJlLmFjIGIvY29uZmlndXJlLmFjCmluZGV4IGJjM2UzM2YuLjJhZGNiN2MgMTAwNjQ0
Ci0tLSBhL2NvbmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTE4LDQgKzE4LDUgQEAg
QUNfT1VUUFVUKFsKIE1ha2VmaWxlCiBzcGljZS1wcm90b2NvbC5wYwogc3BpY2UvTWFrZWZpbGUK
K3NwaWNlLXByb3RvY29sLnNwZWMKIF0pCmRpZmYgLS1naXQgYS9zcGljZS1wcm90b2NvbC5zcGVj
LmluIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgppbmRleCBlMjQwNjM3Li40OTcyNGM2IDEwMDY0
NAotLS0gYS9zcGljZS1wcm90b2NvbC5zcGVjLmluCisrKyBiL3NwaWNlLXByb3RvY29sLnNwZWMu
aW4KQEAgLTEsNyArMSw4IEBACiBOYW1lOiAgICAgICAgICAgc3BpY2UtcHJvdG9jb2wKLVZlcnNp
b246ICAgICAgICAwLjE0LjAKK1ZlcnNpb246ICAgICAgICBAVkVSU0lPTkAKIFJlbGVhc2U6ICAg
ICAgICAxJXs/ZGlzdH0KIFN1bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFkZXIgZmls
ZXMKK0dyb3VwOiAgICAgICAgICBEZXZlbG9wbWVudC9MaWJyYXJpZXMKICMgTWFpbiBoZWFkZXJz
IGFyZSBCU0QsIGNvbnRyb2xsZXIgLyBmb3JlaWduIG1lbnUgYXJlIExHUEwKIExpY2Vuc2U6ICAg
ICAgICBCU0QgYW5kIExHUEx2MisKIFVSTDogICAgICAgICAgICBodHRwczovL3d3dy5zcGljZS1z
cGFjZS5vcmcKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
