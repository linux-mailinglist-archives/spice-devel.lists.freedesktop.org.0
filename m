Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 301902F3513
	for <lists+spice-devel@lfdr.de>; Tue, 12 Jan 2021 17:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36286E2E3;
	Tue, 12 Jan 2021 16:08:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 801DD6E2E3
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jan 2021 16:08:50 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id b8so1146789plh.12
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jan 2021 08:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EDHxo5YGobtGuRu7nahiE4bYe2AsYYMmqQzbh9+s/I4=;
 b=oyPS/3D5mMk+Atk72cSVSI6+qZc/fYI0TPqtxVv2kfqzz97kpUkmCQhJ39Gv4sUD/l
 FFJ++nmWH1/EH7Hm3cOXzYNhJBETt73bRMie256Zj7QgNNNgFVGysoflJ7BBufpxV9nw
 b6vjC3VqWLDSRTpJ8U1x6OsmEBBaItNYpyFcX7GeVbQpxkvu+vlQILccjzj8Fz/mJzZm
 7cIbjrdPEPB0/NGYO2yXh6D8zidhHRG1IUf4M8YeeNzQJavkFVyDs3Sg2o/5WEWbFq0A
 1+WYDtYwEABMpX0HscqXir6137OrCaJz9sr8Kyvcvr9l9+RF+HKWbeEp/ASlSlmV2VsE
 9w3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EDHxo5YGobtGuRu7nahiE4bYe2AsYYMmqQzbh9+s/I4=;
 b=Kz3BuvbzjGKJNoxDzAjIU/XMEMIf4SWXZCSG4NSk1VbYzvOLT/5Dat6jcuHY5qZRP9
 DreG578OcOWW0PdavhPBUq7lVc3/8CA8tbpofHGJqY3o3SRVr4jjFB1M5GrE5nZ/FDuG
 Ss//wpk2oHBIrwYqcUF1yo1OnzKx6jhME3SYVU8tkcruOIxTW56bMN9aDjFnIPG/otMa
 D5dXA8jkX+MJwRqqrQcGUcvRViZaV6CvsROcCw5/Z6AvIiTGvFiFgknknMGQIVFZkMgc
 Lze9BOzNBVk5rRuheUVt2RyUk1FrsNAmC2qowWu5k9c7cnuzMBmpMpukJs/f9FfsmPf0
 YOZA==
X-Gm-Message-State: AOAM532WRtnQfFXpCbyroJRUPe8RYMCo7rwX9/ycZU32rc7WTvcXtaAo
 ZRJkeVUfN6ypdybdRmoqKAwsAIyz2NMuYRDunH7wvFIfbuA=
X-Google-Smtp-Source: ABdhPJyHafMUVmXWNCd+x8G1xRziX7NGuZ+yq0RMB/gfj1roLOUK1nZFkeZfJ64MuFrfKJovZsFTmrSocTq7lAKySis=
X-Received: by 2002:a17:902:fe87:b029:da:5d3b:4a84 with SMTP id
 x7-20020a170902fe87b02900da5d3b4a84mr81257plm.51.1610467730051; Tue, 12 Jan
 2021 08:08:50 -0800 (PST)
