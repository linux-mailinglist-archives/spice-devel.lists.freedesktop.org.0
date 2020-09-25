Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A606C2789F7
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 15:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA0A6ECB8;
	Fri, 25 Sep 2020 13:52:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAEE46ECB8
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 13:52:20 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601041939;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hNLcghou2JIIFL8nOu0gOdDNzxKgsPO8BGkR410M6LI=;
 b=Uv+8OoGBDWR0FWEBF6+H74hR4qeCR3GWcNuOUmyUmA8WmzAhPijtB7yKNSKW77+b7WXJCb
 3BI1lBvjmQ+UgdOdoh+DIh2b83QM1ggdeVVlKdhrcnZllY4xRaIiKK7GQ8p0uX2ZJ2KBYJ
 Zw4m7B8oXGF806qzovYcmjAqSe8U2iE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-287-6xHuarKeMle2hTrLyRsqfA-1; Fri, 25 Sep 2020 09:52:17 -0400
X-MC-Unique: 6xHuarKeMle2hTrLyRsqfA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44B471018F89;
 Fri, 25 Sep 2020 13:52:14 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA4857B7A3;
 Fri, 25 Sep 2020 13:52:02 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Fri, 25 Sep 2020 17:50:54 +0400
Message-Id: <20200925135057.291556-4-marcandre.lureau@redhat.com>
In-Reply-To: <20200925135057.291556-1-marcandre.lureau@redhat.com>
References: <20200925135057.291556-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v2 3/6] ui: add getter for UIInfo
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+CgpU
aGUgZm9sbG93aW5nIHBhdGNoIGlzIGdvaW5nIHRvIGludHJvZHVjZSBleHRyYSBmaWVsZHMgLyBk
ZXRhaWxzIHRvClVJSW5mby4gQWRkIGEgZ2V0dGVyIGFuZCBrZWVwIHRoZSBjdXJyZW50IHZhbHVl
cywgaW5zdGVhZCBvZiBtZW1zZXQoMCkKClNpZ25lZC1vZmYtYnk6IE1hcmMtQW5kcsOpIEx1cmVh
dSA8bWFyY2FuZHJlLmx1cmVhdUByZWRoYXQuY29tPgotLS0KIGluY2x1ZGUvdWkvY29uc29sZS5o
IHwgMSArCiB1aS9jb25zb2xlLmMgICAgICAgICB8IDcgKysrKysrKwogdWkvc3BpY2UtZGlzcGxh
eS5jICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWkvY29uc29sZS5oIGIvaW5jbHVkZS91aS9jb25z
b2xlLmgKaW5kZXggNzllMzAxZjk0Ni4uMzUzZDJlNDlhMSAxMDA2NDQKLS0tIGEvaW5jbHVkZS91
aS9jb25zb2xlLmgKKysrIGIvaW5jbHVkZS91aS9jb25zb2xlLmgKQEAgLTI2NCw2ICsyNjQsNyBA
QCB2b2lkIHVwZGF0ZV9kaXNwbGF5Y2hhbmdlbGlzdGVuZXIoRGlzcGxheUNoYW5nZUxpc3RlbmVy
ICpkY2wsCiB2b2lkIHVucmVnaXN0ZXJfZGlzcGxheWNoYW5nZWxpc3RlbmVyKERpc3BsYXlDaGFu
Z2VMaXN0ZW5lciAqZGNsKTsKIAogYm9vbCBkcHlfdWlfaW5mb19zdXBwb3J0ZWQoUWVtdUNvbnNv
bGUgKmNvbik7Citjb25zdCBRZW11VUlJbmZvICpkcHlfZ2V0X3VpX2luZm8oY29uc3QgUWVtdUNv
bnNvbGUgKmNvbik7CiBpbnQgZHB5X3NldF91aV9pbmZvKFFlbXVDb25zb2xlICpjb24sIFFlbXVV
SUluZm8gKmluZm8pOwogCiB2b2lkIGRweV9nZnhfdXBkYXRlKFFlbXVDb25zb2xlICpjb24sIGlu
dCB4LCBpbnQgeSwgaW50IHcsIGludCBoKTsKZGlmZiAtLWdpdCBhL3VpL2NvbnNvbGUuYyBiL3Vp
L2NvbnNvbGUuYwppbmRleCA3NTkyYzNjMzI0Li41NGE3NGMwYjE2IDEwMDY0NAotLS0gYS91aS9j
b25zb2xlLmMKKysrIGIvdWkvY29uc29sZS5jCkBAIC0xNTE2LDYgKzE1MTYsMTMgQEAgYm9vbCBk
cHlfdWlfaW5mb19zdXBwb3J0ZWQoUWVtdUNvbnNvbGUgKmNvbikKICAgICByZXR1cm4gY29uLT5o
d19vcHMtPnVpX2luZm8gIT0gTlVMTDsKIH0KIAorY29uc3QgUWVtdVVJSW5mbyAqZHB5X2dldF91
aV9pbmZvKGNvbnN0IFFlbXVDb25zb2xlICpjb24pCit7CisgICAgYXNzZXJ0KGNvbiAhPSBOVUxM
KTsKKworICAgIHJldHVybiAmY29uLT51aV9pbmZvOworfQorCiBpbnQgZHB5X3NldF91aV9pbmZv
KFFlbXVDb25zb2xlICpjb24sIFFlbXVVSUluZm8gKmluZm8pCiB7CiAgICAgYXNzZXJ0KGNvbiAh
PSBOVUxMKTsKZGlmZiAtLWdpdCBhL3VpL3NwaWNlLWRpc3BsYXkuYyBiL3VpL3NwaWNlLWRpc3Bs
YXkuYwppbmRleCAxOTYzMmZkZjZjLi42MjVkOTIzMmI5IDEwMDY0NAotLS0gYS91aS9zcGljZS1k
aXNwbGF5LmMKKysrIGIvdWkvc3BpY2UtZGlzcGxheS5jCkBAIC02NzIsNyArNjcyLDcgQEAgc3Rh
dGljIGludCBpbnRlcmZhY2VfY2xpZW50X21vbml0b3JzX2NvbmZpZyhRWExJbnN0YW5jZSAqc2lu
LAogICAgICAgICByZXR1cm4gMTsKICAgICB9CiAKLSAgICBtZW1zZXQoJmluZm8sIDAsIHNpemVv
ZihpbmZvKSk7CisgICAgaW5mbyA9ICpkcHlfZ2V0X3VpX2luZm8oc3NkLT5kY2wuY29uKTsKIAog
ICAgIGlmIChtYy0+bnVtX29mX21vbml0b3JzID09IDEpIHsKICAgICAgICAgLyoKLS0gCjIuMjYu
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
