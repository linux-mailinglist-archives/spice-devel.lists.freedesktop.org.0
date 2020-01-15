Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10AB13BA5B
	for <lists+spice-devel@lfdr.de>; Wed, 15 Jan 2020 08:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAAD6E867;
	Wed, 15 Jan 2020 07:32:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7396E872
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 07:32:18 +0000 (UTC)
Received: by mail-io1-xd2e.google.com with SMTP id c16so16708089ioh.6
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 23:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ycLFw6fwxpscxMEa42VmKwxqoExvQvcUPvuXhXI4zMU=;
 b=1I9tCnaTknlTJupwho32Ocuo5d8l2jQwaMovfkdR2vzwgQMOgBoK5gj54rlA1V3AUK
 FEpg/VudRCDVx5aF434YW6TdJ7sJquNsz8ZvNAM+tsKVhSIw22Ey2gA+Ix1Bs3cXajK4
 HVjXxU6Naf+L+aB8KDfi1RbHVB9ZuZOGLSps1mZdETrdxKRCUH3BxstaMg1eozTWEzzL
 OvJRe0tRP8Dzx0Cz6UJK0AyrllDMvEFPsTUnjNW9rdiMMqAVSqavU4OjF26y9JjVo74O
 LRV/hS9TcA4UOGPQWWYdkvkeyYfXQmsYQvxGOWVde+mTT5R1RCOTyhKf+F+zEMGsKeyI
 0cHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ycLFw6fwxpscxMEa42VmKwxqoExvQvcUPvuXhXI4zMU=;
 b=m7cBOwumIt7zLKwcC2mZgXgzNFItdOgsXWtoPaxGmsmPhpTPHxzDaD60RPt+AcxIFM
 WSHy9iJJhhV0fUZjA4bmeROEEvZl9nJouvWJ26ie1SnfnILUhK+MMy0pJmlYuUw1t3iJ
 cmCgYp7F0G1Xo2JjkdxzjuCUBBdDDHlhnf3I002kwgrcoDdxncA0t1Xldl8YIJQIkR3j
 4XTLgNWOk6SxurBJdxtC+WrRLgHy+Xt1aAjebQJa382WllL9rC8d9wY2p08Ny4SQ8jlo
 mD8AunqPwGytAk081mIpsmjf6BdNN5Hj0uXJ2LpLKAw7FiLvirKRmvtVjCN5+2EvowL2
 adjQ==
X-Gm-Message-State: APjAAAV4HQOjS32XfBDYFNjxUqBh2Kk38nPUUUoaNyp5jlwydjTcEZr+
 KuCNSyLuu+JN8J5MQib2xdzNFSTqHkb/M50FIjqeLw==
X-Google-Smtp-Source: APXvYqxO+IWwFeMfxWeHyl8ivlsuApaSrMzanAyBiaKARTZLt8BhIWRT+Mp71qu7sxUff5yduqAD04jaOgBHBdMfX1E=
X-Received: by 2002:a5e:8417:: with SMTP id h23mr20072194ioj.17.1579073538051; 
 Tue, 14 Jan 2020 23:32:18 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
 <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
 <CAOEp5OehVVQxjYW3wR7wTE++Ct4vp-1KUnLOfnL-Z_Vq25DcBw@mail.gmail.com>
 <MN2PR06MB59660C9996BE501670A7E50EB3370@MN2PR06MB5966.namprd06.prod.outlook.com>
