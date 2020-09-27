Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095E427A175
	for <lists+spice-devel@lfdr.de>; Sun, 27 Sep 2020 16:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFC36E0F7;
	Sun, 27 Sep 2020 14:59:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA7D6E0F7
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Sep 2020 14:59:01 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601218740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b0l8qvWRrHwiSkIqmmCGlnK1Woq1I9l3yvB4ZPhG79Y=;
 b=P8OUdc5ivEovT5bgi6NFgWBCpdr5vFyXsw475jsnFGKDKTM4JANaR5z2oqhgTsFvBCfZJm
 PVC5+f9c/V81Vu+Hav2U4a50MjTdFW41avHVzAmrQBbyccRl1GEbMoPfVzyDXXJZn+5k7F
 fQzPDcLsq3P6ep1zwcqODjqK/lW9Ug8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-z30i4VWZN4urGLAgNL5npQ-1; Sun, 27 Sep 2020 10:58:56 -0400
X-MC-Unique: z30i4VWZN4urGLAgNL5npQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2BBA6186841E;
 Sun, 27 Sep 2020 14:58:55 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0332110013C4;
 Sun, 27 Sep 2020 14:58:44 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Sun, 27 Sep 2020 18:57:49 +0400
Message-Id: <20200927145751.365446-5-marcandre.lureau@redhat.com>
In-Reply-To: <20200927145751.365446-1-marcandre.lureau@redhat.com>
References: <20200927145751.365446-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v3 4/6] spice: remove the single monitor
 config logic
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

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+CgpJ
bnRyb2R1Y2VkIGluIGNvbW1pdCA5Yzk1NmU2NDYxNzhmZWU4YzE0Y2U3ZGZhZTVhOWQ3Y2I5MDE4
NzZjICgic3BpY2U6CnByZXBhcmUgZm9yIHVwY29taW5nIHNwaWNlLXNlcnZlciBjaGFuZ2UiKSwg
dGhlIG5ldyBsb2dpYyBuZXZlcgptYXRlcmlhbGl6ZWQgaW4gdGhlIHNwaWNlIHNlcnZlciBzb3Vy
Y2UgdHJlZS4gTGV0J3MgcmVtb3ZlIGl0IGZvciBub3csCnVudGlsIGl0IGFjdHVhbGx5IGNoYW5n
ZXMgaW4gU3BpY2UuCgpTaWduZWQtb2ZmLWJ5OiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRy
ZS5sdXJlYXVAcmVkaGF0LmNvbT4KLS0tCiB1aS9zcGljZS1kaXNwbGF5LmMgfCAyNiArKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMjIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdWkvc3BpY2UtZGlzcGxheS5jIGIvdWkvc3BpY2Ut
ZGlzcGxheS5jCmluZGV4IDYyNWQ5MjMyYjkuLmIzMDRjMTMxNDkgMTAwNjQ0Ci0tLSBhL3VpL3Nw
aWNlLWRpc3BsYXkuYworKysgYi91aS9zcGljZS1kaXNwbGF5LmMKQEAgLTY3NCwyOCArNjc0LDEw
IEBAIHN0YXRpYyBpbnQgaW50ZXJmYWNlX2NsaWVudF9tb25pdG9yc19jb25maWcoUVhMSW5zdGFu
Y2UgKnNpbiwKIAogICAgIGluZm8gPSAqZHB5X2dldF91aV9pbmZvKHNzZC0+ZGNsLmNvbik7CiAK
LSAgICBpZiAobWMtPm51bV9vZl9tb25pdG9ycyA9PSAxKSB7Ci0gICAgICAgIC8qCi0gICAgICAg
ICAqIE5ldyBzcGljZS1zZXJ2ZXIgdmVyc2lvbiB3aGljaCBmaWx0ZXJzIHRoZSBsaXN0IG9mIG1v
bml0b3JzCi0gICAgICAgICAqIHRvIG9ubHkgaW5jbHVkZSB0aG9zZSB0aGF0IGJlbG9uZyB0byBv
dXIgZGlzcGxheSBjaGFubmVsLgotICAgICAgICAgKgotICAgICAgICAgKiBzaW5nbGUtaGVhZCBj
b25maWd1cmF0aW9uICh3aGVyZSBmaWx0ZXJpbmcgZG9lc24ndCBtYXR0ZXIpCi0gICAgICAgICAq
IHRha2VzIHRoaXMgY29kZSBwYXRoIHRvby4KLSAgICAgICAgICovCi0gICAgICAgIGluZm8ud2lk
dGggID0gbWMtPm1vbml0b3JzWzBdLndpZHRoOwotICAgICAgICBpbmZvLmhlaWdodCA9IG1jLT5t
b25pdG9yc1swXS5oZWlnaHQ7Ci0gICAgfSBlbHNlIHsKLSAgICAgICAgLyoKLSAgICAgICAgICog
T2xkIHNwaWNlLXNlcnZlciB3aGljaCBnaXZlcyB1cyBhbGwgbW9uaXRvcnMsIHNvIHdlIGhhdmUg
dG8KLSAgICAgICAgICogZmlndXJlIG91cnNlbGYgd2hpY2ggZW50cnkgd2UgbmVlZC4gIEFycmF5
IGluZGV4IGlzIHRoZQotICAgICAgICAgKiBjaGFubmVsX2lkLCB3aGljaCBpcyB0aGUgcWVtdSBj
b25zb2xlIGluZGV4LCBzZWUKLSAgICAgICAgICogcWVtdV9zcGljZV9hZGRfZGlzcGxheV9pbnRl
cmZhY2UoKS4KLSAgICAgICAgICovCi0gICAgICAgIGhlYWQgPSBxZW11X2NvbnNvbGVfZ2V0X2lu
ZGV4KHNzZC0+ZGNsLmNvbik7Ci0gICAgICAgIGlmIChtYy0+bnVtX29mX21vbml0b3JzID4gaGVh
ZCkgewotICAgICAgICAgICAgaW5mby53aWR0aCAgPSBtYy0+bW9uaXRvcnNbaGVhZF0ud2lkdGg7
Ci0gICAgICAgICAgICBpbmZvLmhlaWdodCA9IG1jLT5tb25pdG9yc1toZWFkXS5oZWlnaHQ7Ci0g
ICAgICAgIH0KKyAgICBoZWFkID0gcWVtdV9jb25zb2xlX2dldF9pbmRleChzc2QtPmRjbC5jb24p
OworICAgIGlmIChtYy0+bnVtX29mX21vbml0b3JzID4gaGVhZCkgeworICAgICAgICBpbmZvLndp
ZHRoICA9IG1jLT5tb25pdG9yc1toZWFkXS53aWR0aDsKKyAgICAgICAgaW5mby5oZWlnaHQgPSBt
Yy0+bW9uaXRvcnNbaGVhZF0uaGVpZ2h0OwogICAgIH0KIAogICAgIHRyYWNlX3FlbXVfc3BpY2Vf
dWlfaW5mbyhzc2QtPnF4bC5pZCwgaW5mby53aWR0aCwgaW5mby5oZWlnaHQpOwotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
