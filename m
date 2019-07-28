Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46D77FDC
	for <lists+spice-devel@lfdr.de>; Sun, 28 Jul 2019 16:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0880889E39;
	Sun, 28 Jul 2019 14:32:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D3889E39
 for <spice-devel@lists.freedesktop.org>; Sun, 28 Jul 2019 14:32:22 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id x4so5904482wrt.6
 for <spice-devel@lists.freedesktop.org>; Sun, 28 Jul 2019 07:32:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6tjfggoSPfoNWlq8qujlF8jvCkkYcKbETrP4JdBfFHw=;
 b=YstCkGZ98lckVoq3kNAT5+N6e2FTUnEDwN06nx2r3gbTY0Q7bJ5BkBPavFQqur3m4d
 19R3CyenvBMX/AXT37hBlXNxiWpQutMNAgnQFd4VZ6a++vqgdOS39FylW9nIQyP61deH
 DjVw1Kc1QGeX+P0aFpWvxcwjng7ns7ckeGFUGDbm97qIzoDN1h/H73kWZGYxpwhr9A3m
 x27N1yMCjsL5vispcUa3FleX5NFni3i4K/q2GDnfAG2z/W/SWJk31wt6GTXhdRRMvmft
 nAxaevlIW3e0L+t5wju7KRX/XVLR+lSIw79+oO4Y3lHAEU9VsEX0+1LbU9Wcb0su5UE1
 W9jA==
X-Gm-Message-State: APjAAAU15Y/kBhWk2csnMeLPK4NJvR759FsWKJNN+1ztfYgmJLTZdUY7
 zHrAd5buOamEaBWGTCMzSzt1byxAmXI=
X-Google-Smtp-Source: APXvYqze8YswAyJnNA3hIUeGRX+JPQKWnr3KV27YRsQfzf/Fsj65JRZ1d9f7+gpPCbNIer3jerMzFA==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr116764107wrt.84.1564324341055; 
 Sun, 28 Jul 2019 07:32:21 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id o4sm44957828wmh.35.2019.07.28.07.32.19
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 07:32:20 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190726100402.16725-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <2ec9ea7e-c75e-3e5c-78b3-f2d369cb6a4e@redhat.com>
Date: Sun, 28 Jul 2019 17:32:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190726100402.16725-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk] usb-device-manager: Remove
 useless cast
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

YWNrCgpPbiA3LzI2LzE5IDE6MDQgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBzcGljZV91
c2JfZGV2aWNlX25ldyBpcyBhbHJlYWR5IHJldHVybmluZyBhIFNwaWNlVXNiRGV2aWNlIHBvaW50
ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KPiAtLS0KPiAgIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDIgKy0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL3Ny
Yy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IGluZGV4
IGE1MzBiZTllLi41NDRlNTY4NyAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LmMKPiArKysgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKPiBAQCAtNzc2LDcgKzc3Niw3IEBA
IHN0YXRpYyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9hZGRfZGV2KFNwaWNlVXNiRGV2
aWNlTWFuYWdlciAgKnNlbGYsCj4gICAgICAgICAgIHJldHVybjsKPiAgICAgICB9Cj4gICAKPiAt
ICAgIGRldmljZSA9IChTcGljZVVzYkRldmljZSopc3BpY2VfdXNiX2RldmljZV9uZXcoYmRldik7
Cj4gKyAgICBkZXZpY2UgPSBzcGljZV91c2JfZGV2aWNlX25ldyhiZGV2KTsKPiAgICAgICBpZiAo
IWRldmljZSkKPiAgICAgICAgICAgcmV0dXJuOwo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
