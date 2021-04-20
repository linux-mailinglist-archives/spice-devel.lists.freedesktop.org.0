Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8A836593B
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 14:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DDC6E0B7;
	Tue, 20 Apr 2021 12:49:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F34D6E0B7
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 12:49:41 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id r9so58078296ejj.3
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 05:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=55kRKdxYcfFw6M9M7O7RVHx37yUYOQHqxx7hvaWcroo=;
 b=fK7mVf4S+3lLERARr94IsqxwMEGd8MHrpJFRZgJFW09nqkHT745QUZKpYJGGkth9BS
 P6G8+GhIriNjgeJafZsqulleshBZA+IwAa64Tmh9iTLKHrilyj7TjZO9xxyo1zEy+wkj
 rwZueM+9a7SadIy/lIyzu+gT1wIQeP353b3f7deuUWw+Fab82oQk2730qrzTHNuPF8mY
 HoiIIP1Mzjq35+M0cuBhyklNfC8VavTX1WPZk3VlmVpNCxbczOGu6TpgmZ5NHOVaRyGi
 /d/5wNWfWRunj9+lqp+0xmFOUlnEACernmKVJkvGHn2p9+2I8qZWdZ2cOEduwTz0p1rg
 LQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=55kRKdxYcfFw6M9M7O7RVHx37yUYOQHqxx7hvaWcroo=;
 b=P+6QkKtpNfv1HA4aFu9Nu+WG0pWBEg4TjlMg5kfOqIIvWgTPGywfee0oSun/Eazqo1
 HIHTDqy3mE2ebz8oXhWYxW+dbqWtlvmnb40/BijL3MhzznQjSoaheWVjIw3M7EPVLB54
 sih0QTZABwOIpbsSSBdu78/FRCsXKGRFhneJHcfSfwRT/JPmszrDXHlMTyZVjIvqedfm
 L5p8uN3djheEbAOsYBoIa4V0OolcAS1bfJ2J9HdR88PVFjqSnuXnjY4R8cpLlgubpp6O
 NQRRn/jm7ba5DEqrG3ftbPAeH4y90gQ9ZQ9vlqviPF4IJqc9y4IENonTkS8j010sOvzV
 3Rjg==
X-Gm-Message-State: AOAM532kL3s2H8dnzyJggZKCSgK4D8cUaySwhkAY6WbNA2cFZU96L+X7
 v56/ZwkRH+Qix1sI3lg2v6LMjrQdhaI=
X-Google-Smtp-Source: ABdhPJw+IupCeeCQQ/WdoyleIldYG32BXL+F0AiPEZ4kUpFKidTSoMuwNXnP4ZK7ilB34Z/YSOMSOA==
X-Received: by 2002:a17:906:4d10:: with SMTP id
 r16mr26974182eju.169.1618922979826; 
 Tue, 20 Apr 2021 05:49:39 -0700 (PDT)
Received: from [192.168.1.3] (93-48-172-72.ip258.fastwebnet.it. [93.48.172.72])
 by smtp.googlemail.com with ESMTPSA id
 kj24sm12739180ejc.49.2021.04.20.05.49.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Apr 2021 05:49:39 -0700 (PDT)
To: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
 <YH68grWhEqF4lINL@redhat.com>
