Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76606307E2
	for <lists+spice-devel@lfdr.de>; Fri, 31 May 2019 06:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DCBC6E1B1;
	Fri, 31 May 2019 04:52:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836626E1B1
 for <spice-devel@lists.freedesktop.org>; Fri, 31 May 2019 04:52:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 03740859FB
 for <spice-devel@lists.freedesktop.org>; Fri, 31 May 2019 04:52:45 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 28F725C21F;
 Fri, 31 May 2019 04:52:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 31 May 2019 05:52:39 +0100
Message-Id: <20190531045239.3937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 31 May 2019 04:52:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] char-device: Fix some comments
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

U29tZSBmdW5jdGlvbiBuYW1lcyB3aGVyZSBjaGFuZ2VkLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL2NoYXItZGV2aWNlLmgg
fCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuaCBiL3NlcnZlci9jaGFyLWRldmlj
ZS5oCmluZGV4IDYyZDJmYTYxZS4uYjE5NTYwODE2IDEwMDY0NAotLS0gYS9zZXJ2ZXIvY2hhci1k
ZXZpY2UuaAorKysgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaApAQCAtOTMsMTMgKzkzLDEzIEBAIEdU
eXBlIHJlZF9jaGFyX2RldmljZV9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7CiAgKiBkZXZp
Y2UgYXR0YWNoZWQ6IGNyZWF0ZSBuZXcgb2JqZWN0IGluc3RhbnRpYXRpbmcgYSBSZWRDaGFyRGV2
aWNlIGNoaWxkIGNsYXNzCiAgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmplY3RfdW5yZWYv
cmVkX2NoYXJfZGV2aWNlX3Jlc2V0CiAgKgotICogY2xpZW50IGNvbm5lY3RlZCBhbmQgYXNzb2Np
YXRlZCB3aXRoIGEgZGV2aWNlOiByZWRfY2hhcl9kZXZpY2VfX2FkZAotICogY2xpZW50IGRpc2Nv
bm5lY3RlZDogcmVkX2NoYXJfZGV2aWNlX19yZW1vdmUKKyAqIGNsaWVudCBjb25uZWN0ZWQgYW5k
IGFzc29jaWF0ZWQgd2l0aCBhIGRldmljZTogcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9hZGQKKyAq
IGNsaWVudCBkaXNjb25uZWN0ZWQ6IHJlZF9jaGFyX2RldmljZV9jbGllbnRfcmVtb3ZlCiAgKgog
ICogV3JpdGluZyB0byB0aGUgZGV2aWNlCiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAqIFdy
aXRlIHRoZSBkYXRhIGludG8gUmVkQ2hhckRldmljZVdyaXRlQnVmZmVyOgotICogY2FsbCByZWRf
Y2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVyX2dldC9yZWRfY2hhcl9kZXZpY2Vfd3JpdGVfYnVmZmVy
X2dldF9zZXJ2ZXJfbm9fdG9rZW4KKyAqIGNhbGwgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZl
cl9nZXRfY2xpZW50L3JlZF9jaGFyX2RldmljZV93cml0ZV9idWZmZXJfZ2V0X3NlcnZlcgogICog
aW4gb3JkZXIgdG8gZ2V0IGFuIGFwcHJvcHJpYXRlIGJ1ZmZlci4KICAqIGNhbGwgcmVkX2NoYXJf
ZGV2aWNlX3dyaXRlX2J1ZmZlcl9hZGQgaW4gb3JkZXIgdG8gcHVzaCB0aGUgYnVmZmVyIHRvIHRo
ZSB3cml0ZSBxdWV1ZS4KICAqIElmIHlvdSBjaG9vc2Ugbm90IHRvIHB1c2ggdGhlIGJ1ZmZlciB0
byB0aGUgZGV2aWNlLCBjYWxsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
