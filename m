Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FF96909C
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 16:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E788997E;
	Mon, 15 Jul 2019 14:23:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F9A8997E
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 14:23:17 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id k20so34301809ios.10
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 07:23:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V+KK4zAif3J6qEVNZAmdgDDrH1oCcy5/ddkWa/9utvU=;
 b=jF0IZRDwhLOsIoXUruImnyZuNS4xGl/qTJj4hMScsLHPl1+LzZ6LgIXGaZQ2PknHNR
 2gDgchIqktcaW6uCgRYfXUfMQldV93SyROFEHxVl+xjnENrORnDjv9lLaABqAwmSqd9q
 9VEnbfeEuyrzVToM2q7dVHp0CqcVRUkZfBuAx+/nMcjW9V4CCQ7uqesDN3zEfwcis6I+
 S2KW4oWt6ozCfrTxpEaZi9pjlOcOwHz4XDC5IDIMBezxPYy1r/mg1+0yS5c5maDRJ19O
 jXHXAyMBLW7/AxRyGJ+AaY5QFBFfXsG6B8F8XExs4+ikHY1TBrjmzw60s3PHQ3KpZQmr
 ECFQ==
X-Gm-Message-State: APjAAAX9QdINCLijNDAJEOF7LEsfs45unUp+zGyWkwaq7Y0b88+FQJU8
 JB4Ssv23Jso1m6e6B85eVjMy+F/L14qazP4p7x0=
X-Google-Smtp-Source: APXvYqy0O/EeMAfH3tH541TKXK0jkk7eXOOxZu9ZCva/GCoYefrWxIzm89HPI4hqqbcvkxrnlZ5l7P6WXDIAIbTDov8=
X-Received: by 2002:a6b:b497:: with SMTP id d145mr1238334iof.17.1563200596919; 
 Mon, 15 Jul 2019 07:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-5-yuri.benditovich@daynix.com>
 <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
In-Reply-To: <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Mon, 15 Jul 2019 17:23:03 +0300
Message-ID: <CAOEp5Oc6=WgcAeuNcHDHaXoxcuArnzk3bRgxYXtH5ifGS1t0uA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=V+KK4zAif3J6qEVNZAmdgDDrH1oCcy5/ddkWa/9utvU=;
 b=I31W/7B449ZIBga3D02u9Rdgssug8KhroeSYaY1R6Fw7NZ//yeGFYp5IK9drYWDYe5
 cVpz8fksy9ijuiN+lGlHI2AfTkDWHsAMAdwXqNODTnEvD9nfkBMh8wUiGUReyXVxVIgg
 9i/fC+7HAaycrFWZ0BPjQbp47iYdLLFN8Q5yRi5rc1hdI5nL9GKgBB+f7uau+tDobyY1
 L2zF9153GTWQQ8FJsjvwrv7KFsUYPDJ2z/r7WUwE2FJNl7culaXle5b5Lb5TF/zBsDDG
 +SFzQYIpxMqepiUdzpWPnYeBaxdgwRnGjEAq3OvNAkTQPU4ZRPZhaVel1VPZeVgaZitz
 baNw==
Subject: Re: [Spice-devel] [spice-gtk 4/5] usb-redir: delete usb-backend
 context on initialization error
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMTUsIDIwMTkgYXQgNTowNCBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBUaGUgZGVsZXRlIGluIGVycm9yIGZsb3cgd2Fz
IG1pc3NpbmcuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5i
ZW5kaXRvdmljaEBkYXluaXguY29tPgo+ID4gLS0tCj4gPiAgc3JjL3VzYi1kZXZpY2UtbWFuYWdl
ci5jIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFn
ZXIuYwo+ID4gaW5kZXggODU3ZDA1Ny4uNzEwNWZmMSAxMDA2NDQKPiA+IC0tLSBhL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYwo+ID4gKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gPiBA
QCAtMjU5LDYgKzI1OSw3IEBAIHN0YXRpYyBnYm9vbGVhbgo+ID4gc3BpY2VfdXNiX2RldmljZV9t
YW5hZ2VyX2luaXRhYmxlX2luaXQoR0luaXRhYmxlICAqaW5pdGFibGUsCj4gPiAgICAgIGlmICgh
c3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1Zyhwcml2LT5jb250ZXh0LCBzZWxmLAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyX2hvdHBsdWdfY2IsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBlcnIpKSB7Cj4gPiArICAgICAgICBzcGljZV91c2JfYmFja2Vu
ZF9kZWxldGUocHJpdi0+Y29udGV4dCk7Cj4KPiBTaG91bGQgbm90IGhhdmUgYSBmb2xsb3dpbmcg
InByaXYtPmNvbnRleHQgPSBOVUxMIiA/CgpUaGlzIGlzIGEgY29uc3RydWN0b3I7IGlmIGl0IGZh
aWxzIHRoZSBkZXN0cnVjdG9yIGlzIG5vdCBjYWxsZWQuCkJ1dCBubyBwcm9ibGVtIHRvIGFkZCB0
aGlzIGZvciBiZWF1dHkuCgo+Cj4gPiAgICAgICAgICByZXR1cm4gRkFMU0U7Cj4gPiAgICAgIH0K
PiA+ICAjaWZuZGVmIEdfT1NfV0lOMzIKPgo+IEZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
