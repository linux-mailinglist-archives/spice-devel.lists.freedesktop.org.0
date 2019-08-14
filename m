Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AE58CF88
	for <lists+spice-devel@lfdr.de>; Wed, 14 Aug 2019 11:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9C689F35;
	Wed, 14 Aug 2019 09:29:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D5389F35
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 09:29:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9EAEF2F30D1
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 09:29:49 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D19A808DF;
 Wed, 14 Aug 2019 09:29:48 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190814084822.27811-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <14246c14-7313-4676-fa31-8c40fce9e83b@redhat.com>
Date: Wed, 14 Aug 2019 12:29:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814084822.27811-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 14 Aug 2019 09:29:49 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] protocol: Removed unneeded
 type specifications
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

T24gOC8xNC8xOSAxMTo0OCBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IERlZmF1bHQgdHlw
ZSBpcyBhbHJlYWR5IHVpbnQ4X3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2suCgpVcmkuCgo+IC0tLQo+ICAgc3BpY2UucHJvdG8g
fCA0ICsrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NwaWNlLnByb3RvIGIvc3BpY2UucHJvdG8KPiBpbmRleCAz
YmJlYzBjLi4zNGJhM2M4IDEwMDY0NAo+IC0tLSBhL3NwaWNlLnByb3RvCj4gKysrIGIvc3BpY2Uu
cHJvdG8KPiBAQCAtMTA5LDcgKzEwOSw3IEBAIG1lc3NhZ2UgRW1wdHkgewo+ICAgfSBAZGVjbGFy
ZTsKPiAgIAo+ICAgbWVzc2FnZSBEYXRhIHsKPiAtICAgIHVpbnQ4IGRhdGFbXSBAZW5kIEBjdHlw
ZSh1aW50OF90KTsKPiArICAgIHVpbnQ4IGRhdGFbXSBAZW5kOwo+ICAgfSBAbm9jb3B5IEBkZWNs
YXJlOwo+ICAgCj4gICBlbnVtOCBkYXRhX2NvbXByZXNzaW9uX3R5cGUgewo+IEBAIC0xNTYsNyAr
MTU2LDcgQEAgY2hhbm5lbCBCYXNlQ2hhbm5lbCB7Cj4gICAgICAgbWVzc2FnZSB7Cj4gICAgICAg
ICAgIHVpbnQzMiBpZDsKPiAgICAgICAgICAgdWludDY0IHRpbWVzdGFtcDsKPiAtICAgICAgICB1
aW50OCBkYXRhW10gQGN0eXBlKHVpbnQ4X3QpIEBhc19wdHIoZGF0YV9sZW4pOwo+ICsgICAgICAg
IHVpbnQ4IGRhdGFbXSBAYXNfcHRyKGRhdGFfbGVuKTsKPiAgICAgICB9IEBkZWNsYXJlIHBpbmc7
Cj4gICAKPiAgICAgICBtZXNzYWdlIHsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
