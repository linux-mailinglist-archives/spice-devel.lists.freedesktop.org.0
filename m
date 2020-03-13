Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42509184553
	for <lists+spice-devel@lfdr.de>; Fri, 13 Mar 2020 11:54:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B5B6EBC1;
	Fri, 13 Mar 2020 10:54:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C908E6EBAB
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 10:05:49 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id h5so11197187edn.5
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 03:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6UW1kyALb0MWdPqUFI/DjUTNu9cZzTceWzWbjXh9Wco=;
 b=ZSk+RRM8aNjzXnNc5t6sm2oslZz/CXajOLKz8EPhj1lrUpbXL8QOr7imAuPTyKDJNg
 sA9z06z/jwpoMTkUBY/MfDz5/8knIWBtSdogSc7LZe+0xjkGQUyaqYeTG2jtNIWkX7uw
 VStYvxFBpfN0NbeRQ46J+pMpAEEUBwR2q8JGo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6UW1kyALb0MWdPqUFI/DjUTNu9cZzTceWzWbjXh9Wco=;
 b=bgxUlQDTewPubpZWKDyFJ8QTtL7Pun6nBR5Z4B3zIBYmhsVmuUE3vUBbxHL9E7651M
 cpaX8Ww9RYl5tDNl7PP+b2OwRtrwQ1FXyLu8csAf12ApQMxpRsTCd+P2UHNl085Rq5Kk
 Hzt0aBmd5WKdImrlogiFDBFk77V47jPkO5eWG8Mk7DnYoi3EU65A4UqXrrmVTQmEaFjF
 k6cOrf+R8+QB56ebJaXdHqnLfol6h0rumajUx9tRT2944rstOM+ELLjENCZLzeU947Au
 BTW6c2imKF8uwOEuqQmvUnRmQGYYxqFQjbK409+LuABuDfbnmv0K2/DTQanX2aFPOT2p
 ketg==
X-Gm-Message-State: ANhLgQ0c3fQGWZsygxEWYcA8C7alUzYH+uorbWO+3OTiGV9W3oFAtWL2
 Hx/b8tbRq74JbrqS9kIDwur5OSRFG2E=
X-Google-Smtp-Source: ADFU+vuT0A/9VzixD1EiSTAn8/C6K6y+nGyjGW6tL24NWHP39ABOzvr8iWrVV8HiRiF+Kr88MeELUg==
X-Received: by 2002:aa7:ca45:: with SMTP id j5mr12424504edt.251.1584093947997; 
 Fri, 13 Mar 2020 03:05:47 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id a4sm81935edt.21.2020.03.13.03.05.46
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 03:05:47 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id s5so11321447wrg.3
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Mar 2020 03:05:46 -0700 (PDT)
X-Received: by 2002:a5d:42c8:: with SMTP id t8mr17105382wrr.415.1584093946082; 
 Fri, 13 Mar 2020 03:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <20719772.EfDdHjke4D@os-lin-dmo>
 <6f8c37b1-8dc4-e3bb-01ed-4ebedaf90915@xs4all.nl>
 <12620787.dW097sEU6C@os-lin-dmo>
In-Reply-To: <12620787.dW097sEU6C@os-lin-dmo>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 13 Mar 2020 11:05:35 +0100
X-Gmail-Original-Message-ID: <CAAFQd5BdS2oT+vgM3Qg64wPqWdPRi1uE6ZmOPwXwudv==3JQVA@mail.gmail.com>
Message-ID: <CAAFQd5BdS2oT+vgM3Qg64wPqWdPRi1uE6ZmOPwXwudv==3JQVA@mail.gmail.com>
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>
X-Mailman-Approved-At: Fri, 13 Mar 2020 10:54:04 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] video_video: Add the Virtio Video
 V4L2 driver
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
Cc: David Stevens <stevensd@chromium.org>, virtio-dev@lists.oasis-open.org,
 Alex Lau <alexlau@chromium.org>, kiran.pawar@opensynergy.com,
 Alexandre Courbot <acourbot@chromium.org>, samiullah.khawaja@opensynergy.com,
 dstaessens@chromium.org, Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTI6NDggUE0gRG1pdHJ5IFNlcHAKPGRtaXRyeS5zZXBw
