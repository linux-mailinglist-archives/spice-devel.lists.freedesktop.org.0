Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4E890D6
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336666E303;
	Sun, 11 Aug 2019 09:03:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7A96E303
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:03:08 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id p17so101973263wrf.11
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 02:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=J0hMaL3tsRMUVIF8Pu2DCYBtVBNXaV8kEAkrmjMHQEo=;
 b=PcrstWbptZxm0Hi6UsZ/xQIJETbg4HqR/W9+Wcnv7W45n5BvjCWIfEahDeasm7kd9s
 DDT+8OJFOPBuUzTGxziHJtomfjMhjnJZRaQG8ZWuCbIce8LvJxq+MzaNDy+Vq5lIf3Sq
 U0xoVwyFeQINydVMU9/UeKZhjIobgGLiaw6PVJb6Xb0jh74KNBRBzNNKMqD/fvY64Ukd
 2fxvtRAuXvkcsAk2wl1FPOPntRuXqyDmHDuXw4vWTGrEng2GsAT+I+fkv94KVHGl6iYN
 1xuJOYiRqpl3MAbV8PJlI7HiOGYjncuWRMO8+KpsbNbfY+5Pu+Nj8GK11BeS1SAsUC98
 TAyQ==
X-Gm-Message-State: APjAAAU5Du+CmO2hRmxGETu3nmJ/SIT6GPKi5GN3FyUTnM+b4JJkUIHB
 5sn5NJbI9LM+Q3N1gheZQFjYeTjlM0M=
X-Google-Smtp-Source: APXvYqwz+1qhtqhJbdAxvNTVc4mZ+fGE6R540K/61YMJvS00Df2aomUbNqUTT0sK6iY7j7sCmph5JA==
X-Received: by 2002:adf:ec0d:: with SMTP id x13mr35546910wrn.240.1565514186863; 
 Sun, 11 Aug 2019 02:03:06 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id q20sm42905125wrc.79.2019.08.11.02.03.05
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 02:03:05 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190723082230.10381-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <0f95d343-86f4-725a-ddfd-03f4e36ed3a9@redhat.com>
Date: Sun, 11 Aug 2019 12:03:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723082230.10381-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] replay: Remove some goto
 statement
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

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPbiA3LzIzLzE5
IDExOjIyIEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogRnJlZGlh
bm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBzZXJ2ZXIvdGVzdHMvcmVw
bGF5LmMgfCAxOCArKysrKystLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy9y
ZXBsYXkuYyBiL3NlcnZlci90ZXN0cy9yZXBsYXkuYwo+IGluZGV4IGUzZWY3YmYxNS4uOTkyZjI2
ZDYzIDEwMDY0NAo+IC0tLSBhL3NlcnZlci90ZXN0cy9yZXBsYXkuYwo+ICsrKyBiL3NlcnZlci90
ZXN0cy9yZXBsYXkuYwo+IEBAIC0xMTYsNyArMTE2LDcgQEAgc3RhdGljIGdib29sZWFuIGZpbGxf
cXVldWVfaWRsZShncG9pbnRlciB1c2VyX2RhdGEpCj4gICAgICAgICAgIGlmICghY21kKSB7Cj4g
ICAgICAgICAgICAgICBnX2FzeW5jX3F1ZXVlX3B1c2goZGlzcGxheV9xdWV1ZSwgR0lOVF9UT19Q
T0lOVEVSKC0xKSk7Cj4gICAgICAgICAgICAgICBnX2FzeW5jX3F1ZXVlX3B1c2goY3Vyc29yX3F1
ZXVlLCBHSU5UX1RPX1BPSU5URVIoLTEpKTsKPiAtICAgICAgICAgICAgZ290byBlbmQ7Cj4gKyAg
ICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgICB9Cj4gICAKPiAgICAgICAgICAgKytuY29tbWFu
ZHM7Cj4gQEAgLTEzMyw3ICsxMzMsNiBAQCBzdGF0aWMgZ2Jvb2xlYW4gZmlsbF9xdWV1ZV9pZGxl
KGdwb2ludGVyIHVzZXJfZGF0YSkKPiAgICAgICAgICAgfQo+ICAgICAgIH0KPiAgIAo+IC1lbmQ6
Cj4gICAgICAgaWYgKCFrZWVwKSB7Cj4gICAgICAgICAgIHB0aHJlYWRfbXV0ZXhfbG9jaygmbXV0
ZXgpOwo+ICAgICAgICAgICBpZiAoZmlsbF9zb3VyY2UpIHsKPiBAQCAtMTUzLDE3ICsxNTIsMTIg
QEAgc3RhdGljIHZvaWQgZmlsbF9xdWV1ZSh2b2lkKQo+ICAgewo+ICAgICAgIHB0aHJlYWRfbXV0
ZXhfbG9jaygmbXV0ZXgpOwo+ICAgCj4gLSAgICBpZiAoIXN0YXJ0ZWQpCj4gLSAgICAgICAgZ290
byBlbmQ7Cj4gLQo+IC0gICAgaWYgKGZpbGxfc291cmNlKQo+IC0gICAgICAgIGdvdG8gZW5kOwo+
IC0KPiAtICAgIGZpbGxfc291cmNlID0gZ19pZGxlX3NvdXJjZV9uZXcoKTsKPiAtICAgIGdfc291
cmNlX3NldF9jYWxsYmFjayhmaWxsX3NvdXJjZSwgZmlsbF9xdWV1ZV9pZGxlLCBOVUxMLCBOVUxM
KTsKPiAtICAgIGdfc291cmNlX2F0dGFjaChmaWxsX3NvdXJjZSwgYmFzaWNfZXZlbnRfbG9vcF9n
ZXRfY29udGV4dCgpKTsKPiArICAgIGlmIChzdGFydGVkICYmIGZpbGxfc291cmNlID09IE5VTEwp
IHsKPiArICAgICAgICBmaWxsX3NvdXJjZSA9IGdfaWRsZV9zb3VyY2VfbmV3KCk7Cj4gKyAgICAg
ICAgZ19zb3VyY2Vfc2V0X2NhbGxiYWNrKGZpbGxfc291cmNlLCBmaWxsX3F1ZXVlX2lkbGUsIE5V
TEwsIE5VTEwpOwo+ICsgICAgICAgIGdfc291cmNlX2F0dGFjaChmaWxsX3NvdXJjZSwgYmFzaWNf
ZXZlbnRfbG9vcF9nZXRfY29udGV4dCgpKTsKPiArICAgIH0KPiAgIAo+IC1lbmQ6Cj4gICAgICAg
cHRocmVhZF9tdXRleF91bmxvY2soJm11dGV4KTsKPiAgIH0KPiAgIApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
