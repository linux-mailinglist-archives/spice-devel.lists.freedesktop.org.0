Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4208CD3CDB
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 11:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8B36EC00;
	Fri, 11 Oct 2019 09:56:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AE8E6EC00
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D98A688FFF7
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:47 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 031EF60BE1;
 Fri, 11 Oct 2019 09:56:45 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 11 Oct 2019 10:56:28 +0100
Message-Id: <20191011095629.28447-5-fziglio@redhat.com>
In-Reply-To: <20191011095629.28447-1-fziglio@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Fri, 11 Oct 2019 09:56:47 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 4/5] build-sys: Update URL in
 SPEC file
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

VXNlIGh0dHBzIGluc3RlYWQgb2YgaHR0cCwgd2ViIHNlcnZlciBhdXRvbWF0aWNhbGx5IHJlZGly
ZWN0cwp0byBzZWN1cmUgdmVyc2lvbi4KUmVtb3ZlIHNsYXNoIGF0IHRoZSBlbmQsIG5vdCBuZWVk
ZWQuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4K
LS0tCiBzcGljZS1wcm90b2NvbC5zcGVjLmluIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NwaWNlLXByb3RvY29s
LnNwZWMuaW4gYi9zcGljZS1wcm90b2NvbC5zcGVjLmluCmluZGV4IGE2YTU3MGQuLjM3NTI5MWMg
MTAwNjQ0Ci0tLSBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KKysrIGIvc3BpY2UtcHJvdG9jb2wu
c3BlYy5pbgpAQCAtMTMsOCArMTMsOCBAQCBTdW1tYXJ5OiAgICAgICAgU3BpY2UgcHJvdG9jb2wg
aGVhZGVyIGZpbGVzCiBHcm91cDogICAgICAgICAgRGV2ZWxvcG1lbnQvTGlicmFyaWVzCiAjIE1h
aW4gaGVhZGVycyBhcmUgQlNELCBjb250cm9sbGVyIC8gZm9yZWlnbiBtZW51IGFyZSBMR1BMCiBM
aWNlbnNlOiAgICAgICAgQlNEIGFuZCBMR1BMdjIrCi1VUkw6ICAgICAgICAgICAgaHR0cDovL3d3
dy5zcGljZS1zcGFjZS5vcmcvCi1Tb3VyY2UwOiAgICAgICAgaHR0cDovL3d3dy5zcGljZS1zcGFj
ZS5vcmcvZG93bmxvYWQvcmVsZWFzZXMvJXtuYW1lfS0le3ZlcnNpb259LnRhci5iejIKK1VSTDog
ICAgICAgICAgICBodHRwczovL3d3dy5zcGljZS1zcGFjZS5vcmcKK1NvdXJjZTA6ICAgICAgICBo
dHRwczovL3d3dy5zcGljZS1zcGFjZS5vcmcvZG93bmxvYWQvcmVsZWFzZXMvJXtuYW1lfS0le3Zl
cnNpb259LnRhci5iejIKIEJ1aWxkQXJjaDogICAgICBub2FyY2gKICVpZiAle2J1aWxkX21pbmd3
fQogQnVpbGRSZXF1aXJlczogIG1pbmd3MzItZmlsZXN5c3RlbSA+PSA5NQotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
