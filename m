Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0622DF8CF
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939CE89225;
	Tue, 30 Apr 2019 12:24:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2C38921A
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AAF3D80B55
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:55 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C62DF2B3B8;
 Tue, 30 Apr 2019 12:24:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:15 +0100
Message-Id: <20190430122419.16241-16-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 30 Apr 2019 12:24:55 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 15/19] tests: Exclude tests
 that cannot work on Windows
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

dGVzdC1zdHJlYW0gdGVzdCBpcyBwYXNzaW5nIGZpbGUgZGVzY3JpcHRvciB1c2luZyBVbml4IHNv
Y2tldC4KdGVzdC1zdGF0LWZpbGUgbmVlZHMgc29tZSBwb3J0aW5nIHdvcmsgb2YgbW1hcCBmZWF0
dXJlLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Ci0tLQogc2VydmVyL3Rlc3RzL01ha2VmaWxlLmFtIHwgOSArKysrKysrLS0KIHNlcnZlci90ZXN0
cy9tZXNvbi5idWlsZCB8IDkgKysrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL01ha2VmaWxl
LmFtIGIvc2VydmVyL3Rlc3RzL01ha2VmaWxlLmFtCmluZGV4IDc2Njg3MzlmLi5jNTA4MjZlNiAx
MDA2NDQKLS0tIGEvc2VydmVyL3Rlc3RzL01ha2VmaWxlLmFtCisrKyBiL3NlcnZlci90ZXN0cy9N
YWtlZmlsZS5hbQpAQCAtNTMsMTEgKzUzLDkgQEAgY2hlY2tfUFJPR1JBTVMgPQkJCQlcCiAJdGVz
dC1jb2RlY3MtcGFyc2luZwkJCVwKIAl0ZXN0LW9wdGlvbnMJCQkJXAogCXRlc3Qtc3RhdAkJCQlc
Ci0JdGVzdC1zdHJlYW0JCQkJXAogCXRlc3QtYWdlbnQtbXNnLWZpbHRlcgkJCVwKIAl0ZXN0LWxv
b3AJCQkJXAogCXRlc3QtcXhsLXBhcnNpbmcJCQlcCi0JdGVzdC1zdGF0LWZpbGUJCQkJXAogCXRl
c3QtbGVha3MJCQkJXAogCXRlc3QtdmRhZ2VudAkJCQlcCiAJdGVzdC1mYWlsLW9uLW51bGwtY29y
ZS1pbnRlcmZhY2UJXApAQCAtNjgsNiArNjYsMTMgQEAgY2hlY2tfUFJPR1JBTVMgPQkJCQlcCiAJ
dGVzdC1yZWNvcmQJCQkJXAogCSQoTlVMTCkKIAoraWYgIU9TX1dJTjMyCitjaGVja19QUk9HUkFN
UyArPQkJCQlcCisJdGVzdC1zdHJlYW0JCQkJXAorCXRlc3Qtc3RhdC1maWxlCQkJCVwKKwkkKE5V
TEwpCitlbmRpZgorCiBub2luc3RfUFJPR1JBTVMgPQkJCQlcCiAJdGVzdC1kaXNwbGF5LW5vLXNz
bAkJCVwKIAl0ZXN0LWRpc3BsYXktc3RyZWFtaW5nCQkJXApkaWZmIC0tZ2l0IGEvc2VydmVyL3Rl
c3RzL21lc29uLmJ1aWxkIGIvc2VydmVyL3Rlc3RzL21lc29uLmJ1aWxkCmluZGV4IDMxZmViYzZh
Li5iNDI2OWM1OCAxMDA2NDQKLS0tIGEvc2VydmVyL3Rlc3RzL21lc29uLmJ1aWxkCisrKyBiL3Nl
cnZlci90ZXN0cy9tZXNvbi5idWlsZApAQCAtNDAsMTEgKzQwLDkgQEAgdGVzdHMgPSBbCiAgIFsn
dGVzdC1jb2RlY3MtcGFyc2luZycsIHRydWVdLAogICBbJ3Rlc3Qtb3B0aW9ucycsIHRydWVdLAog
ICBbJ3Rlc3Qtc3RhdCcsIHRydWVdLAotICBbJ3Rlc3Qtc3RyZWFtJywgdHJ1ZV0sCiAgIFsndGVz
dC1hZ2VudC1tc2ctZmlsdGVyJywgdHJ1ZV0sCiAgIFsndGVzdC1sb29wJywgdHJ1ZV0sCiAgIFsn
dGVzdC1xeGwtcGFyc2luZycsIHRydWVdLAotICBbJ3Rlc3Qtc3RhdC1maWxlJywgdHJ1ZV0sCiAg
IFsndGVzdC1sZWFrcycsIHRydWVdLAogICBbJ3Rlc3QtdmRhZ2VudCcsIHRydWVdLAogICBbJ3Rl
c3QtZmFpbC1vbi1udWxsLWNvcmUtaW50ZXJmYWNlJywgdHJ1ZV0sCkBAIC02NSw2ICs2MywxMyBA
QCBpZiBzcGljZV9zZXJ2ZXJfaGFzX3Nhc2wKICAgdGVzdHMgKz0gW1sndGVzdC1zYXNsJywgdHJ1
ZV1dCiBlbmRpZgogCitpZiBob3N0X21hY2hpbmUuc3lzdGVtKCkgIT0gJ3dpbmRvd3MnCisgIHRl
c3RzICs9IFsKKyAgICBbJ3Rlc3Qtc3RyZWFtJywgdHJ1ZV0sCisgICAgWyd0ZXN0LXN0YXQtZmls
ZScsIHRydWVdLAorICBdCitlbmRpZgorCiBpZiBzcGljZV9zZXJ2ZXJfaGFzX2dzdHJlYW1lcgog
ICB0ZXN0cyArPSBbWyd0ZXN0LWdzdCcsIGZhbHNlXV0KICAgaWYgZ2V0X29wdGlvbignZXh0cmEt
Y2hlY2tzJykKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
