Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9914CD3CDC
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 11:56:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDC26EC01;
	Fri, 11 Oct 2019 09:56:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABC296EC01
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 54C2710DCCA2
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:50 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5D84A60BE1;
 Fri, 11 Oct 2019 09:56:48 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 11 Oct 2019 10:56:29 +0100
Message-Id: <20191011095629.28447-6-fziglio@redhat.com>
In-Reply-To: <20191011095629.28447-1-fziglio@redhat.com>
References: <20191011095629.28447-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Fri, 11 Oct 2019 09:56:50 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 5/5] build-sys: Requires proper
 pkg-config for MingW
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

LnBjIGZpbGVzIHJlcXVpcmVzIE1pbmdXIHZlcnNpb24sIG5vdCBzeXN0ZW0gb25lLgoKU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3BpY2Ut
cHJvdG9jb2wuc3BlYy5pbiB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4gYi9zcGlj
ZS1wcm90b2NvbC5zcGVjLmluCmluZGV4IDM3NTI5MWMuLmQyOTVlNDQgMTAwNjQ0Ci0tLSBhL3Nw
aWNlLXByb3RvY29sLnNwZWMuaW4KKysrIGIvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgpAQCAtMzEs
NyArMzEsNyBAQCBhbmQgdGhlIHBhcmEtdmlydHVhbCBncmFwaGljcyBjYXJkIFFYTC4KICVkZWZp
bmUgbWluZ3dfZmlsZXMoKSBcCiAlcGFja2FnZSAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwKIFN1
bW1hcnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFkZXIgZmlsZXMgXAotUmVxdWlyZXM6ICAg
ICAgIHBrZ2NvbmZpZyBcCitSZXF1aXJlczogICAgICAgJXsxfS1wa2ctY29uZmlnIFwKIFwKICVk
ZXNjcmlwdGlvbiAtbiAlezF9LXNwaWNlLXByb3RvY29sIFwKIEhlYWRlciBmaWxlcyBkZXNjcmli
aW5nIHRoZSBzcGljZSBwcm90b2NvbCBcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
