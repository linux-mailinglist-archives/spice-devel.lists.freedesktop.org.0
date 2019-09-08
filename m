Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F2AACEED
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2019 15:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB3A8975F;
	Sun,  8 Sep 2019 13:36:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 520998975F
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 13:36:01 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B9E8AC007351
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 13:36:00 +0000 (UTC)
Received: by mail-wm1-f72.google.com with SMTP id c6so1831702wmc.1
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Sep 2019 06:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UqJgYwmAitUug+LFY29sxiroD6kCNg8EE/P4feiOC2c=;
 b=E7hWTY0BGKyk/Ldmn83G4wRlj5cbEOs2RrZ/QaV+dpjhZuqGzwGfgtQXC5uxkAg4FC
 zHpMYcL8mEu5Zcz4egHTOXv/deb6MBg3mH4ZqQH1g+Rt78ZNrDAFHWikT7c+xo1FuKBy
 IzXDSjaCwtXZuODqPQNUJUVD2XRYMV0pF5+aTJnce8SJcBmD8U8A50LFel61vctg1MuO
 Sbd/wfaD9HsxDS1ETgWnzgsDIIXHrjQG7fdd1NDG6Ygm95rLYykkcPTVvniz3Jg8cnnA
 L6FEeJLywboRmdhZcsgHpmLDmGkEgpUrEBELwZDZXQyQ/dCi7vE6vgPqW2Lqw+N9tDS/
 YX2A==
X-Gm-Message-State: APjAAAWP8WVONMxB3YEcoUw3fg/glGsqhJJnYC4dRG9mJ1nggKkIIaBy
 aqPAaig5Ix18ZmrCHG9MFx/vGNPT5zQpURdJZFX15UGXsDJCdk0ACkPyNyzOBvkPh7NhVPnGpll
 cggxBCvkVLIb93XjBjikAcqiXcsMqbhE=
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr15637729wml.86.1567949758973; 
 Sun, 08 Sep 2019 06:35:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoRyB3sIViVqFXtjDcpmaXd/Yf7GeRSWgXV54LxgqvOx+f1o16xeORoa8kj6rbHbqqvtPpyA==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr15637717wml.86.1567949758732; 
 Sun, 08 Sep 2019 06:35:58 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.220])
 by smtp.gmail.com with ESMTPSA id d17sm12874469wre.27.2019.09.08.06.35.57
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Sep 2019 06:35:57 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-5-victortoso@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <81380fde-14b8-1cec-f69f-f92692172510@redhat.com>
Date: Sun, 8 Sep 2019 16:35:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902160449.19589-5-victortoso@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [spice-gtk v1 4/6] session: gst_deinit()
 GStreamer if we initialize it
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

