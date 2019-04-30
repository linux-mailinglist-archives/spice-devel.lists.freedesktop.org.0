Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E1EF3AD
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 12:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9F288E53;
	Tue, 30 Apr 2019 10:07:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BB988E53
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:07:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 11E8D319938D
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:07:43 +0000 (UTC)
Received: from lub.com (dhcp-4-231.tlv.redhat.com [10.35.4.231])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 757E36B90B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 10:07:42 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:07:40 +0300
Message-Id: <20190430100740.8085-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 30 Apr 2019 10:07:43 +0000 (UTC)
Subject: [Spice-devel] [PATCH] gitlab-ci: build out-of-tree too
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

U2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgotLS0KClRoZSByZWxl
dmFudCBqb2Igb2YgdGhlIHBpcGVsaW5lIGlzOgpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvdXJpbC9zcGljZS8tL2pvYnMvMjY5NzM1CgotLS0KIC5naXRsYWItY2kueW1sIHwgNSArKysr
LQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwKaW5kZXggOWNlOTVjMDBlLi40
M2NkYjQ1YWMgMTAwNjQ0Ci0tLSBhLy5naXRsYWItY2kueW1sCisrKyBiLy5naXRsYWItY2kueW1s
CkBAIC0xNCwxMiArMTQsMTUgQEAgYmVmb3JlX3NjcmlwdDoKIAogbWFrZWNoZWNrOgogICBzY3Jp
cHQ6CisgIC0gbWtkaXIgYnVpbGRkaXIKKyAgLSBjZCBidWlsZGRpcgogICAtID4KICAgICBDRkxB
R1M9Jy1PMiAtcGlwZSAtZyAtZnNhbml0aXplPWFkZHJlc3MgLWZuby1vbWl0LWZyYW1lLXBvaW50
ZXIgLVdmcmFtZS1sYXJnZXItdGhhbj00MDkyMCcKICAgICBMREZMQUdTPSctZnNhbml0aXplPWFk
ZHJlc3MgLWxhc2FuJwotICAgIC4vYXV0b2dlbi5zaCAtLWVuYWJsZS1jZWx0MDUxCisgICAgLi4v
YXV0b2dlbi5zaCAtLWVuYWJsZS1jZWx0MDUxCiAgIC0gbWFrZQogICAtIG1ha2UgLUMgc2VydmVy
IGNoZWNrIHx8IChjYXQgc2VydmVyL3Rlc3RzL3Rlc3Qtc3VpdGUubG9nICYmIGV4aXQgMSkKKyAg
LSBjZCAuLgogCiBtZXNvbi1tYWtlY2hlY2s6CiAgIHNjcmlwdDoKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
