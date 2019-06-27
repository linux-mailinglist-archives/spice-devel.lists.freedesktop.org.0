Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B75829A
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 14:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B486E1B7;
	Thu, 27 Jun 2019 12:28:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546BE6E1B7
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 12:28:09 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id i10so4207586iol.13
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 05:28:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/X9qdGyN3ojmbfAF4ri9mo0Ghzis2cjwvKGyR4Y5M/Y=;
 b=UxKGKsr43bNXQBdMyK1cX55eVcKtXSOTVh7Srd55YkoqhpRuhZYLGrqKxZrfg/h36V
 gzo7r+g4pM3mXOvV+5brnBH2x4FKmjXExk5OylpSe/toxZlaS0+GvNoEawvhrg6Hrg8m
 rocO7Gsku/dt5Vvu8DP/SxB2enUh5ZnWQ/lgUMD43y2iQYXMZWO9XJc2FtE4l5xVZudr
 z4C5XYYYjUEbaDlOWhwYr/LGi5IoAOICSuh9ddCLnQEflMspelsf4ufVuXrjC/EXMQSL
 coDy1M2kdxGglpx+rbGqncaJ2QUAGOLKkIWPy2NkcU+at3tQo2wzrP18KdDSSvWPEgzA
 ZkSA==
X-Gm-Message-State: APjAAAW+WQ6y5YF6P/w6fWQpLjKwqi+QsWrklU83+BdUSfBA16VsxQ/P
 u8P/RPZ+1dzqL76v0mmv73RvQjOre4xjC0bOneKI3w==
X-Google-Smtp-Source: APXvYqyAGtPytnNntF10W+46xLr5TyZ5nSgMmEsRqZCHTbiEiDW4auHW9e3TAKyjmAaULKwpSBdDyfvJ7ULnIJZS6kE=
X-Received: by 2002:a02:6597:: with SMTP id u145mr4467599jab.26.1561638488654; 
 Thu, 27 Jun 2019 05:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190626080222.8434-1-jjanku@redhat.com>
 <36729848.24945003.1561623044903.JavaMail.zimbra@redhat.com>
In-Reply-To: <36729848.24945003.1561623044903.JavaMail.zimbra@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Thu, 27 Jun 2019 14:27:57 +0200
Message-ID: <CAH=CeiDWC9p0RVA2TKLwn_zxhHmzJ3KOg1yMihdjhbP4wnVapA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-channel: return if
 has_error is TRUE in spice_channel_write_msg
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