In-Reply-To: <MN2PR06MB59660C9996BE501670A7E50EB3370@MN2PR06MB5966.namprd06.prod.outlook.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Wed, 15 Jan 2020 09:32:05 +0200
Message-ID: <CAOEp5OdgTBGvHBU9CAnDt5bF0A-JaRv0Fzi=rNRLJrBhdtTOSQ@mail.gmail.com>
To: franklin zhou <codeit@live.com>
Subject: Re: [Spice-devel] 
	=?utf-8?q?windows_server_2012=EF=BC=9A_WDDMInterfa?=
	=?utf-8?q?ce=3A=3Aescape=3A=3Athis_should_never_happen=2E_Status_i?=
	=?utf-8?q?s_0xc000000d?=
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgODoxMyBBTSBmcmFua2xpbiB6aG91IDxjb2RlaXRAbGl2
ZS5jb20+IHdyb3RlOgo+Cj4gSSBmaW5kIHRoZSBydWxlc++8jCBpdCBubyBtYXR0ZXIgd2l0aCB3
aW5kb3dzIDIwMTIsIGl0IGRlcGVuZCBvbiB2aWRlbyB0eXBlLAo+ICBpZiB0eXBlIGlzIGNpcnJ1
cywgIG9yIHVzZSBudmlkaWEgR1BVIGluIGRpc3BsYXkgc2V0dGluZ3MsIHdpbGwgY2F1c2UgdGhp
cyBwcm9ibGVtOgo+Cj4gICAgIDx2aWRlbz4KPiAgICAgICA8bW9kZWwgdHlwZT0nY2lycnVzJyB2
cmFtPScxNjM4NCcgaGVhZHM9JzEnIHByaW1hcnk9J3llcycvPgo+ICAgICAgIDxhZGRyZXNzIHR5
cGU9J3BjaScgZG9tYWluPScweDAwMDAnIGJ1cz0nMHgwMCcgc2xvdD0nMHgwMicgZnVuY3Rpb249
JzB4MCcvPgo+ICAgICA8L3ZpZGVvPgo+Cj4gIERvZXMgV0RETUludGVyZmFjZTo6ZXNjYXBlIG9u
bHkgc3VwcG9ydCBxeGwgdHlwZSB2aWRlbyBjYXJkPwoKWWVzLCB0aGlzIGlzIHByaXZhdGUgaW50
ZXJmYWNlCgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBGcm9tOiBZdXJp
IEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gU2VudDogVHVlc2Rh
eSwgSmFudWFyeSAxNCwgMjAyMCAxMDowNyBBTQo+IFRvOiBmcmFua2xpbiB6aG91IDxjb2RlaXRA
bGl2ZS5jb20+Cj4gQ2M6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPjsgU3Bp
Y2UgTGlzdCA8c3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPgo+IFN1YmplY3Q6IFJl
OiBbU3BpY2UtZGV2ZWxdIHdpbmRvd3Mgc2VydmVyIDIwMTLvvJogV0RETUludGVyZmFjZTo6ZXNj
YXBlOjp0aGlzIHNob3VsZCBuZXZlciBoYXBwZW4uIFN0YXR1cyBpcyAweGMwMDAwMDBkCj4KPiBX
aGljaCBRWEwgZHJpdmVyIGlzIGluc3RhbGxlZCBvbiAyMDEyOiBxeGwuc3lzIGZvciB4cC9XaW43
IG9yCj4gcXhsZG9kLnN5cyBmb3Igd2luOCs/Cj4KPiBPbiBUdWUsIEphbiAxNCwgMjAyMCBhdCAx
MTo0MyBBTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+
ID4KPiA+ID4gSW4gd2luZG93cyBzZXJ2ZXIgMjAxMiwgdGhlIGZvbGxvdyBsaW5lICIgc3RhdHVz
ID0gX3BmbkVzY2FwZSgmZXNjYXBlRGF0YSk7ICIKPiA+ID4gYWx3YXlzIGNhdXNlIGVycm9yLAo+
ID4gPiBzdGF0dXMgaXM6IDB4YzAwMDAwMGQsIGVycm9yIG1lc3NhZ2UgaXM6ICJJTkZPOjoyMDIw
LTAxLTE0Cj4gPiA+IDE2OjU4OjIzLDM4Nzo6V0RETUludGVyZmFjZTo6ZXNjYXBlOjp0aGlzIHNo
b3VsZCBuZXZlciBoYXBwZW4uIFN0YXR1cyBpcwo+ID4gPiAweGMwMDAwMDBkIgo+ID4gPiA9PT09
PT09PT09PT09PT09PT09PT09PT09PQo+ID4gPiBib29sIFdERE1JbnRlcmZhY2U6OmVzY2FwZShM
UENUU1RSIGRldmljZV9uYW1lLCB2b2lkKiBkYXRhLCBVSU5UIHNpemVfZGF0YSkgewo+ID4gPiAu
Li4uLi4uCj4gPgo+ID4gPiBzdGF0dXMgPSBfcGZuRXNjYXBlKCZlc2NhcGVEYXRhKTsKPiA+Cj4g
PiA+IGlmICghTlRfU1VDQ0VTUyhzdGF0dXMpKSB7Cj4gPiA+IHZkX3ByaW50ZigidGhpcyBzaG91
bGQgbmV2ZXIgaGFwcGVuLiBTdGF0dXMgaXMgMHglbHgiLCBzdGF0dXMpOwo+ID4gPiB9Owo+ID4K
PiA+ID4gfQo+ID4gPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+ID4gaXMgdGhp
cyBhIGJ1ZyA/Cj4gPgo+ID4gQ29kZSBpcyBTVEFUVVNfSU5WQUxJRF9QQVJBTUVURVIuCj4gPiBJ
IGRvbid0IHNlZSBhbnkgcmVhc29uIChiZXNpZGUgZnJvbSBkZXZpY2VfbmFtZSkgZm9yIHRoaXMg
cmVzdWx0IGJ1dAo+ID4gbG9va3MgbGlrZSBhIGJ1ZyBpbmRlZWQuCj4gPgo+ID4gRnJlZGlhbm8K
PiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
ID4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVsCg==
