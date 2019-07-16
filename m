Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEDE6B055
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 22:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C056E190;
	Tue, 16 Jul 2019 20:19:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E576E190
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 20:18:59 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id q22so42101518iog.4
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 13:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kjmjayRsRW1DMIk029jT8loFqdk8nnoaknlMW/0EOpc=;
 b=QvNHxOdEng1Qo6tZVxUuJ2PdtxiptCmSBGzGaF9bAnRcbwlOcV3GVD5AnmTbLaAySg
 MOnZlxdBuhZJPntUkFdYsrqToOZrGCZ3xKF/QkPqv/a0og5mDALMgYEeb7lGzOUVii5e
 ikSikOro70/oZBiv4V9S5rKtzLkIFbiD+6FK3HCQlEBxaJ4lqFJfy52jLPSCTERSovva
 7SkNwU6T9JztERvpBG92HWUHjAxENF+TxkM/cLNvO539CkGwB8Kc0km0VwYQPa9pMavv
 nuFzn1iCZAKDQFmRzyVwobYk4Id7UiET+sx7Fn6lbsWomtGhLCsPh/KvYlXpZagBUNDZ
 nbYg==
X-Gm-Message-State: APjAAAWM5N9OpigRA3sc3yyenwK1/4kvZOa4S5u2PqoYLKHxgQ/D+YtF
 r0C+Sx64M5WkVarxr4oyDay8b6uUvW+88L6OAXI=
X-Google-Smtp-Source: APXvYqyoA4TEQ8rhlEmBqYb0bnuf5wHQIxmWj8WBYJEoB0BqdTJMoPPZndUc2T5twAMlQZIqhNOni2ipQta/ViHT1As=
X-Received: by 2002:a6b:b214:: with SMTP id b20mr32436579iof.149.1563308339158; 
 Tue, 16 Jul 2019 13:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-5-yuri.benditovich@daynix.com>
 <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
 <CAOEp5Oc6=WgcAeuNcHDHaXoxcuArnzk3bRgxYXtH5ifGS1t0uA@mail.gmail.com>
 <924676003.191096.1563200906023.JavaMail.zimbra@redhat.com>
In-Reply-To: <924676003.191096.1563200906023.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Tue, 16 Jul 2019 23:18:44 +0300
Message-ID: <CAOEp5OfJRX-S6iC+q4VqESqcwgCtdF1WAhECpNo_iSVXnenwhA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=kjmjayRsRW1DMIk029jT8loFqdk8nnoaknlMW/0EOpc=;
 b=xoDmsKhcQvF+qXywvm6/Sh/lFQ4b1pFmiQfU15ml+A4C4JmoyDqMUto9QhJE5m18WQ
 xsCzWkU7Ar5UG7qDZt8bUJdhKhbKt7KOO8mfMo2QymIE9ni4bo113w1XY7rcp6CztIag
 GOsVxLBS+IDnftfTDgyaTrRsiiVTtqSdME8m3T3CH6V1oWd5A5Jj4JuTczpd6kfBdS9S
 Vd6TgZViDUg2/nfeuGCoujh2tNzCEnFpgSOSOm/mw4gtSDN3yZrWE7VUwk0IyJ4288zL
 PyB3CLvZLhk3ytkJPlt2EbIChmNdzGBcnMNqB847ciHC+I6prDfey2+U8hc/wlcGK9q9
 gDPg==
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

T24gTW9uLCBKdWwgMTUsIDIwMTkgYXQgNToyOCBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBPbiBNb24sIEp1bCAxNSwgMjAxOSBhdCA1OjA0
IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+
ID4gPgo+ID4gPiA+IFRoZSBkZWxldGUgaW4gZXJyb3IgZmxvdyB3YXMgbWlzc2luZy4KPiA+ID4g
Pgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3Zp
Y2hAZGF5bml4LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgc3JjL3VzYi1kZXZpY2UtbWFuYWdl
ci5jIHwgMSArCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gPiA+
Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXIuYwo+ID4gPiA+IGluZGV4IDg1N2QwNTcuLjcxMDVmZjEgMTAwNjQ0Cj4g
PiA+ID4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gPiA+ID4gKysrIGIvc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci5jCj4gPiA+ID4gQEAgLTI1OSw2ICsyNTksNyBAQCBzdGF0aWMgZ2Jv
b2xlYW4KPiA+ID4gPiBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5p
dGFibGUgICppbml0YWJsZSwKPiA+ID4gPiAgICAgIGlmICghc3BpY2VfdXNiX2JhY2tlbmRfcmVn
aXN0ZXJfaG90cGx1Zyhwcml2LT5jb250ZXh0LCBzZWxmLAo+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9o
b3RwbHVnX2NiLAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGVycikpIHsKPiA+ID4gPiArICAgICAgICBzcGljZV91c2JfYmFja2VuZF9kZWxldGUo
cHJpdi0+Y29udGV4dCk7Cj4gPiA+Cj4gPiA+IFNob3VsZCBub3QgaGF2ZSBhIGZvbGxvd2luZyAi
cHJpdi0+Y29udGV4dCA9IE5VTEwiID8KPiA+Cj4gPiBUaGlzIGlzIGEgY29uc3RydWN0b3I7IGlm
IGl0IGZhaWxzIHRoZSBkZXN0cnVjdG9yIGlzIG5vdCBjYWxsZWQuCj4gPiBCdXQgbm8gcHJvYmxl
bSB0byBhZGQgdGhpcyBmb3IgYmVhdXR5Lgo+ID4KPgo+IE5vLCB0aGlzIGlzIHRoZSBJbml0aWFi
bGU6OmluaXQuIElmIHRoaXMgcmV0dXJucyBGQUxTRSB0aGUgb2JqZWN0IGRlc3RydWN0aW9uCj4g
KHNvIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9maW5hbGl6ZSBmb3IgaW5zdGFuY2UpIHdpbGwg
YmUgZXhlY3V0ZWQuCj4gQ3VycmVudGx5IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9maW5hbGl6
ZSBpcyBjYWxsaW5nIHNwaWNlX3VzYl9iYWNrZW5kX2RlbGV0ZQo+IGFsc28gc28gaW4gdGhlb3J5
IHRoaXMgY2FsbCBzaG91bGQgbm90IGJlIG5lY2Vzc2FyeSAobm90IHRlc3RlZCkuCgpUZXN0ZWQu
IFlvdSdyZSByaWdodCwgdGhlIHBhdGNoIGlzIHdyb25nLiBXaXRob3V0IGl0IGluIGNhc2Ugb2Yg
ZXJyb3IKdGhlIHJlbW90ZS12aWV3ZXIgc3RhcnQgd2l0aG91dCBVU0IgcmVkaXJlY3Rpb24uCgo+
Cj4gPiA+Cj4gPiA+ID4gICAgICAgICAgcmV0dXJuIEZBTFNFOwo+ID4gPiA+ICAgICAgfQo+ID4g
PiA+ICAjaWZuZGVmIEdfT1NfV0lOMzIKPiA+ID4KPgo+IEZyZWRpYW5vCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
