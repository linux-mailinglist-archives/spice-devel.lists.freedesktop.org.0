Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E33127E2B
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A65289E36;
	Thu, 23 May 2019 13:32:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0067489DFD
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:32:33 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id j187so7127825wma.1
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=smmFQpBjmnsIAsDaIxtz68BpPlJM9iWdsFdL/myuwkA=;
 b=H5AMvndwExvlYIiQRWgtq+DKhENuw7JPq+IHYyLgq1towmGvn66jqT4cH7WFUiAQgB
 oyknQ9QMB8GBi/bIMabmldgi86HY3lwY4JlVOG8wyFIZstBL+IPwBqYgouLIAbfQpCeg
 9CQ9JfZZotzA7iKMykJ78bl8bUZYNkwwsyFqI2j9NKVTVSx2V4HaJpdKARQADnIPyJY0
 vmvSmKU5XP4oF/4dcbuKR4jWEdj2t6zi55+EmJNIZdLzbDYGFWNNjWD4x85zAnAQxeW9
 tUCCqkXvthosqsSkip5iAxg9FTUa6nenRS1jYEAh8wFNZOkf7ACi5aUGeMo/ocyCLjw1
 zVlw==
X-Gm-Message-State: APjAAAW2TjrSuI4sHbSr7zLuKvT4p/UUtRo/Tin/ij0zj5bSarFZbTlb
 o4GMOKXz1kx9nSIBAaAobdOliPGCCICMIkgQlZQ=
X-Google-Smtp-Source: APXvYqydjywSFv8HbscBJYAn2QRnkuPcbDwBF9CFLujmei02doVXT9LKq39B6GbNfrQcV+7tLHhpixtGXuNN4qWqidI=
X-Received: by 2002:a1c:e009:: with SMTP id x9mr11485232wmg.117.1558618352663; 
 Thu, 23 May 2019 06:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-5-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-5-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:32:21 +0200
Message-ID: <CAJ+F1CLO=gF=zD6e0yySWjtyDEX-UyfB-dgJetR8HEq6V3sSAQ@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=smmFQpBjmnsIAsDaIxtz68BpPlJM9iWdsFdL/myuwkA=;
 b=CT26sDAFuDs0IhtXCSKTzpHx5kDMJVLL0vVqLYL5XGuKi/3uoYsUUdKIWGqOOFgbTH
 Cnbj7e2lpwGq0y+P/05P9GNRWZVRfhx640Hj/CgkQZyKtT+UvrT/PVGKArwa4gJ1XapK
 /ZgIS0iMAdRr3KtBt/6H/dUxtDR4d9SlGKdpZJLrQrLbzTpuKfvXLCHVgWvwpdtGVKwB
 Yjgc/lXX3njccxsOxfI2GwpKn4LUcY+CQmk7EqY1XubN692p+rU+vFoIjAnaHLWaPAq6
 0GAWCbCiWMZ3qKMVFWY3beNtB2Zlw//sJ0gsjPlpxp5RWAHtqqktPZS+f8oY2OEgGH5O
 7s6g==
