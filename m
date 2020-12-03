Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE332CD4EB
	for <lists+spice-devel@lfdr.de>; Thu,  3 Dec 2020 12:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1ACF6E9AD;
	Thu,  3 Dec 2020 11:52:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C7B6E9AF
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Dec 2020 11:24:13 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id t4so1473503wrr.12
 for <spice-devel@lists.freedesktop.org>; Thu, 03 Dec 2020 03:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=2e+PTlzplbT5vWQ3nq46E80j1DV313pOw5qnZcWodM8=;
 b=FjA18SqvqlJb9bIyKOBI8OlC7Job0TZKLLpmv7SiZAdqyhz82SrVTyGBPqtL0m5KjU
 IjZnVH5psWgGbD/W4YNLNd6eNQVi0r4dLFlWhWQjsrQLZc5yv35uLdqZaEorAZjAFJlQ
 UmVUMig5AhZuBl6yHKP2ItA9Qb8rRfSzuQo08HhEd2biXcXv0FxPWW8cJi2UDUbbg9i9
 KTXGI4B2fGqbXB5QyIk95SE5+iLoWfW0CSYM0y/G/8vhcVcM4tUAtzZAFD63UkrcYFYk
 jlrrk8rM3AWjWmfzQTJCt+cxoWTds4rjA4ffDVxrmFW62zexb/CG3wiVfaYTlP53rM1I
 IoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=2e+PTlzplbT5vWQ3nq46E80j1DV313pOw5qnZcWodM8=;
 b=cWev8dn0ev1k9W5oz5acmJEYwfQv7nrIUAfuxhjBUaLHDw96UQx7sQgUMhebJxWbGw
 mHhTa3gySUAzpssFJ3XPiGOjoEMVtvY4g2ju/r+9sMdTdeFLtUPFIAVjiZhQzPNu0U0d
 NqXIN+yJOjjmXfvpK8RKueROfEKsk3eGG7YHXc56/23PaETCZGEDaK4gZwBoKFUEqUHg
 1GTGPCmTgxQDZvVQQmmk3vbT2psD8d8V7JYe78fzpmfEW00SBeAgoBM/dytvWLHKClW4
 U2B9WNdrpoYiKEy+LjTdutofoNJeOmNtslZuB4UzEHKyM3nlVtP9mwQqJnndAPdsN5Ar
 ak6A==
X-Gm-Message-State: AOAM533Oy/hotFt4txhwm4dagljcOckM4Lge4lhGej1sggRLpzO8DCSW
 0qVHLcqdkxo5BDgwpkkG0XXkKjguRtA=
X-Google-Smtp-Source: ABdhPJzzBfQIdd0D0SYvnI0s5olAnsuXeLJJJPlKNMKRhFhdbp6pxKFBcVxnIA1z9+GkWIAvi6ahpw==
X-Received: by 2002:adf:c452:: with SMTP id a18mr3260355wrg.189.1606994651871; 
 Thu, 03 Dec 2020 03:24:11 -0800 (PST)
Received: from [172.16.93.28] ([95.38.67.203])
 by smtp.gmail.com with ESMTPSA id n189sm1097126wmf.20.2020.12.03.03.24.10
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Dec 2020 03:24:11 -0800 (PST)
To: spice-devel@lists.freedesktop.org
From: mnavahan <mnavahan@gmail.com>
Message-ID: <7ee27b40-9dac-959b-e4ec-aa72f217b5d8@gmail.com>
Date: Thu, 3 Dec 2020 14:54:07 +0330
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Thu, 03 Dec 2020 11:52:52 +0000
Subject: [Spice-devel] Set mouse point always visible
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkKCkkgTmVlZCBzb21lIHRpbWVzIHNldCBtb3VzZSBwb2ludGVyIGFsd2F5cyB2aXNpYmxlINmN
RXZlbiBpbiBjbGllbnQgCnBvaW50ZXIgbGl2ZSBndWVzdCBzY3JlZW4gaGF2ZSBhbnkgZG8gaXQg
PwoKClRoeAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVsCg==
