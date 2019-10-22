Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C31F5DFF7B
	for <lists+spice-devel@lfdr.de>; Tue, 22 Oct 2019 10:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE146E451;
	Tue, 22 Oct 2019 08:34:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B656A6E450
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-1nIrsW2rN8W8nX7qoDfSEg-1; Tue, 22 Oct 2019 04:34:09 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73652800D4E
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:08 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9669E5C1D4;
 Tue, 22 Oct 2019 08:34:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 22 Oct 2019 09:33:57 +0100
Message-Id: <20191022083358.14214-4-fziglio@redhat.com>
In-Reply-To: <20191022083358.14214-1-fziglio@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 1nIrsW2rN8W8nX7qoDfSEg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571733252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vpcphuRvEqMf1Bg0VGHxHrJf/UWWgIW+KOsAUo9lKIs=;
 b=GIhxOgdYaVRwqQBUISETfd5LgDo1XZ6y9hz3rBtcQMtc46O04LyyCeSNKAKdGfb7/P2yaD
 zHfgQLbM/6r26oAtaatoRL463t61YcCFylx6HSvuXCJAG+/Q+urtCW4YJ28yYZxUVK2iKk
 nDUvKFgLsQjFaSyhop/8GKDiyO9gHtI=
Subject: [Spice-devel] [PATCH spice-protocol v3 4/5] build-sys: Allows spec
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
ZGhhdC5jb20+Ci0tLQogc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiB8IDMyICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4gYi9zcGljZS1wcm90b2NvbC5zcGVjLmlu
CmluZGV4IDQ5NzI0YzYuLjU0YWFjZmQgMTAwNjQ0Ci0tLSBhL3NwaWNlLXByb3RvY29sLnNwZWMu
aW4KKysrIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgpAQCAtOCwyMSArOCw1MyBAQCBMaWNlbnNl
OiAgICAgICAgQlNEIGFuZCBMR1BMdjIrCiBVUkw6ICAgICAgICAgICAgaHR0cHM6Ly93d3cuc3Bp
Y2Utc3BhY2Uub3JnCiBTb3VyY2UwOiAgICAgICAgaHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3Jn
L2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoyCiBCdWlsZEFyY2g6
ICAgICAgbm9hcmNoCitCdWlsZFJlcXVpcmVzOiAgbWluZ3czMi1maWxlc3lzdGVtID49IDk1CitC
dWlsZFJlcXVpcmVzOiAgbWluZ3c2NC1maWxlc3lzdGVtID49IDk1CiAKICVkZXNjcmlwdGlvbgog
SGVhZGVyIGZpbGVzIGRlc2NyaWJpbmcgdGhlIHNwaWNlIHByb3RvY29sCiBhbmQgdGhlIHBhcmEt
dmlydHVhbCBncmFwaGljcyBjYXJkIFFYTC4KIAogCislZGVmaW5lIG1pbmd3X2ZpbGVzKCkgXAor
JXBhY2thZ2UgLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCitTdW1tYXJ5OiAgICAgICAgU3BpY2Ug
cHJvdG9jb2wgaGVhZGVyIGZpbGVzIFwKK1JlcXVpcmVzOiAgICAgICBwa2djb25maWcgXAorXAor
JWRlc2NyaXB0aW9uIC1uICV7MX0tc3BpY2UtcHJvdG9jb2wgXAorSGVhZGVyIGZpbGVzIGRlc2Ny
aWJpbmcgdGhlIHNwaWNlIHByb3RvY29sIFwKK2FuZCB0aGUgcGFyYS12aXJ0dWFsIGdyYXBoaWNz
IGNhcmQgUVhMLiBcCitcCislZmlsZXMgLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCislZG9jIENP
UFlJTkcgQ0hBTkdFTE9HLm1kIFwKKyV7ZXhwYW5kOiUleyV7MX1faW5jbHVkZWRpcn19L3NwaWNl
LTEgXAorJXtleHBhbmQ6JSV7JXsxfV9kYXRhZGlyfX0vcGtnY29uZmlnL3NwaWNlLXByb3RvY29s
LnBjCisKKyVtaW5nd19maWxlcyBtaW5ndzMyCislbWluZ3dfZmlsZXMgbWluZ3c2NAorCisKICVw
cmVwCiAlc2V0dXAgLXEKIAogJWJ1aWxkCitjcCAtcmwgLiAuLi9idWlsZF9zcGljZV9wcm90b2Nv
bF90bXAKK212IC4uL2J1aWxkX3NwaWNlX3Byb3RvY29sX3RtcCBidWlsZAorcHVzaGQgYnVpbGQK
ICVjb25maWd1cmUKIG1ha2UgJXs/X3NtcF9tZmxhZ3N9Citwb3BkCisKKyVtaW5nd19jb25maWd1
cmUKKyVtaW5nd19tYWtlICV7P19zbXBfbWZsYWdzfSBWPTEKKwogCiAlaW5zdGFsbAorcHVzaGQg
YnVpbGQKIG1ha2UgREVTVERJUj0le2J1aWxkcm9vdH0gaW5zdGFsbAorcG9wZAorCislbWluZ3df
bWFrZSBpbnN0YWxsIERFU1RESVI9JXtidWlsZHJvb3R9CiAKIAogJWZpbGVzCi0tIAoyLjIxLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
