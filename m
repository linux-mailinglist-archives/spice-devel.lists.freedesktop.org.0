Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8239C89101
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EC96E30F;
	Sun, 11 Aug 2019 09:12:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 156076E30F
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:12:09 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id p13so27412750wru.10
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 02:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nJ+0Q/Gyv1gBwxkYLOGp4G/qv2xkl47u600Q8bptjWg=;
 b=c8oYtAGMRlMLjuiNJwdtuDyJC0Av6Ll98DgTdDszXWbj3dvfn+yN8WCd2GKBLiJvE1
 wDjRGwEBs0UdtXg0j/drGBhCWhu2o5hIULunZJSMs7q9o1ZAAxwMf40pHP11b1dVWPS5
 MnnvdS23e8Db9ko93zWm6Bzjdg2bZfHdA5L+x+5fBPmOQ4/kJddELERGzJfWauCJ1ze3
 Xrr9SDBz0mQkG5wOp1qCEbvaX3l+SVcDaFl2X9KpVyFrhZhiq2jweu6xIr66TXeoPMc6
 k6BwbxlVj92TbGemI8eZ4f+onHHRTyf8i/3PFTLARFF1mdot8PXWMVyEn6CEo1jcimvM
 sCiQ==
X-Gm-Message-State: APjAAAXMA6nJuCHZwby6lNndUyqybokF4r6kAyzXZpF07oCLTu8olOHt
 q96+QWzOWTIUh5rffk+ejNVtyfrC9qc=
X-Google-Smtp-Source: APXvYqwusVfWhVnOxRDng1mKFyycr8GiHvVCzJL4ZZ8yx7wXIYd3faA2401ILrXaegrytTdjTKo9lg==
X-Received: by 2002:adf:e691:: with SMTP id r17mr35108237wrm.67.1565514727330; 
 Sun, 11 Aug 2019 02:12:07 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id d69sm3662639wmd.4.2019.08.11.02.12.06
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 02:12:06 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190723082230.10381-1-fziglio@redhat.com>
 <20190723082230.10381-4-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <306813f2-7081-9372-c9a0-2c715476fb14@redhat.com>
Date: Sun, 11 Aug 2019 12:12:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723082230.10381-4-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] red-replay-qxl: Fix replay
 on 32 bit systems
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

SGksCgpBY2tlZC1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KCm5pY2Ug
Y2F0Y2gKClNuaXIuCgpPbiA3LzIzLzE5IDExOjIyIEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6
Cj4gT24gMzIgc3lzdGVtcyBwb2ludGVycyBhcmUgMzIgYml0IHdoaWxlIFFYTFBIWVNJQ0FMIGlz
IGFsd2F5cwo+IDY0IGJpdC4KPiBVc2luZyBwb2ludGVyIC0+IGludHB0cl90IC0+IFFYTFBIWVNJ
Q0FMIGNvbnZlcnNpb24gY2F1c2UgcG9pbnRlcnMKPiB0byBoYXZlIGhpZ2hlciAzMiBiaXQgc2V0
IHRvIDEgaWYgdGhlIGFkZHJlc3MgaXMgPj0gMHg4MDAwMDAwMC4KPiBUaGlzIGlzIHBvc3NpYmxl
IGRlcGVuZGluZyBvbiBhZGRyZXNzIHNwYWNlLgo+IFRoZSBRWExQSFlTSUNBTCBpcyBzcGxpdCBp
biAzIHNlY3Rpb25zOgo+IC0gc2xvdCBJRDsKPiAtIGdlbmVyYXRpb247Cj4gLSB2aXJ0dWFsIGFk
ZHJlc3MuCj4gQ3VycmVudCB1dGlsaXR5IHVzaW5nIHJlY29yZCBmaWxlIChzcGljZS1zZXJ2ZXIt
cmVwbGF5KSBzZXQgc2xvdCBJRAo+IGFuZCBnZW5lcmF0aW9uIHRvIDAgc28gaWYgdGhlIGhpZ2hl
ciBiaXRzIGJlY29tZSBhbGwgMSBzbG90IElEIGFuZAo+IGdlbmVyYXRpb24gd29uJ3QgYmUgMCBj
YXVzaW5nIHRoZSB1dGlsaXR5IHRvIGZhaWwuCj4gVXNlIHBvaW50ZXIgLT4gdWludHB0cl90IC0+
IFFYTFBIWVNJQ0FMIGNvbnZlcnNpb24gdG8gYXZvaWQgdGhpcwo+IGlzc3VlLgo+IE5vdGUgdGhh
dCBmb3Igb3Bwb3NpdGUgY29udmVyc2lvbiAoUVhMUEhZU0lDQUxfVE9fUFRSKSB0aGUgY29udmVy
c2lvbgo+IGRvZXMgbm90IGNoYW5nZSwgdHlwZSBpcyBjaGFuZ2VkIGp1c3QgZm9yIGNvbnNpc3Rl
bmN5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4gLS0tCj4gICBzZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYyB8IDQgKystLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9zZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYyBiL3NlcnZlci9yZWQtcmVwbGF5LXF4bC5jCj4gaW5k
ZXggNjc0ZmVhZTJmLi5iMzhjNGNkYmQgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3JlZC1yZXBsYXkt
cXhsLmMKPiArKysgYi9zZXJ2ZXIvcmVkLXJlcGxheS1xeGwuYwo+IEBAIC0yOSw4ICsyOSw4IEBA
Cj4gICAjaW5jbHVkZSAibWVtc2xvdC5oIgo+ICAgI2luY2x1ZGUgInJlZC1wYXJzZS1xeGwuaCIK
PiAgIAo+IC0jZGVmaW5lIFFYTFBIWVNJQ0FMX0ZST01fUFRSKHB0cikgKChRWExQSFlTSUNBTCko
aW50cHRyX3QpKHB0cikpCj4gLSNkZWZpbmUgUVhMUEhZU0lDQUxfVE9fUFRSKHBoeSkgKCh2b2lk
KikoaW50cHRyX3QpKHBoeSkpCj4gKyNkZWZpbmUgUVhMUEhZU0lDQUxfRlJPTV9QVFIocHRyKSAo
KFFYTFBIWVNJQ0FMKSh1aW50cHRyX3QpKHB0cikpCj4gKyNkZWZpbmUgUVhMUEhZU0lDQUxfVE9f
UFRSKHBoeSkgKCh2b2lkKikodWludHB0cl90KShwaHkpKQo+ICAgCj4gICB0eXBlZGVmIGVudW0g
ewo+ICAgICAgIFJFUExBWV9PSyA9IDAsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
