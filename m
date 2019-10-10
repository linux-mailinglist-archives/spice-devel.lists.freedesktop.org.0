Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5473D280E
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 13:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FD66E223;
	Thu, 10 Oct 2019 11:38:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CEE06E223
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 11:38:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D74E3082231
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 11:38:40 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A498710018F8;
 Thu, 10 Oct 2019 11:38:39 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 10 Oct 2019 12:38:33 +0100
Message-Id: <20191010113833.19091-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 10 Oct 2019 11:38:40 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common] codegen: Document "chunk"
 attribute
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
cHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkgYi9weXRob25f
bW9kdWxlcy9wdHlwZXMucHkKaW5kZXggNzk2YTQzNi4uNWFhNmUxOCAxMDA2NDQKLS0tIGEvcHl0
aG9uX21vZHVsZXMvcHR5cGVzLnB5CisrKyBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQpAQCAt
NjAsNiArNjAsOSBAQCB2YWxpZF9hdHRyaWJ1dGVzPXNldChbCiAgICAgJ291dHZhcicsCiAgICAg
IyBDIHN0cnVjdHVyZSBoYXMgYW4gYW5vbnltb3VzIG1lbWJlciAodXNlZCBpbiBzd2l0Y2gpCiAg
ICAgJ2Fub24nLAorICAgICMgdGhlIEMgc3RydWN0dXJlIGNvbnRhaW5zIGEgcG9pbnRlciB0byBh
IFNwaWNlQ2h1bmtzIHN0cnVjdHVyZS4KKyAgICAjIFRoZSBTcGljZUNodW5rcyBzdHJ1Y3R1cmUg
aXMgYWxsb2NhdGVkIGluc2lkZSB0aGUgZGVtYXJzaGFsbGVkCisgICAgIyBidWZmZXIgYW5kIGRh
dGEgd2lsbCBwb2ludCB0byBvcmlnaW5hbCBtZXNzYWdlLgogICAgICdjaHVuaycsCiAgICAgIyB0
aGlzIGNoYW5uZWwgaXMgY29udGFpbmVkIGluIGFuICNpZmRlZiBzZWN0aW9uCiAgICAgIyB0aGUg
YXJndW1lbnQgc3BlY2lmaWVzIHRoZSBwcmVwcm9jZXNzb3IgZGVmaW5lIHRvIGNoZWNrCi0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
