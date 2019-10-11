Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 559ACD3CD7
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 11:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99A86E072;
	Fri, 11 Oct 2019 09:56:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36AB66E072
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8AC6D3090FD6
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 09:56:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 91BF760BE1;
 Fri, 11 Oct 2019 09:56:37 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 11 Oct 2019 10:56:24 +0100
Message-Id: <20191011095629.28447-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 11 Oct 2019 09:56:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-protocol 0/5] SPEC integration
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

VGhpcyBzZXJpZXMgaXMgcGFydCBmcm9tIGEgZm9ybWVyIHNlcmllcy4KVGhlcmUncyBhbiBpbml0
aWFsIGltcG9ydCBjb21taXQgdG8gYmV0dGVyIHVuZGVyc3RhbmQgdGhlIGNoYW5nZXMuCkl0IGNv
bnRhaW5zIHNvbWUgd29yayBmcm9tIEVkdWFyZG8gZm9yIE1pbmdXIHBhY2thZ2luZy4KRmluYWwg
cGF0Y2hlcyBhcmUgcmVhbGx5IG1pbm9yLgoKRnJlZGlhbm8gWmlnbGlvICg1KToKICBidWlsZC1z
eXM6IEltcG9ydCBzcGVjIGZpbGUgZnJvbSBGZWRvcmEKICBidWlsZC1zeXM6IFByb3ZpZGUgc3Bl
YyBmaWxlIGR1cmluZyBidWlsZAogIGJ1aWxkLXN5czogQWxsb3dzIHNwZWMgZmlsZSB0byBidWls
ZCBNaW5nVyBwYWNrYWdlcwogIGJ1aWxkLXN5czogVXBkYXRlIFVSTCBpbiBTUEVDIGZpbGUKICBi
dWlsZC1zeXM6IFJlcXVpcmVzIHByb3BlciBwa2ctY29uZmlnIGZvciBNaW5nVwoKIE1ha2VmaWxl
LmFtICAgICAgICAgICAgfCAgIDEgKwogY29uZmlndXJlLmFjICAgICAgICAgICB8ICAgMSArCiBz
cGljZS1wcm90b2NvbC5zcGVjLmluIHwgMjI0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDIyNiBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgoKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
