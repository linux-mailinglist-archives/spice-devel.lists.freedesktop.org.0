Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CF6322B5
	for <lists+spice-devel@lfdr.de>; Sun,  2 Jun 2019 10:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D66890EE;
	Sun,  2 Jun 2019 08:25:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10590890EE
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 08:25:57 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g135so5342384wme.4
 for <spice-devel@lists.freedesktop.org>; Sun, 02 Jun 2019 01:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=7D8QMTqNBpVTCNyfuW+LN1fmFjuaSc7NfPE5MxiXIIg=;
 b=kVxXxHTgCHNBSU9Kw/9HEobtr1H04/nyqc/Wd1y2srKA/qNcKJK1StUqJfnVDCO1jP
 Q5GXRR9HuxEsmOU4wEeX2ps5znN30VhA4xQGCbzJfan13GWmfxS3jcDW3sLUapG2T9sa
 xtZJ8P3nX6c6OPLmIDSj1RHUWKoVFYPV1QTjTclvZ7ip7bk1jqM40huqxftLbxkKO+mY
 oIhr4RfuTak0e/58WlKr00ymWIg/PKtImT5V59cGTB96sYpb7KCdpXtkWgRCmeZrsXUm
 mdH83Y79HdDqR3MDsJ8jRxdRYdFbarChPs/GsvtM2MijSStDV6b2FHqWsj8FI08NZDiZ
 9LSw==
X-Gm-Message-State: APjAAAUCqrUdBsj58JcBS53qETy4A9UuG2iEm+B8lkZZNPAsGxrVJeaY
 cV7C0pnqdtFZteYI4cZXqOHw7cigwqY=
X-Google-Smtp-Source: APXvYqzD5eOVODctroy4ei8eqOf1tUiQDwbtz/1YL8iFmYIr4gtu3c8M6zqJHDFDhno+P+fYk0ooHw==
X-Received: by 2002:a1c:3287:: with SMTP id
 y129mr11053581wmy.153.1559463955342; 
 Sun, 02 Jun 2019 01:25:55 -0700 (PDT)
Received: from dhcp-4-76.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id o11sm5437049wrx.4.2019.06.02.01.25.54
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 01:25:54 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190601121413.932-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <9f101000-21fc-4848-df55-1593c8644ee8@redhat.com>
Date: Sun, 2 Jun 2019 11:25:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190601121413.932-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server 1/3] spicevmc: Reuse "sin"
 variable
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

YWNrCgpPbiA2LzEvMTkgMzoxNCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgc2Vy
dmVyL3NwaWNldm1jLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvc3BpY2V2bWMuYyBiL3NlcnZl
ci9zcGljZXZtYy5jCj4gaW5kZXggNDYwZWRiMDRmLi44NGJiYjczYzIgMTAwNjQ0Cj4gLS0tIGEv
c2VydmVyL3NwaWNldm1jLmMKPiArKysgYi9zZXJ2ZXIvc3BpY2V2bWMuYwo+IEBAIC03ODYsNyAr
Nzg2LDcgQEAgc3RhdGljIHZvaWQgc3BpY2V2bWNfY29ubmVjdChSZWRDaGFubmVsICpjaGFubmVs
LCBSZWRDbGllbnQgKmNsaWVudCwKPiAgICAgICAgICAgcmV0dXJuOwo+ICAgICAgIH0KPiAgIAo+
IC0gICAgc2lmID0gc3BpY2VfY2hhcl9kZXZpY2VfZ2V0X2ludGVyZmFjZSh2bWNfY2hhbm5lbC0+
Y2hhcmRldl9zaW4pOwo+ICsgICAgc2lmID0gc3BpY2VfY2hhcl9kZXZpY2VfZ2V0X2ludGVyZmFj
ZShzaW4pOwo+ICAgICAgIGlmIChzaWYtPnN0YXRlKSB7Cj4gICAgICAgICAgIHNpZi0+c3RhdGUo
c2luLCAxKTsKPiAgICAgICB9Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
