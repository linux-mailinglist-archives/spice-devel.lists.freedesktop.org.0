Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9E26F24A
	for <lists+spice-devel@lfdr.de>; Sun, 21 Jul 2019 10:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE4889C08;
	Sun, 21 Jul 2019 08:43:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263A689C08
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Jul 2019 08:43:23 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r1so36220105wrl.7
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Jul 2019 01:43:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=bX6Q32d7Kg0dv7rBj3nX9bi/gT6dfLhDGAXhuGl2uOY=;
 b=kZvDOYxabaNqM10CQklifzFbrihCXvZpcDygeyhJ5x9O79mXwvcxFTDcmmgFHOT76e
 nCoCIB72kBTtHByBBE/DVXGX95NjAMVGzjvdBGAAkPksR2WuoUsP0KfHgMqRk6hDCI7o
 XSZ+6EDIFFb8XIHqMOvRtYElrmQGOKGYqP83oqKmx5Qj/5XGNfymVUz5xCOT+dRqgJAX
 C5E2120C3SSGL/UcIpWxneFbKTJwfEU7mCceQGUv7N46f3f7lwmgq6MkJs+WszXcPDv2
 9wXq9Gx6eDQkXUlk0fUHtC46R3sipOwvaIohwp1HQ78Ll8yUYGfghK+jgFxnF6kU0Qes
 IcSw==
X-Gm-Message-State: APjAAAWXJAGaT1Uzoo9InV0sBHKS1wCjorH+HjgFjJlrIhBF9ApBBSrk
 0awhZ4bEkW58PjheQZlAlZD5xMW4giM=
X-Google-Smtp-Source: APXvYqy11jvOCkxaDlmEfPZMgUGtfRlRZbMjCC5Ynbpced3yzB9fVEvyXkEXIq4/wU3/ZdWss3h3Fg==
X-Received: by 2002:adf:dcc6:: with SMTP id x6mr39241460wrm.322.1563698601269; 
 Sun, 21 Jul 2019 01:43:21 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id j33sm74263606wre.42.2019.07.21.01.43.20
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Jul 2019 01:43:20 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190718155040.28082-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <b6bf910b-6844-333a-ff2e-a93c2b0d4d3f@redhat.com>
Date: Sun, 21 Jul 2019 11:43:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190718155040.28082-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-protocol] start-packet: Correct
 misleading comment
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

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPaCwgZ290IGl0
LCBtYWtlcyBzZW5zZSEKClRoYW5rcwoKCk9uIDcvMTgvMTkgNjo1MCBQTSwgRnJlZGlhbm8gWmln
bGlvIHdyb3RlOgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+IC0tLQo+ICAgc3BpY2Uvc3RhcnQtcGFja2VkLmggfCA0ICsrLS0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvc3BpY2Uvc3RhcnQtcGFja2VkLmggYi9zcGljZS9zdGFydC1wYWNrZWQuaAo+IGluZGV4IGRl
MGM1OTUuLmQxZDA5MGUgMTAwNjQ0Cj4gLS0tIGEvc3BpY2Uvc3RhcnQtcGFja2VkLmgKPiArKysg
Yi9zcGljZS9zdGFydC1wYWNrZWQuaAo+IEBAIC0zMCw4ICszMCw4IEBACj4gICAqLwo+ICAgCj4g
ICAvKiBJZGVhbGx5IHRoaXMgc2hvdWxkIGFsbCBoYXZlIGJlZW4gbWFjcm9zIGluIGEgY29tbW9u
IGhlYWRlcnMsIGJ1dAo+IC0gKiBpdHMgbm90IHBvc3NpYmxlIHRvIHB1dCBwcmFnbWFzIGludG8g
aGVhZGVyIGZpbGVzLCBzbyB3ZSBoYXZlCj4gLSAqIHRvIHVzZSBpbmNsdWRlIG1hZ2ljLgo+ICsg
KiBpdHMgbm90IHBvc3NpYmxlIHRvIHB1dCBwcmFnbWFzIGludG8gbWFjcm9zLCBzbyB3ZSBoYXZl
IHRvIHVzZQo+ICsgKiBpbmNsdWRlIG1hZ2ljLgo+ICAgICoKPiAgICAqIFVzZSBpdCBsaWtlIHRo
aXM6Cj4gICAgKgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