SGksCgpPbiBUaHUsIEp1biAyNywgMjAxOSBhdCAxMDoxMCBBTSBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBBdm9pZCBsaW5lYXJpemluZyBpZiB0
aGUgbWVzc2FnZSBpc24ndCB3cml0dGVuIG91dCBhbnl3YXkKPgo+ICJsaW5lYXJpemluZyIgPyBX
aGF0IGRvIHlvdSBtZWFuIGFib3V0IHRoYXQ/Cj4gTG9va2luZyBhdCBkZWZpbml0aW9ucyBpdCBz
ZWVtcyBub3QgY29ycmVjdCB0byBtZS4KCkkgd2FzIHNpbXBseSByZWZlcnJpbmcgdG8gdGhlIHNw
aWNlX21hcnNoYWxsZXJfbGluZWFyaXplKCkgY2FsbC4KPgo+ID4gKHNwaWNlX2NoYW5uZWxfZmx1
c2hfd2lyZSBjaGVja3MoKSB0aGlzIGNvbmRpdGlvbiBhcyB3ZWxsKS4KPiA+Cj4gPiBUaGlzIGFs
c28gc2lsZW5jZXMgdGhlIGZvbGxvd2luZyBlcnJvcjoKPiA+Cj4gPiAgICAgKHNwaWN5OjMyMDg3
KTogR1NwaWNlLUNSSVRJQ0FMICoqOiAxNjoyMjowMy4xNDc6Cj4gPiAgICAgc3BpY2Vfc2Vzc2lv
bl9nZXRfcmVhZF9vbmx5OiBhc3NlcnRpb24gJ1NQSUNFX0lTX1NFU1NJT04oc2VsZiknIGZhaWxl
ZAo+ID4KPiA+IHRoYXQgY2FuIGJlIHNlZW4gaWYgdGhlIGNoYW5uZWwgZ2V0cyBkaXNjb25uZWN0
ZWQKPiA+IGJ5IHRoZSBzZXNzaW9uIHdoaWxlIGhhdmluZyBub24tZW1wdHkgd3JpdGUgcXVldWUu
Cj4gPgo+ID4gc3BpY2Vfc2Vzc2lvbl9jaGFubmVsX2Rlc3Ryb3koKSBzZXRzIGNoYW5uZWwtPnBy
aXYtPnNlc3Npb24gdG8gTlVMTCwKPiA+IGJ1dCBzcGljZV9jaGFubmVsX3dyaXRlX21zZygpIHN1
YnNlcXVlbnRseSBhdHRlbXB0cyB0byBjYWxsCj4gPiBzcGljZV9zZXNzaW9uX2dldF9yZWFkX29u
bHkoKSB3aXRoIE5VTEwgcG9pbnRlci4KPiA+Cj4KPiBNaW5vcjogdGhpcyBpcyB0aGUgZXhwbGFu
YXRpb24gd2h5IHRoZSBlcnJvciBvbiB0aGUgcHJldmlvdXMKPiBwYXJhZ3JhcGggc2hvdWxkIG5v
dCBiZSB0cmVhdGVkIGxpa2UgYW4gZXJyb3IsIEkgdGhpbmsgaXQgc2hvdWxkCj4gYmUgdGhlIHNh
bWUgcGFyYWdyYXBocy4KCk1ha2VzIHNlbnNlLgo+Cj4gT1Q6IG1heWJlIGNoYW5uZWwgc2Vzc2lv
biBzaG91bGQgbmV2ZXIgYmUgTlVMTD8KCkl0IGluZGVlZCBkb2VzIHNlZW0gd2VpcmQgdGhhdApn
X2NsZWFyX29iamVjdCgmY2hhbm5lbC0+cHJpdi0+c2Vzc2lvbik7IGlzIGNhbGxlZCB3aGVuIHRo
ZQoic3BpY2Utc2Vzc2lvbiIgcHJvcGVydHkgb2YgdGhlIGNoYW5uZWwgaXMgR19QQVJBTV9DT05T
VFJVQ1RfT05MWSAtLQp3aXRoIHRoaXMgZmxhZywgSSB3b3VsZCBleHBlY3QgdGhlIHByb3BlcnR5
IHRvIG5vdCBjaGFuZ2UgYWZ0ZXIgdGhlCmNvbnN0cnVjdGlvbi4KClNwaWNlIHNlc3Npb24gd2Fp
dHMgZm9yIHRoZSBjaGFubmVsIGRlc3RydWN0aW9uIGFueXdheQooY2hhbm5lbF9maW5hbGx5X2Rl
c3Ryb3llZCBjYWxsYmFjayksIHNvIGl0IHNob3VsZCBiZSBpbWhvIGZpbmUgdGhhdAp0aGUgY2hh
bm5lbCBob2xkcyBhIHJlZmVyZW5jZSB0byB0aGUgc2Vzc2lvbiB3aGlsZSBpdCBpcyBiZWluZwpk
ZXN0cm95ZWQuIFNvIEkgdGhpbmsgd2UgY291bGQgcmVtb3ZlIHRoYXQKZ19jbGVhcl9vYmplY3Qo
JmNoYW5uZWwtPnByaXYtPnNlc3Npb24pOyBjYWxsIGluCnNwaWNlX3Nlc3Npb25fY2hhbm5lbF9k
ZXN0cm95KCkuCj4KPiA+IFNpZ25lZC1vZmYtYnk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhh
dC5jb20+Cj4gPiAtLS0KPiA+ICBzcmMvc3BpY2UtY2hhbm5lbC5jIHwgNSArKysrKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3Nw
aWNlLWNoYW5uZWwuYyBiL3NyYy9zcGljZS1jaGFubmVsLmMKPiA+IGluZGV4IDYxZGUxNzcuLmFh
ODBlZGYgMTAwNjQ0Cj4gPiAtLS0gYS9zcmMvc3BpY2UtY2hhbm5lbC5jCj4gPiArKysgYi9zcmMv
c3BpY2UtY2hhbm5lbC5jCj4gPiBAQCAtODk3LDYgKzg5NywxMSBAQCBzdGF0aWMgdm9pZCBzcGlj
ZV9jaGFubmVsX3dyaXRlX21zZyhTcGljZUNoYW5uZWwKPiA+ICpjaGFubmVsLCBTcGljZU1zZ091
dCAqb3V0KQo+ID4gICAgICBnX3JldHVybl9pZl9mYWlsKG91dCAhPSBOVUxMKTsKPiA+ICAgICAg
Z19yZXR1cm5faWZfZmFpbChjaGFubmVsID09IG91dC0+Y2hhbm5lbCk7Cj4gPgo+ID4gKyAgICBp
ZiAoY2hhbm5lbC0+cHJpdi0+aGFzX2Vycm9yKSB7Cj4gPiArICAgICAgICBzcGljZV9tc2dfb3V0
X3VucmVmKG91dCk7Cj4gPiArICAgICAgICByZXR1cm47Cj4gPiArICAgIH0KPiA+ICsKPiA+ICAg
ICAgaWYgKG91dC0+cm9fY2hlY2sgJiYKPiA+ICAgICAgICAgIHNwaWNlX2NoYW5uZWxfZ2V0X3Jl
YWRfb25seShjaGFubmVsKSkgewo+ID4gICAgICAgICAgZ193YXJuaW5nKCJUcnkgdG8gc2VuZCBt
ZXNzYWdlIHdoaWxlIHJlYWQtb25seS4gUGxlYXNlIHJlcG9ydCBhCj4gPiAgICAgICAgICBidWcu
Iik7Cj4KPiBGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
