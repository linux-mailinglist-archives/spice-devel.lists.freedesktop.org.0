Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815F7DE60
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD88D6E6C5;
	Thu,  1 Aug 2019 15:01:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62E16E6C2
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 228637E429
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:23 +0000 (UTC)
Received: from dhcp-4-93.tlv.redhat.com (dhcp-4-93.tlv.redhat.com [10.35.4.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7D878196FE
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:22 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  1 Aug 2019 18:01:18 +0300
Message-Id: <20190801150119.29179-3-ssheribe@redhat.com>
In-Reply-To: <20190801150119.29179-1-ssheribe@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 01 Aug 2019 15:01:23 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent 3/4] gst-plugin: Free
 input buffer and XImage as soon as possible
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

LS0tCiBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAzMSArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVnaW4uY3BwIGIvc3JjL2dzdC1wbHVnaW4uY3BwCmluZGV4
IDBhMWQwNDEuLmM3NDEyYzUgMTAwNjQ0Ci0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAorKysgYi9z
cmMvZ3N0LXBsdWdpbi5jcHAKQEAgLTY3LDYgKzY3LDE1IEBAIHN0cnVjdCBHc3RTYW1wbGVEZWxl
dGVyIHsKIAogdXNpbmcgR3N0U2FtcGxlVVB0ciA9IHN0ZDo6dW5pcXVlX3B0cjxHc3RTYW1wbGUs
IEdzdFNhbXBsZURlbGV0ZXI+OwogCitzdHJ1Y3QgR3N0QnVmZmVyRGVsZXRlciB7CisgICAgdm9p
ZCBvcGVyYXRvcigpKEdzdEJ1ZmZlciogcCkKKyAgICB7CisgICAgICAgIGdzdF9idWZmZXJfdW5y
ZWYocCk7CisgICAgfQorfTsKKwordXNpbmcgR3N0QnVmZmVyVVB0ciA9IHN0ZDo6dW5pcXVlX3B0
cjxHc3RCdWZmZXIsIEdzdEJ1ZmZlckRlbGV0ZXI+OworCiBjbGFzcyBHc3RyZWFtZXJGcmFtZUNh
cHR1cmUgZmluYWwgOiBwdWJsaWMgRnJhbWVDYXB0dXJlCiB7CiBwdWJsaWM6CkBAIC04Niw3ICs5
NSw2IEBAIHByaXZhdGU6CiAgICAgRGlzcGxheSAqY29uc3QgZHB5OwogI2lmIFhMSUJfQ0FQVFVS
RQogICAgIHZvaWQgeGxpYl9jYXB0dXJlKCk7Ci0gICAgWEltYWdlICppbWFnZSA9IG51bGxwdHI7
CiAjZW5kaWYKICAgICBHc3RPYmplY3RVUHRyPEdzdEVsZW1lbnQ+IHBpcGVsaW5lLCBjYXB0dXJl
LCBzaW5rOwogICAgIEdzdFNhbXBsZVVQdHIgc2FtcGxlOwpAQCAtMzA2LDEyICszMTQsNiBAQCB2
b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6ZnJlZV9zYW1wbGUoKQogICAgICAgICBnc3RfYnVm
ZmVyX3VubWFwKGdzdF9zYW1wbGVfZ2V0X2J1ZmZlcihzYW1wbGUuZ2V0KCkpLCAmbWFwKTsKICAg
ICAgICAgc2FtcGxlLnJlc2V0KCk7CiAgICAgfQotI2lmIFhMSUJfQ0FQVFVSRQotICAgIGlmKGlt
YWdlKSB7Ci0gICAgICAgIGltYWdlLT5mLmRlc3Ryb3lfaW1hZ2UoaW1hZ2UpOwotICAgICAgICBp
bWFnZSA9IG51bGxwdHI7Ci0gICAgfQotI2VuZGlmCiB9CiAKIEdzdHJlYW1lckZyYW1lQ2FwdHVy
ZTo6fkdzdHJlYW1lckZyYW1lQ2FwdHVyZSgpCkBAIC0zMjcsOSArMzI5LDE0IEBAIHZvaWQgR3N0
cmVhbWVyRnJhbWVDYXB0dXJlOjpSZXNldCgpCiB9CiAKICNpZiBYTElCX0NBUFRVUkUKK3ZvaWQg
ZnJlZV94aW1hZ2UoZ3BvaW50ZXIgZGF0YSkgeworICAgICgoWEltYWdlKilkYXRhKS0+Zi5kZXN0
cm95X2ltYWdlKChYSW1hZ2UqKWRhdGEpOworfQorCiB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVy
ZTo6eGxpYl9jYXB0dXJlKCkKIHsKICAgICBpbnQgc2NyZWVuID0gWERlZmF1bHRTY3JlZW4oZHB5
KTsKKyAgICBYSW1hZ2UgKmltYWdlID0gbnVsbHB0cjsKIAogICAgIFdpbmRvdyB3aW4gPSBSb290
V2luZG93KGRweSwgc2NyZWVuKTsKICAgICBYV2luZG93QXR0cmlidXRlcyB3aW5faW5mbzsKQEAg
LTM1NSw5ICszNjIsMTEgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVy
ZSgpCiAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiQ2Fubm90IGNhcHR1cmUgZnJv
bSBYIik7CiAgICAgfQogCi0gICAgR3N0QnVmZmVyICpidWY7Ci0gICAgYnVmID0gZ3N0X2J1ZmZl
cl9uZXdfd3JhcHBlZChpbWFnZS0+ZGF0YSwgaW1hZ2UtPmhlaWdodCAqIGltYWdlLT5ieXRlc19w
ZXJfbGluZSk7Ci0gICAgaWYgKCFidWYpIHsKKyAgICBHc3RCdWZmZXJVUHRyIGJ1Zihnc3RfYnVm
ZmVyX25ld193cmFwcGVkX2Z1bGwoKEdzdE1lbW9yeUZsYWdzKTAsIGltYWdlLT5kYXRhLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbWFnZS0+aGVp
Z2h0ICogaW1hZ2UtPmJ5dGVzX3Blcl9saW5lLCAwLAorICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBpbWFnZS0+aGVpZ2h0ICogaW1hZ2UtPmJ5dGVzX3Bl
cl9saW5lLCBpbWFnZSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZnJlZV94aW1hZ2UpKTsKKyAgICBpZiAoIWJ1Zi5nZXQoKSkgewogICAgICAgICB0
aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkZhaWxlZCB0byB3cmFwIGltYWdlIGluIGdzdHJlYW1l
ciBidWZmZXIiKTsKICAgICB9CiAKQEAgLTM2OSw3ICszNzgsNyBAQCB2b2lkIEdzdHJlYW1lckZy
YW1lQ2FwdHVyZTo6eGxpYl9jYXB0dXJlKCkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbnVsbHB0cikpOwogCiAgICAgLy8gUHVzaCBzYW1wbGUKLSAgICBHc3RTYW1w
bGVVUHRyIGFwcHNyY19zYW1wbGUoZ3N0X3NhbXBsZV9uZXcoYnVmLCBjYXBzLmdldCgpLCBudWxs
cHRyLCBudWxscHRyKSk7CisgICAgR3N0U2FtcGxlVVB0ciBhcHBzcmNfc2FtcGxlKGdzdF9zYW1w
bGVfbmV3KGJ1Zi5nZXQoKSwgY2Fwcy5nZXQoKSwgbnVsbHB0ciwgbnVsbHB0cikpOwogICAgIGlm
IChnc3RfYXBwX3NyY19wdXNoX3NhbXBsZShHU1RfQVBQX1NSQyhjYXB0dXJlLmdldCgpKSwgYXBw
c3JjX3NhbXBsZS5nZXQoKSkgIT0gR1NUX0ZMT1dfT0spIHsKICAgICAgICAgdGhyb3cgc3RkOjpy
dW50aW1lX2Vycm9yKCJnc3RyYW1lciBhcHBzcmMgZWxlbWVudCBjYW5ub3QgcHVzaCBzYW1wbGUi
KTsKICAgICB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
