Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C31327818
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA1289C08;
	Thu, 23 May 2019 08:37:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5197789C08
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BBF79C0885FD
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:39 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DD1995D9C3;
 Thu, 23 May 2019 08:37:38 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:13 +0200
Message-Id: <20190523083725.1554-2-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
References: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 23 May 2019 08:37:39 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 01/13] spice: remove G_SOURCE_{REMOVE,
 CONTINUE} definitions
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

T3RoZXIgc3ltYm9scyB0aGF0IHdlcmUgYWRkZWQgYWZ0ZXIgR19TT1VSQ0Vfe1JFTU9WRSwgQ09O
VElOVUV9CmFyZSBhbHJlYWR5IGJlaW5nIHVzZWQgaW4gdGhlIHJlc3Qgb2YgdGhlIGZpbGUgLSBl
LmcuIGdfdGFza19uZXcsCnNvIHRoZXJlJ3Mgbm8gbmVlZCB0byBkZWZpbmUgdGhlc2UuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgotLS0KIHNwaWNlL3Nw
aWNlLXdlYmRhdmQuYyB8IDcgLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jIGIvc3BpY2Uvc3BpY2Utd2ViZGF2
ZC5jCmluZGV4IGNkMDAyOWIuLjgxZmU2YmUgMTAwNjQ0Ci0tLSBhL3NwaWNlL3NwaWNlLXdlYmRh
dmQuYworKysgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKQEAgLTY2NSwxMyArNjY1LDYgQEAgbWRu
c19zdGF0ZV9jaGFuZ2VkIChHYUNsaWVudCAqY2xpZW50LCBHYUNsaWVudFN0YXRlIHN0YXRlLCBn
cG9pbnRlciB1c2VyX2RhdGEpCiB9CiAjZW5kaWYKIAotI2lmbmRlZiBHX1NPVVJDRV9SRU1PVkUK
LSNkZWZpbmUgR19TT1VSQ0VfUkVNT1ZFIEZBTFNFCi0jZW5kaWYKLSNpZm5kZWYgR19TT1VSQ0Vf
Q09OVElOVUUKLSNkZWZpbmUgR19TT1VSQ0VfQ09OVElOVUUgVFJVRQotI2VuZGlmCi0KICNpZmRl
ZiBHX09TX1VOSVgKIHN0YXRpYyB2b2lkCiB3YWl0X2Zvcl92aXJ0aW9faG9zdCAoZ2ludCBmZCkK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
