Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E6D98DEF
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 10:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8133C6EAAB;
	Thu, 22 Aug 2019 08:37:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com
 [IPv6:2607:f8b0:4864:20::d41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8546EAAB
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:37:45 +0000 (UTC)
Received: by mail-io1-xd41.google.com with SMTP id j5so10209560ioj.8
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 01:37:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3Ks1p07N7yPjCULo8ublGzpSsYVYB5sdPg0xvg4UT/8=;
 b=I7SCZn6K8N1/MaQelGp4eXWkjHq6dDXMdQENPaA+bJAkWAD6LP74JM8DbuCk7rjBak
 m5lsJsDBOLWmG7OuO9k05nsEa53S0ZH9gfIQH9ywITYySfYKHSuS5WeaaO08qUumJAWD
 3w1BAV0IjmeNYglip2/KbQhGHUpbtvYaXZLgfbAdSYUDy6Q9/AVkpm91G/Ordf7iDkig
 ZFLO9zVlwBTIYH2RQpfMiD++1XTGNwFk5rG/gybcv7t7/2Ni5AUJgNDV7edEhkiZStuF
 dhheLqO0xq20zlRxRvb5FypultqHo+5l5yDYiO0LJ37dtkNHsKZvEU8zJULO1VVkE/un
 6Yog==
X-Gm-Message-State: APjAAAUuZGf+Kd6ZHZdGQtzGbps695a8ffrjBIkb5NsGxxG6SLuZML6w
 bZsGyL2r+CpV+dY3quNwAnim47gcMnZWL5mFch49hw==
X-Google-Smtp-Source: APXvYqwztJhaSF+E578baq4FAEUcBNeIVg/lDqothUfgsj876jJ+PuvoJdX/JfsNySsOP/AtP7N1Bi7D4hmKtccJBsY=
X-Received: by 2002:a6b:c9c2:: with SMTP id z185mr17546372iof.17.1566463064674; 
 Thu, 22 Aug 2019 01:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
 <59e67d01-f17c-6029-a7ca-3916c8738d41@redhat.com>
In-Reply-To: <59e67d01-f17c-6029-a7ca-3916c8738d41@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 22 Aug 2019 11:37:32 +0300
Message-ID: <CAOEp5Oe_84XiBG=9P6qNqyPZb2Er5kxDmuXYPQ+ynMLaoNJQ=g@mail.gmail.com>
To: uril@redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3Ks1p07N7yPjCULo8ublGzpSsYVYB5sdPg0xvg4UT/8=;
 b=aaJu/ZT5nXdyc0pBXJkKgFUrpTDIXTzqHU+JsmVYAEbA5KQWummIUPwzSVK0J5XcCq
 Js64uS4GFkOF1SA98BaUkANXpJSTqk6nhPTT9/WV1lS/0N3mBu+UPAivZjOSCWBmCVMH
 Luay4z78ekDaGJfnEt+vKNMVY21TEP9XSSL7c77dk4w3iNsB5Zqc4HXjZNCCDF9y2NNY
 xt7G+iB9n6Hl5moow8/R9hnzGowiisZI/On/TcComNawPrNJtncsb5lweIFXTgAJExe/
 aT06pTqEzjybCIkwnms3qDFYPEAd7e47EH5dlP+GB6xwqX92ZLRezLymThcPOlof3D4j
 Wy5Q==
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
YyAodGhhdCByZXBsYWNlcyB3aW4tdXNiLWRldi5jKQo+Cj4gVXJpCgpJbiBhZGRpdGlvbiB0byB0
aGUgcmVzcG9uc2UgZnJvbSBVcmk6CnNwaWNlLWNsaWVudC1nbGliIGRvZXMgbm90IGhhdmUgaXRz
IG93biBtZXNzYWdlIGxvb3AsCkdldE1lc3NhZ2UvRGlzcGF0Y2hNZXNzYWdlIG11c3QgYmUgaW4g
dGhlIGFwcGxpY2F0aW9uIHRoYXQgdXNlcwpsaWJzcGljZSouZGxsClNvLCB0aGUgYXBwbGljYXRp
b24gc2hvdWxkIGhhdmUgaXRzIG93biB3aW5kb3csIHByb2JhYmx5IHRoZSBtb2RhbApkaWFsb2cg
YWxzbyB3aWxsIHNhdGlzZnkgKGFzIGl0IGhhcyBpdHMgb3duIG1lc3NhZ2UgbG9vcCkKCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
