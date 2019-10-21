Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025BFDEEED
	for <lists+spice-devel@lfdr.de>; Mon, 21 Oct 2019 16:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512306E103;
	Mon, 21 Oct 2019 14:11:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 563DF6E103
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 14:11:01 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-F7uz6_xiOwa4KB7DDnFqXQ-1; Mon, 21 Oct 2019 10:10:57 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E8CB800D41
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 14:10:56 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7EF2760C4E;
 Mon, 21 Oct 2019 14:10:54 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 21 Oct 2019 15:10:46 +0100
Message-Id: <20191021141048.4847-3-fziglio@redhat.com>
In-Reply-To: <20191021141048.4847-1-fziglio@redhat.com>
References: <20191021141048.4847-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: F7uz6_xiOwa4KB7DDnFqXQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571667059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PMpilkn4z0mBw6fcCeQgpXY9RMmgiPO8xnLawJgtBI0=;
 b=YOBbCUp3Lgf8FeQlo83zzqSa+4Ev/YcV5tLNOE2Q+SICwDxLCwpliUeOqWE+n+JnRrHdgn
 26pFh4JVEOpdAe+aBPkFQWnCn9adJ/FdgBTeEhfO0H91odiwOnJR9gwZf03f90D4L3izW1
 XlmNMC7MCTwR8J9oMNvPUyZjMmQEE6A=
Subject: [Spice-devel] [PATCH spice-protocol v2 3/5] build-sys: Allows spec
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
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQoKQ2hh
bmdlcyBzaW5jZSB2MToKLSBjb21waWxlIGFsd2F5cyBNaW5nVywgZG9lcyBub3QgdGFrZSBtdWNo
IHRpbWUgZm9yIHNwaWNlLXByb3RvY29sCgpkaWZmIC0tZ2l0IGEvc3BpY2UtcHJvdG9jb2wuc3Bl
Yy5pbiBiL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KaW5kZXggY2MxZmFkYy4uNzFhYjkxYSAxMDA2
NDQKLS0tIGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgorKysgYi9zcGljZS1wcm90b2NvbC5zcGVj
LmluCkBAIC04LDIxICs4LDUzIEBAIExpY2Vuc2U6ICAgICAgICBCU0QgYW5kIExHUEx2MisKIFVS
TDogICAgICAgICAgICBodHRwOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy8KIFNvdXJjZTA6ICAgICAg
ICBodHRwOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9kb3dubG9hZC9yZWxlYXNlcy8le25hbWV9LSV7
dmVyc2lvbn0udGFyLmJ6MgogQnVpbGRBcmNoOiAgICAgIG5vYXJjaAorQnVpbGRSZXF1aXJlczog
IG1pbmd3MzItZmlsZXN5c3RlbSA+PSA5NQorQnVpbGRSZXF1aXJlczogIG1pbmd3NjQtZmlsZXN5
c3RlbSA+PSA5NQogCiAlZGVzY3JpcHRpb24KIEhlYWRlciBmaWxlcyBkZXNjcmliaW5nIHRoZSBz
cGljZSBwcm90b2NvbAogYW5kIHRoZSBwYXJhLXZpcnR1YWwgZ3JhcGhpY3MgY2FyZCBRWEwuCiAK
IAorJWRlZmluZSBtaW5nd19maWxlcygpIFwKKyVwYWNrYWdlIC1uICV7MX0tc3BpY2UtcHJvdG9j
b2wgXAorU3VtbWFyeTogICAgICAgIFNwaWNlIHByb3RvY29sIGhlYWRlciBmaWxlcyBcCitSZXF1
aXJlczogICAgICAgcGtnY29uZmlnIFwKK1wKKyVkZXNjcmlwdGlvbiAtbiAlezF9LXNwaWNlLXBy
b3RvY29sIFwKK0hlYWRlciBmaWxlcyBkZXNjcmliaW5nIHRoZSBzcGljZSBwcm90b2NvbCBcCith
bmQgdGhlIHBhcmEtdmlydHVhbCBncmFwaGljcyBjYXJkIFFYTC4gXAorXAorJWZpbGVzIC1uICV7
MX0tc3BpY2UtcHJvdG9jb2wgXAorJWRvYyBDT1BZSU5HIENIQU5HRUxPRy5tZCBcCisle2V4cGFu
ZDolJXslezF9X2luY2x1ZGVkaXJ9fS9zcGljZS0xIFwKKyV7ZXhwYW5kOiUleyV7MX1fZGF0YWRp
cn19L3BrZ2NvbmZpZy9zcGljZS1wcm90b2NvbC5wYworCislbWluZ3dfZmlsZXMgbWluZ3czMgor
JW1pbmd3X2ZpbGVzIG1pbmd3NjQKKworCiAlcHJlcAogJXNldHVwIC1xCiAKICVidWlsZAorY3Ag
LXJsIC4gLi4vYnVpbGRfc3BpY2VfcHJvdG9jb2xfdG1wCittdiAuLi9idWlsZF9zcGljZV9wcm90
b2NvbF90bXAgYnVpbGQKK3B1c2hkIGJ1aWxkCiAlY29uZmlndXJlCiBtYWtlICV7P19zbXBfbWZs
YWdzfQorcG9wZAorCislbWluZ3dfY29uZmlndXJlCislbWluZ3dfbWFrZSAlez9fc21wX21mbGFn
c30gVj0xCisKIAogJWluc3RhbGwKK3B1c2hkIGJ1aWxkCiBtYWtlIERFU1RESVI9JXtidWlsZHJv
b3R9IGluc3RhbGwKK3BvcGQKKworJW1pbmd3X21ha2UgaW5zdGFsbCBERVNURElSPSV7YnVpbGRy
b290fQogCiAKICVmaWxlcwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
