Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7648D898A0
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 10:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48606E4A5;
	Mon, 12 Aug 2019 08:21:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950006E4A5
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 08:21:37 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id q20so2952182otl.0
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 01:21:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0x38OCMKAFEl1RhBoqtiL48uWc0yqbCVi4+h1g5pYVk=;
 b=ezXGh3CINL/VG/BhccR3qcxkG5hX9ksBnqbE2P/XVc002rdcudDNhCZs9uB8XQTUw2
 3B5IE2+TCrSPoTdND8Jh1b6keTADRiIlO2iJ2xsPKQjWSybd6BXNwgxBvTYylvNVgvZA
 zJCVkVIc4kyUDQT/griHtQg7oma1M1tEuKTJbP4eAbPIVsGkUA/aCIyIymDvAQVGiWBX
 jK0GZi4tELTenkRF2qmiNE1NkOK73goggWscf/topc/FkX2/6CXx2MjwUHWW2Px27JvO
 QlYhqxybq/aE0gs7JGoRwAyiKITtTFUa/EmyajAbdZI5ecSxM8tlPhisGYdl6/zoQndl
 VSKA==
X-Gm-Message-State: APjAAAWW6n+QyIEs5V554B6GPGuwEvX0XnnNznCDqEOVbDNB9GkzyIpt
 kq/75wzSO72OCq/cpgtBEeyeFCFoAmrg8ioKNWYQGA==
X-Google-Smtp-Source: APXvYqxnnOZJExSLQRRllanTgjCRNEb98RqZtyJhUYSkPN05Vz0/eb+wVO01p6xgrM055Qo92tDwg9FDzYpSAwvCAx8=
X-Received: by 2002:a9d:6517:: with SMTP id i23mr26794706otl.134.1565598096588; 
 Mon, 12 Aug 2019 01:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190806153453.20616-1-kpouget@redhat.com>
 <20190806153453.20616-8-kpouget@redhat.com>
 <2081791382.5487598.1565595800627.JavaMail.zimbra@redhat.com>
