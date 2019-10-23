Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE0E1754
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 12:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844466EA29;
	Wed, 23 Oct 2019 10:06:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021966EA29
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:45 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-scrG-cFZMZSxdddjFwVCMQ-1; Wed, 23 Oct 2019 06:06:43 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB35947B
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:42 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9F215DD78;
 Wed, 23 Oct 2019 10:06:41 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 23 Oct 2019 11:06:31 +0100
Message-Id: <20191023100632.26265-4-fziglio@redhat.com>
In-Reply-To: <20191023100632.26265-1-fziglio@redhat.com>
References: <20191023100632.26265-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: scrG-cFZMZSxdddjFwVCMQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571825205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=va/mSkdBvkJntKGRzfxzbHHSgOBg68YjbIS92AMKFXI=;
 b=VJBO7jtcrlDq3pSkk7DlOQ4JB/cjD67o17NqHS+cgHjKcUk69FGcDB/2oD7JIburaYip5y
 WaV6tHLedSmr2LAr/qhnh9Snn6slqnkIAf8ioS5OX+6uLbvUgRRCYLS04PowN7UjqPL1A1
 c9vA5b2vJb2TZV8ldgpx7O4vOuYkiQA=
Subject: [Spice-devel] [PATCH spice-protocol v4 4/5] build-sys: Allows spec
 file to build MingW packages
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

