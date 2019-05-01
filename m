Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FB9107E9
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 14:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6568938C;
	Wed,  1 May 2019 12:31:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE8E8936E
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6758359451
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:38 +0000 (UTC)
Received: from dhcp-4-106.tlv.redhat.com (dhcp-4-106.tlv.redhat.com
 [10.35.4.106])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC91B438A
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 12:31:37 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  1 May 2019 15:31:34 +0300
Message-Id: <20190501123135.1321-2-ssheribe@redhat.com>
In-Reply-To: <20190501123135.1321-1-ssheribe@redhat.com>
References: <20190501123135.1321-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 01 May 2019 12:31:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH 2/3] Use const when possible
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

LS0tCiBzcmMvbWpwZWctZmFsbGJhY2suY3BwIHwgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvbWpwZWctZmFs
bGJhY2suY3BwIGIvc3JjL21qcGVnLWZhbGxiYWNrLmNwcAppbmRleCAxYjI2M2YyLi5lZjdhMTNk
IDEwMDY0NAotLS0gYS9zcmMvbWpwZWctZmFsbGJhY2suY3BwCisrKyBiL3NyYy9tanBlZy1mYWxs
YmFjay5jcHAKQEAgLTQ0LDcgKzQ0LDcgQEAgcHVibGljOgogICAgIHN0ZDo6dmVjdG9yPERldmlj
ZURpc3BsYXlJbmZvPiBnZXRfZGV2aWNlX2Rpc3BsYXlfaW5mbygpIGNvbnN0IG92ZXJyaWRlOwog
cHJpdmF0ZToKICAgICBNanBlZ1NldHRpbmdzIHNldHRpbmdzOwotICAgIERpc3BsYXkgKmRweTsK
KyAgICBEaXNwbGF5ICpjb25zdCBkcHk7CiAKICAgICBzdGQ6OnZlY3Rvcjx1aW50OF90PiBmcmFt
ZTsKIApAQCAtNTcsOSArNTcsOCBAQCBwcml2YXRlOgogfQogCiBNanBlZ0ZyYW1lQ2FwdHVyZTo6
TWpwZWdGcmFtZUNhcHR1cmUoY29uc3QgTWpwZWdTZXR0aW5ncyYgc2V0dGluZ3MpOgotICAgIHNl
dHRpbmdzKHNldHRpbmdzKQorICAgIHNldHRpbmdzKHNldHRpbmdzKSxkcHkoWE9wZW5EaXNwbGF5
KG51bGxwdHIpKQogewotICAgIGRweSA9IFhPcGVuRGlzcGxheShOVUxMKTsKICAgICBpZiAoIWRw
eSkKICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJVbmFibGUgdG8gaW5pdGlhbGl6
ZSBYMTEiKTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
