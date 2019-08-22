Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA3C98DBE
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 10:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E276EAA0;
	Thu, 22 Aug 2019 08:32:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3881C6EAA0
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:32:16 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id z3so10283329iog.0
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 01:32:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=u93ivX/yr08WVVSqVI3efbglrp6KNyRzOsGvPNQj3Bo=;
 b=OYfuTkpHaThH9/kxPb0d1p/Jir9vHMpQXhVsTGqF85nHSrynDp7EpCJz/v64c48mxf
 h/wR83CiG2UvNoYIykk7n+ev+CO9S6JwxRrtJsdazXjsU67dpB7tF4mIbKssqc+cw08x
 kXnW5EWd0yxAAGxAnZE567Z2VJt3ZVl0jJFQvyMUFc2q4ogPSltLR3etX6I/uZ7KCLYa
 arDZwMdAORGYQm33moC2J1/21tITbQIaQkmD6953bxWKj8yNu43lMP7MtbgN8DL04GEe
 xoj/blFADbS9nkdG0GPxk/bD73X6eYCImWKErKIpJ3XisYsVEbKpme9Wiaa6q/HOUPCH
 xncw==
X-Gm-Message-State: APjAAAWG4UQVgvaQMB9B1Ac8CxEiVad/lgfA69m2oTHQFuRT3JgCvDCB
 TmD6IgJe60EertIP3vYYY7VTAE3HC1FVM9Xa+mjUnW3wG+Q=
X-Google-Smtp-Source: APXvYqxQY6CG1dUHqbRZ+ayG5NpGezieJo0oHd21g3umxi2zXqEyqKa9JKgJKJDUYuZA0TsUfztG+1gYmlil3njUda0=
X-Received: by 2002:a6b:b214:: with SMTP id b20mr7194577iof.149.1566462735633; 
 Thu, 22 Aug 2019 01:32:15 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
 <59e67d01-f17c-6029-a7ca-3916c8738d41@redhat.com>
In-Reply-To: <59e67d01-f17c-6029-a7ca-3916c8738d41@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 22 Aug 2019 11:32:02 +0300
Message-ID: <CAOEp5OcWb7fPp-RbZpBk8Cjiw6x1uqzxEUQyaCZT2KS9xfziWA@mail.gmail.com>
To: uril@redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=u93ivX/yr08WVVSqVI3efbglrp6KNyRzOsGvPNQj3Bo=;
 b=mdNN4fmcujPWQZZOpb5qr0dZRnK9eJTfAN4et9L3DdQJNZaxMfSPFpxKOdmCfq8ouw
 VFGYKvqQMMdkjdWnLlb+OE+dvJic2+1QoB3nBRQkNDvAUNd3Y4AgSeEOVZv3p3BucBP0
 l+w28n8MuL/7cV9Z5AYlAxZ+GA7OFZult67HZ8TitP4oHMCyqGp8vzwUEZDRjQR70dtF
 8dzrFb3b2c/bXfieXSwGqn71D/nZAqd/EPORsRqJusjh2cmWTZ1QTpczBrfNI4WmXdMG
 gKgU6UBeBBi6LrWOvDegpMlTgrZzyBI1THQhweWDXlvKzsqo7f9MmfgHJf1Xzazhhy3y
 ptrw==
Subject: Re: [Spice-devel] windows spice-client-glib hotplug not working
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgNzoyOSBQTSBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5j
b20+IHdyb3RlOgo+Cj4gT24gOC8yMS8xOSAzOjI1IEFNLCB6aG91IHFpIHdyb3RlOgo+ID4gSGVs
bG8sIEkgd3JpdGUgYSBkZW1vIHVuZGVyIHdpbmRvd3MgdW5zaW5nICpzcGljZS1jbGllbnQtZ2xp
YiBvbmx5KiwgST4gY2FuIGdldCB1c2IgZGV2aWNlcyBmcm9tIFVzYk1hbmFnZXIuIGJ1dCBob3Rw
bHVnIGlzIG5vdCB3b3JraW5nLiBubz4gZGV2aWNlIGNoYW5nZSBldmVudCByZWNpZXZlZC4KPgo+
IEhlbGxvLAo+Cj4gPiBJIGZvdW5kIHRoZSBmdW5jdGlvbiBnX3VkZXZfY2xpZW50X2luaXRhYmxl
X2luaXQgaW4gd2luLXVzYi1kZXYuYyBjcmVhdGU+IGEgaGlkZGVuIHdpbmRvdyB0byBtb25pdG9y
IFdNX0RFVklDRUNIQU5HRSBtZXNzYWdlLiBidXQgSSBjb3VsZCBub3Q+IGZvdW5kIHRoZSBjb3Jy
ZXNwb25kaW5nIG1lc3NhZ2UgbG9vcO+8iEdldE1lc3NhZ2UvRGlzcGF0Y2hNZXNzYWdlLi4uKS4+
IFdoZXJlIGlzIHRoZSBtZXNzYWdlIGxvb3AoZ3RrKT8gRG9lcyBpdCBkZXBlbmRzIG9uIHNvbWUg
aGlnaGVyPiBsaWJyYXJ5KGd0aynvvJ9Ib3cgY2FuIEkgZ2V0IHVzYiBob3RwbHVnIHdvcmtpbmc/
Cj4KPiBUaGVzZSBldmVudHMgYXJlIHNlbnQgdG8gd25kX3Byb2MgYnkgV2luZG93cyAodGhlIE9T
KS4KPgo+IFRoZSBoaWRkZW4gd2luZG93IGlzIGNyZWF0ZWQsIHNvIHNwaWNlLWd0ayBnZXRzIHRo
b3NlCj4gbWVzc2FnZXMgZnJvbSBXaW5kb3dzLgo+Cj4gTm90ZSB0aGF0IHRoaXMgY29kZSB3YXMg
bW92ZWQgcmVjZW50bHkgaW4gc3BpY2UtZ3RrIC0tIG5vdyBpdCdzIGluCj4gdXNiLWJhY2tlbmQu
YyAodGhhdCByZXBsYWNlcyB3aW4tdXNiLWRldi5jKQo+Cj4gVXJpCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
