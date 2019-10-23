Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DDEE1753
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 12:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C78E6EA26;
	Wed, 23 Oct 2019 10:06:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE876EA26
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:41 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-RgmvSRw9Oku6jQF3a2lUNg-1; Wed, 23 Oct 2019 06:06:37 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 392C45E4
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 10:06:37 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5A34B5DD78;
 Wed, 23 Oct 2019 10:06:36 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 23 Oct 2019 11:06:29 +0100
Message-Id: <20191023100632.26265-2-fziglio@redhat.com>
In-Reply-To: <20191023100632.26265-1-fziglio@redhat.com>
References: <20191023100632.26265-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: RgmvSRw9Oku6jQF3a2lUNg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571825200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FyNn5f7kv0hbjvLFbN4bzn5mhUeqeAM3tBzFRI0y4vM=;
 b=c7pQb/W0440KpDd0GhG1EZKFNDJLEwMbr4p9T2p6uMZaJ01yoVskTFMIJ4WylBu32HXWm6
 Ot5BEh08URcXtJCpbncGrzuyUNkND/Qc0CyEyuSrSOVrH6hnmqFAmS7CLtocQefzHwZG3A
 h0Xd9vUBnXIGahkgx6h1faj42A6ZjPw=
Subject: [Spice-devel] [PATCH spice-protocol v4 2/5] build-sys: Update URL
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
