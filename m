Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C05A1023
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 06:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D675389EA9;
	Thu, 29 Aug 2019 04:04:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2A289EA9
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 04:04:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6E7C730821B2
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 04:04:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 725DA608C1;
 Thu, 29 Aug 2019 04:04:17 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 05:04:12 +0100
Message-Id: <20190829040412.4648-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 29 Aug 2019 04:04:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] build: Fix compatibility with Meson
 0.49
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

VGhlICJpbnN0YWxsIiBhcmd1bWVudCBmb3IgY29uZmlndXJlX2ZpbGUgaXMgYXZhaWxhYmxlIHNp
bmNlIDAuNTAuCkhvd2V2ZXIgdGhpcyBpcyBhbHJlYWR5ICJmYWxzZSIgaWYgImluc3RhbGxfZGly
IiBpcyBub3QgcHJvdmlkZWQuCgpVcGRhdGUgYWxzbyBzcGljZS1jb21tb24gc3VibW9kdWxlIHRv
IGltcG9ydCBhIHNpbWlsYXIgZml4IGZvcgpzcGljZS1jb21tb24gbW9kdWxlLiBUaGlzIGJyaW5n
cyBpbiB0aGUgZm9sbG93aW5nIGNoYW5nZXM6CgpGcmVkaWFubyBaaWdsaW8gKDEwKToKICAgICAg
Z2l0aWdub3JlOiBJZ25vcmUgYXV0byBnZW5lcmF0ZWQgZ2VuZXJhdGVkX21lc3NhZ2VzLmggZmls
ZQogICAgICBEbyBub3QgY2hlY2sgZm9yIEhBVkVfQ09ORklHX0gKICAgICAgYnVpbGQ6IFJlbW92
ZSB1bnVzZWQgZ2l0LXZlcnNpb24tZ2VuIGZpbGUKICAgICAgcmVjb3JkZXI6IFVwZGF0ZQogICAg
ICBidWlsZDogRGlzYWJsZSBDZWx0IHN1cHBvcnQgYnkgZGVmYXVsdAogICAgICBjb2RlZ2VuOiBV
c2UgaGFzX2VuZF9hdHRyIGluc3RlYWQgb2YgaGFzX2F0dHIoImVuZCIpCiAgICAgIGNvZGVnZW46
IEV4aXQgd2l0aCBlcnJvciBvbiBlcnJvciBnZW5lcmF0aW5nIEMgc3RydWN0dXJlcwogICAgICBw
cm90b2NvbDogUmVtb3ZlZCB1bm5lZWRlZCB0eXBlIHNwZWNpZmljYXRpb25zCiAgICAgIGNvZGVn
ZW46IEFkZCBhIGNoZWNrIGZvciBDIHN0cnVjdHVyZSBmaWVsZHMKICAgICAgbWVzb246IFJlbW92
ZSAiaW5zdGFsbCIgYXJndW1lbnQgZnJvbSBjb25maWd1cmVfZmlsZQoKVXJpIEx1YmxpbiAoMik6
CiAgICAgIHB0eXBlcy5weTogcmVtb3ZlIHVzZWxlc3MgY29uZGl0aW9uIG1lbWJlciAhPSBOb25l
CiAgICAgIHRlc3QtbWFyc2hhbGxlcnMucHJvdG86IEFycmF5TWVzc2FnZTogbWFrZSBzcGFjZSBm
b3IgbmFtZQoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Ci0tLQogbWVzb24uYnVpbGQgICAgICAgICAgICAgIHwgMSAtCiBzdWJwcm9qZWN0cy9zcGlj
ZS1jb21tb24gfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggMDdk
YmI3MDEuLjE3MWEzZjY3IDEwMDY0NAotLS0gYS9tZXNvbi5idWlsZAorKysgYi9tZXNvbi5idWls
ZApAQCAtMzY1LDcgKzM2NSw2IEBAIGZvcmVhY2gga2V5LCB2YWx1ZSA6IGNvbmZpZ19kYXRhCiBl
bmRmb3JlYWNoCiAKIGNvbmZpZ3VyZV9maWxlKG91dHB1dCA6ICdjb25maWcuaCcsCi0gICAgICAg
ICAgICAgICBpbnN0YWxsIDogZmFsc2UsCiAgICAgICAgICAgICAgICBjb25maWd1cmF0aW9uIDog
c3BpY2VfZ3RrX2NvbmZpZ19kYXRhKQogCiAjCmRpZmYgLS1naXQgYS9zdWJwcm9qZWN0cy9zcGlj
ZS1jb21tb24gYi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KaW5kZXggNWJjZmE3MTEuLjQ3Mjdj
MTlkIDE2MDAwMAotLS0gYS9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KKysrIGIvc3VicHJvamVj
dHMvc3BpY2UtY29tbW9uCkBAIC0xICsxIEBACi1TdWJwcm9qZWN0IGNvbW1pdCA1YmNmYTcxMWQ5
MDgzOWM3YzRjNTAzMTBkYjY3ZjBkNTkxMmEzODI0CitTdWJwcm9qZWN0IGNvbW1pdCA0NzI3YzE5
ZDM2YjMzMDcxOTI4NTAwYWRhYTgzMmVjZWY2YmRkOTQyCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
