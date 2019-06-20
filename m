Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905134C8EE
	for <lists+spice-devel@lfdr.de>; Thu, 20 Jun 2019 10:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAB56E528;
	Thu, 20 Jun 2019 08:05:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FA76E529
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Jun 2019 08:05:50 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id r16so1947594wrl.11
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Jun 2019 01:05:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1ZeF4+ookPg2/FCNDx5tBABvVgrbmXTrFCAIn6/OJus=;
 b=a+Y4YSMVoDTrWAl0yB8pILkS9tmlq1tFg9KuXqV2N9k1wozb5Zt+6KOfclp2ZplHOJ
 2kNbtFm8zwhmRr+lOFt3/suHmNMXmqHU7CpK5OUzBpEWljTLVAwzJiz8tPLa7+VjMnl+
 datuuQaCi7sl7rqd+5SLUSe4fsAF4bZvfkPmwpe349pTIzq8khf3vsFUBObdKgt/JnAm
 ngMdBeZZnxuSp4Xv8LoVgIZ7PZn/n2HEsyeeqHPquQbKlhMq3xsofjKxMINYYg59GJP1
 1SQ7JQyTn4xdSl6GLFChp1XGTmQawEVkzKjkMwNjaHgYbSQ1FxGo/6grQ2ERcmOagyg2
 gqqw==
X-Gm-Message-State: APjAAAWm9lDoWx7b/fi+u2Tn+pzU0vED7xkuJA2q8se7kT2RT6ajl/Vd
 45nnebha3qIRXBC8B1WUQxjV/GEKl0IJ5g==
X-Google-Smtp-Source: APXvYqzUkO3eeVsHVwe/AXUxjBAJF1do5noKvwXzVyb6tIYqUc49qWyZp5QszCEzCYIroC/HwS/Few==
X-Received: by 2002:a05:6000:114d:: with SMTP id
 d13mr25373916wrx.93.1561017948407; 
 Thu, 20 Jun 2019 01:05:48 -0700 (PDT)
Received: from dhcp-4-69.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id i188sm4554638wma.27.2019.06.20.01.05.47
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 01:05:47 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190617161306.21602-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <e25f3eb6-f879-d902-9c45-f0fb6c4df0b8@redhat.com>
Date: Thu, 20 Jun 2019 11:05:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190617161306.21602-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] display-channel: Avoid
 potential crash from buggy guest driver
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

U2VlbXMgZmluZSB0byBtZS4KCkFjawoKT24gNi8xNy8xOSA3OjEzIFBNLCBGcmVkaWFubyBaaWds
aW8gd3JvdGU6Cj4gVGhpcyBmaXhlcyBodHRwczovL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19i
dWcuY2dpP2lkPTE1ODIxMzcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIHNlcnZlci9kaXNwbGF5LWNoYW5uZWwuYyB8IDYg
KysrKystCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jIGIvc2VydmVyL2Rpc3Bs
YXktY2hhbm5lbC5jCj4gaW5kZXggMDcxYzAxNDA5Li43ZGRkNDRjMTQgMTAwNjQ0Cj4gLS0tIGEv
c2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gKysrIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5j
Cj4gQEAgLTIwMzIsNyArMjAzMiwxMSBAQCB2b2lkIGRpc3BsYXlfY2hhbm5lbF91cGRhdGUoRGlz
cGxheUNoYW5uZWwgKmRpc3BsYXksCj4gICAgICAgU3BpY2VSZWN0IHJlY3Q7Cj4gICAgICAgUmVk
U3VyZmFjZSAqc3VyZmFjZTsKPiAgIAo+IC0gICAgc3BpY2VfcmV0dXJuX2lmX2ZhaWwoZGlzcGxh
eV9jaGFubmVsX3ZhbGlkYXRlX3N1cmZhY2UoZGlzcGxheSwgc3VyZmFjZV9pZCkpOwo+ICsgICAg
Ly8gQ2hlY2sgdGhhdCB0aGUgcmVxdWVzdCBpcyB2YWxpZCwgdGhlIHN1cmZhY2VfaWQgY29tZXMg
ZGlyZWN0bHkgZnJvbSB0aGUgZ3Vlc3QKPiArICAgIGlmICghZGlzcGxheV9jaGFubmVsX3ZhbGlk
YXRlX3N1cmZhY2UoZGlzcGxheSwgc3VyZmFjZV9pZCkpIHsKPiArICAgICAgICAvLyBqdXN0IHJl
dHVybiwgZGlzcGxheV9jaGFubmVsX3ZhbGlkYXRlX3N1cmZhY2UgYWxyZWFkeSBsb2dnZWQgYSB3
YXJuaW5nCj4gKyAgICAgICAgcmV0dXJuOwo+ICsgICAgfQo+ICAgCj4gICAgICAgcmVkX2dldF9y
ZWN0X3B0cigmcmVjdCwgYXJlYSk7Cj4gICAgICAgZGlzcGxheV9jaGFubmVsX2RyYXcoZGlzcGxh
eSwgJnJlY3QsIHN1cmZhY2VfaWQpOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
