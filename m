Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F6C27E29
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5072B89DF9;
	Thu, 23 May 2019 13:30:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37FC189DB4
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:30:48 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m3so6304490wrv.2
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nymXaIAcPMjibAkMbrZZ+E6sinN1lYsSdZpf7+aonL8=;
 b=D8SwFe2X4vA6qk1W7pgK+HqkcZHwPgJECEKQZfygfv1CCTs7HqLGR7cwtwtbcCww+u
 8xNszzsafYYbVDtYGMmvgLeoq5bXY/omsQKGCYoyeLRXOXm3QFqP5EGH3URRweNaI2L9
 6J5m3eJ8/sZUpS4KLYiwgSgw/G9LopfWg3soJO9CY2mydpOvlGaUDQpgOT2pbkQTS3y6
 dDTE8YjU0iTl2ATJ47W2QAQ5qlG4gb0+2195Twh+2xFqp8E1czvQD+lSm4Bar0la39TI
 y7HHrxEcJjtW6zgVgJm3ST0yJX02jW2G/JzJhQBv/43O+cgAlLcmwcDTVhZs7MKIKC4+
 X8Dw==
X-Gm-Message-State: APjAAAXOtaWyrSlcPT0njDzuZzdOLggaLuknInjtEIwZSUweL7TbgT9G
 nLd5Rm3+M2+WKCNyEZHTCEaL/luH+8m5Xjuf4QU=
X-Google-Smtp-Source: APXvYqzLJpwgy5ba7JaMxZS2v4eZ87iKffaHk3fSeqHgCc7QiKq7NC9mThFFmoWbuznPJWrLBthnxlOBq5X7AMUDMcs=
X-Received: by 2002:adf:ec8c:: with SMTP id z12mr989825wrn.209.1558618246910; 
 Thu, 23 May 2019 06:30:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-4-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-4-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:30:35 +0200
Message-ID: <CAJ+F1C+PVrYZa=ZcjKvAqF_fdd21FGh_wGOSQcrf_HDFoduk5Q@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nymXaIAcPMjibAkMbrZZ+E6sinN1lYsSdZpf7+aonL8=;
 b=eCWxIeQ3cmFj1PCotS5Lb4TKacsrOO+Mk7W4xhvfZoNYsWme/ImyRxy+nC29Gkyd85
 1nwCl4inQ4CutZ8x908Tkog6Q2JorQyW41oBJaTd53OZREX8+sonv3pfXOIJ74tUHkis
 hFYfPFaMRDzrwrIv1g5D49Dr6R1nMkOx1Ulf4CwbdDJnp4MNYa+cjaI+WM62bs94Zqf2
 Aw+0lQAHI6sPbyrJ7MNfB8DZ6u6Z78g0GWuPrR9VuvFgVGYVu3uQyGMw/5ZezhqKBOt+
 u5nIIDVwNu4ixuaIeejHzlITWzDkVBSDiEcK2l5WUnuMH7U4Z3Me6+vjqdjaLhUvrcrv
 LH8Q==
Subject: Re: [Spice-devel] [PATCH phodav 03/13] spice: handle SIGINT properly
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

SGkKCk9uIFRodSwgTWF5IDIzLCAyMDE5IGF0IDEwOjM3IEFNIEpha3ViIEphbmvFryA8amphbmt1
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gQWNjb3JkaW5nIHRvIFswXSwgZ19kZWJ1ZyBzaG91bGQg
bm90IGJlIHVzZWQgaW4gYSBzaWduYWwgaGFuZGxlci4KPiBTbywgdG8gYXZvaWQgcmVlbnRyYW5j
eSwgZG8gbm90IHByaW50IGRlYnVnIG1lc3NhZ2Ugd2hlbiBxdWl0IGlzCj4gY2FsbGVkIHdpdGgg
U0lHSU5ULgo+Cj4gWzBdIGh0dHBzOi8vZG9jcy5taWNyb3NvZnQuY29tL2VuLXVzL2NwcC9jLXJ1
bnRpbWUtbGlicmFyeS9yZWZlcmVuY2Uvc2lnbmFsP3ZpZXc9dnMtMjAxOQo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3BpY2Uvc3Bp
Y2Utd2ViZGF2ZC5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBiL3Nw
aWNlL3NwaWNlLXdlYmRhdmQuYwo+IGluZGV4IGU0OTQ2OTIuLmNkZmE3M2QgMTAwNjQ0Cj4gLS0t
IGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4g
QEAgLTIzNyw3ICsyMzcsOCBAQCBzdGF0aWMgdm9pZCBtZG5zX3VucmVnaXN0ZXJfc2VydmljZSAo
dm9pZCk7Cj4gIHN0YXRpYyB2b2lkCj4gIHF1aXQgKGludCBzaWcpCj4gIHsKPiAtICBnX2RlYnVn
ICgicXVpdCAlZCIsIHNpZyk7Cj4gKyAgaWYgKHNpZyAhPSBTSUdJTlQpCj4gKyAgICBnX2RlYnVn
ICgicXVpdCAlZCIsIHNpZyk7Cj4KCkkgd291bGQgc2ltcGx5IHJlbW92ZSB0aGUgZ19kZWJ1Zygp
IGNhbGwgdGhlbi4KCihtYXliZSB3ZSBzaG91bGQgaGF2ZSBhIGRpZmZlcmVudCBmdW5jdGlvbiBm
b3IgdGhlIHNpZ25hbCBoYW5kbGVyKQoKPiAgICBpZiAoc2lnID09IFNJR0lOVCB8fCBzaWcgPT0g
U0lHVEVSTSkKPiAgICAgICAgcXVpdF9zZXJ2aWNlID0gVFJVRTsKPiAtLQo+IDIuMjEuMAo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
CgoKCi0tIApNYXJjLUFuZHLDqSBMdXJlYXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
