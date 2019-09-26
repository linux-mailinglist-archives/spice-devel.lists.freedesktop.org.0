Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50717BF593
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 17:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7312C6ED63;
	Thu, 26 Sep 2019 15:13:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8F36ED6F
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A69F8315C027
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:25 +0000 (UTC)
Received: from lub.com (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10EF65FCB8
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:24 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 26 Sep 2019 18:13:18 +0300
Message-Id: <20190926151320.18868-3-uril@redhat.com>
In-Reply-To: <20190926151320.18868-1-uril@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 26 Sep 2019 15:13:25 +0000 (UTC)
Subject: [Spice-devel] [spice-streaming-agent PATCH 2/4] spec: BuildRequires
 autoconf and friends
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

QWxzbyBvbmx5IGJ1aWxkIGZvciB4ODZfNjQKClNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVy
aWxAcmVkaGF0LmNvbT4KLS0tCiBzcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbiB8IDQgKysr
KwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NwaWNlLXN0
cmVhbWluZy1hZ2VudC5zcGVjLmluIGIvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4KaW5k
ZXggMjk5ZWEwMi4uYTI2N2M1NCAxMDA2NDQKLS0tIGEvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNw
ZWMuaW4KKysrIGIvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4KQEAgLTE0LDExICsxNCwx
NSBAQCBCdWlsZFJlcXVpcmVzOiAgcGtnY29uZmlnKHVkZXYpCiBCdWlsZFJlcXVpcmVzOiAgbGli
ZHJtLWRldmVsCiBCdWlsZFJlcXVpcmVzOiAgbGliWHJhbmRyLWRldmVsCiBCdWlsZFJlcXVpcmVz
OiAgZ2NjLWMrKworQnVpbGRSZXF1aXJlczogIGF1dG9tYWtlIGF1dG9jb25mIGF1dG9jb25mLWFy
Y2hpdmUgbGlidG9vbAogIyB3ZSBuZWVkIC91c3Ivc2Jpbi9zZW1hbmFnZSBwcm9ncmFtIHdoaWNo
IGlzIGF2YWlsYWJsZSBvbiBkaWZmZXJlbnQKICMgcGFja2FnZXMgZGVwZW5kaW5nIG9uIGRpc3Ry
aWJ1dGlvbgogUmVxdWlyZXMocG9zdCk6IC91c3Ivc2Jpbi9zZW1hbmFnZQogUmVxdWlyZXMocG9z
dHVuKTogL3Vzci9zYmluL3NlbWFuYWdlCiAKK0V4Y2x1c2l2ZUFyY2g6IHg4Nl82NAorCisKICVk
ZXNjcmlwdGlvbgogQW4gYWdlbnQsIHJ1bm5pbmcgb24gYSBndWVzdCwgc2VuZGluZyB2aWRlbyBz
dHJlYW1zIG9mIHRoZSBYIGRpc3BsYXkgdG8gYQogcmVtb3RlIGNsaWVudCAob3ZlciBTUElDRSku
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
