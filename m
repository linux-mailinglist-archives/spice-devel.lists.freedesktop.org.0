Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5954330C
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:03:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4D1892BC;
	Thu, 13 Jun 2019 07:03:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23889892BC
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:03:15 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 22so8868696wmg.2
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 00:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ogkhqaHq9nUuzitSjrIAn5y+yc2MkQWRZYqlK2Gna3s=;
 b=JaNFplSa4qmYnBJqbTM9WBw2j7oc3H2olvU0LZavDOPWb+ZWeGFCNmKcZhqyf55d+b
 yJtfxNOIOKvZPWzlPDjuqUQqBf5q+v+vKSdXtzX9XrUTtHcdKlwGo8GQS7VE+gGEIy1h
 NbirCuDJVoUg+wVjloscJjDFXZVbKBCDuxxFoFIjhz9JNQacbMyHrvURVQNoO2kIhn2R
 Vi4Dt+Nk7jedFL0jT8LZ/Am6Q2oh2u5pCDM4xZFz0rI/lrIQQUatnKzlMbeP5simzDtd
 utida8oBffngnLUQQfaqYRtinUMtDAeylY/cZ7WcgGgDnYzagj7QmO9WlsLLuBeGBzEJ
 m8Wg==
X-Gm-Message-State: APjAAAVSHsCes0UYQYyUpGF6gLCjYmxfnaOPtciC7Dp1SGKJHsdMIUbF
 hI7PhJvIY7J7jPyRcajg/y1sWKni2+nLXw==
X-Google-Smtp-Source: APXvYqzR9uytSnWglaVFwyoHJ4W7y2C8DYkJH9vPkfaPlE++FeQ2GNR+toypCkNF1v+mWeXn6105XA==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr2394838wmc.151.1560409393253; 
 Thu, 13 Jun 2019 00:03:13 -0700 (PDT)
Received: from dhcp-4-181.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id w185sm1704695wma.39.2019.06.13.00.03.12
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 00:03:12 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190612151308.8226-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <d93c0eab-437d-bb9e-ae8e-5577b73d9d73@redhat.com>
Date: Thu, 13 Jun 2019 10:03:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612151308.8226-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] ci: Remove dependencies from
 copr build
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

CkFzc3VtaW5nIGl0IHBhc3NlZCB0aGUgQ0ksIEFjay4KCkFja2VkLWJ5OiBTbmlyIFNoZXJpYmVy
IDxzc2hlcmliZUByZWRoYXQuY29tPgoKT24gNi8xMi8xOSA2OjEzIFBNLCBGcmVkaWFubyBaaWds
aW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhh
dC5jb20+Cj4gLS0tCj4gICAuZ2l0bGFiLWNpLnltbCB8IDEzICsrKysrKysrLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAo+IGluZGV4IDkxZWU0N2VkYy4u
ZTIxZWE5N2RlIDEwMDY0NAo+IC0tLSBhLy5naXRsYWItY2kueW1sCj4gKysrIGIvLmdpdGxhYi1j
aS55bWwKPiBAQCAtNzksMTIgKzc5LDE1IEBAIGRpc3RjaGVjazoKPiAgIG1ha2VjaGVjay1jZW50
b3M6Cj4gICAgIGJlZm9yZV9zY3JpcHQ6Cj4gICAgICAgLSA+Cj4gLSAgICAgIHl1bSBpbnN0YWxs
IGdpdCBsaWJ0b29sIG1ha2UgbGliYXNhbiBvcmMtZGV2ZWwKPiAtICAgICAgcHl0aG9uMyBweXRo
b24zLXNpeCBweXRob24zLXB5cGFyc2luZyBnbGliLW5ldHdvcmtpbmcKPiAtICAgICAgeXVtLXV0
aWxzIHl1bS1wbHVnaW4tY29wcgo+ICsgICAgICB5dW0gaW5zdGFsbCBnaXQgbGlidG9vbCBtYWtl
IGxpYmFzYW4gb3JjLWRldmVsIGdsaWItbmV0d29ya2luZwo+ICsgICAgICB5dW0tdXRpbHMgZ2Nj
IGdsaWIyLWRldmVsIGNlbHQwNTEtZGV2ZWwKPiArICAgICAgb3B1cy1kZXZlbCBwaXhtYW4tZGV2
ZWwgb3BlbnNzbC1kZXZlbCBsaWJqcGVnLWRldmVsCj4gKyAgICAgIGxpYmNhY2FyZC1kZXZlbCBj
eXJ1cy1zYXNsLWRldmVsIGx6NC1kZXZlbAo+ICsgICAgICBnc3RyZWFtZXIxLWRldmVsIGdzdHJl
YW1lcjEtcGx1Z2lucy1iYXNlLWRldmVsCj4gKyAgICAgIGdpdC1jb3JlIHB5cGFyc2luZyBweXRo
b24tc2l4Cj4gICAgICAgICAteQo+IC0gICAgLSB5dW0gY29wciBlbmFibGUgQHNwaWNlL25pZ2h0
bHkgLXkKPiAtICAgIC0geXVtLWJ1aWxkZGVwIHNwaWNlIC15Cj4gKyAgICAtIGdpdCBjbG9uZSAk
e0NJX1JFUE9TSVRPUllfVVJML3NwaWNlLmdpdC9zcGljZS1wcm90b2NvbC5naXR9Cj4gKyAgICAt
IChjZCBzcGljZS1wcm90b2NvbCAmJiAuL2F1dG9nZW4uc2ggLS1wcmVmaXg9L3VzciAmJiBtYWtl
IGluc3RhbGwpCj4gICAgIGltYWdlOiBjZW50b3M6bGF0ZXN0Cj4gICAgIHNjcmlwdDoKPiAgICAg
LSA+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
