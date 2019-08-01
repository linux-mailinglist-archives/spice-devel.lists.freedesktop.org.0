Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77D37DE6B
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413256E6BB;
	Thu,  1 Aug 2019 15:04:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B97D6E6BB
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:04:45 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id g67so59412171wme.1
 for <spice-devel@lists.freedesktop.org>; Thu, 01 Aug 2019 08:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RpxptxidMwS6vj/QMauA3d2ft+BtnxGbmn2aNUD0RI4=;
 b=PFhCrw47+1Kp2I9VT3096DfIaCV9lmtF/2aImtT9PQ/sD/1fGPDOeMwP7JH1ZsOlmt
 nz7Ce6ZJl2H6/rbJFoPgxgYQOtnHKEIh86Rr2seLzo1qjEEV/Reg61Ed5YOLT8QQ8f4u
 qWmusHZ9rVditb3jwUTH8VS+wE+8fUHG3YBDpxmrutxLlcQce7wSk9W0ObaaTZkm9OLw
 YiGhXbkzMJMkto9YsIMVt05hv/oRGdp1a7mVr9huDH1+fHkKeBoNuLd/o/Qc3tLMIAec
 fTmpvE0sV/B/cvvHr5th69WntVESAunYNJX3QPBZiD6w7cH3r2muJ9LztkIGhtjoXmpR
 URFQ==
X-Gm-Message-State: APjAAAXwtrOW8Cy2FMJzutH5ywhat5eb9cKwQmGZnjCqoRRpORXk4HN/
 56CcE8i2AN/bUnnO00fPpmK88UTqHSo=
X-Google-Smtp-Source: APXvYqyy3sklH+26tlMqjf97tfkZMQMerKcv4ZzCPoNDj4IJ1bXJW1LlkEx8Da96PZl/F8sQABfTdg==
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr16796121wmj.65.1564671883232; 
 Thu, 01 Aug 2019 08:04:43 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id u1sm68911029wml.14.2019.08.01.08.04.42
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 08:04:42 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190801130426.25562-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <c355b7b2-2d81-2da9-c970-dabc2c38ca79@redhat.com>
Date: Thu, 1 Aug 2019 18:04:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190801130426.25562-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk] usb-device-manager: Remove
 unused parameter from spice_usb_device_manager_device_match
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

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPbiA4LzEvMTkg
NDowNCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jIHwgNiArKystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jIGIv
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gaW5kZXggMGEwNGIxMTkuLjQyNmEwY2Q3IDEwMDY0
NAo+IC0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ICsrKyBiL3NyYy91c2ItZGV2aWNl
LW1hbmFnZXIuYwo+IEBAIC03MzMsOCArNzMzLDggQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2Rl
dmljZV9tYW5hZ2VyX2F1dG9fY29ubmVjdF9jYihHT2JqZWN0ICAgICAgKmdvYmplY3QsCj4gICB9
Cj4gICAKPiAgIHN0YXRpYyBnYm9vbGVhbgo+IC1zcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZGV2
aWNlX21hdGNoKFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqc2VsZiwgU3BpY2VVc2JEZXZpY2UgKmRl
dmljZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBpbnQg
YnVzLCBjb25zdCBpbnQgYWRkcmVzcykKPiArc3BpY2VfdXNiX2RldmljZV9tYXRjaChTcGljZVVz
YkRldmljZSAqZGV2aWNlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGludCBidXMs
IGNvbnN0IGludCBhZGRyZXNzKQo+ICAgewo+ICAgICAgIHJldHVybiAoc3BpY2VfdXNiX2Rldmlj
ZV9nZXRfYnVzbnVtKGRldmljZSkgPT0gYnVzICYmCj4gICAgICAgICAgICAgICBzcGljZV91c2Jf
ZGV2aWNlX2dldF9kZXZhZGRyKGRldmljZSkgPT0gYWRkcmVzcyk7Cj4gQEAgLTc1MCw3ICs3NTAs
NyBAQCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZmluZF9kZXZpY2UoU3BpY2VVc2JEZXZpY2VN
YW5hZ2VyICpzZWxmLAo+ICAgCj4gICAgICAgZm9yIChpID0gMDsgaSA8IHByaXYtPmRldmljZXMt
PmxlbjsgaSsrKSB7Cj4gICAgICAgICAgIGN1cnIgPSBnX3B0cl9hcnJheV9pbmRleChwcml2LT5k
ZXZpY2VzLCBpKTsKPiAtICAgICAgICBpZiAoc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2Rldmlj
ZV9tYXRjaChzZWxmLCBjdXJyLCBidXMsIGFkZHJlc3MpKSB7Cj4gKyAgICAgICAgaWYgKHNwaWNl
X3VzYl9kZXZpY2VfbWF0Y2goY3VyciwgYnVzLCBhZGRyZXNzKSkgewo+ICAgICAgICAgICAgICAg
ZGV2aWNlID0gY3VycjsKPiAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgICB9Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
