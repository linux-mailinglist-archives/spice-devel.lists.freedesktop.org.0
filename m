Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3592789FA
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 15:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468DD6ECD5;
	Fri, 25 Sep 2020 13:52:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1ABB6ECD5
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 13:52:50 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601041969;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w4av3mu/X0bQUvY/Z1ZG8P/ZXnjDHHI0bCj1uOdx9N8=;
 b=PyEDghOGitirRu3E+YK3JaKBIy+N82IIlDEWgeLAg4mulf5E/FLfMRjTIcIvepZLmLhBWW
 jOwcHdnvywJfQtBqyHq980pGD5E89a+ArAi21U+VDvz6Ien/EtVWrSKh7xRU/TwQhwBGlU
 fZ0XynWIjwcipq0xk9bUD5wMygnXNog=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-jNENJJaYNgO-RBv7uw8YKg-1; Fri, 25 Sep 2020 09:52:47 -0400
X-MC-Unique: jNENJJaYNgO-RBv7uw8YKg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97D4EAF20B;
 Fri, 25 Sep 2020 13:52:45 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 309E65C1C2;
 Fri, 25 Sep 2020 13:52:35 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Fri, 25 Sep 2020 17:50:56 +0400
Message-Id: <20200925135057.291556-6-marcandre.lureau@redhat.com>
In-Reply-To: <20200925135057.291556-1-marcandre.lureau@redhat.com>
References: <20200925135057.291556-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v2 5/6] spice: get monitors physical dimension
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

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+CgpO
b3RlIHRoYXQgZm9yIGNvbnNpc3RlbmN5LCB3ZSB1c2UgdGhlIHNhbWUgbG9naWMgYXMgTW9uaXRv
cnNDb25maWcgdG8KZmlndXJlIG91dCB0aGUgYXNzb2NpYXRlZCBtb25pdG9yLiBIb3dldmVyLCBJ
IGNhbid0IGZpbmQgdHJhY2VzIG9mIHRoZQpkaXNjdXNzaW9uL3BhdGNoZXMgYWJvdXQgdGhlICJu
ZXcgc3BpY2Utc2VydmVyIiBiZWhhdmlvdXI6IGl0IHN0aWxsIHVzZXMKdGhlIG11bHRpcGxlLWNv
bmZpZ3VyYXRpb25zIHBhdGggaW4gZ2l0IG1hc3Rlci4KClNpZ25lZC1vZmYtYnk6IE1hcmMtQW5k
csOpIEx1cmVhdSA8bWFyY2FuZHJlLmx1cmVhdUByZWRoYXQuY29tPgotLS0KIGluY2x1ZGUvdWkv
Y29uc29sZS5oIHwgMyArKysKIHVpL3NwaWNlLWRpc3BsYXkuYyAgIHwgOSArKysrKysrKysKIDIg
ZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWkv
Y29uc29sZS5oIGIvaW5jbHVkZS91aS9jb25zb2xlLmgKaW5kZXggMzUzZDJlNDlhMS4uZTczMDNk
OGI5OCAxMDA2NDQKLS0tIGEvaW5jbHVkZS91aS9jb25zb2xlLmgKKysrIGIvaW5jbHVkZS91aS9j
b25zb2xlLmgKQEAgLTExOSw2ICsxMTksOSBAQCB0eXBlZGVmIHN0cnVjdCBEaXNwbGF5U3VyZmFj
ZSB7CiB9IERpc3BsYXlTdXJmYWNlOwogCiB0eXBlZGVmIHN0cnVjdCBRZW11VUlJbmZvIHsKKyAg
ICAvKiBwaHlzaWNhbCBkaW1lbnNpb24gKi8KKyAgICB1aW50MTZfdCB3aWR0aF9tbTsKKyAgICB1
aW50MTZfdCBoZWlnaHRfbW07CiAgICAgLyogZ2VvbWV0cnkgKi8KICAgICBpbnQgICAgICAgeG9m
ZjsKICAgICBpbnQgICAgICAgeW9mZjsKZGlmZiAtLWdpdCBhL3VpL3NwaWNlLWRpc3BsYXkuYyBi
L3VpL3NwaWNlLWRpc3BsYXkuYwppbmRleCBiMzA0YzEzMTQ5Li5hMTBmNzJiYzVjIDEwMDY0NAot
LS0gYS91aS9zcGljZS1kaXNwbGF5LmMKKysrIGIvdWkvc3BpY2UtZGlzcGxheS5jCkBAIC02Nzks
NyArNjc5LDE2IEBAIHN0YXRpYyBpbnQgaW50ZXJmYWNlX2NsaWVudF9tb25pdG9yc19jb25maWco
UVhMSW5zdGFuY2UgKnNpbiwKICAgICAgICAgaW5mby53aWR0aCAgPSBtYy0+bW9uaXRvcnNbaGVh
ZF0ud2lkdGg7CiAgICAgICAgIGluZm8uaGVpZ2h0ID0gbWMtPm1vbml0b3JzW2hlYWRdLmhlaWdo
dDsKICAgICB9CisjaWYgU1BJQ0VfU0VSVkVSX1ZFUlNJT04gPj0gMHgwMDBlMDQgLyogcmVsZWFz
ZSAwLjE0LjQgKi8KKyAgICBpZiAobWMtPmZsYWdzICYgVkRfQUdFTlRfQ09ORklHX01PTklUT1JT
X0ZMQUdfUEhZU0lDQUxfU0laRSkgeworICAgICAgICBWREFnZW50TW9uaXRvck1NICptbSA9ICh2
b2lkICopJm1jLT5tb25pdG9yc1ttYy0+bnVtX29mX21vbml0b3JzXTsKIAorICAgICAgICBpZiAo
bWMtPm51bV9vZl9tb25pdG9ycyA+IGhlYWQpIHsKKyAgICAgICAgICAgIGluZm8ud2lkdGhfbW0g
PSBtbVtoZWFkXS53aWR0aDsKKyAgICAgICAgICAgIGluZm8uaGVpZ2h0X21tID0gbW1baGVhZF0u
aGVpZ2h0OworICAgICAgICB9CisgICAgfQorI2VuZGlmCiAgICAgdHJhY2VfcWVtdV9zcGljZV91
aV9pbmZvKHNzZC0+cXhsLmlkLCBpbmZvLndpZHRoLCBpbmZvLmhlaWdodCk7CiAgICAgZHB5X3Nl
dF91aV9pbmZvKHNzZC0+ZGNsLmNvbiwgJmluZm8pOwogICAgIHJldHVybiAxOwotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