QWRkIE1pbmdXIHN1cHBvcnQuIFRoaXMgYWxsb3dzIHRvIGJ1aWxkIE1pbmdXIHBhY2thZ2VzIGVh
c2lseSB3aXRoIGEKCiAgJCBycG1idWlsZCAtdGEgc3BpY2UtcHJvdG9jb2wtWFhYWC50YXIuYnoy
CgpUaGlzIGlzIGJhc2Ugb24gc29tZSB3b3JrIGJ5IEVkdWFyZG8gTGltYSBhZGRpbmcgTWluZ1cg
c3VwcG9ydCB0byBTUEVDCmZpbGVzLgpQYXJ0IG9mIGRlcGVuZGVuY2llcywgZGVzY3JpcHRpb24g
YW5kIG5hbWVzIGNhbWUgZnJvbSBGZWRvcmEgU1BFQyBmaWxlCmZvciBtaW5ndy1zcGljZS1wcm90
b2NvbCBwYWNrYWdlLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJl
ZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5j
b20+Ci0tCkNoYW5nZXMgc2luY2UgdjM6Ci0gYWRkIGdpdGxhYiBjaSBmcm9tIFZpY3RvcgotLS0K
IC5naXRsYWItY2kueW1sICAgICAgICAgfCAgMyArKy0KIHNwaWNlLXByb3RvY29sLnNwZWMuaW4g
fCAzMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAz
NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55
bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCBhMjA3NzZlLi4wMjQwNmNhIDEwMDY0NAotLS0gYS8u
Z2l0bGFiLWNpLnltbAorKysgYi8uZ2l0bGFiLWNpLnltbApAQCAtNCw5ICs0LDEwIEBAIHZhcmlh
YmxlczoKICAgREVQU19DT01NT046IGdpdCBsaWJ0b29sIG1ha2UgcHl0aG9uMyBweXRob24zLXNp
eCByZWRoYXQtcnBtLWNvbmZpZwogICAgICAgICAgICAgICAgcHl0aG9uMy1weXBhcnNpbmcgbWVz
b24gbmluamEtYnVpbGQgZ3RrLWRvYyBnbGliMi1kZXZlbAogICAgICAgICAgICAgICAgZ2V0dGV4
dCBnZXR0ZXh0LWRldmVsIGJ6aXAyIHJwbWxpbnQgcnBtLWJ1aWxkIHB5dGhvbi11bnZlcnNpb25l
ZC1jb21tYW5kCisgIERFUFNfTUlOR1c6IG1pbmd3MzItZmlsZXN5c3RlbSBtaW5ndzY0LWZpbGVz
eXN0ZW0KIAogYmVmb3JlX3NjcmlwdDoKLS0gZG5mIGluc3RhbGwgLXkgJERFUFNfQ09NTU9OCist
IGRuZiBpbnN0YWxsIC15ICRERVBTX0NPTU1PTiAkREVQU19NSU5HVwogCiBmZWRvcmEtYXV0b3Rv
b2xzOgogICBzY3JpcHQ6CmRpZmYgLS1naXQgYS9zcGljZS1wcm90b2NvbC5zcGVjLmluIGIvc3Bp
Y2UtcHJvdG9jb2wuc3BlYy5pbgppbmRleCA0OTcyNGM2Li41NGFhY2ZkIDEwMDY0NAotLS0gYS9z
cGljZS1wcm90b2NvbC5zcGVjLmluCisrKyBiL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KQEAgLTgs
MjEgKzgsNTMgQEAgTGljZW5zZTogICAgICAgIEJTRCBhbmQgTEdQTHYyKwogVVJMOiAgICAgICAg
ICAgIGh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZwogU291cmNlMDogICAgICAgIGh0dHBzOi8v
d3d3LnNwaWNlLXNwYWNlLm9yZy9kb3dubG9hZC9yZWxlYXNlcy8le25hbWV9LSV7dmVyc2lvbn0u
dGFyLmJ6MgogQnVpbGRBcmNoOiAgICAgIG5vYXJjaAorQnVpbGRSZXF1aXJlczogIG1pbmd3MzIt
ZmlsZXN5c3RlbSA+PSA5NQorQnVpbGRSZXF1aXJlczogIG1pbmd3NjQtZmlsZXN5c3RlbSA+PSA5
NQogCiAlZGVzY3JpcHRpb24KIEhlYWRlciBmaWxlcyBkZXNjcmliaW5nIHRoZSBzcGljZSBwcm90
b2NvbAogYW5kIHRoZSBwYXJhLXZpcnR1YWwgZ3JhcGhpY3MgY2FyZCBRWEwuCiAKIAorJWRlZmlu
ZSBtaW5nd19maWxlcygpIFwKKyVwYWNrYWdlIC1uICV7MX0tc3BpY2UtcHJvdG9jb2wgXAorU3Vt
bWFyeTogICAgICAgIFNwaWNlIHByb3RvY29sIGhlYWRlciBmaWxlcyBcCitSZXF1aXJlczogICAg
ICAgcGtnY29uZmlnIFwKK1wKKyVkZXNjcmlwdGlvbiAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwK
K0hlYWRlciBmaWxlcyBkZXNjcmliaW5nIHRoZSBzcGljZSBwcm90b2NvbCBcCithbmQgdGhlIHBh
cmEtdmlydHVhbCBncmFwaGljcyBjYXJkIFFYTC4gXAorXAorJWZpbGVzIC1uICV7MX0tc3BpY2Ut
cHJvdG9jb2wgXAorJWRvYyBDT1BZSU5HIENIQU5HRUxPRy5tZCBcCisle2V4cGFuZDolJXslezF9
X2luY2x1ZGVkaXJ9fS9zcGljZS0xIFwKKyV7ZXhwYW5kOiUleyV7MX1fZGF0YWRpcn19L3BrZ2Nv
bmZpZy9zcGljZS1wcm90b2NvbC5wYworCislbWluZ3dfZmlsZXMgbWluZ3czMgorJW1pbmd3X2Zp
bGVzIG1pbmd3NjQKKworCiAlcHJlcAogJXNldHVwIC1xCiAKICVidWlsZAorY3AgLXJsIC4gLi4v
YnVpbGRfc3BpY2VfcHJvdG9jb2xfdG1wCittdiAuLi9idWlsZF9zcGljZV9wcm90b2NvbF90bXAg
YnVpbGQKK3B1c2hkIGJ1aWxkCiAlY29uZmlndXJlCiBtYWtlICV7P19zbXBfbWZsYWdzfQorcG9w
ZAorCislbWluZ3dfY29uZmlndXJlCislbWluZ3dfbWFrZSAlez9fc21wX21mbGFnc30gVj0xCisK
IAogJWluc3RhbGwKK3B1c2hkIGJ1aWxkCiBtYWtlIERFU1RESVI9JXtidWlsZHJvb3R9IGluc3Rh
bGwKK3BvcGQKKworJW1pbmd3X21ha2UgaW5zdGFsbCBERVNURElSPSV7YnVpbGRyb290fQogCiAK
ICVmaWxlcwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