In-Reply-To: <2081791382.5487598.1565595800627.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 12 Aug 2019 10:21:25 +0200
Message-ID: <CADJ1XR2HWa5O6CHaRA+qNJYBQDhmqJbPcR2OdSOT6J4g7=_e0g@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [RFC spice-streaming-agent 4/4] concrete-agent:
 prioritize requested codec for plugin selection
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgOTo0MyBBTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBUaGlzIHBhdGNoIGdpdmVzIG1vcmUgcHJpb3Jp
dHkgdG8gdGhlIHJlcXVlc3RlZCB2aWRlbyBjb2RlY3Mgd2hlbgo+ID4gc2VsZWN0aW5nIHRoZSBG
cmFtZUNhcHR1cmUgcGx1Z2luLCBpbnN0ZWFkIG9mIGl0cyBoYXJkLWNvZGVkIHJhbmsuCj4gPgo+
ID4gVGhlIGNsaWVudF9jb2RlY3Mgc3RvcmFnZSBzdHJ1Y3R1cmUgaXMgY2hhbmdlZCBmcm9tICdz
ZXQnIHRvICd2ZWN0b3InLAo+ID4gYXMgdGhlIGNvZGVjIG9yZGVyIGlzIG5vdCBwcmVzZXJ2ZWQg
YnkgdGhlIHNldCBzdHJ1Y3R1cmUuLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEtldmluIFBvdWdl
dCA8a3BvdWdldEByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgc3JjL2NvbmNyZXRlLWFnZW50LmNw
cCAgICAgICAgfCAzOCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIHNy
Yy9jb25jcmV0ZS1hZ2VudC5ocHAgICAgICAgIHwgIDIgKy0KPiA+ICBzcmMvc3BpY2Utc3RyZWFt
aW5nLWFnZW50LmNwcCB8ICAyICstCj4gPiAgc3JjL3N0cmVhbS1wb3J0LmNwcCAgICAgICAgICAg
fCAgMiArLQo+ID4gIHNyYy9zdHJlYW0tcG9ydC5ocHAgICAgICAgICAgIHwgIDQgKystLQo+ID4g
IDUgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL3NyYy9jb25jcmV0ZS1hZ2VudC5jcHAgYi9zcmMvY29uY3JldGUtYWdl
bnQuY3BwCj4gPiBpbmRleCAzMzZiZDA5Li42ODNmYTI2IDEwMDY0NAo+ID4gLS0tIGEvc3JjL2Nv
bmNyZXRlLWFnZW50LmNwcAo+ID4gKysrIGIvc3JjL2NvbmNyZXRlLWFnZW50LmNwcAo+ID4gQEAg
LTExMSw3ICsxMTEsNyBAQCB2b2lkIENvbmNyZXRlQWdlbnQ6OkxvYWRQbHVnaW4oY29uc3Qgc3Rk
OjpzdHJpbmcKPiA+ICZwbHVnaW5fZmlsZW5hbWUpCj4gPiAgICAgIH0KPiA+ICB9Cj4gPgo+ID4g
LUZyYW1lQ2FwdHVyZSAqQ29uY3JldGVBZ2VudDo6R2V0QmVzdEZyYW1lQ2FwdHVyZShjb25zdAo+
ID4gc3RkOjpzZXQ8U3BpY2VWaWRlb0NvZGVjVHlwZT4mIGNvZGVjcykKPiA+ICtGcmFtZUNhcHR1
cmUgKkNvbmNyZXRlQWdlbnQ6OkdldEJlc3RGcmFtZUNhcHR1cmUoY29uc3QKPiA+IHN0ZDo6dmVj
dG9yPFNwaWNlVmlkZW9Db2RlY1R5cGU+JiBjb2RlY3MpCj4gPiAgewo+ID4gICAgICBzdGQ6OnZl
Y3RvcjxzdGQ6OnBhaXI8dW5zaWduZWQsIHN0ZDo6c2hhcmVkX3B0cjxQbHVnaW4+Pj4KPiA+ICAg
ICAgc29ydGVkX3BsdWdpbnM7Cj4gPgo+ID4gQEAgLTEyMSwyNCArMTIxLDI0IEBAIEZyYW1lQ2Fw
dHVyZSAqQ29uY3JldGVBZ2VudDo6R2V0QmVzdEZyYW1lQ2FwdHVyZShjb25zdAo+ID4gc3RkOjpz
ZXQ8U3BpY2VWaWRlb0NvZGVjVAo+ID4gICAgICB9Cj4gPiAgICAgIHNvcnQoc29ydGVkX3BsdWdp
bnMucmJlZ2luKCksIHNvcnRlZF9wbHVnaW5zLnJlbmQoKSk7Cj4gPgo+ID4gLSAgICAvLyByZXR1
cm4gZmlyc3Qgbm90IG51bGwKPiA+IC0gICAgZm9yIChjb25zdCBhdXRvJiBwbHVnaW46IHNvcnRl
ZF9wbHVnaW5zKSB7Cj4gPiAtICAgICAgICBpZiAocGx1Z2luLmZpcnN0ID09IERvbnRVc2UpIHsK
PiA+IC0gICAgICAgICAgICBicmVhazsKPiA+IC0gICAgICAgIH0KPiA+IC0gICAgICAgIC8vIGNo
ZWNrIGNsaWVudCBzdXBwb3J0cyB0aGUgY29kZWMKPiA+IC0gICAgICAgIGlmIChjb2RlY3MuZmlu
ZChwbHVnaW4uc2Vjb25kLT5WaWRlb0NvZGVjVHlwZSgpKSA9PSBjb2RlY3MuZW5kKCkpCj4gPiAt
ICAgICAgICAgICAgY29udGludWU7Cj4gPiAtCj4gPiAtICAgICAgICBGcmFtZUNhcHR1cmUgKmNh
cHR1cmU7Cj4gPiAtICAgICAgICB0cnkgewo+ID4gLSAgICAgICAgICAgIGNhcHR1cmUgPSBwbHVn
aW4uc2Vjb25kLT5DcmVhdGVDYXB0dXJlKCk7Cj4gPiAtICAgICAgICB9IGNhdGNoIChjb25zdCBz
dGQ6OmV4Y2VwdGlvbiAmZXJyKSB7Cj4gPiAtICAgICAgICAgICAgc3lzbG9nKExPR19FUlIsICJF
cnJvciBjcmVhdGluZyBjYXB0dXJlIGVuZ2luZTogJXMiLAo+ID4gZXJyLndoYXQoKSk7Cj4gPiAt
ICAgICAgICAgICAgY29udGludWU7Cj4gPiAtICAgICAgICB9Cj4gPiAtICAgICAgICBpZiAoY2Fw
dHVyZSkgewo+ID4gLSAgICAgICAgICAgIHJldHVybiBjYXB0dXJlOwo+ID4gKyAgICBmb3IgKGNv
bnN0IGF1dG8mIGNvZGVjX3R5cGU6IGNvZGVjcykgewo+ID4gKyAgICAgICAgLy8gZmluZCB0aGUg
cGx1Z2luIHdpdGggdGhlIGhpZ2hlc3QgcmFuayBmb3IgdGhpcyBjb2RlYyB0eXBlCj4gPiArICAg
ICAgICBmb3IgKGNvbnN0IGF1dG8mIHBsdWdpbjogc29ydGVkX3BsdWdpbnMpIHsKPiA+ICsgICAg
ICAgICAgICBpZiAocGx1Z2luLmZpcnN0ID09IERvbnRVc2UpIHsKPiA+ICsgICAgICAgICAgICAg
ICAgY29udGludWU7Cj4gPiArICAgICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAgICAgIC8v
IGNoZWNrIGNsaWVudCBzdXBwb3J0cyB0aGUgY29kZWMKPiA+ICsgICAgICAgICAgICBpZiAocGx1
Z2luLnNlY29uZC0+VmlkZW9Db2RlY1R5cGUoKSAhPSBjb2RlY190eXBlKSB7Cj4gPiArICAgICAg
ICAgICAgICAgIGNvbnRpbnVlOwo+ID4gKyAgICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAg
ICAgICB0cnkgewo+ID4gKyAgICAgICAgICAgICAgICByZXR1cm4gcGx1Z2luLnNlY29uZC0+Q3Jl
YXRlQ2FwdHVyZSgpOwo+ID4gKyAgICAgICAgICAgIH0gY2F0Y2ggKGNvbnN0IHN0ZDo6ZXhjZXB0
aW9uICZlcnIpIHsKPiA+ICsgICAgICAgICAgICAgICAgc3lzbG9nKExPR19FUlIsICJFcnJvciBj
cmVhdGluZyBjYXB0dXJlIGVuZ2luZTogJXMiLAo+ID4gZXJyLndoYXQoKSk7Cj4gPiArICAgICAg
ICAgICAgICAgIGNvbnRpbnVlOwo+ID4gKyAgICAgICAgICAgIH0KPiA+ICAgICAgICAgIH0KPiA+
ICAgICAgfQo+ID4gICAgICByZXR1cm4gbnVsbHB0cjsKPgo+IEkgdGhpbmsgdGhhdCBwcmV2aW91
cyBjb2RlIHdhcyBlbnRpcmVseSBpbiBmYXZvdXIgb2YgYWdlbnQgcHJlZmVyZW5jZQo+IGJ1dCB0
aGUgbmV3IG9uZSBsb29rcyB0b28gbXVjaCBpbiBmYXZvciBvZiB0aGUgY2xpZW50Lgo+IEFsc28g
YWRkaW5nIHByZWZlcmVuY2UgdG8gYSBtZXNzYWdlIG5vdCBkZXNpZ25lZCB0byBkbyBzbyBpcyBu
b3QKPiAxMDAlIGNvcnJlY3QuIEl0J3Mgbm90IGEgYmlnIGhhY2sgYnV0IHdhcyBub3QgZGVzaWdu
ZWQgdG8gZG8gc28uCj4gRm9yIGluc3RhbmNlIGlzIGltcG9zc2libGUgZm9yIHRoZSBjbGllbnQg
dG8gc3BlY2lmeSB0aGF0IDIgY29kZWNzCj4gaGF2ZSB0aGUgc2FtZSBwcmVmZXJlbmNlIG9yIGhv
dyBtdWNoIG9uZSBzaG91bGQgYmUgZmF2b3VyaXRlIGluc3RlYWQKPiBvZiB0aGUgb3RoZXIuCgpt
eSBpZGVhIHdhcyB0byBkZWxlZ2F0ZSB0aGUgY29kZWMgY2hvaWNlIHRvIHRoZSBzZXJ2ZXIgKGl0
J3MgdGhlCnNlcnZlciB3aG8gc2VuZHMgdGhlIGNvZGVjIGxpc3QgcmVjZWl2ZWQgYnkgdGhlIGFn
ZW50KSwgc28gdGhhdCBhKSB0aGUKY2xpZW50IGdpdmVzIGl0cyBwcmVmZXJlbmNlLCBtYXliZSB3
aXRoIGEgd2VpZ2h0LCBiKSB0aGUgYWdlbnQgZ2l2ZXMKaXRzIGNhcGFiaWxpdGllcywgbWF5YmUg
d2l0aCBhIHdlaWdodCwgYykgdGhlIGFkbWluIG9yIGEgcXVhbGl0eQphZGp1c3RtZW50IHBsdWdp
biBnaXZlcyBpdCdzIHByZWZlcmVuY2UsIGFuZCB0aGUgYWdlbnQgZXhlY3V0ZXMKd2l0aG91dCBh
bnkgcmUtY29tcHV0YXRpb24KCj4gSSB3b3VsZCBnZW5lcmF0ZSBhIHJhbmsgdGhhdCB0YWtlIGlu
IGFjY291bnQgYm90aCBhZ2VudCBhbmQgY2xpZW50Cj4gcHJlZmVyZW5jZSBhbmQgdXNlIHRoZSBz
b3J0ZWRfcGx1Z2lucyBhcyB3YXMgdXNlZCBiZWZvcmUgaW5zdGVhZAo+IG9mIHRha2luZyBhbiBh
bHJlYWR5IHNvcnRlZCBhcnJheSBhbmQgaWdub3JpbmcgbW9zdCBvZiB0aGUgc29ydGluZwo+IGFu
ZCByYW5raW5nLgo+Cj4gTWF5YmUgbm9ybWFsaXplIHJhbmsgZm9yIGFnZW50IGFuZCBjbGllbnQg
dG8gYSAwLTI1NSByYW5nZSBhbmQKPiBjb21wdXRlOgo+Cj4gICB0b3RhbF9yYW5rID0gYWdlbnRf
cmFuayAqIDE2ICsgY2xpZW50X3Jhbms7Cj4KPiA/PyB0aGlzIHdpbGwgZmF2b3VyIHRoZSBhZ2Vu
dCBidXQgc3RpbGwgZ2l2ZSB0aGUgcG9zc2liaWxpdHkKPiBmb3IgdGhlIGNsaWVudCB0byBvdmVy
cmlkZSBhIGJpdC4KCmlmIGdvaW5nIHRoaXMgd2F5LCBJIHdvdWxkIHJhdGhlciBzYXkgc29tZXRo
aW5nIGxpa2UgdGhpczoKCj4gYWdlbnQgcmFuayBiZXR3ZWVuIDAgYW5kIDEyNwo+IHNlcnZlciBy
YW5rIGJldHdlZW4gMCBhbmQgMjU1Cgo+IGRvbid0IHVzZSBwbHVnaW4gaWYgKGFnZW50K3NlcnZl
cikgPCAxMjgKCj4gc2VydmVyIGRvZXNuJ3Qgd2FudCB0aGUgcGx1Z2luOiByYW5rIDAgLS0+IGRv
bid0IHVzZQo+IGFnZW50IGRvZXNuJ3QgbGlrZSB0aGUgY29kZWM6IHJhbmsgMCwgcGx1Z2luIGxp
a2VzIGl0IC0tPiByYW5rIDEyNwo+IGFnZW50IGxpa2VzIHRoZSBjb2RlYzogcmFuayAxMjcsIHNl
cnZlciBkb2Vzbid0IGxpa2U6IHJhbmsgMSAtLT4gcmFuayAxMjgKPiBhZ2VudCBsaWtlcyB0aGUg
Y29kZWM6IHJhbmsgMTI3LCBzZXJ2ZXIgbGlrZXMgaXQgLS0+IHJhbmsgMzgyCgp0aGlzIGdpdmVz
IG1vcmUgdmFsdWUgdG8gdGhlIGR5bmFtaWMgdmFsdWUgKGNvbWluZyBmcm9tIHRoZSBzZXJ2ZXIp
Cmluc3RlYWQgb2YgdGhlIGhhcmRjb2RlZCBvbmUgKGNvbWluZyBmcm9tIHRoZSBwbHVnaW4pCgph
bmQgb25lIHRoaW5nIHdlIG11c3Qga2VlcCBpbiBtaW5kLCBpdCdzIHRoYXQgaW4gdGhlIG5lYXIg
ZnV0dXJlLCB3ZQp3b3VsZCBsaWtlIHRvIGJlIGFibGUgYSkgdG8gY2hhbmdlIHRoZSBlbmNvZGlu
ZyBwYXJhbWV0ZXJzIGIpIHBvc3NpYmx5CnRvIGNoYW5nZSB0aGUgZW5jb2RlciBmb3IgYSBnaXZl
biBjb2RlYyAoZWcsIHRvIHN3aXRjaCBiZXR3ZWVuIFNXIGFuZApIVyBlbmNvZGluZykKCj4gVGhl
IGNsaWVudF9yYW5rIHNob3VsZCBjb21lIGZyb20gYSBzaW1pbGFyIHN0YXJ0L3N0b3AgbWVzc2Fn
ZSB3aXRoCj4gYWRkZWQgcmFuay4KPgo+ID4gZGlmZiAtLWdpdCBhL3NyYy9jb25jcmV0ZS1hZ2Vu
dC5ocHAgYi9zcmMvY29uY3JldGUtYWdlbnQuaHBwCj4gPiBpbmRleCA2ZDFiZTM1Li4wMzk5YmFi
IDEwMDY0NAo+ID4gLS0tIGEvc3JjL2NvbmNyZXRlLWFnZW50LmhwcAo+ID4gKysrIGIvc3JjL2Nv
bmNyZXRlLWFnZW50LmhwcAo+ID4gQEAgLTMzLDcgKzMzLDcgQEAgcHVibGljOgo+ID4gICAgICB2
b2lkIFJlZ2lzdGVyKGNvbnN0IHN0ZDo6c2hhcmVkX3B0cjxQbHVnaW4+JiBwbHVnaW4pIG92ZXJy
aWRlOwo+ID4gICAgICBjb25zdCBDb25maWd1cmVPcHRpb24qIE9wdGlvbnMoKSBjb25zdCBvdmVy
cmlkZTsKPiA+ICAgICAgdm9pZCBMb2FkUGx1Z2lucyhjb25zdCBzdGQ6OnN0cmluZyAmZGlyZWN0
b3J5KTsKPiA+IC0gICAgRnJhbWVDYXB0dXJlICpHZXRCZXN0RnJhbWVDYXB0dXJlKGNvbnN0IHN0
ZDo6c2V0PFNwaWNlVmlkZW9Db2RlY1R5cGU+Jgo+ID4gY29kZWNzKTsKPiA+ICsgICAgRnJhbWVD
YXB0dXJlICpHZXRCZXN0RnJhbWVDYXB0dXJlKGNvbnN0Cj4gPiBzdGQ6OnZlY3RvcjxTcGljZVZp
ZGVvQ29kZWNUeXBlPiYgY29kZWNzKTsKPiA+ICAgICAgX19hdHRyaWJ1dGVfXyAoKGZvcm1hdCAo
cHJpbnRmLCAyLCAzKSkpCj4gPiAgICAgIHZvaWQgTG9nU3RhdChjb25zdCBjaGFyKiBmb3JtYXQs
IC4uLikgb3ZlcnJpZGU7Cj4gPiAgcHJpdmF0ZToKPiA+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Ut
c3RyZWFtaW5nLWFnZW50LmNwcCBiL3NyYy9zcGljZS1zdHJlYW1pbmctYWdlbnQuY3BwCj4gPiBp
bmRleCBkMjc0YjVmLi4xNWMyNzMyIDEwMDY0NAo+ID4gLS0tIGEvc3JjL3NwaWNlLXN0cmVhbWlu
Zy1hZ2VudC5jcHAKPiA+ICsrKyBiL3NyYy9zcGljZS1zdHJlYW1pbmctYWdlbnQuY3BwCj4gPiBA
QCAtMTI4LDcgKzEyOCw3IEBAIHByaXZhdGU6Cj4gPiAgc3RhdGljIGJvb2wgY2FwdHVyZV9pbl9w
cm9ncmVzcyA9IGZhbHNlOwo+ID4gIHN0YXRpYyBib29sIHJlc2V0X3JlcXVlc3RlZCA9IGZhbHNl
Owo+ID4gIHN0YXRpYyBib29sIHF1aXRfcmVxdWVzdGVkID0gZmFsc2U7Cj4gPiAtc3RhdGljIHN0
ZDo6c2V0PFNwaWNlVmlkZW9Db2RlY1R5cGU+IGNsaWVudF9jb2RlY3M7Cj4gPiArc3RhdGljIHN0
ZDo6dmVjdG9yPFNwaWNlVmlkZW9Db2RlY1R5cGU+IGNsaWVudF9jb2RlY3M7Cj4gPgo+ID4gIHN0
YXRpYyBib29sIGhhdmVfc29tZXRoaW5nX3RvX3JlYWQoU3RyZWFtUG9ydCAmc3RyZWFtX3BvcnQs
IGJvb2wgYmxvY2tpbmcpCj4gPiAgewo+ID4gZGlmZiAtLWdpdCBhL3NyYy9zdHJlYW0tcG9ydC5j
cHAgYi9zcmMvc3RyZWFtLXBvcnQuY3BwCj4gPiBpbmRleCAyNjcwMTIwLi4wZDA4ZDUwIDEwMDY0
NAo+ID4gLS0tIGEvc3JjL3N0cmVhbS1wb3J0LmNwcAo+ID4gKysrIGIvc3JjL3N0cmVhbS1wb3J0
LmNwcAo+ID4gQEAgLTQzLDcgKzQzLDcgQEAgU3RhcnRTdG9wTWVzc2FnZQo+ID4gSW5ib3VuZE1l
c3NhZ2U6OmdldF9wYXlsb2FkPFN0YXJ0U3RvcE1lc3NhZ2U+KCkKPiA+ICAgICAgfQo+ID4KPiA+
ICAgICAgZm9yIChzaXplX3QgaSA9IDE7IGkgPD0gZGF0YVswXTsgKytpKSB7Cj4gPiAtICAgICAg
ICBtc2cuY2xpZW50X2NvZGVjcy5pbnNlcnQoKFNwaWNlVmlkZW9Db2RlY1R5cGUpIGRhdGFbaV0p
Owo+ID4gKyAgICAgICAgbXNnLmNsaWVudF9jb2RlY3MucHVzaF9iYWNrKChTcGljZVZpZGVvQ29k
ZWNUeXBlKSBkYXRhW2ldKTsKPiA+ICAgICAgfQo+ID4KPiA+ICAgICAgcmV0dXJuIG1zZzsKPiA+
IGRpZmYgLS1naXQgYS9zcmMvc3RyZWFtLXBvcnQuaHBwIGIvc3JjL3N0cmVhbS1wb3J0LmhwcAo+
ID4gaW5kZXggMDg0NzNmNy4uYjJmNzUyMCAxMDA2NDQKPiA+IC0tLSBhL3NyYy9zdHJlYW0tcG9y
dC5ocHAKPiA+ICsrKyBiL3NyYy9zdHJlYW0tcG9ydC5ocHAKPiA+IEBAIC0xNiw3ICsxNiw3IEBA
Cj4gPiAgI2luY2x1ZGUgPHN0cmluZz4KPiA+ICAjaW5jbHVkZSA8bWVtb3J5Pgo+ID4gICNpbmNs
dWRlIDxtdXRleD4KPiA+IC0jaW5jbHVkZSA8c2V0Pgo+ID4gKyNpbmNsdWRlIDx2ZWN0b3I+Cj4g
Pgo+ID4KPiA+ICBuYW1lc3BhY2Ugc3BpY2Ugewo+ID4gQEAgLTQ1LDcgKzQ1LDcgQEAgcHVibGlj
Ogo+ID4gIHN0cnVjdCBTdGFydFN0b3BNZXNzYWdlCj4gPiAgewo+ID4gICAgICBib29sIHN0YXJ0
X3N0cmVhbWluZyA9IGZhbHNlOwo+ID4gLSAgICBzdGQ6OnNldDxTcGljZVZpZGVvQ29kZWNUeXBl
PiBjbGllbnRfY29kZWNzOwo+ID4gKyAgICBzdGQ6OnZlY3RvcjxTcGljZVZpZGVvQ29kZWNUeXBl
PiBjbGllbnRfY29kZWNzOwo+ID4gIH07Cj4gPgo+ID4gIHN0cnVjdCBJbkNhcGFiaWxpdGllc01l
c3NhZ2Uge307Cj4KPiBGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
