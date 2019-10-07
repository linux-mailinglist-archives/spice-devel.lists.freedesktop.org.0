Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79257CDF74
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 12:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459626E52D;
	Mon,  7 Oct 2019 10:39:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E246B6E52C
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86AC2305B41C
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D5FC5D6D0;
 Mon,  7 Oct 2019 10:39:14 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:39:01 +0100
Message-Id: <20191007103906.30517-4-fziglio@redhat.com>
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 07 Oct 2019 10:39:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 3/8] smartcard-channel-client:
 Remove unused parameter
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

Im5hbWUiIHBhcmFtZXRlciBvZiBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfYWRkX3JlYWRlciBp
dCdzIG5vdAp1c2VkLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJl
ZGhhdC5jb20+Ci0tLQogc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIHwgNSArKy0t
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIvc21hcnRj
YXJkLWNoYW5uZWwtY2xpZW50LmMKaW5kZXggMGI4NjQ0YzcuLjA4YWY0OWRmIDEwMDY0NAotLS0g
YS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKKysrIGIvc2VydmVyL3NtYXJ0Y2Fy
ZC1jaGFubmVsLWNsaWVudC5jCkBAIC0yMTksOCArMjE5LDcgQEAgc3RhdGljIHZvaWQgc21hcnRj
YXJkX2NoYW5uZWxfY2xpZW50X3B1c2hfZXJyb3IoUmVkQ2hhbm5lbENsaWVudCAqcmNjLAogICAg
IHJlZF9jaGFubmVsX2NsaWVudF9waXBlX2FkZF9wdXNoKHJjYywgJmVycm9yX2l0ZW0tPmJhc2Up
OwogfQogCi1zdGF0aWMgdm9pZCBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfYWRkX3JlYWRlcihT
bWFydENhcmRDaGFubmVsQ2xpZW50ICpzY2MsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpuYW1lKQorc3RhdGljIHZvaWQgc21hcnRjYXJk
X2NoYW5uZWxfY2xpZW50X2FkZF9yZWFkZXIoU21hcnRDYXJkQ2hhbm5lbENsaWVudCAqc2NjKQog
ewogICAgIGlmICghc2NjLT5wcml2LT5zbWFydGNhcmQpIHsgLyogd2UgYWxyZWFkeSB0cmllZCB0
byBhdHRhY2ggYSByZWFkZXIgdG8gdGhlIGNsaWVudAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgd2hlbiBpdCBjb25uZWN0ZWQgKi8KQEAgLTI4OCw3ICsyODcsNyBA
QCBib29sIHNtYXJ0Y2FyZF9jaGFubmVsX2NsaWVudF9oYW5kbGVfbWVzc2FnZShSZWRDaGFubmVs
Q2xpZW50ICpyY2MsCiAgICAgc3BpY2VfYXNzZXJ0KHNpemUgPT0gdmhlYWRlci0+bGVuZ3RoICsg
c2l6ZW9mKFZTQ01zZ0hlYWRlcikpOwogICAgIHN3aXRjaCAodmhlYWRlci0+dHlwZSkgewogICAg
ICAgICBjYXNlIFZTQ19SZWFkZXJBZGQ6Ci0gICAgICAgICAgICBzbWFydGNhcmRfY2hhbm5lbF9j
bGllbnRfYWRkX3JlYWRlcihzY2MsIG1zZyArIHNpemVvZihWU0NNc2dIZWFkZXIpKTsKKyAgICAg
ICAgICAgIHNtYXJ0Y2FyZF9jaGFubmVsX2NsaWVudF9hZGRfcmVhZGVyKHNjYyk7CiAgICAgICAg
ICAgICByZXR1cm4gVFJVRTsKICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICBjYXNlIFZTQ19S
ZWFkZXJSZW1vdmU6Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
