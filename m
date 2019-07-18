Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981C66CFFB
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 16:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2784C6E3E4;
	Thu, 18 Jul 2019 14:40:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3C576E3E4
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:40:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E88F81DFE
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 14:40:36 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE4B019C68;
 Thu, 18 Jul 2019 14:40:35 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190718073225.13190-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <a2486ec4-a9d2-9782-5208-dda14ec1d2f8@redhat.com>
Date: Thu, 18 Jul 2019 17:40:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718073225.13190-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 18 Jul 2019 14:40:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 0/3] Update Valgrind
 suppression files
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8xOC8xOSAxMDozMiBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoaXMgc2VyaWVz
IHNwbGl0IGFuZCB1cGRhdGUgVmFsZ3JpbmQgc3VwcHJlc3Npb24gZmlsZXMgaW4KPiBvcmRlciBm
b3IgbWFrZSBHaXRsYWIgQ0kgcGFzcy4KCldvcmtzIGZvciBtZS4KClNvbWUgbWlub3IgY29tbWVu
dHMgZm9yIHBhdGNoIDMuCgpBY2sgc2VyaWVzLgoKVXJpLgoKPiAKPiBSZXN1bHRzIGF0Cj4gaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UvLS9qb2JzLzQzMDAwNi4K
PiBOb3RlIHRoYXQgdG8gcGFzcyBWYWxncmluZCBjaGVja3Mgc29tZSBvdGhlciBwYXRjaGVzIGFy
ZSBuZWVkZWQKPiBidXQgdGhlc2Ugc2VyaWVzIGlzIGNvbXBsZXRlIGZvciB0aGUgc3VwcHJlc3Np
b24gcGFydC4KPiAKPiBGcmVkaWFubyBaaWdsaW8gKDMpOgo+ICAgIGNpOiBTZXBhcmF0ZSBTUElD
RSBzcGVjaWZpYyBWYWxncmluZCBzdXBwcmVzc2lvbgo+ICAgIGNpOiBVcGRhdGUgZ2xpYi5zdXBw
IGZpbGUKPiAgICBjaTogQWRkIHNvbWUgVmFsZ3JpbmQgc3VwcHJlc3Npb25zIGZvciBGZWRvcmEg
MzAKPiAKPiAgIHNlcnZlci90ZXN0cy9NYWtlZmlsZS5hbSAgICAgICAgIHwgICAyICstCj4gICBz
ZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvZ2xpYi5zdXBwICB8IDIwNyArKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tCj4gICBzZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3BpY2Uuc3VwcCB8ICA2MyAr
KysrKysrKysrCj4gICAzIGZpbGVzIGNoYW5nZWQsIDI1NyBpbnNlcnRpb25zKCspLCAxNSBkZWxl
dGlvbnMoLSkKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBzZXJ2ZXIvdGVzdHMvdmFsZ3JpbmQvc3Bp
Y2Uuc3VwcAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
