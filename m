Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B457F95
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE76B6E1B2;
	Thu, 27 Jun 2019 09:48:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97376E1B2
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:48:13 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id x17so1758272wrl.9
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 02:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2O3VuSpMe2GYcqUF8VaiczWNZRu11yeF6OVxBcUrGPc=;
 b=okXCN+o9RIOho3cQaAhaPy6bTkgI2gDOHKU5yRcJdSxGoayh1b0lcUUcdnInJ+SmFy
 W77w+/JEdB7lPOVOF+aMHBR0mVcrxRdQNgjGIwO+EtREv15P5wmxpE3cHgZOVXND2NbU
 h6udJ84OD8fZIJP0WN9t1zCwCy6NkYgxYjnQWKYvQhRgHVcoN2s5ZibURz8SsIqqjr8U
 v5gAFaWoKQL+m5X8r7SuoTnZtGho8I2CY6HhqzgBNn4xhw2EssM6GclY/Evzd6s6p9UO
 hTzIaKPDAsEsb5miSoYgWx3P4xU35YIY/rh/3BsUqFahJnjEdeYJbtMEdw03lYy78GIF
 Sazg==
X-Gm-Message-State: APjAAAVwJGcIlx3YyYD8PTZX8/mEHnc1RjMke2Yjmhp2q2dgMdBQIhGD
 9ciHw6XaFIpOGuet+30FiaW2kXsF6iWAHA==
X-Google-Smtp-Source: APXvYqz2eXI3/IinUXR3st3BU51koEOAGOEX/yt+NwwmWDhlO0u81/9bRTmVgWYTEuCr8ThgI4vARw==
X-Received: by 2002:adf:f649:: with SMTP id x9mr2283248wrp.86.1561628892130;
 Thu, 27 Jun 2019 02:48:12 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id g123sm1213062wme.12.2019.06.27.02.48.10
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 02:48:11 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190626141026.30745-1-ssheribe@redhat.com>
 <20190626141026.30745-2-ssheribe@redhat.com>
 <1845111053.24942755.1561621416486.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <eec4f657-8788-cdee-62f0-e12ff3c05a4a@redhat.com>
Date: Thu, 27 Jun 2019 12:48:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1845111053.24942755.1561621416486.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 2/2] gst-plugin: Use
 autovideoconvert element for color space conversion
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIDYvMjcvMTkgMTA6NDMgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4gV2hlbiB2YWFw
aSBiYXNlZCBlbmNvZGVyIGlzIHVzZWQgaXQncyBsaWtlbHkgdGhhdCBhbHNvIHZhYXBpIGJhc2Vk
Cj4+IGNvbnZlcnNpb24gaXMgYXZhaWxhYmxlICh1c2luZyB0aGUgdmFhcGlwb3N0cHJvYyBlbGVt
ZW50KS4KPj4gTW92aW5nIHRvIGF1dG92aWRlb2NvbnZlcnQgd2lsbCBhdXRvbWF0aWNhbGx5IGNo
b29zZSBhIHN1aXRhYmxlCj4+IGNvbnZlcnQgZWxlbWVudCBhY2NvcmRpbmcgdG8gZWxlbWVudHMg
YXZhaWxhYmlsaXR5IChlLmcuIGluIHRoZQo+PiB2YWFwaSBjYXNlIGl0IHdvdWxkIHNlbGVjdCB2
YWFwaXBvc3Rwcm9jIGR1ZSB0byBpdHMgaGlnaCByYW5rKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
U25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiBSZWFsbHkgbWlub3I6IHZhYXBp
IC0+IFZBQVBJID8KCgpTdXJlCgoKPgo+IEFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWds
aW9AcmVkaGF0LmNvbT4KPgo+PiAtLS0KPj4gQXQgZmlyc3QgaSBoYWQgYSBwYXRjaCB0byBjaG9v
c2UgdmFhcGlwb3N0cHJvYyBtYW51YWxseSBidXQgdGhlbiBpIHJlbWVtYmVyZWQKPj4gdGhpcyBl
bGVtZW50Cj4+IHdoaWNoIHN1cHBvc2UgdG8gZG8gaXQgYXV0b21hdGljYWxseSAoaXQgc2VlbXMg
dmFhcGlwb3N0cHJvYyBoYXMgaGlnaCBlbm91Z2gKPj4gcmFuaykuIEkgdGhpbmsKPj4gaXQncyBw
cmVmZXJyZWQgYWx0aG91Z2ggaXQncyBpbiBnc3QtcGx1Z2lucy1iYWQKPj4gLS0tCj4+ICAgc3Jj
L2dzdC1wbHVnaW4uY3BwIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVnaW4uY3BwIGIv
c3JjL2dzdC1wbHVnaW4uY3BwCj4+IGluZGV4IGNmNjYwZWIuLmQ4ZTJkODkgMTAwNjQ0Cj4+IC0t
LSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+PiArKysgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKPj4gQEAg
LTIxNSw3ICsyMTUsNyBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6cGlwZWxpbmVfaW5p
dChjb25zdAo+PiBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+PiAgICAgICBpZiAo
IWNhcHR1cmUpIHsKPj4gICAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiR3N0cmVh
bWVyJ3MgY2FwdHVyZSBlbGVtZW50IGNhbm5vdCBiZQo+PiAgICAgICAgICAgY3JlYXRlZCIpOwo+
PiAgICAgICB9Cj4+IC0gICAgR3N0T2JqZWN0VVB0cjxHc3RFbGVtZW50Pgo+PiBjb252ZXJ0KGdz
dF9lbGVtZW50X2ZhY3RvcnlfbWFrZSgidmlkZW9jb252ZXJ0IiwgImNvbnZlcnQiKSk7Cj4+ICsg
ICAgR3N0T2JqZWN0VVB0cjxHc3RFbGVtZW50Pgo+PiBjb252ZXJ0KGdzdF9lbGVtZW50X2ZhY3Rv
cnlfbWFrZSgiYXV0b3ZpZGVvY29udmVydCIsICJjb252ZXJ0IikpOwo+PiAgICAgICBpZiAoIWNv
bnZlcnQpIHsKPj4gICAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiR3N0cmVhbWVy
J3MgJ3ZpZGVvY29udmVydCcgZWxlbWVudCBjYW5ub3QKPj4gICAgICAgICAgIGJlIGNyZWF0ZWQi
KTsKPiBDaGFuZ2UgJ3ZpZGVvY29udmVydCcgdG8gJ2F1ZGlvdmlkZW9jb252ZXJ0JyBoZXJlPwoK
ClllcywgTWlzc2VkIHRoYXQuCgpTbmlyLgoKCj4KPj4gICAgICAgfQo+IEZyZWRpYW5vCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
