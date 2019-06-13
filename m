Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87379433BC
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3D1893C9;
	Thu, 13 Jun 2019 07:33:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF5489668
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:33:52 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id v14so19549119wrr.4
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 00:33:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mXBU6Z14ts0xdfgnPZMPXqHPkL5BNaOwnHTwZglcihQ=;
 b=RO4TR17Knh3fIsX3TZ5taHRSkrZ1qSyFuf+K1B6atVKtudbbQlNwZpc04Kuca7rQUj
 CwYCtf1oLKfBbyhJ2n3XHq6mPleWruLnNfZq0Ev7v7jXk0fhpHUnQSXI9I42ij9a19Oz
 sLr8EAoH8fFHy3UPY4XDTUyQEgnh6Gq2BLojZ288QQ2HgtKmKq6EaBaF3j0gBURLBQCi
 TBd8nUCX1sxTLCHa/5Cs0UViF1iBI3su/whuQ4r2CyyJ0eoxxyvhbp4j8f60/0CwFTCf
 /lMpE+As9q27ALiHUGTFQJRVQXvXmU/LphhRMrua971IP3TBxMKsTlXrTwNpfaJzRlyC
 sXFg==
X-Gm-Message-State: APjAAAVA5gKitTgrZTyzKXsDuZIIYE6lmAJ670N0RfM7xRaL9EUMowQM
 M3hl80dczrDensAOjcfVr1F00mnkwib1vg==
X-Google-Smtp-Source: APXvYqw9+ltQpi8nxId6q7QwPiTUTwGs3s2R9rpJe81yATqkXBY3ql53lfNB6OzX6BZ92X3tny1wHw==
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr50762210wrw.349.1560411231084; 
 Thu, 13 Jun 2019 00:33:51 -0700 (PDT)
Received: from dhcp-4-181.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id a67sm3021545wmh.40.2019.06.13.00.33.50
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 00:33:50 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190612120659.10083-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <a306c8ca-a3e5-4385-6d27-14c9978b4809@redhat.com>
Date: Thu, 13 Jun 2019 10:33:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612120659.10083-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-common] build: Disable Celt support
 by default
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

