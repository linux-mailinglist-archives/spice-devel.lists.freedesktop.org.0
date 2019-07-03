Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4F05E12D
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 11:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E0D6E10B;
	Wed,  3 Jul 2019 09:42:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B7F6E10A
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 09:42:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C4D9130C4AE0
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 09:42:13 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 181D99078A;
 Wed,  3 Jul 2019 09:42:12 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:42:08 +0100
Message-Id: <20190703094209.4173-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 03 Jul 2019 09:42:13 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/2 v2] channel-webdav: Write mux
 message in a single memory block
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

UmVkdWNlIG51bWJlciBvZiB3cml0ZSB0byB0aGUgY2hhbm5lbC4KVGhpcyB3aWxsIGFsc28gaGVs
cCBtYWtpbmcgdGhlIHdyaXRlIHRvIHNvY2tldCBhbGwgYXN5bmNocm9ub3VzCmF2b2lkaW5nIHBv
dGVudGlhbCBibG9ja2FnZXMuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWds
aW9AcmVkaGF0LmNvbT4KLS0tCkNoYW5nZXMgc2ludmUgdjE6Ci0gbWFrZSAibXV4IiBhIHNpbXBs
ZSBzdHJ1Y3R1cmUsIG5vdCBhIHBvaW50ZXIgdG8gYSBzdHJ1Y3R1cmUKLS0tCiBzcmMvY2hhbm5l
bC13ZWJkYXYuYyB8IDE5ICsrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdl
YmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKaW5kZXggZjVhMzhhZDMuLjBmYTBkNjliIDEw
MDY0NAotLS0gYS9zcmMvY2hhbm5lbC13ZWJkYXYuYworKysgYi9zcmMvY2hhbm5lbC13ZWJkYXYu
YwpAQCAtMTc5LDYgKzE3OSw4IEBAIHN0YXRpYyB2b2lkIG91dHB1dF9xdWV1ZV9wdXNoKE91dHB1
dFF1ZXVlICpxLCBjb25zdCBndWludDggKmJ1ZiwgZ3NpemUgc2l6ZSwKICAgICAgICAgcS0+aWRs
ZV9pZCA9IGdfaWRsZV9hZGQob3V0cHV0X3F1ZXVlX2lkbGUsIHEpOwogfQogCisjZGVmaW5lIE1B
WF9NVVhfU0laRSBHX01BWFVJTlQxNgorCiB0eXBlZGVmIHN0cnVjdCBDbGllbnQKIHsKICAgICBn
dWludCByZWZzOwpAQCAtMTg3LDEwICsxODksMTAgQEAgdHlwZWRlZiBzdHJ1Y3QgQ2xpZW50CiAg
ICAgZ2ludDY0IGlkOwogICAgIEdDYW5jZWxsYWJsZSAqY2FuY2VsbGFibGU7CiAKLSAgICBzdHJ1
Y3QgX211eCB7CisgICAgc3RydWN0IHsKICAgICAgICAgZ2ludDY0IGlkOwogICAgICAgICBndWlu
dDE2IHNpemU7Ci0gICAgICAgIGd1aW50OCAqYnVmOworICAgICAgICBndWludDggYnVmW01BWF9N
VVhfU0laRV07CiAgICAgfSBtdXg7CiB9IENsaWVudDsKIApAQCAtMjAwLDggKzIwMiw2IEBAIGNs
aWVudF91bnJlZihDbGllbnQgKmNsaWVudCkKICAgICBpZiAoLS1jbGllbnQtPnJlZnMgPiAwKQog
ICAgICAgICByZXR1cm47CiAKLSAgICBnX2ZyZWUoY2xpZW50LT5tdXguYnVmKTsKLQogICAgIGdf
b2JqZWN0X3VucmVmKGNsaWVudC0+cGlwZSk7CiAgICAgZ19vYmplY3RfdW5yZWYoY2xpZW50LT5j
YW5jZWxsYWJsZSk7CiAKQEAgLTIzOSw4ICsyMzksNiBAQCBzdGF0aWMgdm9pZCBtdXhfcHVzaGVk
X2NiKE91dHB1dFF1ZXVlICpxLCBncG9pbnRlciB1c2VyX2RhdGEpCiAgICAgY2xpZW50X3VucmVm
KGNsaWVudCk7CiB9CiAKLSNkZWZpbmUgTUFYX01VWF9TSVpFIEdfTUFYVUlOVDE2Ci0KIHN0YXRp
YyB2b2lkIHNlcnZlcl9yZXBseV9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEdBc3luY1Jlc3VsdCAqcmVzLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGdwb2ludGVyIHVzZXJfZGF0YSkKQEAgLTI1NiwxMiArMjU0LDEwIEBAIHN0YXRp
YyB2b2lkIHNlcnZlcl9yZXBseV9jYihHT2JqZWN0ICpzb3VyY2Vfb2JqZWN0LAogCiAgICAgZ19y
ZXR1cm5faWZfZmFpbChzaXplIDw9IE1BWF9NVVhfU0laRSk7CiAgICAgZ19yZXR1cm5faWZfZmFp
bChzaXplID49IDApOwotICAgIGNsaWVudC0+bXV4LnNpemUgPSBzaXplOworICAgIGNsaWVudC0+
bXV4LnNpemUgPSBHVUlOVDE2X1RPX0xFKHNpemUpOwogCi0gICAgb3V0cHV0X3F1ZXVlX3B1c2go
Yy0+cXVldWUsIChndWludDggKikmY2xpZW50LT5tdXguaWQsIHNpemVvZihnaW50NjQpLCBOVUxM
LCBOVUxMKTsKLSAgICBjbGllbnQtPm11eC5zaXplID0gR1VJTlQxNl9UT19MRShjbGllbnQtPm11
eC5zaXplKTsKLSAgICBvdXRwdXRfcXVldWVfcHVzaChjLT5xdWV1ZSwgKGd1aW50OCAqKSZjbGll
bnQtPm11eC5zaXplLCBzaXplb2YoZ3VpbnQxNiksIE5VTEwsIE5VTEwpOwotICAgIG91dHB1dF9x
dWV1ZV9wdXNoKGMtPnF1ZXVlLCAoZ3VpbnQ4ICopY2xpZW50LT5tdXguYnVmLCBzaXplLCAoR0Z1
bmMpbXV4X3B1c2hlZF9jYiwgY2xpZW50KTsKKyAgICBvdXRwdXRfcXVldWVfcHVzaChjLT5xdWV1
ZSwgKGd1aW50OCAqKSZjbGllbnQtPm11eCwgc2l6ZW9mKGdpbnQ2NCkgKyBzaXplb2YoZ3VpbnQx
NikgKyBzaXplLAorICAgICAgICAgICAgICAgICAgICAgIChHRnVuYyltdXhfcHVzaGVkX2NiLCBj
bGllbnQpOwogCiAgICAgcmV0dXJuOwogCkBAIC0zNjksNyArMzY1LDYgQEAgc3RhdGljIHZvaWQg
c3RhcnRfY2xpZW50KFNwaWNlV2ViZGF2Q2hhbm5lbCAqc2VsZikKICAgICBjbGllbnQtPmlkID0g
Yy0+ZGVtdXguY2xpZW50OwogICAgIGNsaWVudC0+c2VsZiA9IHNlbGY7CiAgICAgY2xpZW50LT5t
dXguaWQgPSBHSU5UNjRfVE9fTEUoY2xpZW50LT5pZCk7Ci0gICAgY2xpZW50LT5tdXguYnVmID0g
Z19tYWxsb2MwKE1BWF9NVVhfU0laRSk7CiAgICAgY2xpZW50LT5jYW5jZWxsYWJsZSA9IGdfY2Fu
Y2VsbGFibGVfbmV3KCk7CiAgICAgc3BpY2VfbWFrZV9waXBlKCZjbGllbnQtPnBpcGUsICZwZWVy
KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
