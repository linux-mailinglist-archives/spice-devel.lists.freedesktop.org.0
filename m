Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB10976C75
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 17:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12476EDA1;
	Fri, 26 Jul 2019 15:17:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D2C6EDA1
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 15:17:50 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hr1z0-0003GB-Fc
 for spice-devel@lists.freedesktop.org; Fri, 26 Jul 2019 10:18:10 -0500
To: spice-devel@lists.freedesktop.org
References: <20190726142836.10982-1-fziglio@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <378667c6-1eec-bddf-270a-cbe79efd5659@codeweavers.com>
Date: Fri, 26 Jul 2019 10:17:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726142836.10982-1-fziglio@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HekPXy4qqdPG3Hx8yRAmfWQGhGaTzwmuuBkeNlWNGUQ=; b=oPMq0vKcIezIeQ/khEC/j/z4oz
 TuykATUqxf4AUFe8pvlN+a2C4J/1EcZZm/lTcGGbocpTijsKQk+Zz4n8b6j4nJsz/Aurr3F1v6Zue
 /cNh6UkAidSL4idciEmMEypqzdsXqQe/KgneLvMG+XlY2i0PHbgoQfkf3MswDJeUleu0=;
Subject: Re: [Spice-devel] [PATCH 1/2] Removed only written
 system_config_file field
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8yNi8xOSA5OjI4IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpGb3Igc2VyaWVzOgpBY2tl
ZC1ieTogSmVyZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgoKPiAtLS0KPiAgIHNy
Yy9vcHRpb25zLmMgfCAzICstLQo+ICAgc3JjL29wdGlvbnMuaCB8IDEgLQo+ICAgMiBmaWxlcyBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
c3JjL29wdGlvbnMuYyBiL3NyYy9vcHRpb25zLmMKPiBpbmRleCBjN2M3NWE4Li5hNmM3YjllIDEw
MDY0NAo+IC0tLSBhL3NyYy9vcHRpb25zLmMKPiArKysgYi9zcmMvb3B0aW9ucy5jCj4gQEAgLTgw
LDcgKzgwLDYgQEAgdm9pZCBvcHRpb25zX2ZyZWUob3B0aW9uc190ICpvcHRpb25zKQo+ICAgICAg
IHN0cl9yZXBsYWNlKCZvcHRpb25zLT5vbl9jb25uZWN0LCBOVUxMKTsKPiAgICAgICBzdHJfcmVw
bGFjZSgmb3B0aW9ucy0+b25fZGlzY29ubmVjdCwgTlVMTCk7Cj4gICAgICAgc3RyX3JlcGxhY2Uo
Jm9wdGlvbnMtPnVzZXJfY29uZmlnX2ZpbGUsIE5VTEwpOwo+IC0gICAgc3RyX3JlcGxhY2UoJm9w
dGlvbnMtPnN5c3RlbV9jb25maWdfZmlsZSwgTlVMTCk7Cj4gICB9Cj4gICAKPiAgIAo+IEBAIC0z
NTMsNyArMzUyLDcgQEAgc3RhdGljIHZvaWQgb3B0aW9uc19mcm9tX2NvbmZpZyhvcHRpb25zX3Qg
Km9wdGlvbnMpCj4gICAgICAgICAgIHN5c3RlbWtleSA9IGdfa2V5X2ZpbGVfbmV3KCk7Cj4gICAg
ICAgICAgIGlmICghZ19rZXlfZmlsZV9sb2FkX2Zyb21fZGlycyhzeXN0ZW1rZXksICJ4MTFzcGlj
ZS94MTFzcGljZS5jb25mIiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIChjb25zdCBjaGFyICoqKSBnX2dldF9zeXN0ZW1fY29uZmlnX2RpcnMoKSwKPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJm9wdGlvbnMtPnN5c3RlbV9jb25maWdf
ZmlsZSwgR19LRVlfRklMRV9OT05FLCBOVUxMKSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBOVUxMLCBHX0tFWV9GSUxFX05PTkUsIE5VTEwpKSB7Cj4gICAgICAg
ICAgICAgICBnX2tleV9maWxlX2ZyZWUoc3lzdGVta2V5KTsKPiAgICAgICAgICAgICAgIHN5c3Rl
bWtleSA9IE5VTEw7Cj4gICAgICAgICAgIH0KPiBkaWZmIC0tZ2l0IGEvc3JjL29wdGlvbnMuaCBi
L3NyYy9vcHRpb25zLmgKPiBpbmRleCBlN2NkZWNlLi45NDM0MWU4IDEwMDY0NAo+IC0tLSBhL3Ny
Yy9vcHRpb25zLmgKPiArKysgYi9zcmMvb3B0aW9ucy5oCj4gQEAgLTY1LDcgKzY1LDYgQEAgdHlw
ZWRlZiBzdHJ1Y3Qgewo+ICAgCj4gICAgICAgLyogZmlsZSBuYW1lcyBvZiBjb25maWcgZmlsZXMg
Ki8KPiAgICAgICBjaGFyICp1c2VyX2NvbmZpZ19maWxlOwo+IC0gICAgY2hhciAqc3lzdGVtX2Nv
bmZpZ19maWxlOwo+ICAgfSBvcHRpb25zX3Q7Cj4gICAKPiAgIAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