MIME-Version: 1.0
References: <HK0PR02MB31238306CBBD428A2E7EABFDA1AF0@HK0PR02MB3123.apcprd02.prod.outlook.com>
In-Reply-To: <HK0PR02MB31238306CBBD428A2E7EABFDA1AF0@HK0PR02MB3123.apcprd02.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 12 Jan 2021 16:08:38 +0000
Message-ID: <CAHt6W4duY6L+CFvq_X-HE3h2KeDjxF7dE95k898vL9vL_N-Hxw@mail.gmail.com>
To: =?UTF-8?B?5YiY546J6ZuqKHl1IHh1ZSBMaXUp?= <liuyuxue@oppo.com>
Subject: Re: [Spice-devel] 
	=?utf-8?q?Hi=EF=BC=8CGL_acceleration_=28virgl=29_C?=
	=?utf-8?q?an_use_it_on_windons=EF=BC=9F?=
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksDQogIEkgc3VwcG9zZSBieSB3aW5kb25zIHlvdSBtZWFuIFdpbmRvd3MuIFRoaXMgcmVxdWly
ZXMgV2luZG93cyBkcml2ZXJzDQpmb3IgM2QgdmlydGlvLXZnYSB3aGljaCBpcyBub3QgY3VycmVu
dGx5IHBsYW5uZWQuDQoNClJlZ2FyZHMsDQogIEZyZWRpYW5vDQoNCklsIGdpb3JubyBnaW8gNyBn
ZW4gMjAyMSBhbGxlIG9yZSAwNzo0MCDliJjnjonpm6ooeXXigIZ4dWUgTGl1KQ0KPGxpdXl1eHVl
QG9wcG8uY29tPiBoYSBzY3JpdHRvOg0KPg0KPiAgSGnvvIwNCj4gICAgM0QgZ3JhcGhpY3MgYWNj
ZWxlcmF0aW9uIHVzaW5nIHZpcmdsIGFuZCBsb2NhbCBzcGljZSBpcyAgRmVhdHVyZXMgQ2FuIHVz
ZSBpdCBvbiB3aW5kb25z77yfDQo+ICAgaHR0cHM6Ly93d3cuc3BpY2Utc3BhY2Uub3JnL3NwaWNl
LXVzZXItbWFudWFsLmh0bWwgIGludHJvZHVjZSB2aXJnbCBPbmx5IGluIExpbnV477yfDQo+DQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IE9QUE8NCj4NCj4g5pys55S15a2Q
6YKu5Lu25Y+K5YW26ZmE5Lu25ZCr5pyJT1BQT+WFrOWPuOeahOS/neWvhuS/oeaBr++8jOS7hemZ
kOS6jumCruS7tuaMh+aYjueahOaUtuS7tuS6uuS9v+eUqO+8iOWMheWQq+S4quS6uuWPiue+pOe7
hO+8ieOAguemgeatouS7u+S9leS6uuWcqOacque7j+aOiOadg+eahOaDheWGteS4i+S7peS7u+S9
leW9ouW8j+S9v+eUqOOAguWmguaenOaCqOmUmeaUtuS6huacrOmCruS7tu+8jOivt+eri+WNs+S7
peeUteWtkOmCruS7tumAmuefpeWPkeS7tuS6uuW5tuWIoOmZpOacrOmCruS7tuWPiuWFtumZhOS7
tuOAgg0KPg0KPiBUaGlzIGUtbWFpbCBhbmQgaXRzIGF0dGFjaG1lbnRzIGNvbnRhaW4gY29uZmlk
ZW50aWFsIGluZm9ybWF0aW9uIGZyb20gT1BQTywgd2hpY2ggaXMgaW50ZW5kZWQgb25seSBmb3Ig
dGhlIHBlcnNvbiBvciBlbnRpdHkgd2hvc2UgYWRkcmVzcyBpcyBsaXN0ZWQgYWJvdmUuIEFueSB1
c2Ugb2YgdGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBoZXJlaW4gaW4gYW55IHdheSAoaW5jbHVk
aW5nLCBidXQgbm90IGxpbWl0ZWQgdG8sIHRvdGFsIG9yIHBhcnRpYWwgZGlzY2xvc3VyZSwgcmVw
cm9kdWN0aW9uLCBvciBkaXNzZW1pbmF0aW9uKSBieSBwZXJzb25zIG90aGVyIHRoYW4gdGhlIGlu
dGVuZGVkIHJlY2lwaWVudChzKSBpcyBwcm9oaWJpdGVkLiBJZiB5b3UgcmVjZWl2ZSB0aGlzIGUt
bWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHBob25lIG9yIGVtYWls
IGltbWVkaWF0ZWx5IGFuZCBkZWxldGUgaXQhDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdA0KPiBT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