From: Germano Massullo <germano.massullo@gmail.com>
Message-ID: <ec4c7b10-28dd-cfc8-3f68-96248352ae00@gmail.com>
Date: Tue, 20 Apr 2021 14:49:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YH68grWhEqF4lINL@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] Fedora 34 guests can no longer paste from host
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SWwgMjAvMDQvMjEgMTM6MzUsIERhbmllbCBQLiBCZXJyYW5nw6kgaGEgc2NyaXR0bzoKPiBPbiBU
dWUsIEFwciAyMCwgMjAyMSBhdCAxMTo1NjoyM0FNICswMjAwLCBHZXJtYW5vIE1hc3N1bGxvIHdy
b3RlOgo+PiBHb29kIGRheSwgSSBhbHdheXMgdXNlZCB3aXRoIHN1Y2Nlc3MgYSBGZWRvcmEgMzMg
S0RFIGhvc3QgKHFlbXUva3ZtL2xpYnZpcnQrdmlydC1tYW5hZ2VyKSBhbmQgYSBGMzMgS0RFIGd1
ZXN0LCBhbmQgSSBoYXZlIGFsd2F5cyBiZWVuIHRvIGNvcHkgcGFzdGUgZnJvbSBob3N0IHRvIGd1
ZXN0IGFuZCB2aWNldmVyc2EKPj4KPj4gTm93IEkgdGVzdGVkIHR3byBGZWRvcmEgMzQgQmV0YSBn
dWVzdHM6Cj4+IC0gS0RFIHNwaW4KPj4gLSBXb3Jrc3RhdGlvbiAoR05PTUUpCj4+IGFuZCBib3Ro
IG9mIHRoZW0gZmFpbCB0byBwYXN0ZSB0ZXh0IGFuZCBmaWxlcyBmcm9tIHRoZSBob3N0LiBzcGlj
ZS12ZGFnZW50IHZlcnNpb24gaXMgdGhlIHNhbWUgb24gYm90aCBGMzMgYW5kIEYzNCBndWVzdHM6
IDAuMjEuMC4gSG9zdCBtYWNoaW5lIGhhcyBzcGljZS1ndGszLTAuMzktMS5mYzMzLng4Nl82NAo+
PiBBbGwgbWFjaGluZXMgbWVudGlvbmVkIGluIHRoaXMgYnVncmVwb3J0IGFyZSBYb3JnIGJhc2Vk
Lgo+Pgo+PiBIZXJldW5kZXIgSSBhdHRhY2ggb3V0cHV0IG9mCj4+ICQgU1BJQ0VfREVCVUc9MSB2
aXJ0LXZpZXdlciAtLWNvbm5lY3QgcWVtdTovLy9zeXN0ZW0KPj4gaHR0cHM6Ly9nZXJtYW5vLmZl
ZG9yYXBlb3BsZS5vcmcvYnVncmVwb3J0L3NwaWNlL3NwaWNlX2RlYnVnLnR4dAo+Pgo+PiAjIHZp
cnNoIGR1bXB4bWwgZmVkb3JhMzRnbm9tZQo+PiBodHRwczovL2dlcm1hbm8uZmVkb3JhcGVvcGxl
Lm9yZy9idWdyZXBvcnQvc3BpY2Uvdmlyc2hfZHVtcHhtbC50eHQKPiBUaGF0IHNlZW1zIHRvIGJl
IHRoZSBpbmFjdGl2ZSBndWVzdCBYTUwuCj4KPiBJZiB5b3UgcHJvdmlkZSB0aGUgYWN0aXZlIFhN
TCAoaWUgdmlyc2ggZHVtcCB3aGVuIHRoZSBndWVzdCBpcyBydW5uaW5nKSwKPiB0aGVuIHRoZSA8
Y2hhbm5lbD4gc2hvdWxkIGNvbmZpcm0gd2hldGhlciBvciBub3QgdGhlIGFnZW50IGlzIGNvbm5l
Y3RlZC4KCkkgc3RhcnRlZCB0d28gZ3Vlc3RzIGFuZCByZXRyaWV2ZWQgdGhlaXIgWE1MCmh0dHBz
Oi8vZ2VybWFuby5mZWRvcmFwZW9wbGUub3JnL2J1Z3JlcG9ydC9zcGljZS92aXJzaF9kdW1wX2Zl
ZG9yYS1rZGUtZjM0LnR4dApodHRwczovL2dlcm1hbm8uZmVkb3JhcGVvcGxlLm9yZy9idWdyZXBv
cnQvc3BpY2Uvdmlyc2hfZHVtcF9mZWRvcmEzNGdub21lXzIudHh0CgpUaGFuayB5b3UhCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
