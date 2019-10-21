Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39B9DEEEF
	for <lists+spice-devel@lfdr.de>; Mon, 21 Oct 2019 16:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A8B6E10A;
	Mon, 21 Oct 2019 14:11:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094256E107
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 14:11:03 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-VITdelaaMSCi-_Ot9ZNkXQ-1; Mon, 21 Oct 2019 10:10:58 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 559FF1005500
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Oct 2019 14:10:57 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.34.247.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 81C6860BE2;
 Mon, 21 Oct 2019 14:10:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 21 Oct 2019 15:10:47 +0100
Message-Id: <20191021141048.4847-4-fziglio@redhat.com>
In-Reply-To: <20191021141048.4847-1-fziglio@redhat.com>
References: <20191021141048.4847-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: VITdelaaMSCi-_Ot9ZNkXQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571667063;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C1aaYrLXjmtluNJyZWeg2+KL2szqpTs8rJARYuyXaB8=;
 b=aSdheH7HS519qk3cLoh40VMWOmNDm9e4XHsVnVUo22kovXr3pKR5h4gTMH52Kc3FUMSKF5
 gc9W715o1zgSZ3YjnyDSMo0hMyrwoKySwSiej+CadvbuROplx8sD5X+uNSoZStseeLAqbX
 aClljl6GWAal+dDfsP+u6NNdQLNa4bs=
Subject: [Spice-devel] [PATCH spice-protocol v2 4/5] build-sys: Update URL
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
LnNwZWMuaW4gYi9zcGljZS1wcm90b2NvbC5zcGVjLmluCmluZGV4IDcxYWI5MWEuLjU0YWFjZmQg
MTAwNjQ0Ci0tLSBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KKysrIGIvc3BpY2UtcHJvdG9jb2wu
c3BlYy5pbgpAQCAtNSw4ICs1LDggQEAgU3VtbWFyeTogICAgICAgIFNwaWNlIHByb3RvY29sIGhl
YWRlciBmaWxlcwogR3JvdXA6ICAgICAgICAgIERldmVsb3BtZW50L0xpYnJhcmllcwogIyBNYWlu
IGhlYWRlcnMgYXJlIEJTRCwgY29udHJvbGxlciAvIGZvcmVpZ24gbWVudSBhcmUgTEdQTAogTGlj
ZW5zZTogICAgICAgIEJTRCBhbmQgTEdQTHYyKwotVVJMOiAgICAgICAgICAgIGh0dHA6Ly93d3cu
c3BpY2Utc3BhY2Uub3JnLwotU291cmNlMDogICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uu
b3JnL2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoyCitVUkw6ICAg
ICAgICAgICAgaHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnCitTb3VyY2UwOiAgICAgICAgaHR0
cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJz
aW9ufS50YXIuYnoyCiBCdWlsZEFyY2g6ICAgICAgbm9hcmNoCiBCdWlsZFJlcXVpcmVzOiAgbWlu
Z3czMi1maWxlc3lzdGVtID49IDk1CiBCdWlsZFJlcXVpcmVzOiAgbWluZ3c2NC1maWxlc3lzdGVt
ID49IDk1Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
