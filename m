Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69DA5CF97
	for <lists+spice-devel@lfdr.de>; Tue,  2 Jul 2019 14:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF5089C5E;
	Tue,  2 Jul 2019 12:37:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35DA89C5E
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Jul 2019 12:37:31 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n4so17600589wrw.13
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Jul 2019 05:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=oOQ30oApzE1ORL7/7xDpr2pzCu9Z3qP9n/rs1T45ztQ=;
 b=mfazUuoZV6K07Zn2HwnciRx+kvVIQCcEsmM8EyCQAY9ZFh9M8sws1SwJ/LRtSdrF8r
 RmdIQT698J58MjmuK6hTrCh7UiLDyp3DqIQiKNAIm5W0C2VzbWF1aqtzBVP4OIHkiiqX
 Ki/4WZLcyaDnXdmjIxIDnf9WEpCSiIRCM/ZXx7bBT4qzcmXnO5nbS84FTeBGX2aC0zNd
 o4qx0tL2RKQ6mdyR8l0wmiet01/mLJripD1C83xWvHt2oC0gaqifFGftlj2b+vHqQjBV
 c2jtbWCtXY1Q7PN3il2o5nbHtOzUTwmQ9midsd1wCwRwQuuRzym9jfl6RNX/nMz5vXZK
 4UPw==
X-Gm-Message-State: APjAAAUqlzFheqdBgIAWt85UVFIaVSOvYdsiTWmOugND6RgGNAedP11A
 jo68hkwDKsyf/XkD3W4sngnrjkqWLkpakA==
X-Google-Smtp-Source: APXvYqyfsmKcW8ZiYckLahTwTgzXJ7G+u/9pqD3MBseF8B6ldI2TDip5WpMH/dTw2GNKPlxwPd3Agw==
X-Received: by 2002:adf:ec8e:: with SMTP id z14mr23250706wrn.125.1562071050038; 
 Tue, 02 Jul 2019 05:37:30 -0700 (PDT)
Received: from dhcp-4-140.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id u13sm11709732wrq.62.2019.07.02.05.37.29
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 05:37:29 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190602175359.24499-1-fziglio@redhat.com>
 <20190602175359.24499-2-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <0029abf8-74b3-14e5-3ad5-820f7f793dae@redhat.com>
Date: Tue, 2 Jul 2019 15:37:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190602175359.24499-2-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] smartcard-channel-client:
 Fix some typos in a comment
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

YWNrCgpBY2tlZC1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KCk9uIDYv
Mi8xOSA4OjUzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBzZXJ2ZXIvc21hcnRj
YXJkLWNoYW5uZWwtY2xpZW50LmMgfCA2ICsrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc21hcnRj
YXJkLWNoYW5uZWwtY2xpZW50LmMgYi9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMK
PiBpbmRleCBlMjJiMzlhZGYuLmU0NjI0MDFlMCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvc21hcnRj
YXJkLWNoYW5uZWwtY2xpZW50LmMKPiArKysgYi9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xp
ZW50LmMKPiBAQCAtMTIzLDkgKzEyMyw5IEBAIHNtYXJ0Y2FyZF9jaGFubmVsX2NsaWVudF9hbGxv
Y19tc2dfcmN2X2J1ZihSZWRDaGFubmVsQ2xpZW50ICpyY2MsCj4gICAgICAgU21hcnRDYXJkQ2hh
bm5lbENsaWVudCAqc2NjID0gU01BUlRDQVJEX0NIQU5ORUxfQ0xJRU5UKHJjYyk7Cj4gICAgICAg
UmVkQ2xpZW50ICpjbGllbnQgPSByZWRfY2hhbm5lbF9jbGllbnRfZ2V0X2NsaWVudChyY2MpOwo+
ICAgCj4gLSAgICAvKiB0b2RvOiBvbmx5IG9uZSByZWFkZXIgaXMgYWN0dWFsbHkgc3VwcG9ydGVk
LiBXaGVuIHdlIGZpeCB0aGUgY29kZSB0byBzdXBwb3J0Cj4gLSAgICAgKiBtdWx0aXBsZSByZWFk
ZXJzLCB3ZSB3aWxsIHBvcmJhYmx5IGFzc29jaWF0ZSBkaWZmZXJlbnQgZGV2aWNlcyB0bwo+IC0g
ICAgICogZGlmZmVyZW5jIGNoYW5uZWxzICovCj4gKyAgICAvKiBUT0RPOiBvbmx5IG9uZSByZWFk
ZXIgaXMgYWN0dWFsbHkgc3VwcG9ydGVkLiBXaGVuIHdlIGZpeCB0aGUgY29kZSB0byBzdXBwb3J0
Cj4gKyAgICAgKiBtdWx0aXBsZSByZWFkZXJzLCB3ZSB3aWxsIHByb2JhYmx5IGFzc29jaWF0ZSBk
aWZmZXJlbnQgZGV2aWNlcyB0bwo+ICsgICAgICogZGlmZmVyZW50IGNoYW5uZWxzICovCj4gICAg
ICAgaWYgKCFzY2MtPnByaXYtPnNtYXJ0Y2FyZCkgewo+ICAgICAgICAgICBzY2MtPnByaXYtPm1z
Z19pbl93cml0ZV9idWYgPSBGQUxTRTsKPiAgICAgICAgICAgcmV0dXJuIGdfbWFsbG9jKHNpemUp
OwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
