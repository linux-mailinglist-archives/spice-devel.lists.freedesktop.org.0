Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 705A027E3F
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEDE89811;
	Thu, 23 May 2019 13:37:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C0989811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:37:14 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id u16so2439454wrn.8
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:37:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=d5RL3gNVj2S4QYTQmdDk1OdVT2+gDk1y7mBMzSFHoyg=;
 b=R0AjmM1MltViDFEm8XRocreGwYvc/Q0WHVjMQuhNn0sSOPAjJpGelmpJzhoWP/SqsD
 wk+vXym8jJQ0LozVPxeZq7Dmz/G9DvYi/P2fyG+07SpngsuaKrT0cxVjmSccW6978KV3
 h/P4SgSkazVd7JzcsztwhO8WX/oXOalaVB8+L0/W6KHsGFaVOs636rnM/75DZQFS+dI0
 HtNs+TNLmxMzOSRJGRRwhTMNmO7yo1gVj6dEFJdN9PacKI3hIAsg98ZJmK4SRuVX+OFq
 S/Yf5J3jdx7FqCCedyDQuxs7hpaWdxRF9r8v9q8/CiPPPqPl2a4Ppme7wuju5Q+5RpkI
 8G8w==
X-Gm-Message-State: APjAAAX1NVGEvmGWvlWqrC2ClqrnoZMRz/ohFNqKWdFgKiWm4Q1lLdeD
 8LDLln0U75df2fajNIQM93gCL+vPfbV+uXVJ6yUpWYCT
X-Google-Smtp-Source: APXvYqx0Jcy34zCSxu753qydkqKbF5gVkpEP3ZM8sZFwlJOdh0V7d3xXk2BTAusedqsuQG+s/6DYdR+jPzSrOVUx+k0=
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr311024wru.18.1558618633551;
 Thu, 23 May 2019 06:37:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-7-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-7-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:37:02 +0200
Message-ID: <CAJ+F1C+t9irOs-0fVgaGZvGC8gE=RjxiY4kOmO9dNBzsMowSgw@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=d5RL3gNVj2S4QYTQmdDk1OdVT2+gDk1y7mBMzSFHoyg=;
 b=DghFqh7BUzcuMY9nCtrpuhMVvh/lEsMR/Mm8NEuDoiwx7/Acr6jGHHCp31Q34MqSs4
 pe4JGC/FGAlIH8zEOWzYsO5/oKkBoolmYPa50u/J9912YscA9ZPaNHDArDVgFVO9YA9o
 31YvAR8qmQWMcqkz7jdjHVxZaiLMfUXW5gLzHJFggxcv9BWtexsgbtAOO6WwvbgXvwwx
 x3bjWe1jxiqQ1t1nR2c1SSNa1Lwxb1F3+R3YCZGswfz/8hcBfaOC74qy/w29Nui1en4U
 RfDK54Zu3985Hxisbsr8XGw8yGWutykURmoE63l0gbC4wP5/yuB7zqw9on/D9yGKhFQ7
 9XWw==
Subject: Re: [Spice-devel] [PATCH phodav 06/13] spice: print err when g_open
 fails
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
aGF0LmNvbT4gd3JvdGU6Cj4KPiBEb24ndCBmYWlsIHNpbGVudGx5IHdoZW4gd2UgY2Fubm90IG9w
ZW4gdGhlIHdlYmRhdiB2aXJ0aW8gcG9ydC4KPgo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIEphbmvF
ryA8amphbmt1QHJlZGhhdC5jb20+CgphY2sKCj4gLS0tCj4gIHNwaWNlL3NwaWNlLXdlYmRhdmQu
YyB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBiL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwo+IGlu
ZGV4IDNmYWMyOGIuLmQ5YjFmYWUgMTAwNjQ0Cj4gLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5j
Cj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gQEAgLTI0LDYgKzI0LDcgQEAKPiAgI2lu
Y2x1ZGUgPGdpby9ndW5peG91dHB1dHN0cmVhbS5oPgo+ICAjaW5jbHVkZSA8ZmNudGwuaD4KPiAg
I2luY2x1ZGUgPGdsaWIvZ3N0ZGlvLmg+Cj4gKyNpbmNsdWRlIDxlcnJuby5oPgo+ICAjZW5kaWYK
Pgo+ICAjaWZkZWYgR19PU19XSU4zMgo+IEBAIC03MDMsOCArNzA0LDEyIEBAIG9wZW5fbXV4X3Bh
dGggKGNvbnN0IGNoYXIgKnBhdGgpCj4gICAgZ19kZWJ1ZyAoIk9wZW4gJXMiLCBwYXRoKTsKPiAg
I2lmZGVmIEdfT1NfVU5JWAo+ICAgIHBvcnRfZmQgPSBnX29wZW4gKHBhdGgsIE9fUkRXUik7Cj4g
KyAgZ2ludCBlcnJzdiA9IGVycm5vOwo+ICAgIGlmIChwb3J0X2ZkID09IC0xKQo+ICsgICAgewo+
ICsgICAgICBnX3ByaW50ZXJyKCJGYWlsZWQgdG8gb3BlbiAlczogJXNcbiIsIHBhdGgsIGdfc3Ry
ZXJyb3IoZXJyc3YpKTsKPiAgICAgICAgZXhpdCAoMSk7Cj4gKyAgICB9Cj4KPiAgICB3YWl0X2Zv
cl92aXJ0aW9faG9zdCAocG9ydF9mZCk7Cj4KPiAtLQo+IDIuMjEuMAo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgoKCi0tIApNYXJj
LUFuZHLDqSBMdXJlYXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
