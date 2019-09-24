Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D37BC9C7
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 16:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8536EA40;
	Tue, 24 Sep 2019 14:06:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408276EA40
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:06:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D68B2C04B302
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:06:56 +0000 (UTC)
Received: from dhcp-4-140.tlv.redhat.com (dhcp-4-140.tlv.redhat.com
 [10.35.4.140])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 438AA19C6A
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:06:56 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 17:06:53 +0300
Message-Id: <20190924140654.9351-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 24 Sep 2019 14:06:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2] gstreamer: Use the
 element-setup signal instead of deep-element-added
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

SXRzIGZ1bmN0aW9uYWxseSBpcyBlcXVpdmFsZW50IHRvIGNvbm5lY3RpbmcgdG8gdGhlIGRlZXAt
ZWxlbWVudC1hZGRlZApzaWduYWwsIGJ1dCBhIGJpdCBtb3JlIGNvbnZlbmllbnQKClNpZ25lZC1v
ZmYtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+Ci0tLQogc3JjL2NoYW5u
ZWwtZGlzcGxheS1nc3QuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3Qu
YyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKaW5kZXggNmZjY2Y2Mi4uNDM3MzI4YiAxMDA2
NDQKLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYworKysgYi9zcmMvY2hhbm5lbC1kaXNw
bGF5LWdzdC5jCkBAIC00NzEsOCArNDcxLDcgQEAgc2lua19ldmVudF9wcm9iZShHc3RQYWQgKnBh
ZCwgR3N0UGFkUHJvYmVJbmZvICppbmZvLCBncG9pbnRlciBkYXRhKQogCiAvKiBUaGlzIGZ1bmN0
aW9uIGlzIGNhbGxlZCB0byB1c2VkIHRvIHNldCBhIHByb2JlIG9uIHRoZSBzaW5rICovCiBzdGF0
aWMgdm9pZAotZGVlcF9lbGVtZW50X2FkZGVkX2NiKEdzdEJpbiAqcGlwZWxpbmUsIEdzdEJpbiAq
YmluLCBHc3RFbGVtZW50ICplbGVtZW50LAotICAgICAgICAgICAgICAgICAgICAgIFNwaWNlR3N0
RGVjb2RlciAqZGVjb2RlcikKK2VsZW1lbnRfc2V0dXBfY2IoR3N0RWxlbWVudCAqcGlwZWxpbmUs
IEdzdEVsZW1lbnQgKmVsZW1lbnQsIFNwaWNlR3N0RGVjb2RlciAqZGVjb2RlcikKIHsKICAgICAv
KiBBdHRhY2ggYSBwcm9iZSB0byB0aGUgc2luayB0byB1cGRhdGUgdGhlIHN0YXRpc3RpY3MgKi8K
ICAgICBpZiAoR1NUX0lTX0JBU0VfU0lOSyhlbGVtZW50KSkgewpAQCAtNTQzLDcgKzU0Miw3IEBA
IHN0YXRpYyBnYm9vbGVhbiBjcmVhdGVfcGlwZWxpbmUoU3BpY2VHc3REZWNvZGVyICpkZWNvZGVy
KQogI2VuZGlmCiAgICAgfQogCi0gICAgZ19zaWduYWxfY29ubmVjdChwbGF5YmluLCAiZGVlcC1l
bGVtZW50LWFkZGVkIiwgR19DQUxMQkFDSyhkZWVwX2VsZW1lbnRfYWRkZWRfY2IpLCBkZWNvZGVy
KTsKKyAgICBnX3NpZ25hbF9jb25uZWN0KHBsYXliaW4sICJlbGVtZW50LXNldHVwIiwgR19DQUxM
QkFDSyhlbGVtZW50X3NldHVwX2NiKSwgZGVjb2Rlcik7CiAgICAgZ19zaWduYWxfY29ubmVjdChw
bGF5YmluLCAic291cmNlLXNldHVwIiwgR19DQUxMQkFDSyhhcHBfc291cmNlX3NldHVwKSwgZGVj
b2Rlcik7CiAKICAgICBnX29iamVjdF9zZXQocGxheWJpbiwKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
