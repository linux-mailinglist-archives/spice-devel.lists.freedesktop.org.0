Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E00A1569
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 12:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BF56E093;
	Thu, 29 Aug 2019 10:07:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8486E093
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 10:07:37 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id k2so1635559wmj.4
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 03:07:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=cV0q/2qqRgTQa8J+l3T0/hRUl0ehgpSSab76V10YKi8=;
 b=FAndk1yeP26HDaRCv+Zu8U3aPvXQFj9DIV419HUIZBCa+wsOybF7mP0oCPRLA+3adq
 C8CbhatwmBvPMbIGEP+MewUW/HcGUtEG1VbTO1T2HARlm7Pm6XGDQ/TvA5ARVIeLEJxT
 cr8GE1JgBGNyNKipgA5SWISTaFb/efdwKFPmy/DUb34cTSpGUtj+fQiA8CJn5wrFXfr6
 h3d3pTNnYDRxO8IGPjikLBqrIVYbaNbsk3nnXAmNaaPPWAru/o0LOrTAYW+WW+5b9IJ7
 Uw05kv9m/BFS0PGxNWwXAyk+f+3jQHnt/HkuXaYBI+UZFD6NrZGDnXjMHsBjGHJchZMs
 Jh/A==
X-Gm-Message-State: APjAAAWVLqPPIMYmiNBI7wtdn0VK3Q2FjMxKHn1H/MFUeku18GL6CZ+9
 NTSTS7Jzma1OGdpMAP9eg/4u24FK
X-Google-Smtp-Source: APXvYqz0Ml9akhPby6CpW0JkxNnmH1xUkIWLPIyvgiKuTghl+1tZRa5kTGER1EgECJ0OLKfqH/UrfA==
X-Received: by 2002:a7b:c1c1:: with SMTP id a1mr3288877wmj.31.1567073255034;
 Thu, 29 Aug 2019 03:07:35 -0700 (PDT)
Received: from ptitpuce (val06-1-88-182-161-34.fbx.proxad.net. [88.182.161.34])
 by smtp.gmail.com with ESMTPSA id o17sm2168223wrx.60.2019.08.29.03.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 03:07:33 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-25-fziglio@redhat.com> <m1tva2evs4.fsf@dinechin.org>
 <711781474.9841323.1566987366292.JavaMail.zimbra@redhat.com>
 <93472670-4B4A-41ED-80F2-F155AC635E8C@dinechin.org>
 <2017793062.9844654.1566989435727.JavaMail.zimbra@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: Frediano Ziglio <fziglio@redhat.com>
In-reply-to: <2017793062.9844654.1566989435727.JavaMail.zimbra@redhat.com>
Date: Thu, 29 Aug 2019 12:07:28 +0200
Message-ID: <m1sgpke13z.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=cV0q/2qqRgTQa8J+l3T0/hRUl0ehgpSSab76V10YKi8=;
 b=EYtoTkKswUc4Mpiccav9R+0iBnS7iPK4qpYo+pvPZU4pbCfdaRs2RDQ+qzbEnIrbIx
 9IU8jMm1yMCbwpE16BNa+l0zQU3sr2Yljg6y86ClPAMVOwUkFb76/S7uTSy0gM1beuvu
 71TPvQwnuKcoQR51e3OCJIiWv6S+PLX7T/TL7J0BZFsYHcDfxSRk5PI1XyOHlKqYqZH3
 D8lGT+87R35qJmSFVBDPuMo2YWuoSrjxApAUOH0Dkr0CbyrIUJs8G53gWv7U7+fR4Fwo
 ItwxU39H949pINp0E8P6m1dRQzD3d/Cf42AbOA4xcX9tfh4Rn/1C1QIElyGxSupmDWrz
 DhsQ==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 24/29] usb-backend: Rewrite
 USB emulation support
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
Cc: spice-devel@lists.freedesktop.org,
 Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