SGksCgpPbiA5LzIvMTkgNzowNCBQTSwgVmljdG9yIFRvc28gd3JvdGU6Cj4gRnJvbTogVmljdG9y
IFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgo+Cj4gTGV0J3MgZ3N0X2RlaW5pdCgpIGlmIHdlIGlu
aXRpYWxpemUgaXQgZm9yIHRoZSBzYW1lIHJhdGlvbmFsZSBwb2ludGVkIG91dAo+IGluIDAzODFl
NjIgInNwaWN5OiBBZGQgY2FsbCBvZiBnc3RfZGVpbml0IGF0IHByb2dyYW0gZXhpdCIgaW4KPiAy
MDE3LTEwLTIwIGJ5IENocmlzdG9waGUgZGUgRGluZWNoaW4gPGRpbmVjaGluQHJlZGhhdC5jb20+
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQuY29tPgo+
IC0tLQo+ICAgc3JjL3NwaWNlLXNlc3Npb24uYyB8IDggKysrKysrKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc2Vzc2lvbi5j
IGIvc3JjL3NwaWNlLXNlc3Npb24uYwo+IGluZGV4IGRiNDBhNTMuLjIxMzUzNDggMTAwNjQ0Cj4g
LS0tIGEvc3JjL3NwaWNlLXNlc3Npb24uYwo+ICsrKyBiL3NyYy9zcGljZS1zZXNzaW9uLmMKPiBA
QCAtMTIzLDYgKzEyMyw4IEBAIHN0cnVjdCBfU3BpY2VTZXNzaW9uUHJpdmF0ZSB7Cj4gICAgICAg
Z2NoYXIgICAgICAgICAgICAgKm5hbWU7Cj4gICAgICAgU3BpY2VJbWFnZUNvbXByZXNzaW9uIHBy
ZWZlcnJlZF9jb21wcmVzc2lvbjsKPiAgIAo+ICsgICAgYm9vbCAgICAgICAgICAgICAgZ3N0X2lu
aXRfYnlfc3BpY2U7Cj4gKwo+ICAgICAgIC8qIGFzc29jaWF0ZWQgb2JqZWN0cyAqLwo+ICAgICAg
IFNwaWNlQXVkaW8gICAgICAgICphdWRpb19tYW5hZ2VyOwo+ICAgICAgIFNwaWNlVXNiRGV2aWNl
TWFuYWdlciAqdXNiX21hbmFnZXI7Cj4gQEAgLTM0Myw2ICszNDUsMTAgQEAgc3BpY2Vfc2Vzc2lv
bl9kaXNwb3NlKEdPYmplY3QgKmdvYmplY3QpCj4gICAgICAgZ193YXJuX2lmX2ZhaWwocy0+Y2hh
bm5lbHNfZGVzdHJveWluZyA9PSAwKTsKPiAgICAgICBnX3dhcm5faWZfZmFpbChzLT5jaGFubmVs
cyA9PSBOVUxMKTsKPiAgIAo+ICsgICAgaWYgKHNlc3Npb24tPnByaXYtPmdzdF9pbml0X2J5X3Nw
aWNlKSB7Cj4gKyAgICAgICAgZ3N0X2RlaW5pdCgpOwoKCldvdWxkbid0IGl0IGRlaW5pdCBvbiBt
aWdyYXRpb24/IChJSVJDIGEgbmV3IHNlc3Npb24gaXMgY3JlYXRlZCkKCgpBY3R1YWxseSBnc3Ry
ZWFtZXIgZG9jdW1lbnRhdGlvbiBzdGF0ZXM6CgoiSXQgaXMgbm9ybWFsbHkgbm90IG5lZWRlZCB0
byBjYWxsIHRoaXMgZnVuY3Rpb24gaW4gYSBub3JtYWwgYXBwbGljYXRpb24KIMKgYXMgdGhlIHJl
c291cmNlcyB3aWxsIGF1dG9tYXRpY2FsbHkgYmUgZnJlZWQgd2hlbiB0aGUgcHJvZ3JhbSB0ZXJt
aW5hdGVzLgogwqBUaGlzIGZ1bmN0aW9uIGlzIHRoZXJlZm9yZSBtb3N0bHkgdXNlZCBieSB0ZXN0
c3VpdGVzIGFuZCBvdGhlciBtZW1vcnkKIMKgcHJvZmlsaW5nIHRvb2xzLiIKCkJlZm9yZSBpdCB3
YXMgdXNlZCBvbmx5IGJ5IHNwaWN5IHdoaWNoIGkgZ3Vlc3MgaXQncyBjb25zaWRlcmVkIG1vcmUg
b2YgYSAKdGVzdApjbGllbnQsIEknbSBub3Qgc3VyZSB3ZSB3b3VsZCBsaWtlIHRvIGRlaW5pdCBi
eSB0aGUgc2Vzc2lvbiAob24gdGhlIApvdGhlciBoYW5kCmknbSBhbHNvIG5vdCBzdXJlIGhvdyBo
YXJtZnVsIGl0IHdvdWxkIGJlKQoKClNuaXIuCgoKPiArICAgIH0KPiArCj4gICAgICAgZ19jbGVh
cl9vYmplY3QoJnMtPmF1ZGlvX21hbmFnZXIpOwo+ICAgICAgIGdfY2xlYXJfb2JqZWN0KCZzLT51
c2JfbWFuYWdlcik7Cj4gICAgICAgZ19jbGVhcl9vYmplY3QoJnMtPnByb3h5KTsKPiBAQCAtMjg4
OCw1ICsyODk0LDcgQEAgc3BpY2Vfc2Vzc2lvbl9lbmFibGVfZ3N0cmVhbWVyKFNwaWNlU2Vzc2lv
biAqc2Vzc2lvbikKPiAgICAgICBpZiAoIWdzdF9pbml0X2NoZWNrKE5VTEwsIE5VTEwsICZlcnIp
KSB7Cj4gICAgICAgICAgIHNwaWNlX3dhcm5pbmcoIkRpc2FibGluZyBHU3RyZWFtZXIgdmlkZW8g
c3VwcG9ydDogJXMiLCBlcnItPm1lc3NhZ2UpOwo+ICAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZl
cnIpOwo+ICsgICAgfSBlbHNlIHsKPiArICAgICAgICBzZXNzaW9uLT5wcml2LT5nc3RfaW5pdF9i
eV9zcGljZSA9IHRydWU7Cj4gICAgICAgfQo+ICAgfQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
