Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CA52FDA5
	for <lists+spice-devel@lfdr.de>; Thu, 30 May 2019 16:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C316E370;
	Thu, 30 May 2019 14:23:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51DCA6E36D
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0140930C31AA
 for <spice-devel@lists.freedesktop.org>; Thu, 30 May 2019 14:23:10 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2E9FB1001DFA;
 Thu, 30 May 2019 14:23:08 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 15:22:49 +0100
Message-Id: <20190530142254.28937-8-fziglio@redhat.com>
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 30 May 2019 14:23:10 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 08/13] cache-item: Remove unused
 define
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL2NhY2hlLWl0ZW0udG1wbC5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYyBiL3NlcnZlci9j
YWNoZS1pdGVtLnRtcGwuYwppbmRleCA2OTY4ZDIwZGIuLmY5NDE4Zjk5MCAxMDA2NDQKLS0tIGEv
c2VydmVyL2NhY2hlLWl0ZW0udG1wbC5jCisrKyBiL3NlcnZlci9jYWNoZS1pdGVtLnRtcGwuYwpA
QCAtMjQsNyArMjQsNiBAQAogI2RlZmluZSBDQUNIRV9IQVNIX1NJWkUgQ1VSU09SX0NBQ0hFX0hB
U0hfU0laRQogI2RlZmluZSBGVU5DX05BTUUobmFtZSkgcmVkX2N1cnNvcl9jYWNoZV8jI25hbWUK
ICNkZWZpbmUgVkFSX05BTUUobmFtZSkgY3Vyc29yX2NhY2hlXyMjbmFtZQotI2RlZmluZSBDSEFO
TkVMIEN1cnNvckNoYW5uZWwKICNkZWZpbmUgQ0hBTk5FTENMSUVOVCBDdXJzb3JDaGFubmVsQ2xp
ZW50CiAKICNlbGlmIGRlZmluZWQoQ0xJRU5UX1BBTEVUVEVfQ0FDSEUpCkBAIC0zNCw3ICszMyw2
IEBACiAjZGVmaW5lIENBQ0hFX0hBU0hfU0laRSBQQUxFVFRFX0NBQ0hFX0hBU0hfU0laRQogI2Rl
ZmluZSBGVU5DX05BTUUobmFtZSkgcmVkX3BhbGV0dGVfY2FjaGVfIyNuYW1lCiAjZGVmaW5lIFZB
Ul9OQU1FKG5hbWUpIHBhbGV0dGVfY2FjaGVfIyNuYW1lCi0jZGVmaW5lIENIQU5ORUwgRGlzcGxh
eUNoYW5uZWwKICNkZWZpbmUgQ0hBTk5FTENMSUVOVCBEaXNwbGF5Q2hhbm5lbENsaWVudAogI2Vs
c2UKIApAQCAtMTI2LDUgKzEyNCw0IEBAIHN0YXRpYyB2b2lkIEZVTkNfTkFNRShyZXNldCkoQ0hB
Tk5FTENMSUVOVCAqY2hhbm5lbF9jbGllbnQsIGxvbmcgc2l6ZSkKICN1bmRlZiBDQUNIRV9IQVNI
X1NJWkUKICN1bmRlZiBGVU5DX05BTUUKICN1bmRlZiBWQVJfTkFNRQotI3VuZGVmIENIQU5ORUwK
ICN1bmRlZiBDSEFOTkVMQ0xJRU5UCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
