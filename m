Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79765CF8F
	for <lists+spice-devel@lfdr.de>; Tue,  2 Jul 2019 14:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BCE899D4;
	Tue,  2 Jul 2019 12:35:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11736899D4
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Jul 2019 12:35:58 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 207so705854wma.1
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Jul 2019 05:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=rnN2cPvj8YNmctNp75H+B3bpP8QPLf1Th3Nv5MWplTw=;
 b=F5W7jjszCG+dbkVjYgXq850uBAE75YTE116StmWuscdWNzTYegEelQklo7x9tP7KRD
 EpvhIvg6yTX7YXPjeEbwwU0cWU0pkHWEcGDua5TbReImCTTTGbjZx6bLwlka4DzDCWuK
 852LmbWCtBcEAl2SghfcplzVcojLn8mqOdqv+/P9bgTC+szpiJVZguP8XSkmGBaydblt
 W4B/sWIIdWj3k1JGfGVopfrx4jcnKTIrp5/s+sZ7Yc/thPaj72F2fYQit8jAvrcRcZcf
 tWmo+EjfUzxnCiclXy6n5tr4n+e7Dsn0K83NTrGfiW8BjnVbzdjTmdKhaJEZwlMjiXnu
 FyEw==
X-Gm-Message-State: APjAAAUI3PyxmUKl/1VQVrjKJh8HgZvK400ulhtic4GNPpTCQ9Wus4Is
 Sw/wpR45CxGuWhOUFLjh32IAmgy/3biYMA==
X-Google-Smtp-Source: APXvYqxOAp2ob0s0YHBF9gTQmwBIqlocEtyEiWCGCqenRpOJ1lVkOyaJz2Ybi8SgzxIvcVQaFyo/JQ==
X-Received: by 2002:a1c:1d83:: with SMTP id d125mr3339184wmd.63.1562070955952; 
 Tue, 02 Jul 2019 05:35:55 -0700 (PDT)
Received: from dhcp-4-140.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id h11sm1015028wro.73.2019.07.02.05.35.54
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 05:35:55 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190602175359.24499-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <9f999bcb-8567-adaf-e1ef-6835ce5b6cb0@redhat.com>
Date: Tue, 2 Jul 2019 15:35:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190602175359.24499-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] red-parse-qxl: Reset mask
 attributes if brush image is missing
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

SGksCgpPbiA2LzIvMTkgODo1MyBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoZSBhdHRy
aWJ1dGVzIGluIHRoaXMgY2FzZSBhcmUgbm90IHVzZWQgdG8gYXBwbHkgdGhlIG1hc2suCj4gRG9p
bmcgc28gYXZvaWQgc2VuZGluZyBnYXJiYWdlIGZyb20gdGhlIGd1ZXN0IHdoaWNoIHVzdWFsbHkK
PiBkb24ndCBpbml0aWFsaXNlIHRoZSBtZW1vcnkgaW4gY2FzZSB0aGUgbWFzayBpcyBtaXNzaW5n
Lgo+IEd1ZXN0IHNob3VsZCBoYXZlIGNsZWFyZWQgdGhlc2UgYnl0ZXMgYnkgaXRzIG93biBob3dl
dmVyIGRvaW5nIHNvCj4gb24gdGhlIHNlcnZlciBmaXhlcyB0aGUgcHJvYmxlbSB0b28uIENvbnNp
ZGVyaW5nIHRoYXQgdGhlc2UKPiBjb21tYW5kIHNob3VsZCBub3QgYXBwZWFycyBpbiBuZXdlciBP
U2VzIGl0J3Mgc3VyZWx5IG5vdCBhIGhvdCBwYXRoCj4gY29kZS4KPiBUaGVzZSBnYXJiYWdlIGNh
bWUgZnJvbSB2aWRlbyBtZW1vcnkgb2YgdGhlIGd1ZXN0IHNvIHRoZXkgZG9uJ3QKPiBjb250YWlu
IHNlbnNpdGl2ZSBkYXRhLgo+Cj4gVGhpcyBmaXhlcyBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvc3BpY2Uvc3BpY2Utc2VydmVyL2lzc3Vlcy8yNS4KPgo+IFNpZ25lZC1vZmYtYnk6IEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgc2VydmVyL3JlZC1w
YXJzZS1xeGwuYyB8IDEwICsrKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1wYXJzZS1x
eGwuYyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMKPiBpbmRleCBhZmFlOTQzMTYuLmE0YWM2YTQ3
MyAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCj4gKysrIGIvc2VydmVyL3Jl
ZC1wYXJzZS1xeGwuYwo+IEBAIC02MjYsOSArNjI2LDE1IEBAIHN0YXRpYyB2b2lkIHJlZF9wdXRf
YnJ1c2goU3BpY2VCcnVzaCAqcmVkKQo+ICAgc3RhdGljIHZvaWQgcmVkX2dldF9xbWFza19wdHIo
UmVkTWVtU2xvdEluZm8gKnNsb3RzLCBpbnQgZ3JvdXBfaWQsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBTcGljZVFNYXNrICpyZWQsIFFYTFFNYXNrICpxeGwsIHVpbnQzMl90IGZs
YWdzKQo+ICAgewo+IC0gICAgcmVkLT5mbGFncyAgPSBxeGwtPmZsYWdzOwo+IC0gICAgcmVkX2dl
dF9wb2ludF9wdHIoJnJlZC0+cG9zLCAmcXhsLT5wb3MpOwo+ICAgICAgIHJlZC0+Yml0bWFwID0g
cmVkX2dldF9pbWFnZShzbG90cywgZ3JvdXBfaWQsIHF4bC0+Yml0bWFwLCBmbGFncywgdHJ1ZSk7
Cj4gKyAgICBpZiAocmVkLT5iaXRtYXApIHsKPiArICAgICAgICByZWQtPmZsYWdzICA9IHF4bC0+
ZmxhZ3M7Cj4gKyAgICAgICAgcmVkX2dldF9wb2ludF9wdHIoJnJlZC0+cG9zLCAmcXhsLT5wb3Mp
Owo+ICsgICAgfSBlbHNlIHsKPiArICAgICAgICByZWQtPmZsYWdzICA9IDA7Cj4gKyAgICAgICAg
cmVkLT5wb3MueCA9IDA7Cj4gKyAgICAgICAgcmVkLT5wb3MueSA9IDA7CgoKTm90IHJlYWxseSBp
bXBvdGVudCBidXQgbWF5YmUgd2UgYW4gYWxzbyBjb25zaWRlciBhIHJlZF9zZXRfcG9pbnRfcHRy
IApmdW5jdGlvbgoKQW55d2F5cyBsb29rcyBmaW5lIHRvIG1lLgoKU25pci4KCgo+ICsgICAgfQo+
ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCByZWRfcHV0X3FtYXNrKFNwaWNlUU1hc2sgKnJlZCkK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
