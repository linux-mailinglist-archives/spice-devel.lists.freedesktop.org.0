Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7623C700E4
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 15:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B14B89C68;
	Mon, 22 Jul 2019 13:21:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7405989C68
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 13:21:01 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z1so39370255wru.13
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 06:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eG8aV6pk4JtRJbOvwbH3hvUrrroCcabSrKNZOXZZImc=;
 b=fcuclj5NyYQ8yW2qaVEl0l+FjBAQSzuuoE0yhD/niu35ol2i7gVfnECkD84Nhv6Jc6
 y+DssO89pibJrZppKWxjZsqBikuQZKiqRUMbnagVpdR5HAZDLy0Sv+6655ng3lBiK30G
 aXvnoMOJcbbQKtGN9ITpppOsO4LuD/182T8ZnqOvTo5nroS+Au44CZDNzAPOk+MfpsM4
 Y+sjKTZ4LPoZUtftyQnsBe/s8VoMeZ9EZJB++9md2l+K7zT4u41J1Rm0XWGmASQZeiS6
 i3ZNF42+MyhX3MztTHnldgJRCRuuYLarO3KWwAz8GgqmPbPCLCO4yqPqNDer+4s7rvNA
 Mbaw==
X-Gm-Message-State: APjAAAUL4SjoIeAlrLCkoisnlo6tDYOWWL7itKsEJwFPQvh8YiWAGNi2
 84jxC/ffEPINacRSRtfVO4QITgsXLpA=
X-Google-Smtp-Source: APXvYqxiKpQ7GyRCOYQwLRaQ7q/1X1gZs7fKl222e4d2fbmf70OXeQ0v1SUHBv6cp8/tqwMxYIBsQA==
X-Received: by 2002:adf:f883:: with SMTP id u3mr74388362wrp.0.1563801659806;
 Mon, 22 Jul 2019 06:20:59 -0700 (PDT)
Received: from localhost.localdomain ([31.210.177.32])
 by smtp.gmail.com with ESMTPSA id w25sm37378842wmk.18.2019.07.22.06.20.58
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:20:59 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190722112600.1338-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <416f8ccd-0e34-2346-878b-9a5acd0d7289@redhat.com>
Date: Mon, 22 Jul 2019 16:20:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190722112600.1338-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] spice-widget-egl: Use
 sizeof instead of hand coded constant
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

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPbiA3LzIyLzE5
IDI6MjUgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIHNyYy9zcGljZS13aWRnZXQt
ZWdsLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Utd2lkZ2V0LWVnbC5jIGIvc3JjL3NwaWNl
LXdpZGdldC1lZ2wuYwo+IGluZGV4IDdiYWU0ZTU4Li43ZGI2NjA4MiAxMDA2NDQKPiAtLS0gYS9z
cmMvc3BpY2Utd2lkZ2V0LWVnbC5jCj4gKysrIGIvc3JjL3NwaWNlLXdpZGdldC1lZ2wuYwo+IEBA
IC0xMjksNyArMTI5LDcgQEAgc3RhdGljIGdib29sZWFuIHNwaWNlX2VnbF9pbml0X3NoYWRlcnMo
U3BpY2VEaXNwbGF5ICpkaXNwbGF5LCBHRXJyb3IgKiplcnIpCj4gICAgICAgZ2xMaW5rUHJvZ3Jh
bShkLT5lZ2wucHJvZyk7Cj4gICAgICAgZ2xHZXRQcm9ncmFtaXYoZC0+ZWdsLnByb2csIEdMX0xJ
TktfU1RBVFVTLCAmc3RhdHVzKTsKPiAgICAgICBpZiAoIXN0YXR1cykgewo+IC0gICAgICAgIGds
R2V0UHJvZ3JhbUluZm9Mb2coZC0+ZWdsLnByb2csIDEwMDAsICZsZW4sIGxvZyk7Cj4gKyAgICAg
ICAgZ2xHZXRQcm9ncmFtSW5mb0xvZyhkLT5lZ2wucHJvZywgc2l6ZW9mKGxvZyksICZsZW4sIGxv
Zyk7Cj4gICAgICAgICAgIGdfc2V0X2Vycm9yKGVyciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLCBTUElD
RV9DTElFTlRfRVJST1JfRkFJTEVELAo+ICAgICAgICAgICAgICAgICAgICAgICAiZXJyb3IgbGlu
a2luZyBzaGFkZXJzOiAlcyIsIGxvZyk7Cj4gICAgICAgICAgIGdvdG8gZW5kOwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