UHJlYW1ibGU6IEFwb2xvZ2llcyBmb3Igc2NyZXdpbmcgdXAgdGhlIGZvcm1hdHRpbmcgc28gYmFk
bHkgaW4gbXkgbGFzdApyZXBseS4gVHJ5aW5nIHRvIHJlcGFpciBhIGxpdHRsZSBtYW51YWxseSBo
ZXJlLgoKRnJlZGlhbm8gWmlnbGlvIHdyaXRlczoKCj4gT24gMjggQXVnIDIwMTksIGF0IDEyOjE2
LCBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+IEkgaGF2
ZSB0aGUgZmVlbGluZyBJIGRpZG4ndCBnZXQgd2hhdCB5b3Ugd2FudGVkIHRvIHNheS4KPgo+ID4g
SSBtZWFudDogd2hhdCBpcyB0aGUgc2VwYXJhdGlvbiBvZiBjb25jZXJucyBiZXR3ZWVuCj4gPiB1
c2JyZWRpcl93cml0ZV9jYWxsYmFjayBhbmQgc3BpY2VfdXNicmVkaXJfd3JpdGVfY2FsbGJhY2s/
Cj4gQUJJLiB1c2JyZWRpcl93cml0ZV9jYWxsYmFjayBpcyBhIGNhbGxiYWNrIGZvciB1c2JyZWRp
ciBsYXllciwgc3BpY2VfdXNicmVkaXJfd3JpdGVfY2FsbGJhY2sKPiBleHBlY3RzIGEgU3BpY2VV
c2JyZWRpckNoYW5uZWwuCgpXZWxsLCB0aGlzIGlzIG5vdCByZWFsbHkgYSAic2VwYXJhdGlvbiBv
ZiBjb25jZXJucyIgZXhwbGFuYXRpb24sIG1vcmUKbGlrZSBpbmZvcm1hdGlvbiBhYm91dCBob3cg
dGhlIGltcGxlbWVudGF0aW9uIGV2b2x2ZWQuIE15IHF1ZXN0aW9uIHdhcwptb3JlIGFib3V0IHdo
YXQgcmVzcG9uc2liaWxpdHkgZWFjaCBjb21wb25lbnQgaGFkLgoKVGhhdCBkb2VzIG5vdCBpbnZh
bGlkYXRlIHlvdXIgYW5zd2VyLCB3aGljaCBJIHJlYWQgYXMgIml0J3Mgbm90CnByYWN0aWNhbCB0
byBjaGFuZ2UgdGhlIEFCSSBmb3IgdGhhdCBjaGFuZ2UiLiBCdXQgSSB0aGluayB0aGF0CnRoZSBy
ZWFsIGFuc3dlciB0byBteSBxdWVzdGlvbiBpcyBhdCB0aGUgZW5kLCBwbGVhc2UgY2hlY2sgaWYg
SQp1bmRlcnN0b29kIGNvcnJlY3RseS4KCgo+ID4gSW4gd2hhdCBjb250ZXh0IHdvdWxkIHNwaWNl
X3VzYnJlZGlyX3dyaXRlX2NhbGxiYWNrIGJlIHVzZWQKPiA+IHdoZXJlIHRoZSBuZXcgbG9naWMg
aW4gdXNicmVkaXJfd3JpdGVfY2FsbGJhY2sgaXMgbm90IG5lY2Vzc2FyeT8KPgo+IFlvdSBuZWVk
IHRvIGFkanVzdCB0byB0aGUgQUJJIG9mIHRoZSB0d28uIHNwaWNlX3VzYnJlZGlyX3dyaXRlX2Nh
bGxiYWNrIGlzIHN1cHBvc2VkCj4gdG8gd3JpdGUgdGhlIHBhY2tldCB0byB0aGUgZ3Vlc3QgKG9y
IGhhbmRsZSB0aGUgcGFja2V0IGFueXdheSkuCgpZZXMsIGJ1dCBJJ20gdHJ5aW5nIHRvIHVuZGVy
c3RhbmQgd2hhdCBoYXBwZW5zIGZvciBleGFtcGxlIGlmIHRoZXJlIGlzIGEKdmVyc2lvbiBtaXNt
YXRjaC4gV2hvIGRlYWxzIHdpdGggdGhlIEhFTExPIG1lc3NhZ2U/CgoKPiBUaGUgbmV3IGxvZ2lj
IChhZGRlZCBieSBZdXJpIHBhdGNoLCBub3QgY2hhbmdlZCBoZXJlIGJ5IHRoaXMgcGF0Y2gpIGlz
IGhlcmUgdG8gaGFuZGxlCj4gdGhlIGluaXRpYWwgSEVMTE8gcGFja2V0LgoKVHJ1ZSwgYnV0IGl0
J3Mgd2hpbGUgcmV2aWV3aW5nIHlvdXIgcGF0Y2ggdGhhdCBJIG5vdGljZWQgYWxsIHRoZSBhZGRl
ZApsb2dpYyBhbmQgdHJpZWQgdG8gdW5kZXJzdGFuZCB3aGVyZSB0aGlzIHdhcyBnb2luZywgaGVu
Y2UgbXkgcXVlc3Rpb25zCjstKQoKCj4gPiBJZiB0aGUgd2F5IHlvdSBvcmdhbml6ZWQgdGhlIGNv
ZGUgaXMgc29tZWhvdyBiZXR0ZXIsIGdpdmVuIHRoYXQKPiA+IHVzYnJlZGlyX3dyaXRlX2NhbGxi
YWNrIGlzIG5vIGxvbmdlciBhIHNpbXBsZSB3cmFwcGVyLCBpdCBtYXkKPiA+IGluZGljYXRlIHRo
YXQgYWRkaXRpb25hbCBjb21tZW50cyBhcmUgcmVxdWlyZWQgdG8gZXhwbGFpbiB3aGF0Cj4gPiBl
YWNoIGRvZXMuIE9yIG1heWJlIGl0J3MgcGVyZmVjdGx5IGNsZWFyIHRvIGV2ZXJ5b25lIGJ1dCBt
ZSA7LSkKCj4gSSBzdXBwb3NlIHRoZSAiaGFuZGxlIGZpcnN0IHBhY2tldCAoSEVMTE8pIGNyZWF0
aW5nIHBhcnNlciBmcm9tIGNhcGFiaWxpdGllcyIKPiBpcyBub3QgZW5vdWdoLiBXb3VsZDoKPgo+
ICAgICAvLyBIYW5kbGUgZmlyc3QgcGFja2V0IChIRUxMTykgY3JlYXRpbmcgcGFyc2VyIGZyb20g
Y2FwYWJpbGl0aWVzLgo+ICAgICAvLyBJZiB3ZSBhcmUgaW5pdGlhbGl6aW5nIGFuZCB3ZSBkb24n
dCBoYXZlIHRoZSBwYXJzZXIgd2UgZ2V0IHRoZQo+ICAgICAvLyBjYXBhYmlsaXRpZXMgZnJvbSB0
aGUgdXNicmVkaXJob3N0IGFuZCB1c2UgdGhlbSB0byBpbml0aWFsaXplCj4gICAgIC8vIHRoZSBw
YXJzZXIuCj4KPiBiZSBiZXR0ZXI/CgpJdCdzIHNsaWdodGx5IGJldHRlciwgYnV0IEkgd2FzIG1v
cmUgdGhpbmtpbmcgYWJvdXQgYWRkaW5nIChsYXRlcikgYQpjb21tZW50IHRvIHNwaWNlX3VzYnJl
ZGlyX3dyaXRlX2NhbGxiYWNrLCBpbiBvcmRlciB0byBpbmRpY2F0ZSB0aGF0IGl0CmRvZXMgTk9U
IGRlYWwgd2l0aCB0aGUgSEVMTE8gcGFja2V0LCBpLmUuIHRoYXQgdGhlIGRhdGEgcHJvY2Vzc2lu
ZyBsb2dpYwppcyBzcGxpdCBiZXR3ZWVuIHRoZSB0d28gbGF5ZXJzLgoKCj4gPiBIbW1tLiBUaGF0
IHRlbmRzIHRvIGNvbmZpcm0gdGhlIGltcHJlc3Npb24gYWJvdmUgdGhhdCBzb21lCj4gPiBib3Vu
ZGFyeSBpcyBzdWJ0bHkgbW92aW5nIGJldHdlZW4gdGhlIGNvbXBvbmVudHMuIEJ1dCBJJ20gbm90
Cj4gPiByZWFsbHkgZmFtaWxpYXIgZW5vdWdoIHdpdGggdXNicmVkaXIgdG8gdW5kZXJzdGFuZCB0
aGUgaW50ZW50IGp1c3QgZnJvbQo+ID4gdGhlIHBhdGNoZXMgOy0pCgo+IE1haW5seSBiZWZvcmUg
dGhlIGZsb3cgd2FzIGEgc2luZ2xlIG9uZSAoZ3Vlc3QgPC0+IHVzYnJlZGlyaG9zdCksIG5vdyBk
YXRhIGNhbiBmbG93Cj4gdG8vZnJvbSB0aGUgInBhcnNlciIgdG8gc3VwcG9ydCBlbXVsYXRlZCBk
ZXZpY2VzLgoKSSB0aGluayB0aGF0IGl0J3MgInRvIHN1cHBvcnQgZW11bGF0ZWQgZGV2aWNlcyIg
dGhhdCBpcyByZWFsbHkgaW1wb3J0YW50CmhlcmUuIEluIHRlcm1zIG9mIHNlcGFyYXRpb24gb2Yg
Y29uY2VybnMsIHRoYXQgd291bGQgbWVhbiB0aGF0IHRoZQpsaWJyYXJ5IGRvZXMgbm90IGNhcmUg
YWJvdXQgdGhhdCwgYW5kIHRoYXQgb25seSB0aGUgR1RLIGNsaWVudCBwcm92aWRlcyB0aGUKbG9n
aWMgZm9yIGVtdWxhdGluZyBkZXZpY2VzLiBJcyB0aGF0IGEgZ29vZCB3YXkgdG8gZGVzY3JpYmUg
aXQ/CgpXb3VsZCBhbm90aGVyIHRoZW9yZXRpY2FsIGNsaWVudCB1c2luZyB0aGUgbGlicmFyeSBu
ZXZlciBydW4gaW50byB0aGUKY2FzZSBiZWNhdXNlIGl0IHdvdWxkIG5vdCBleHBvc2UgdGhlIGNh
cGFiaWxpdGllcz8gT3IgaXMgaXQganVzdCBhIGNhc2UKdGhhdCBub2JvZHkgY2FyZXMgYWJvdXQ/
CgooQWxzbywgdG8gYmUgY2xlYXIsIEkgZG9uJ3QgdGhpbmsgdGhpcyBpbnZhbGlkYXRlcyB0aGUg
cGF0Y2ggYXQgYWxsLCBJJ20KcmVhbGx5IGFza2luZyBxdWVzdGlvbnMgdG8gbWFrZSBzdXJlIEkg
dW5kZXJzdGFuZCB0aGUgbG9naWMgYW5kIHRoYXQgdGhlCndheSB0aGUgY29kZSBpcyBvcmdhbml6
ZWQgaXMgZnVsbHkgaW50ZW50aW9uYWwpLgoKLS0KQ2hlZXJzLApDaHJpc3RvcGhlIGRlIERpbmVj
aGluIChJUkMgYzNkKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