SGksCgpGaW5lIHdpdGggbWUuCgpPbiA2LzEyLzE5IDM6MDYgUE0sIEZyZWRpYW5vIFppZ2xpbyB3
cm90ZToKPiBXZSBzdGFydGVkIGRpc2FibGluZyBDZWx0IHN1cHBvcnQgbWFraW5nIHRoZSBvcHRp
b24gcmVxdWlyZWQuCj4gQWZ0ZXIgMiByZWxlYXNlcyBzdGFydCBtYWtpbmcgaXQgZGlzYWJsZWQg
dW5sZXNzIGV4cGxpY2l0bHkKPiBlbmFibGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8g
WmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBtNC9zcGljZS1kZXBzLm00ICB8
IDE0ICsrLS0tLS0tLS0tLS0tCj4gICBtZXNvbl9vcHRpb25zLnR4dCB8ICAxICsKPiAgIDIgZmls
ZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9tNC9zcGljZS1kZXBzLm00IGIvbTQvc3BpY2UtZGVwcy5tNAo+IGluZGV4IDAyMjMwZGQu
LjEyMTQzNDEgMTAwNjQ0Cj4gLS0tIGEvbTQvc3BpY2UtZGVwcy5tNAo+ICsrKyBiL200L3NwaWNl
LWRlcHMubTQKPiBAQCAtMTAxLDIxICsxMDEsMTEgQEAgQUNfREVGVU4oW1NQSUNFX0NIRUNLX1NN
QVJUQ0FSRF0sIFsKPiAgIEFDX0RFRlVOKFtTUElDRV9DSEVDS19DRUxUMDUxXSwgWwo+ICAgICAg
IEFDX0FSR19FTkFCTEUoW2NlbHQwNTFdLAo+ICAgICAgICAgICBBU19IRUxQX1NUUklORyhbLS1l
bmFibGUtY2VsdDA1MV0sCj4gLSAgICAgICAgICAgICAgICAgICAgICAgW0VuYWJsZSBjZWx0MDUx
IGF1ZGlvIGNvZGVjIEA8OkBkZWZhdWx0PWF1dG9AOj5AXSksLAo+IC0gICAgICAgIFtlbmFibGVf
Y2VsdDA1MT0iYXV0byJdKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIFtFbmFibGUgY2VsdDA1
MSBhdWRpbyBjb2RlYyBAPDpAZGVmYXVsdD1ub0A6PkBdKSwsCj4gKyAgICAgICAgW2VuYWJsZV9j
ZWx0MDUxPSJubyJdKQo+ICAgCj4gICAgICAgaWYgdGVzdCAieCRlbmFibGVfY2VsdDA1MSIgIT0g
InhubyI7IHRoZW4KPiAgICAgICAgICAgUEtHX0NIRUNLX01PRFVMRVMoW0NFTFQwNTFdLCBbY2Vs
dDA1MSA+PSAwLjUuMS4xXSwgW2hhdmVfY2VsdDA1MT15ZXNdLCBbaGF2ZV9jZWx0MDUxPW5vXSkK
PiAtICAgICAgICBpZiB0ZXN0ICJ4JGVuYWJsZV9jZWx0MDUxIiA9ICJ4YXV0byI7IHRoZW4KPiAt
ICAgICAgICAgICAgaWYgdGVzdCAieCRoYXZlX2NlbHQwNTEiID0gInh5ZXMiOyB0aGVuCj4gLSAg
ICAgICAgICAgICAgICBBQ19NU0dfRVJST1IobTRfbm9ybWFsaXplKFsKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBDRUxUIDAuNS4xLnggaGFzIGJlZW4gZGV0ZWN0ZWQsIFwKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBidXQgQ0VMVCBzdXBwb3J0IGlzIG5vIGxv
bmdlciBhdXRvbWF0aWNhbGx5IGVuYWJsZWQgYnkgZGVmYXVsdC4gXAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFBsZWFzZSBleHBsaWNpdGx5IHVzZSAtLWVuYWJsZS1jZWx0MDUx
IG9yIC0tZGlzYWJsZS1jZWx0MDUxCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXSkp
Cj4gLSAgICAgICAgICAgIGZpCj4gLSAgICAgICAgICAgICMgaGF2ZV9jZWx0MDUxIGlzICJubyIg
aGVyZSwgc28gY2VsdCBpcyBkaXNhYmxlZCBieSBkZWZhdWx0Cj4gLSAgICAgICAgZmkKPiAgICAg
ICAgICAgaWYgdGVzdCAieCRlbmFibGVfY2VsdDA1MSIgPSAieHllcyIgJiYgdGVzdCAieCRoYXZl
X2NlbHQwNTEiICE9ICJ4eWVzIjsgdGhlbgo+ICAgICAgICAgICAgICAgQUNfTVNHX0VSUk9SKFsi
LS1lbmFibGUtY2VsdDA1MSBoYXMgYmVlbiBzcGVjaWZpZWQsIGJ1dCBDRUxUIDAuNS4xIGlzIG1p
c3NpbmciXSkKPiAgICAgICAgICAgZmkKPiBkaWZmIC0tZ2l0IGEvbWVzb25fb3B0aW9ucy50eHQg
Yi9tZXNvbl9vcHRpb25zLnR4dAo+IGluZGV4IDdlOWU3MDQuLmM5ODI3MzYgMTAwNjQ0Cj4gLS0t
IGEvbWVzb25fb3B0aW9ucy50eHQKPiArKysgYi9tZXNvbl9vcHRpb25zLnR4dAo+IEBAIC0xMiw2
ICsxMiw3IEBAIG9wdGlvbignZXh0cmEtY2hlY2tzJywKPiAgIAo+ICAgb3B0aW9uKCdjZWx0MDUx
JywKPiAgICAgICB0eXBlIDogJ2ZlYXR1cmUnLAo+ICsgICAgdmFsdWUgOiAnZGlzYWJsZWQnLAo+
ICAgICAgIHlpZWxkIDogdHJ1ZSwKPiAgICAgICBkZXNjcmlwdGlvbjogJ0VuYWJsZSBjZWx0MDUx
IGF1ZGlvIGNvZGVjJykKPiAgIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