QG9wZW5zeW5lcmd5LmNvbT4gd3JvdGU6Cj4KPiBIaSBIYW5zLAo+Cj4gT25lIG1vcmUgdGhpbmc6
Cj4KPiA+IEdGUF9ETUE/IFRoYXQncyB1bnVzdWFsLiBJJ2QgZXhwZWN0IEdGUF9ETUEzMi4gQWxs
IFY0TDIgZHJpdmVycyB1c2UgdGhhdC4KPgo+IEdGUF9ETUEzMiBoYWQgbm8gZWZmZWN0IGZvciBt
ZSBvbiBhcm02NC4gUHJvYmFibHkgSSBuZWVkIHRvIHJlY2hlY2suCj4KCldoYXQncyB0aGUgcmVh
c29uIHRvIHVzZSBhbnkgc3BlY2lmaWMgR0ZQIGZsYWdzIGF0IGFsbD8gR0ZQX0RNQSgzMikKbWVt
b3J5IGluIHRoZSBndWVzdCB3b3VsZCB0eXBpY2FsbHkgY29ycmVzcG9uZCB0byBob3N0IHBhZ2Vz
IHdpdGhvdXQKYW55IHNwZWNpZmljIGxvY2F0aW9uIGd1YXJhbnRlZS4KCkJlc3QgcmVnYXJkcywK
VG9tYXN6Cgo+IEJlc3QgcmVnYXJkcywKPiBEbWl0cnkuCj4KPiBPbiBEb25uZXJzdGFnLCAxMi4g
TcOkcnogMjAyMCAxMToxODoyNiBDRVQgSGFucyBWZXJrdWlsIHdyb3RlOgo+ID4gT24gMy8xMi8y
MCAxMToxNSBBTSwgRG1pdHJ5IFNlcHAgd3JvdGU6Cj4gPiA+IEhpIEhhbnMsCj4gPiA+Cj4gPiA+
IFRoYW5rIHlvdSBmb3IgeW91ciBncmVhdCBkZXRhaWxlZCByZXZpZXchCj4gPiA+Cj4gPiA+IEkg
d29uJ3QgcHJvdmlkZSBpbmxpbmUgYW5zd2VycyBhcyB5b3VyIGNvbW1lbnRzIHRvdGFsbHkgbWFr
ZSBzZW5zZS4gVGhlcmUKPiA+ID4gaXM+Cj4gPiA+IG9ubHkgb25lIHRoaW5nIEkgd2FudCB0byBt
ZW50aW9uOgo+ID4gPj4+ICsgc3RydWN0IHZpZGVvX3BsYW5lX2Zvcm1hdCBwbGFuZV9mb3JtYXRb
VklSVElPX1ZJREVPX01BWF9QTEFORVNdOwo+ID4gPj4KPiA+ID4+IFdoeSBpcyB0aGlzIHZpcnRp
byBzcGVjaWZpYz8gQW55IHJlYXNvbiBmb3Igbm90IHVzaW5nIFZJREVPX01BWF9QTEFORVM/Cj4g
PiA+Cj4gPiA+IEknZCBzYXkgdGhpcyBpcyBiZWNhdXNlIFZJREVPX01BWF9QTEFORVMgZG9lcyBu
b3QgZXhpc3Qgb3V0c2lkZSBvZiB0aGUKPiA+ID4gTGludXggT1MsIHNvIGZvciB3aGF0ZXZlciBv
dGhlciBzeXN0ZW0gd2UgbmVlZCBhIHZpcnRpbyBzcGVjaWZpYwo+ID4gPiBkZWZpbml0aW9uLgo+
ID4gT0ssIGdvb2QgcmVhc29uIDotKQo+ID4KPiA+IEl0J3MgcHJvYmFibHkgYSBnb29kIHRoaW5n
IHRvIGFkZCBhIGNvbW1lbnQgd2hlcmUgVklSVElPX1ZJREVPX01BWF9QTEFORVMgaXMKPiA+IGRl
ZmluZWQgdGhhdCBleHBsYWlucyB0aGlzLgo+ID4KPiA+IFJlZ2FyZHMsCj4gPgo+ID4gICAgICAg
SGFucwo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVsCg==
