Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF7FDFF78
	for <lists+spice-devel@lfdr.de>; Tue, 22 Oct 2019 10:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 175896E44B;
	Tue, 22 Oct 2019 08:34:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B976E44B
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:08 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-HalPsOOuMiKAxo8eCDdWZQ-1; Tue, 22 Oct 2019 04:34:04 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A798E107AD31
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:34:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C73BC5C1D4;
 Tue, 22 Oct 2019 08:34:02 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 22 Oct 2019 09:33:55 +0100
Message-Id: <20191022083358.14214-2-fziglio@redhat.com>
In-Reply-To: <20191022083358.14214-1-fziglio@redhat.com>
References: <20191022083358.14214-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: HalPsOOuMiKAxo8eCDdWZQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571733247;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FyNn5f7kv0hbjvLFbN4bzn5mhUeqeAM3tBzFRI0y4vM=;
 b=WRQMM91A6bYBoi+yKVmzos6BaxcXyjJnseunLovcLbLlupySXTk+tusMvewe00FX32BI0p
 NF/nAutY/vRWR2hBwVsMAal+pzI/AMST/lb/wjqRH8QPOsaYNNCK8PfnzLpPVqoYf00QzA
 kE/XeR91Dw6vuKHAQ+0WDnpNCEuTi+c=
Subject: [Spice-devel] [PATCH spice-protocol v3 2/5] build-sys: Update URL
 in SPEC file
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
LnNwZWMuaW4gYi9zcGljZS1wcm90b2NvbC5zcGVjLmluCmluZGV4IGExM2FlOTkuLmUyNDA2Mzcg
MTAwNjQ0Ci0tLSBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KKysrIGIvc3BpY2UtcHJvdG9jb2wu
c3BlYy5pbgpAQCAtNCw4ICs0LDggQEAgUmVsZWFzZTogICAgICAgIDElez9kaXN0fQogU3VtbWFy
eTogICAgICAgIFNwaWNlIHByb3RvY29sIGhlYWRlciBmaWxlcwogIyBNYWluIGhlYWRlcnMgYXJl
IEJTRCwgY29udHJvbGxlciAvIGZvcmVpZ24gbWVudSBhcmUgTEdQTAogTGljZW5zZTogICAgICAg
IEJTRCBhbmQgTEdQTHYyKwotVVJMOiAgICAgICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uu
b3JnLwotU291cmNlMDogICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL2Rvd25sb2Fk
L3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoyCitVUkw6ICAgICAgICAgICAgaHR0
cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnCitTb3VyY2UwOiAgICAgICAgaHR0cHM6Ly93d3cuc3Bp
Y2Utc3BhY2Uub3JnL2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoy
CiBCdWlsZEFyY2g6ICAgICAgbm9hcmNoCiAKICVkZXNjcmlwdGlvbgotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
