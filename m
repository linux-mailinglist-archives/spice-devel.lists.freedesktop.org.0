Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521B6CE174
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 14:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB08E6E5CE;
	Mon,  7 Oct 2019 12:19:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF006E5C6
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E8775641C7
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:38 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 733103DAD
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 12:19:38 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 14:19:31 +0200
Message-Id: <20191007121935.22567-4-victortoso@redhat.com>
In-Reply-To: <20191007121935.22567-1-victortoso@redhat.com>
References: <20191007121935.22567-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 07 Oct 2019 12:19:38 +0000 (UTC)
Subject: [Spice-devel] [spice v1 4/8] tests: migrate: cosmetic changes on
 start_qemu()
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKVGhpcyBmdW5jdGlvbiBjYW4g
YmUgdHdlYWsgcXVpdGUgYSBiaXQgZHVlIGFsbCBwb3NzaWJpbGl0aWVzIGFyb3VuZApRRU1VIGNv
bmZpZ3VyYXRpb24uIFRoaXMgcGF0Y2ggcmVtb3ZlcyBpbmNvbWluZ19hcmdzIGFuZCBleHRyYV9h
cmdzCmFuZCBtb3ZlIHRoZWlyIHZhbHVlcyB0byB0aGUgcmlnaHQgcGxhY2UgaW4gdGhlIGZ1bmN0
aW9uLgoKSSdtIGFsc28gYXBwbHlpbmcgYSBtb3JlIGV4dGVuc2l2ZSBjb2Rpbmcgc3R5bGUgZm9y
IHBhcmFtZXRlcnMsIHNvCndoZW4gd2UgbmVlZCB0byBkbyBjaGFuZ2VzIGl0IHNob3VsZCBoYXBw
ZW4gd2l0aCBmZXdlciBsaW5lcy4KClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0
b3NvQHJlZGhhdC5jb20+Ci0tLQogdGVzdHMvbWlncmF0ZS5weSB8IDI4ICsrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxMSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9taWdyYXRlLnB5IGIvdGVzdHMvbWlncmF0ZS5w
eQppbmRleCAzNzVlNTlhMC4uM2FlOWUwNTMgMTAwNzU1Ci0tLSBhL3Rlc3RzL21pZ3JhdGUucHkK
KysrIGIvdGVzdHMvbWlncmF0ZS5weQpAQCAtNzgsMjMgKzc4LDI5IEBAIGRlZiBnZXRfYXJncygp
OgogICAgIHJldHVybiBhcmdzCiAKIGRlZiBzdGFydF9xZW11KHFlbXVfZXhlYywgaW1hZ2UsIHNw
aWNlX3BvcnQsIHFtcF9maWxlbmFtZSwgaW5jb21pbmdfcG9ydD1Ob25lLCB3aXRoX2FnZW50PUZh
bHNlKToKLSAgICBpbmNvbWluZ19hcmdzID0gW10KKyAgICBhcmdzID0gWworICAgICAgICBxZW11
X2V4ZWMsCisgICAgICAgICItcW1wIiwgInVuaXg6JXMsc2VydmVyLG5vd2FpdCIgJSBxbXBfZmls
ZW5hbWUsCisgICAgICAgICItc3BpY2UiLCAiZGlzYWJsZS10aWNrZXRpbmcscG9ydD0lcyIgJSBz
cGljZV9wb3J0CisgICAgXQogICAgIGlmIGluY29taW5nX3BvcnQ6Ci0gICAgICAgIGluY29taW5n
X2FyZ3MgPSAoIi1pbmNvbWluZyB0Y3A6OiVzIiAlIGluY29taW5nX3BvcnQpLnNwbGl0KCkKKyAg
ICAgICAgYXJncyArPSAoIi1pbmNvbWluZyB0Y3A6OiVzIiAlIGluY29taW5nX3BvcnQpLnNwbGl0
KCkKIAotICAgIGV4dHJhX2FyZ3MgPSBbXQogICAgIGlmIHdpdGhfYWdlbnQ6Ci0gICAgICAgIGV4
dHJhX2FyZ3MgPSBbJy1kZXZpY2UnLCAndmlydGlvLXNlcmlhbCcsCi0gICAgICAgICAgICAgICAg
ICAgICAgJy1jaGFyZGV2JywgJ3NwaWNldm1jLG5hbWU9dmRhZ2VudCxpZD12ZGFnZW50JywKLSAg
ICAgICAgICAgICAgICAgICAgICAnLWRldmljZScsICd2aXJ0c2VyaWFscG9ydCxjaGFyZGV2PXZk
YWdlbnQsbmFtZT1jb20ucmVkaGF0LnNwaWNlLjAnXQorICAgICAgICBhcmdzICs9IFsKKyAgICAg
ICAgICAgICctZGV2aWNlJywgJ3ZpcnRpby1zZXJpYWwnLAorICAgICAgICAgICAgJy1jaGFyZGV2
JywgJ3NwaWNldm1jLG5hbWU9dmRhZ2VudCxpZD12ZGFnZW50JywKKyAgICAgICAgICAgICctZGV2
aWNlJywgJ3ZpcnRzZXJpYWxwb3J0LGNoYXJkZXY9dmRhZ2VudCxuYW1lPWNvbS5yZWRoYXQuc3Bp
Y2UuMCcKKyAgICAgICAgXQogCi0gICAgYXJncyA9IChbcWVtdV9leGVjLCAiLXFtcCIsICJ1bml4
OiVzLHNlcnZlcixub3dhaXQiICUgcW1wX2ZpbGVuYW1lLAotICAgICAgICAiLXNwaWNlIiwgImRp
c2FibGUtdGlja2V0aW5nLHBvcnQ9JXMiICUgc3BpY2VfcG9ydF0KLSAgICAgICAgKyBpbmNvbWlu
Z19hcmdzICsgZXh0cmFfYXJncykKICAgICBpZiBvcy5wYXRoLmV4aXN0cyhpbWFnZSk6Ci0gICAg
ICAgIGFyZ3MgKz0gWyItbSIsICI1MTIiLCAiLWRyaXZlIiwKLSAgICAgICAgICAgICAgICAgImZp
bGU9JXMsaW5kZXg9MCxtZWRpYT1kaXNrLGNhY2hlPXVuc2FmZSIgJSBpbWFnZSwgIi1zbmFwc2hv
dCJdCisgICAgICAgIGFyZ3MgKz0gWworICAgICAgICAgICAgIi1tIiwgIjUxMiIsCisgICAgICAg
ICAgICAiLWRyaXZlIiwgImZpbGU9JXMsaW5kZXg9MCxtZWRpYT1kaXNrLGNhY2hlPXVuc2FmZSIg
JSBpbWFnZSwKKyAgICAgICAgICAgICItc25hcHNob3QiCisgICAgICAgIF0KICAgICBwcm9jID0g
UG9wZW4oYXJncywgZXhlY3V0YWJsZT1xZW11X2V4ZWMsIHN0ZGluPVBJUEUsIHN0ZG91dD1QSVBF
KQorCiAgICAgd2hpbGUgbm90IG9zLnBhdGguZXhpc3RzKHFtcF9maWxlbmFtZSk6CiAgICAgICAg
IHRpbWUuc2xlZXAoMC4xKQogICAgIHByb2MucW1wX2ZpbGVuYW1lID0gcW1wX2ZpbGVuYW1lCi0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
