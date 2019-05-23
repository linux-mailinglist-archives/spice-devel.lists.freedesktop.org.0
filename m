Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C2127824
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2947389D4F;
	Thu, 23 May 2019 08:37:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58BAD89D4D
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C4864309B165
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:56 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FB5D5D9C3;
 Thu, 23 May 2019 08:37:54 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:24 +0200
Message-Id: <20190523083725.1554-13-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 23 May 2019 08:37:56 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 12/13] rename README to README.md
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

VGhlIGZpbGVuYW1lIG5lZWRzIHRoZSBwcm9wZXIgZXh0ZW5zaW9uIGZvciBHaXRMYWIgdG8gaGFu
ZGxlCnRoZSBmaWxlIGFzIGEgTWFya2Rvd24gZmlsZS4KCkZpeCBzb21lIHN0eWxlIGlzc3VlcyBz
byB0aGF0IHRoZSBmaWxlIHJlbmRlcnMgY29ycmVjdGx5LgoKU2lnbmVkLW9mZi1ieTogSmFrdWIg
SmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KLS0tCiBSRUFETUUgPT4gUkVBRE1FLm1kIHwgMjEg
KysrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pCiByZW5hbWUgUkVBRE1FID0+IFJFQURNRS5tZCAoNTYlKQoKZGlmZiAt
LWdpdCBhL1JFQURNRSBiL1JFQURNRS5tZApzaW1pbGFyaXR5IGluZGV4IDU2JQpyZW5hbWUgZnJv
bSBSRUFETUUKcmVuYW1lIHRvIFJFQURNRS5tZAppbmRleCBmYTgyYWNkLi4yOTc3NTZmIDEwMDY0
NAotLS0gYS9SRUFETUUKKysrIGIvUkVBRE1FLm1kCkBAIC0xLDMxICsxLDMwIEBACi1waOG7n2Rh
dgotPT09PT09CisjIHBo4bufZGF2CiAKLT0gQWJvdXQKKyMjIEFib3V0CiAKIHBo4bufZGF2IGlz
IGEgV2ViRGF2IHNlcnZlciBpbXBsZW1lbnRhdGlvbiB1c2luZyBsaWJzb3VwIChSRkMgNDkxOCku
CiAKLSAgICBSZWxlYXNlczogaHR0cDovL2Z0cC5nbm9tZS5vcmcvcHViL0dOT01FL3NvdXJjZXMv
cGhvZGF2LworUmVsZWFzZXM6IGh0dHA6Ly9mdHAuZ25vbWUub3JnL3B1Yi9HTk9NRS9zb3VyY2Vz
L3Bob2Rhdi8KIAotPSBUb29scworIyMgVG9vbHMKIAotICAgIGNoZXpkYXYsIGFsbG93cyB0byBz
aGFyZSBhIHBhcnRpY3VhbCBkaXJlY3RvcnkgKHdpdGggb3B0aW9uYWwKLSAgICBkaWdlc3QgYXV0
aGVudGljYXRpb24pCisqIGNoZXpkYXYsIGFsbG93cyB0byBzaGFyZSBhIHBhcnRpY3VhbCBkaXJl
Y3RvcnkgKHdpdGggb3B0aW9uYWwKKyAgZGlnZXN0IGF1dGhlbnRpY2F0aW9uKQogCi09IE5vdGVz
CisjIyBOb3RlcwogCiBwaOG7n2RhdiB3YXMgaW5pdGlhbGx5IGRldmVsb3BwZWQgYXMgYSBmaWxl
c2hhcmluZyBtZWNoYW5pc20gZm9yIFNwaWNlLAogYnV0IGl0IGlzIGdlbmVyaWMgZW5vdWdoIHRv
IGJlIHJldXNlZCBpbiBvdGhlciBwcm9qZWN0cywgaW4gcGFydGljdWxhcgogaW4gdGhlIEdOT01F
IGRlc2t0b3AuIEZ1cnRoZXIgaW50ZWdyYXRpb24gd29yayB3b3VsZCBiZSBhIHdlbGNvbWUKIGNv
bnRyaWJ1dGlvbiEKIAotPSBDb250cmlidXRpbmcKKyMjIENvbnRyaWJ1dGluZwogCiAgICAgZ2l0
IGNsb25lIGdpdDovL2dpdC5nbm9tZS5vcmcvcGhvZGF2CiAKLSAgICBodHRwOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKK2h0dHA6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAogCiBQbGVhc2UgcmVw
b3J0IGJ1ZyB0aGVyZToKIGh0dHBzOi8vYnVnemlsbGEuZ25vbWUub3JnL2VudGVyX2J1Zy5jZ2k/
cHJvZHVjdD1waG9kYXYKIAotRm9ya2luZyBhbmQgc2VuZGluZyBnaXRodWIgcHVsbCByZXF1ZXN0
cyBpcyBhbHNvIHdlbGNvbWUuClwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQorRm9ya2luZyBh
bmQgc2VuZGluZyBwdWxsIHJlcXVlc3RzIGlzIGFsc28gd2VsY29tZS4KXCBObyBuZXdsaW5lIGF0
IGVuZCBvZiBmaWxlCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
