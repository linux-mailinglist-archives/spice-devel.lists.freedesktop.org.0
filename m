Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A43B293
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 11:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2658C89100;
	Mon, 10 Jun 2019 09:56:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0240889015
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 09:56:02 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s3so7834819wms.2
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 02:56:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1BF4Ypa1KQ/eTwvmwP95ZojW8+UrjzAqDeSuWPaeJdE=;
 b=koXDAimecOlL6/D+DZ9X/9HZ0Dgny+vuzOz3zD7Zs2DIagcirbh4pUiKhOWlVC5XGD
 amErVwEJp2mhWPIUWbjSLRkbIlEcW9MGOussgpfjpIR9PCHr0dzEt3gAEiYKa8l5hdCZ
 GwGRr5dsBy1Xs+CqJo1/t4s+10m1axYhwQy+LeNE4+Wxo5ivF+ANrDXrjEd5lBIXD8/4
 7jLdK16DLoBvUQPvxk7pBne8selojfQwqR7juoSjxk948H78QzvFbymQqLzueSXK14q/
 oZE2cNYHSszdccNay6h+T/SIkHLgRvifQoWxqahnzAfm+ZP+sZH1tPN5ZDvghCr/GwqW
 GPrA==
X-Gm-Message-State: APjAAAV+upHxwtbjdh74yrSEamilYy58VSHgtce8KDQjp2rem6x4A3dQ
 SBzQ31kZocwy3hIQrgumqQq8jQpQy/B5ZQ==
X-Google-Smtp-Source: APXvYqzBA5hvpHUNn4rekJW95nvaTV3ziViFPkiUldK/meJA9bRluU41mif3R27kO+/d3BveA1G5Bg==
X-Received: by 2002:a7b:c251:: with SMTP id b17mr12061643wmj.143.1560160561241; 
 Mon, 10 Jun 2019 02:56:01 -0700 (PDT)
Received: from dhcp-4-181.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id t13sm23690281wra.81.2019.06.10.02.56.00
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 02:56:00 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <E1haFzd-000108-F3@amboise>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <6dae0af2-8425-9168-e7d4-b5857c6e97a4@redhat.com>
Date: Mon, 10 Jun 2019 12:55:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <E1haFzd-000108-F3@amboise>
Content-Language: en-US
Subject: Re: [Spice-devel] [client] gstreamer: Initialize last_mm_time to
 avoid an overflow
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

SGksCgoKT24gNi8xMC8xOSAxMTo0OSBBTSwgRnJhbmNvaXMgR291Z2V0IHdyb3RlOgo+IFRoZSBt
bV90aW1lIGlzIGFuIHVuc2lnbmVkIDMyIGJpdCBpbnQgYnV0IHNwaWNlX21tdGltZV9kaWZmKCkg
cmV0dXJucyBhCj4gc2lnbmVkIDMyIGJpdCBpbnQuIFRoYXQncyByZWFzb25hYmxlIGJlY2F1c2Ug
d2Ugbm9ybWFsbHkgc3Vic3RyYWN0CgoKcy9zdWJzdHJhY3Qvc3VidHJhY3QKCkFjaywgSSdsbCBk
byB0aGlzIGZpeCBhbmQgcHVzaAoKCj4gZnJhbWUgdGltZXMgd2hpY2ggc2hvdWxkIGJlIGF0IG1v
c3Qgc2Vjb25kcyBhcGFydC4KPiBCdXQgbGFzdF9tbV90aW1lIHdhcyB6ZXJvIG9uIHN0cmVhbSBz
dGFydHVwLCByZXN1bHRpbmcgaW4gYW4gb3ZlcmZsb3cKPiBhbmQgYW4gdW5jYWxsZWQgZm9yIHdh
cm5pbmcgZm9yIHRoZSBmaXJzdCBmcmFtZSBpbgo+IHNwaWNlX2dzdF9kZWNvZGVyX3F1ZXVlX2Zy
YW1lKCkgaWYgdGhlIHVwdGltZSB3YXMgZ3JlYXRlciB0aGFuIGFib3V0Cj4gMjUgZGF5cy4KPgo+
IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+
Cj4gLS0tCj4gICBzcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIHwgMSArCj4gICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IGluZGV4IDg4OTE4ZjEwLi44NThl
OGFlYiAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCj4gKysrIGIvc3Jj
L2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IEBAIC03NDAsNiArNzQwLDcgQEAgVmlkZW9EZWNvZGVy
KiBjcmVhdGVfZ3N0cmVhbWVyX2RlY29kZXIoaW50IGNvZGVjX3R5cGUsIGRpc3BsYXlfc3RyZWFt
ICpzdHJlYW0pCj4gICAgICAgICAgIGRlY29kZXItPmJhc2UucXVldWVfZnJhbWUgPSBzcGljZV9n
c3RfZGVjb2Rlcl9xdWV1ZV9mcmFtZTsKPiAgICAgICAgICAgZGVjb2Rlci0+YmFzZS5jb2RlY190
eXBlID0gY29kZWNfdHlwZTsKPiAgICAgICAgICAgZGVjb2Rlci0+YmFzZS5zdHJlYW0gPSBzdHJl
YW07Cj4gKyAgICAgICAgZGVjb2Rlci0+bGFzdF9tbV90aW1lID0gc3RyZWFtX2dldF90aW1lKHN0
cmVhbSk7Cj4gICAgICAgICAgIGdfbXV0ZXhfaW5pdCgmZGVjb2Rlci0+cXVldWVzX211dGV4KTsK
PiAgICAgICAgICAgZGVjb2Rlci0+ZGVjb2RpbmdfcXVldWUgPSBnX3F1ZXVlX25ldygpOwo+ICAg
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
