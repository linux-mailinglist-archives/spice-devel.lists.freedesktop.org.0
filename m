Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8122455421
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F199D6E176;
	Tue, 25 Jun 2019 16:12:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2498F6E185
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C1F16300B916
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:07 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E07215D70D;
 Tue, 25 Jun 2019 16:12:05 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:37 +0100
Message-Id: <20190625161147.25211-14-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 25 Jun 2019 16:12:07 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 13/23] websocket: Fix updating
 remaining bytes to write in websocket_write
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

ImxlbiIgaXMgbm90IGFsd2F5cyB0aGUgZnVsbCByZW1haW5kZXIgKGNvbnNpZGVyIHRoZSBjYXNl
IHdoZW4Kd2UgYXJlIHdyaXRpbmcgYSBwYXJ0aWFsIGZyYW1lKS4KClNpZ25lZC1vZmYtYnk6IEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci93ZWJzb2NrZXQu
YyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci93ZWJzb2NrZXQuYyBiL3NlcnZlci93ZWJzb2NrZXQu
YwppbmRleCBhZmI3NTAyYTEuLmRkYTcxZjc2OCAxMDA2NDQKLS0tIGEvc2VydmVyL3dlYnNvY2tl
dC5jCisrKyBiL3NlcnZlci93ZWJzb2NrZXQuYwpAQCAtNDc4LDEwICs0NzgsOCBAQCBpbnQgd2Vi
c29ja2V0X3dyaXRlKFJlZHNXZWJTb2NrZXQgKndzLCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBs
ZW4pCiAgICAgfQogCiAgICAgcmMgPSB3cy0+cmF3X3dyaXRlKHdzLT5yYXdfc3RyZWFtLCBidWYs
IGxlbik7Ci0gICAgaWYgKHJjIDw9IDApIHsKLSAgICAgICAgd3MtPndyaXRlX3JlbWFpbmRlciA9
IGxlbjsKLSAgICB9IGVsc2UgewotICAgICAgICB3cy0+d3JpdGVfcmVtYWluZGVyID0gbGVuIC0g
cmM7CisgICAgaWYgKHJjID4gMCkgeworICAgICAgICB3cy0+d3JpdGVfcmVtYWluZGVyIC09IHJj
OwogICAgIH0KICAgICByZXR1cm4gcmM7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
