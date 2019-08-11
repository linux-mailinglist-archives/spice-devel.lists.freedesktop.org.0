Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F5C89112
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D9A6E321;
	Sun, 11 Aug 2019 09:26:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A48F6E320
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:26:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EB34C806D0
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:26:09 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5B0C8614E6
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:26:09 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 11 Aug 2019 12:26:05 +0300
Message-Id: <20190811092605.31952-2-uril@redhat.com>
In-Reply-To: <20190811092605.31952-1-uril@redhat.com>
References: <20190811092605.31952-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Sun, 11 Aug 2019 09:26:09 +0000 (UTC)
Subject: [Spice-devel] [spice-common PATCH 2/2] test-marshallers.proto:
 ArrayMessage: make space for name
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

RG8gaXQgYnkgYWRkaW5nIEBlbmQgdGFnLgpXaXRob3V0IGl0ICduYW1lJyBpcyBhIG5vbi1hbGxv
Y2F0ZWQgcG9pbnRlci4KClNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNv
bT4KLS0tCgpJcyB0aGVyZSBhIGJldHRlciB3YXkgdG8gZG8gaXQgPwoKLS0tCgogdGVzdHMvdGVz
dC1tYXJzaGFsbGVycy5wcm90byB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMucHJv
dG8gYi90ZXN0cy90ZXN0LW1hcnNoYWxsZXJzLnByb3RvCmluZGV4IDM0Y2M4OTIuLmVhYmQ0ODcg
MTAwNjQ0Ci0tLSBhL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMucHJvdG8KKysrIGIvdGVzdHMvdGVz
dC1tYXJzaGFsbGVycy5wcm90bwpAQCAtNiw3ICs2LDcgQEAgY2hhbm5lbCBUZXN0Q2hhbm5lbCB7
CiAgICB9IFNob3J0RGF0YVN1Yk1hcnNoYWxsOwogCiAgICBtZXNzYWdlIHsKLSAgICAgIGludDgg
bmFtZVtdOworICAgICAgaW50OCBuYW1lW10gQGVuZDsKICAgIH0gQXJyYXlNZXNzYWdlOwogCiAg
ICAgbWVzc2FnZSB7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
