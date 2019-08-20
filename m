Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DC6961E1
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2019 16:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844486E7FD;
	Tue, 20 Aug 2019 14:05:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E7D26E7F5
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 14:05:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E369718C8900
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2019 14:05:51 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (ovpn-204-23.brq.redhat.com
 [10.40.204.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 130885D9DC;
 Tue, 20 Aug 2019 14:05:50 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:05:46 +0200
Message-Id: <20190820140547.15251-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Tue, 20 Aug 2019 14:05:51 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2] vmcstream: fix task cancellation
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

SWYgdGhlIHRhc2sgaXMgY2FuY2VsbGVkLCBnX3Rhc2tfcHJvcGFnYXRlX3BvaW50ZXIoKQppbiBz
cGljZV92bWNfb3V0cHV0X3N0cmVhbV93cml0ZV9maW5pc2goKSByZXR1cm5zIE5VTEwKd2hpY2gg
cHJvZHVjZXMgZm9sbG93aW5nIGVycm9yczoKCiAgICAoc3BpY3k6MTM1OTcpOiBHU3BpY2UtQ1JJ
VElDQUwgKio6IDE1OjM5OjQ2LjE2ODogc3BpY2Vfdm1jX3dyaXRlX2ZpbmlzaDogYXNzZXJ0aW9u
ICdyZXN1bHQgIT0gTlVMTCcgZmFpbGVkCgogICAgKHNwaWN5OjEzNTk3KTogR0xpYi1HT2JqZWN0
LUNSSVRJQ0FMICoqOiAxNTozOTo0Ni4xNjg6IGdfb2JqZWN0X3VucmVmOiBhc3NlcnRpb24gJ0df
SVNfT0JKRUNUIChvYmplY3QpJyBmYWlsZWQKClRvIGZpeCB0aGlzLCBjYWxsIHNwaWNlX3ZtY193
cml0ZV9maW5pc2goKSBpbW1lZGlhdGVseSBpbiB0aGUKY29ycmVzcG9uZGluZyB3cml0ZV9jYigp
LgoKU2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBz
cmMvdm1jc3RyZWFtLmMgfCAyMyArKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy92
bWNzdHJlYW0uYyBiL3NyYy92bWNzdHJlYW0uYwppbmRleCBiNmY2ZDFhLi5iN2RhMTAzIDEwMDY0
NAotLS0gYS9zcmMvdm1jc3RyZWFtLmMKKysrIGIvc3JjL3ZtY3N0cmVhbS5jCkBAIC0zOTcsMTgg
KzM5NywxMSBAQCBzcGljZV92bWNfb3V0cHV0X3N0cmVhbV93cml0ZV9mbihHT3V0cHV0U3RyZWFt
ICAgKnN0cmVhbSwKIAogc3RhdGljIGdzc2l6ZQogc3BpY2Vfdm1jX291dHB1dF9zdHJlYW1fd3Jp
dGVfZmluaXNoKEdPdXRwdXRTdHJlYW0gKnN0cmVhbSwKLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBHQXN5bmNSZXN1bHQgKnNpbXBsZSwKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBHQXN5bmNSZXN1bHQgKnJlc3VsdCwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBHRXJyb3IgKiplcnJvcikKIHsKLSAgICBTcGljZVZtY091dHB1
dFN0cmVhbSAqc2VsZiA9IFNQSUNFX1ZNQ19PVVRQVVRfU1RSRUFNKHN0cmVhbSk7Ci0gICAgR0Fz
eW5jUmVzdWx0ICpyZXMgPSBnX3Rhc2tfcHJvcGFnYXRlX3BvaW50ZXIoR19UQVNLKHNpbXBsZSks
IGVycm9yKTsKLSAgICBnc3NpemUgYnl0ZXNfd3JpdHRlbjsKLQotICAgIFNQSUNFX0RFQlVHKCJz
cGljZXZtYyB3cml0ZSBmaW5pc2giKTsKLSAgICBieXRlc193cml0dGVuID0gc3BpY2Vfdm1jX3dy
aXRlX2ZpbmlzaChzZWxmLT5jaGFubmVsLCByZXMsIGVycm9yKTsKLSAgICBnX29iamVjdF91bnJl
ZihyZXMpOwotCi0gICAgcmV0dXJuIGJ5dGVzX3dyaXR0ZW47CisgICAgZ19yZXR1cm5fdmFsX2lm
X2ZhaWwoZ190YXNrX2lzX3ZhbGlkKHJlc3VsdCwgc3RyZWFtKSwgLTEpOworICAgIHJldHVybiBn
X3Rhc2tfcHJvcGFnYXRlX2ludChHX1RBU0socmVzdWx0KSwgZXJyb3IpOwogfQogCiBzdGF0aWMg
dm9pZApAQCAtNDE3LDkgKzQxMCwxNyBAQCB3cml0ZV9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0
LAogICAgICAgICAgZ3BvaW50ZXIgdXNlcl9kYXRhKQogewogICAgIEdUYXNrICp0YXNrID0gdXNl
cl9kYXRhOworICAgIEdFcnJvciAqZXJyb3IgPSBOVUxMOworICAgIGdzc2l6ZSBieXRlc193cml0
dGVuOwogCi0gICAgZ190YXNrX3JldHVybl9wb2ludGVyKHRhc2ssIGdfb2JqZWN0X3JlZihyZXMp
LCBnX29iamVjdF91bnJlZik7CisgICAgU1BJQ0VfREVCVUcoInNwaWNldm1jIHdyaXRlIGZpbmlz
aCIpOworICAgIGJ5dGVzX3dyaXR0ZW4gPSBzcGljZV92bWNfd3JpdGVfZmluaXNoKFNQSUNFX0NI
QU5ORUwoc291cmNlX29iamVjdCksIHJlcywgJmVycm9yKTsKIAorICAgIGlmIChlcnJvcikgewor
ICAgICAgICBnX3Rhc2tfcmV0dXJuX2Vycm9yKHRhc2ssIGVycm9yKTsKKyAgICB9IGVsc2Ugewor
ICAgICAgICBnX3Rhc2tfcmV0dXJuX2ludCh0YXNrLCBieXRlc193cml0dGVuKTsKKyAgICB9CiAg
ICAgZ19vYmplY3RfdW5yZWYodGFzayk7CiB9CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