Subject: Re: [Spice-devel] [PATCH phodav 04/13] spice: quit service quickly
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBXZSBzaG91bGRuJ3Qgd2FpdCBmb3IgMSBzZWNvbmQgaWYgdGhl
IHNlcnZpY2UgaXMgc3VwcG9zZWQgdG8gc3RvcC4KPgo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIEph
bmvFryA8amphbmt1QHJlZGhhdC5jb20+CgphY2sKCj4gLS0tCj4gIHNwaWNlL3NwaWNlLXdlYmRh
dmQuYyB8IDE1ICsrKysrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQu
YyBiL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwo+IGluZGV4IGNkZmE3M2QuLjZhZDYzYzUgMTAwNjQ0
Cj4gLS0tIGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2
ZC5jCj4gQEAgLTkyMywxMSArOTIzLDE1IEBAIG1hcF9kcml2ZV9jYihHVGFzayAqdGFzaywKPgo+
ICAjZW5kaWYKPgo+IC1zdGF0aWMgdm9pZAo+ICsvKiByZXR1cm5zIEZBTFNFIGlmIHRoZSBzZXJ2
aWNlIHNob3VsZCBxdWl0ICovCj4gK3N0YXRpYyBnYm9vbGVhbgo+ICBydW5fc2VydmljZSAoU2Vy
dmljZURhdGEgKnNlcnZpY2VfZGF0YSkKPiAgewo+ICAgIGdfZGVidWcgKCJSdW4gc2VydmljZSIp
Owo+Cj4gKyAgaWYgKHF1aXRfc2VydmljZSkKPiArICAgIHJldHVybiBGQUxTRTsKPiArCj4gICNp
ZmRlZiBHX09TX1dJTjMyCj4gICAgTWFwRHJpdmVEYXRhIG1hcF9kcml2ZV9kYXRhOwo+ICAgIG1h
cF9kcml2ZV9kYXRhLmNhbmNlbF9tYXAgPSBnX2NhbmNlbGxhYmxlX25ldyAoKTsKPiBAQCAtMTAw
Myw2ICsxMDA3LDcgQEAgcnVuX3NlcnZpY2UgKFNlcnZpY2VEYXRhICpzZXJ2aWNlX2RhdGEpCj4g
ICNlbHNlCj4gICAgY2xvc2UgKHBvcnRfZmQpOwo+ICAjZW5kaWYKPiArICByZXR1cm4gIXF1aXRf
c2VydmljZTsKPiAgfQo+Cj4gICNpZmRlZiBHX09TX1dJTjMyCj4gQEAgLTEwNjQsOSArMTA2OSw4
IEBAIHNlcnZpY2VfbWFpbiAoRFdPUkQgYXJnYywgVENIQVIgKmFyZ3ZbXSkKPiAgICBzZXJ2aWNl
X3N0YXR1cy5kd1dhaXRIaW50ID0gMDsKPiAgICBTZXRTZXJ2aWNlU3RhdHVzIChzZXJ2aWNlX3N0
YXR1c19oYW5kbGUsICZzZXJ2aWNlX3N0YXR1cyk7Cj4KPiAtICB3aGlsZSAoIXF1aXRfc2Vydmlj
ZSkgewo+IC0gICAgICBydW5fc2VydmljZSAoJnNlcnZpY2VfZGF0YSk7Cj4gLSAgICAgIGdfdXNs
ZWVwIChHX1VTRUNfUEVSX1NFQyk7Cj4gKyAgd2hpbGUgKHJ1bl9zZXJ2aWNlKCZzZXJ2aWNlX2Rh
dGEpKSB7Cj4gKyAgICBnX3VzbGVlcChHX1VTRUNfUEVSX1NFQyk7Cj4gICAgfQo+Cj4gICAgc2Vy
dmljZV9zdGF0dXMuZHdDdXJyZW50U3RhdGUgPSBTRVJWSUNFX1NUT1BQRUQ7Cj4gQEAgLTExNTQs
OCArMTE1OCw3IEBAIG1haW4gKGludCBhcmdjLCBjaGFyICphcmd2W10pCj4gICAgICAgICAgfQo+
ICAgICAgfSBlbHNlCj4gICNlbmRpZgo+IC0gIHdoaWxlICghcXVpdF9zZXJ2aWNlKSB7Cj4gLSAg
ICBydW5fc2VydmljZSAoJnNlcnZpY2VfZGF0YSk7Cj4gKyAgd2hpbGUgKHJ1bl9zZXJ2aWNlKCZz
ZXJ2aWNlX2RhdGEpKSB7Cj4gICAgICBnX3VzbGVlcCAoR19VU0VDX1BFUl9TRUMpOwo+ICAgIH0K
Pgo+IC0tCj4gMi4yMS4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWwKCgoKLS0gCk1hcmMtQW5kcsOpIEx1cmVhdQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
