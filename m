Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF9031BB4
	for <lists+spice-devel@lfdr.de>; Sat,  1 Jun 2019 14:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFDC489B55;
	Sat,  1 Jun 2019 12:14:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A944389B55
 for <spice-devel@lists.freedesktop.org>; Sat,  1 Jun 2019 12:14:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 52A033082E64
 for <spice-devel@lists.freedesktop.org>; Sat,  1 Jun 2019 12:14:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7694F600D1;
 Sat,  1 Jun 2019 12:14:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sat,  1 Jun 2019 13:14:12 +0100
Message-Id: <20190601121413.932-2-fziglio@redhat.com>
In-Reply-To: <20190601121413.932-1-fziglio@redhat.com>
References: <20190601121413.932-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Sat, 01 Jun 2019 12:14:19 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/3] spicevmc: Do not use
 RedCharDevice pipe items handling
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

QXMgd2UgZG9uJ3QgdXNlIGFueSB0b2tlbiB0aGVyZSdzIG5vIHJlYXNvbiB0byBub3QgcXVldWUK
ZGlyZWN0bHkgaW5zdGVhZCBvZiBwYXNzaW5nIHRocm91Z2ggUmVkQ2hhckRldmljZS4KVGhpcyB3
aWxsIG1ha2UgZWFzaWVyIHRvIGxpbWl0IHRoZSBxdWV1ZSB3aGljaCBjdXJyZW50bHkgaXMKdW5s
aW1pdGVkLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Ci0tLQogc2VydmVyL3NwaWNldm1jLmMgfCAxNSArKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Nl
cnZlci9zcGljZXZtYy5jIGIvc2VydmVyL3NwaWNldm1jLmMKaW5kZXggODRiYmI3M2MyLi44YzQx
NTczYWUgMTAwNjQ0Ci0tLSBhL3NlcnZlci9zcGljZXZtYy5jCisrKyBiL3NlcnZlci9zcGljZXZt
Yy5jCkBAIC0zNjAsMjkgKzM2MCwyNCBAQCBzdGF0aWMgUmVkUGlwZUl0ZW0gKnNwaWNldm1jX2No
YXJkZXZfcmVhZF9tc2dfZnJvbV9kZXYoUmVkQ2hhckRldmljZSAqc2VsZiwKIAogICAgICAgICBt
c2dfaXRlbV9jb21wcmVzc2VkID0gdHJ5X2NvbXByZXNzX2x6NChjaGFubmVsLCBuLCBtc2dfaXRl
bSk7CiAgICAgICAgIGlmIChtc2dfaXRlbV9jb21wcmVzc2VkICE9IE5VTEwpIHsKLSAgICAgICAg
ICAgIHJldHVybiAmbXNnX2l0ZW1fY29tcHJlc3NlZC0+YmFzZTsKKyAgICAgICAgICAgIHJlZF9j
aGFubmVsX2NsaWVudF9waXBlX2FkZF9wdXNoKGNoYW5uZWwtPnJjYywgJm1zZ19pdGVtX2NvbXBy
ZXNzZWQtPmJhc2UpOworICAgICAgICAgICAgcmV0dXJuIE5VTEw7CiAgICAgICAgIH0KICNlbmRp
ZgogICAgICAgICBzdGF0X2luY19jb3VudGVyKGNoYW5uZWwtPm91dF9kYXRhLCBuKTsKICAgICAg
ICAgbXNnX2l0ZW0tPnVuY29tcHJlc3NlZF9kYXRhX3NpemUgPSBuOwogICAgICAgICBtc2dfaXRl
bS0+YnVmX3VzZWQgPSBuOwotICAgICAgICByZXR1cm4gJm1zZ19pdGVtLT5iYXNlOwotICAgIH0g
ZWxzZSB7Ci0gICAgICAgIGNoYW5uZWwtPnBpcGVfaXRlbSA9IG1zZ19pdGVtOworICAgICAgICBy
ZWRfY2hhbm5lbF9jbGllbnRfcGlwZV9hZGRfcHVzaChjaGFubmVsLT5yY2MsICZtc2dfaXRlbS0+
YmFzZSk7CiAgICAgICAgIHJldHVybiBOVUxMOwogICAgIH0KKyAgICBjaGFubmVsLT5waXBlX2l0
ZW0gPSBtc2dfaXRlbTsKKyAgICByZXR1cm4gTlVMTDsKIH0KIAogc3RhdGljIHZvaWQgc3BpY2V2
bWNfY2hhcmRldl9zZW5kX21zZ190b19jbGllbnQoUmVkQ2hhckRldmljZSAqc2VsZiwKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZFBpcGVJdGVtICpt
c2csCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRD
bGllbnQgKmNsaWVudCkKIHsKLSAgICBSZWRDaGFyRGV2aWNlU3BpY2VWbWMgKnZtYyA9IFJFRF9D
SEFSX0RFVklDRV9TUElDRVZNQyhzZWxmKTsKLSAgICBSZWRWbWNDaGFubmVsICpjaGFubmVsID0g
UkVEX1ZNQ19DSEFOTkVMKHZtYy0+Y2hhbm5lbCk7Ci0KLSAgICBzcGljZV9hc3NlcnQocmVkX2No
YW5uZWxfY2xpZW50X2dldF9jbGllbnQoY2hhbm5lbC0+cmNjKSA9PSBjbGllbnQpOwotICAgIHJl
ZF9waXBlX2l0ZW1fcmVmKG1zZyk7Ci0gICAgcmVkX2NoYW5uZWxfY2xpZW50X3BpcGVfYWRkX3B1
c2goY2hhbm5lbC0+cmNjLCBtc2cpOwogfQogCiBzdGF0aWMgdm9pZCByZWRfcG9ydF9pbml0X2l0
ZW1fZnJlZShzdHJ1Y3QgUmVkUGlwZUl0ZW0gKmJhc2UpCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
