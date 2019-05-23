Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E784627E34
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590BF89DFD;
	Thu, 23 May 2019 13:34:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4811C89DFD
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:34:39 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id e15so6334130wrs.4
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:34:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bZ1+tZuYnQ6iAwDydpi6w/jycLtkaVz7r1X8MlVt2/E=;
 b=WT2BOrrmNxai7u5H0ym9RywP7Cc8aP9j7QUogT6su5xJzr466zOypWBwwbxAP8Kp5V
 xNeaQzITB2ZrR1gEsCbN5haoqV6D+Qotij8KxKz9g1vaA788xSzGiTX8zbvPxsl2RQXG
 pLrfP4CplaFIpny88o+2+SHxj9wcXQlcfMKRP3Oa2HOYJAEyUthxhgh5whtkYoQfST6B
 pbHdPLzRma8YIzzxiBo7o9Sz5zSajgLVswJ+aseVlNf0cHF//pqr45hcRkZ26vW3Sl1l
 nyLuTLHYGEEyKGuKSAoMd2qZjO9AzZwxi+WM/gZ/obb+deLYJHytx1bj91EKPndJ/5dO
 FCEA==
X-Gm-Message-State: APjAAAUYd9qnVWa1iBZ60ZIdPIoR2qMF/OKMHW8f5KuljZmfGdcbHHka
 lhzlLxNhxGcPT33zyxmNQXg6tP/JYlgkIGoAS+wHFVqb
X-Google-Smtp-Source: APXvYqysWZ1thW3x5U1Cgr08DCO06Sb62mBhvy2SDmsakNqvUi9GJmhe5LTays5oH8c2A1a1umy97aNIPH7bWdsMDyI=
X-Received: by 2002:adf:83c5:: with SMTP id 63mr29203287wre.33.1558618477978; 
 Thu, 23 May 2019 06:34:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-6-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-6-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:34:26 +0200
Message-ID: <CAJ+F1C+pFcJyVoMk8EWyCT3MtC=VLhPa2DjgQ7Zj4J3kph073A@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bZ1+tZuYnQ6iAwDydpi6w/jycLtkaVz7r1X8MlVt2/E=;
 b=XzvCCAYvlztnh8+k6MkrY0gWnLQnu/Jkcxlmy7hDLV/MxqeZErjKSNM6rLvue9OIDM
 JK3zrB64thLR1OTkhyL++CofLxA2fS53MsaOp9bKsghikinVNgqbR4fRFnP75/ka5D/3
 n0GeNWt7t7uqurYEw07pZJrHPYJC6OGr1JUr+NwS9AxK4fE6N2EoZK2IbRFEnldDbvVw
 I/oNuVbPLYvpBf4xu57qvvj9wpKO2//rP4DuSESNBnG50sl6er1XdN1j/+Wj1efFOl8z
 XzjsNympb3VzPqaEdurLJ1MjZ1jAyEByaohMKujdroQU1b9+aY5WGEaYzX+B2p+W8m4m
 rBsw==
Subject: Re: [Spice-devel] [PATCH phodav 05/13] spice: clear loop pointer on
 unref
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
aGF0LmNvbT4gd3JvdGU6Cj4KPiBUaGUgcG9pbnRlciB0byBsb29wIG11c3QgYmUgc2V0IHRvIE5V
TEwgb24gdW5yZWYuCj4KPiBRdWl0IHNpZ25hbCBoYW5kbGVyIGNhbiBiZSBjYWxsZWQgYXQgYW55
IHRpbWUsCj4gdXNpbmcgZ19tYWluX2xvb3BfcXVpdCgpIG9uIGEgZnJlZWQgbG9vcCBjb3VsZCBs
ZWFkIHRvIHNlZ2ZhdWx0LgoKSSBhbSBub3Qgc3VyZSBpZiB0aGlzIGlzIGVub3VnaCB0byBzb2x2
ZSB0aGUgcmFjZSB5b3UgZGVzY3JpYmUKKGhhbmRsZXIgY291bGQgc3RpbGwgYmUgY2FsbGVkIGJl
Zm9yZSBsb29wIGlzIHNldCB0byBudWxsLCByaWdodD8pLApidXQgdGhlIGNoYW5nZSBzZWVtcyB0
byBnbyBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uLgoKYWNrCgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFr
dWIgSmFua8WvIDxqamFua3VAcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3BpY2Uvc3BpY2Utd2ViZGF2
ZC5jIHwgNSArKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYyBiL3NwaWNlL3Nw
aWNlLXdlYmRhdmQuYwo+IGluZGV4IDZhZDYzYzUuLjNmYWMyOGIgMTAwNjQ0Cj4gLS0tIGEvc3Bp
Y2Uvc3BpY2Utd2ViZGF2ZC5jCj4gKysrIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jCj4gQEAgLTI0
Myw3ICsyNDMsOCBAQCBxdWl0IChpbnQgc2lnKQo+ICAgIGlmIChzaWcgPT0gU0lHSU5UIHx8IHNp
ZyA9PSBTSUdURVJNKQo+ICAgICAgICBxdWl0X3NlcnZpY2UgPSBUUlVFOwo+Cj4gLSAgZ19tYWlu
X2xvb3BfcXVpdCAobG9vcCk7Cj4gKyAgaWYgKGxvb3ApCj4gKyAgICBnX21haW5fbG9vcF9xdWl0
IChsb29wKTsKPiAgfQo+Cj4gIHN0YXRpYyBDbGllbnQgKgo+IEBAIC05ODIsNyArOTgzLDcgQEAg
cnVuX3NlcnZpY2UgKFNlcnZpY2VEYXRhICpzZXJ2aWNlX2RhdGEpCj4KPiAgICBzdGFydF9tdXhf
cmVhZCAobXV4X2lzdHJlYW0pOwo+ICAgIGdfbWFpbl9sb29wX3J1biAobG9vcCk7Cj4gLSAgZ19t
YWluX2xvb3BfdW5yZWYgKGxvb3ApOwo+ICsgIGdfY2xlYXJfcG9pbnRlciAoJmxvb3AsIGdfbWFp
bl9sb29wX3VucmVmKTsKPgo+ICAjaWZkZWYgR19PU19XSU4zMgo+ICAgIGdfY2FuY2VsbGFibGVf
Y2FuY2VsIChtYXBfZHJpdmVfZGF0YS5jYW5jZWxfbWFwKTsKPiAtLQo+IDIuMjEuMAo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgoK
Ci0tIApNYXJjLUFuZHLDqSBMdXJlYXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
