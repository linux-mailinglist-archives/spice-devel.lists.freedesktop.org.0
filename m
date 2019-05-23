Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5521727E43
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBDAD89E39;
	Thu, 23 May 2019 13:38:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE50789811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:38:06 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id 15so5817921wmg.5
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8Q1y4JDJXvG7hZnVnNqJz148Un+S0tk90JLEttK4syY=;
 b=rfo6QatFchEefDvqsqUoTZTufR+5MVA1oQ5K6LR7WYGK62UGzLjATeZAY0fynLsRbn
 LYPfPBTdyViOT3mUov4EBHNFAkMt7HeTPs/X2cL5eslSOvCWqpi2cJ9EijhZJmY5O+fY
 UbfARbT3bACHW6iiPjZZnuPlX7Mah9CDFIGt0b76lMBCJDilBWlA5FrWCP73xpk4Q3CT
 5WFL6Hu3kIVunXRQgbVTuSzpa60URJaUTFNXy5vARfP0g5b4K8p1jbtJScK2N/BKSKiA
 0ey5BNr4zgFRtE0bii3MxQv7xiqR8ynUuF6gfZbvy9fZ1FUg/zt/KV7eePdS295lH4yf
 nPMA==
X-Gm-Message-State: APjAAAVO5Ug2KSjro/vTkMRVtD8YONMm+SH4vgBhDxxfcw5hJb2E9BCn
 ITTuSVXH3Dg/6X1nKP1mAeDjatrWjH9ElUGl7Aw=
X-Google-Smtp-Source: APXvYqyPsXLQkJ3rw0kE7K2TXnXQXXO83h1fwX1qFuQ7x25Cwvd/kjPJq8JzKT34D9OdsUNJi4zNzSKeaYPoqfXilA4=
X-Received: by 2002:a1c:eb0c:: with SMTP id j12mr11353680wmh.55.1558618685504; 
 Thu, 23 May 2019 06:38:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-8-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-8-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:37:54 +0200
Message-ID: <CAJ+F1CL=LotuwLGfPQUvufNBQSQ6oryx4gEMG96W1jttMkZ9LA@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8Q1y4JDJXvG7hZnVnNqJz148Un+S0tk90JLEttK4syY=;
 b=PXfnToylCEfZ0KDBjzalXxrp+CZHeLjs/SpEyTN0To3j7zezwl7ap9nLrFH4DnGcIn
 ogP56ivM6XQNyXZxuC5yLcNwQeCuypdCRzXcLzDYWV3KV+hRqKOkNAWDAlKe8i2i0BW/
 4ubX64veAN0xuXYXykBQyFf4UtjQ0GFrqc3F3W6Jk8hybPha/QxNV4xTHsqs8SFmjOXt
 uWZ+cpsBPNXajvMKfYcUOOM5BJPaQFn4060q0fSs2iOoL5EI/UHhzYtlZ5NN7DKVWyfZ
 VwXMOxP+9utND4EZD0cqhu1oJpIhkuQVwrLZsTa0oMsZNuakCroZcVn3i6v+r4Z9Abw+
 UPgg==
Subject: Re: [Spice-devel] [PATCH phodav 07/13] spice: unref GSocketAddress
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBObyBuZWVkIHRvIGtlZXAgaXQgYXJvdW5kIGFmdGVyIGNhbGxp
bmcKPiBnX3NvY2tldF9saXN0ZW5lcl9hZGRfYWRkcmVzcygpLgo+Cj4gU2lnbmVkLW9mZi1ieTog
SmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KCmFjawoKPiAtLS0KPiAgc3BpY2Uvc3Bp
Y2Utd2ViZGF2ZC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4g
ZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBiL3NwaWNlL3NwaWNlLXdlYmRhdmQu
Ywo+IGluZGV4IGQ5YjFmYWUuLjY4MWU5MDkgMTAwNjQ0Cj4gLS0tIGEvc3BpY2Uvc3BpY2Utd2Vi
ZGF2ZC5jCj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gQEAgLTExMzcsNiArMTEzNyw3
IEBAIG1haW4gKGludCBhcmdjLCBjaGFyICphcmd2W10pCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIE5VTEwsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5V
TEwsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZlcnJvcik7Cj4gKyAgZ19v
YmplY3RfdW5yZWYgKHNhZGRyKTsKPiAgICBpZiAoZXJyb3IpCj4gICAgICB7Cj4gICAgICAgIGdf
cHJpbnRlcnIgKCIlc1xuIiwgZXJyb3ItPm1lc3NhZ2UpOwo+IC0tCj4gMi4yMS4wCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKCgoK
LS0gCk1hcmMtQW5kcsOpIEx1cmVhdQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
