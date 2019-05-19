Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9078122705
	for <lists+spice-devel@lfdr.de>; Sun, 19 May 2019 16:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912A1891A8;
	Sun, 19 May 2019 14:39:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124D1891A8
 for <spice-devel@lists.freedesktop.org>; Sun, 19 May 2019 14:39:49 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r7so11665446wrr.13
 for <spice-devel@lists.freedesktop.org>; Sun, 19 May 2019 07:39:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Gyvv+D+crwTTqMpT7iCnrQWA9SeN3w++azhnBk2spSE=;
 b=saUThv1pHvmfBNEEMRgJayFa8zod1z0RIuepfeyfe1fnfVBu8qvoW3QaluUFnYme8p
 EtV8TMzMxgboZi3tMss1TEwKQdOZifA5D0FA3AH9LE+tsIMUep6C5qujQSzKxvRuzL8/
 2jd43mqoFHmFTU1YRnmX6yZD8PdG7Wnm+WpOgeO9c/Yo4zAFu41jDxdMEmZfHIAHocAi
 inXnkcdOxxKyZFwatQcOBCkNP2gVzlwVp1PB4eW3I651FjGLIVVL54HYm0nAXSrsWzNe
 KFnRveJ4o5coXzI+21PQNSL6GNBAm7GeNaFwXQzNosyTsMj087TkN0VDgni80+h7dhQC
 kiWg==
X-Gm-Message-State: APjAAAXLIrktBAQs+205lvr6xyAo0jRmSCi4pN2Arw/t6nz6t1m2Owmn
 AlSWvmfxeDu4L4vqdMFZ+wR/zAWOp5U=
X-Google-Smtp-Source: APXvYqyn1GSvB3hMspYIXpKE8W9Ij2zGj1P1m6MhUFoMPLE8Wcb1xofDNl6sihfsGqqcbeDukYEqwg==
X-Received: by 2002:adf:db11:: with SMTP id s17mr2789134wri.43.1558276788059; 
 Sun, 19 May 2019 07:39:48 -0700 (PDT)
Received: from dhcp-4-103.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id t194sm2057543wmt.3.2019.05.19.07.39.46
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 07:39:47 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190517104129.7838-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <03fdf3c7-a973-4b13-26ef-53bb1b95492f@redhat.com>
Date: Sun, 19 May 2019 17:39:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517104129.7838-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-client-gtk-module: Remove
 unused file
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

SGksCgpNYXliZSB3b3J0aCBtZW50aW9uaW5nIGl0J3MgbGVmdG92ZXIgZnJvbSBweWd0ay9weXRo
b24gYmluZGluZ3MKbm90IHJlYWxseSBjcml0aWNhbCwgYW55d2F5LCBmaW5lIHdpdGggbWUuCgoK
QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPbiA1LzE3LzE5
IDE6NDEgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIHNyYy9zcGljZS1jbGllbnQt
Z3RrLW1vZHVsZS5jIHwgNDUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA0NSBkZWxldGlvbnMoLSkKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBz
cmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYwo+Cj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1j
bGllbnQtZ3RrLW1vZHVsZS5jIGIvc3JjL3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMKPiBkZWxl
dGVkIGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCBiODJmMWUzNC4uMDAwMDAwMDAKPiAtLS0gYS9z
cmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUuYwo+ICsrKyAvZGV2L251bGwKPiBAQCAtMSw0NSAr
MCwwIEBACj4gLS8qIC0qLSBNb2RlOiBDOyBjLWJhc2ljLW9mZnNldDogNDsgaW5kZW50LXRhYnMt
bW9kZTogbmlsIC0qLSAqLwo+IC0vKgo+IC0gICBDb3B5cmlnaHQgKEMpIDIwMTAgUmVkIEhhdCwg
SW5jLgo+IC0KPiAtICAgVGhpcyBsaWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVk
aXN0cmlidXRlIGl0IGFuZC9vcgo+IC0gICBtb2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRo
ZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gLSAgIExpY2Vuc2UgYXMgcHVibGlzaGVkIGJ5
IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlcgo+IC0gICB2ZXJzaW9uIDIuMSBv
ZiB0aGUgTGljZW5zZSwgb3IgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KPiAt
Cj4gLSAgIFRoaXMgbGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdp
bGwgYmUgdXNlZnVsLAo+IC0gICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZl
biB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgo+IC0gICBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVT
UyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlIEdOVQo+IC0gICBMZXNzZXIgR2Vu
ZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgo+IC0KPiAtICAgWW91IHNob3Vs
ZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+
IC0gICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDov
L3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gLSovCj4gLSNpbmNsdWRlICJjb25maWcuaCIKPiAt
I2luY2x1ZGUgPHB5Z29iamVjdC5oPgo+IC0KPiAtdm9pZCBzcGljZV9yZWdpc3Rlcl9jbGFzc2Vz
IChQeU9iamVjdCAqZCk7Cj4gLXZvaWQgc3BpY2VfYWRkX2NvbnN0YW50cyhQeU9iamVjdCAqbW9k
dWxlLCBjb25zdCBnY2hhciAqc3RyaXBfcHJlZml4KTsKPiAtZXh0ZXJuIFB5TWV0aG9kRGVmIHNw
aWNlX2Z1bmN0aW9uc1tdOwo+IC0KPiAtRExfRVhQT1JUKHZvaWQpIGluaXRTcGljZUNsaWVudEd0
ayh2b2lkKQo+IC17Cj4gLSAgICBQeU9iamVjdCAqbSwgKmQ7Cj4gLQo+IC0gICAgaW5pdF9weWdv
YmplY3QoKTsKPiAtCj4gLSAgICBtID0gUHlfSW5pdE1vZHVsZSgiU3BpY2VDbGllbnRHdGsiLCBz
cGljZV9mdW5jdGlvbnMpOwo+IC0gICAgaWYgKFB5RXJyX09jY3VycmVkKCkpCj4gLSAgICAgICAg
UHlfRmF0YWxFcnJvcigiY2FuJ3QgaW5pdCBtb2R1bGUiKTsKPiAtCj4gLSAgICBkID0gUHlNb2R1
bGVfR2V0RGljdChtKTsKPiAtICAgIGlmIChQeUVycl9PY2N1cnJlZCgpKQo+IC0gICAgICAgIFB5
X0ZhdGFsRXJyb3IoImNhbid0IGdldCBkaWN0Iik7Cj4gLQo+IC0gICAgc3BpY2VfcmVnaXN0ZXJf
Y2xhc3NlcyhkKTsKPiAtICAgIHNwaWNlX2FkZF9jb25zdGFudHMobSwgIlNQSUNFXyIpOwo+IC0K
PiAtICAgIGlmIChQeUVycl9PY2N1cnJlZCgpKSB7Cj4gLSAgICAgICAgUHlfRmF0YWxFcnJvcigi
Y2FuJ3QgaW5pdGlhbGlzZSBtb2R1bGUgU3BpY2VDbGllbnRHdGsiKTsKPiAtICAgIH0KPiAtfQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
