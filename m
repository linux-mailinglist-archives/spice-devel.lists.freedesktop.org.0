Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A47DBFBE1
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 16:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C10891A8;
	Tue, 30 Apr 2019 14:49:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53DC891A8
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 14:49:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 472CC85A04
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 14:49:09 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (dhcp-4-106.tlv.redhat.com
 [10.35.4.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AA61F88EA
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 14:49:08 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 17:49:07 +0300
Message-Id: <20190430144907.6409-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 30 Apr 2019 14:49:09 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin: Initialize
 X connection also when ximagesrc is used
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

SW4gb3JkZXIgdG8gZ2V0IGdyYXBoaWMgZGV2aWNlcyBpbmZvIGEgY29ubmVjdGlvbiB0byBYIHNl
cnZlcgppcyByZXF1aXJlZCwgbWFrZSBzdXJlIHdlIGdldCBpdCBhbHNvIHdoZW4geGltYWdlc3Jj
IGNhcHR1cmUKaXMgdXNlZCAoIFhMSUJfQ0FQVFVSRT0wICkuCgpTaWduZWQtb2ZmLWJ5OiBTbmly
IFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgotLS0KIHNyYy9nc3QtcGx1Z2luLmNwcCB8
IDE4ICsrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
MTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVnaW4uY3BwIGIvc3JjL2dz
dC1wbHVnaW4uY3BwCmluZGV4IDNlZGY5ZjUuLjA4MTRlZjUgMTAwNjQ0Ci0tLSBhL3NyYy9nc3Qt
cGx1Z2luLmNwcAorKysgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKQEAgLTg0LDkgKzg0LDkgQEAgcHJp
dmF0ZToKICAgICBHc3RFbGVtZW50ICpnZXRfZW5jb2Rlcl9wbHVnaW4oY29uc3QgR3N0cmVhbWVy
RW5jb2RlclNldHRpbmdzICZzZXR0aW5ncywgR3N0Q2Fwc1VQdHIgJnNpbmtfY2Fwcyk7CiAgICAg
R3N0RWxlbWVudCAqZ2V0X2NhcHR1cmVfcGx1Z2luKGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0
aW5ncyAmc2V0dGluZ3MpOwogICAgIHZvaWQgcGlwZWxpbmVfaW5pdChjb25zdCBHc3RyZWFtZXJF
bmNvZGVyU2V0dGluZ3MgJnNldHRpbmdzKTsKKyAgICBEaXNwbGF5ICpkcHk7CiAjaWYgWExJQl9D
QVBUVVJFCiAgICAgdm9pZCB4bGliX2NhcHR1cmUoKTsKLSAgICBEaXNwbGF5ICpkcHk7CiAgICAg
WEltYWdlICppbWFnZSA9IG51bGxwdHI7CiAjZW5kaWYKICAgICBHc3RPYmplY3RVUHRyPEdzdEVs
ZW1lbnQ+IHBpcGVsaW5lLCBjYXB0dXJlLCBzaW5rOwpAQCAtMjUxLDEzICsyNTEsNiBAQCB2b2lk
IEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6cGlwZWxpbmVfaW5pdChjb25zdCBHc3RyZWFtZXJFbmNv
ZGVyU2V0dGluZ3MgJnNldHRpbgogICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkxp
bmtpbmcgZ3N0cmVhbWVyJ3MgZWxlbWVudHMgZmFpbGVkIik7CiAgICAgfQogCi0jaWYgWExJQl9D
QVBUVVJFCi0gICAgZHB5ID0gWE9wZW5EaXNwbGF5KG51bGxwdHIpOwotICAgIGlmICghZHB5KSB7
Ci0gICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiVW5hYmxlIHRvIGluaXRpYWxpemUg
WDExIik7Ci0gICAgfQotI2VuZGlmCi0KICAgICBnc3RfZWxlbWVudF9zZXRfc3RhdGUocGlwZWxp
bmUuZ2V0KCksIEdTVF9TVEFURV9QTEFZSU5HKTsKIAogI2lmICFYTElCX0NBUFRVUkUKQEAgLTI5
Miw2ICsyODUsMTAgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQo
Y29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW4KIEdzdHJlYW1lckZyYW1lQ2Fw
dHVyZTo6R3N0cmVhbWVyRnJhbWVDYXB0dXJlKGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0aW5n
cyAmc2V0dGluZ3MpOgogICAgIHNldHRpbmdzKHNldHRpbmdzKQogeworICAgIGRweSA9IFhPcGVu
RGlzcGxheShudWxscHRyKTsKKyAgICBpZiAoIWRweSkgeworICAgICAgICB0aHJvdyBzdGQ6OnJ1
bnRpbWVfZXJyb3IoIlVuYWJsZSB0byBpbml0aWFsaXplIFgxMSIpOworICAgIH0KICAgICBwaXBl
bGluZV9pbml0KHNldHRpbmdzKTsKIH0KIApAQCAtMzEzLDkgKzMxMCw3IEBAIEdzdHJlYW1lckZy
YW1lQ2FwdHVyZTo6fkdzdHJlYW1lckZyYW1lQ2FwdHVyZSgpCiB7CiAgICAgZnJlZV9zYW1wbGUo
KTsKICAgICBnc3RfZWxlbWVudF9zZXRfc3RhdGUocGlwZWxpbmUuZ2V0KCksIEdTVF9TVEFURV9O
VUxMKTsKLSNpZiBYTElCX0NBUFRVUkUKICAgICBYQ2xvc2VEaXNwbGF5KGRweSk7Ci0jZW5kaWYK
IH0KIAogdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OlJlc2V0KCkKQEAgLTMyNiw2ICszMjEs
OSBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6UmVzZXQoKQogI2lmIFhMSUJfQ0FQVFVS
RQogdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgpCiB7CisgICAgaWYg
KCFkcHkpIHsKKyAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJYMTEgY29ubmVjdGlv
biBpcyBub3QgaW5pdGlhbGl6ZWQiKTsKKyAgICB9CiAgICAgaW50IHNjcmVlbiA9IFhEZWZhdWx0
U2NyZWVuKGRweSk7CiAKICAgICBXaW5kb3cgd2luID0gUm9vdFdpbmRvdyhkcHksIHNjcmVlbik7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
