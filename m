Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7708A06E1
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB31E89D00;
	Wed, 28 Aug 2019 16:02:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1C889D00
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:02:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BC11746288
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:02:38 +0000 (UTC)
Received: from lub.com (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27F686012D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:02:37 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 19:02:33 +0300
Message-Id: <20190828160234.8182-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 28 Aug 2019 16:02:38 +0000 (UTC)
Subject: [Spice-devel] [spice-vdagent PATCH 1/2] vdagentd: daemonize: check
 fprintf return value
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

T3RoZXIgZnByaW50ZiBjYWxscyBhcmUgY2hlY2tlZC4KCklmIGZwcmludGYgZmFpbHMgd3JpdGUg
YW4gZXJyb3IgbWVzc2FnZSBhbmQgY29udGludWUuCgpNYWtlIGNvdnNjYW4gaGFwcHkKClNpZ25l
ZC1vZmYtYnk6IFVyaSBMdWJsaW4gIDx1cmlsQHJlZGhhdC5jb20+Ci0tLQogc3JjL3ZkYWdlbnRk
L3ZkYWdlbnRkLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3ZkYWdlbnRkL3ZkYWdlbnRkLmMgYi9zcmMv
dmRhZ2VudGQvdmRhZ2VudGQuYwppbmRleCA3MmEzZTEzLi4yMmE2MmI4IDEwMDY0NAotLS0gYS9z
cmMvdmRhZ2VudGQvdmRhZ2VudGQuYworKysgYi9zcmMvdmRhZ2VudGQvdmRhZ2VudGQuYwpAQCAt
OTk2LDcgKzk5NiwxMCBAQCBzdGF0aWMgdm9pZCBkYWVtb25pemUodm9pZCkKICAgICAgICAgfQog
ICAgICAgICBwaWRmaWxlID0gZm9wZW4ocGlkZmlsZW5hbWUsICJ3Iik7CiAgICAgICAgIGlmIChw
aWRmaWxlKSB7Ci0gICAgICAgICAgICBmcHJpbnRmKHBpZGZpbGUsICIlZFxuIiwgKGludClnZXRw
aWQoKSk7CisgICAgICAgICAgICBpbnQgciA9IGZwcmludGYocGlkZmlsZSwgIiVkXG4iLCAoaW50
KWdldHBpZCgpKTsKKyAgICAgICAgICAgIGlmIChyIDwgMCkgeworICAgICAgICAgICAgICAgIHN5
c2xvZyhMT0dfRVJSLCAiRXJyb3Igd3JpdGluZyB0byAlczogJW0iLCBwaWRmaWxlbmFtZSk7Cisg
ICAgICAgICAgICB9CiAgICAgICAgICAgICBmY2xvc2UocGlkZmlsZSk7CiAgICAgICAgIH0KICAg
ICAgICAgYnJlYWs7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
