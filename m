Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8615F212086
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 12:02:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4236E147;
	Thu,  2 Jul 2020 10:02:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E576E147
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 10:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593684164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U0h9RsoCpcl4EKp8RAHfXvvgdCmWheXhic1wvRQ52uI=;
 b=ZrMGgHQn3cWSqOGjeSGofGbrWUaaZlkreqe7Hm1GL5TWLjZrrfd0zhfqE6DL+OZaCyI3v3
 FEJIxnZXD1sjDFS/WfIqLGCOa2KhpTU5L+YueHJeD2m6w6w00bU6yWVihtItZiozAIetjJ
 wonyQhGwl0iBMCxaoQA42chwymd/CWo=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-VVnmvmKoMaS2vuIEYtFBIg-1; Thu, 02 Jul 2020 06:02:41 -0400
X-MC-Unique: VVnmvmKoMaS2vuIEYtFBIg-1
Received: by mail-oi1-f200.google.com with SMTP id a12so6691814oia.23
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Jul 2020 03:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=U0h9RsoCpcl4EKp8RAHfXvvgdCmWheXhic1wvRQ52uI=;
 b=E2BOtNVA8tydSHQRMcYme1hF7UVpGcMNfy/H2ltYqprMM2xEGmfcZmx5jOX2bLDZSI
 eL8zsby+JwTnw5FijuqoUSB8HXd5NbKV1sdxy4RyYZv4yof8VBJn84fxO1T0p5HUhXYy
 qKxV82+VwVFvkcacwG/J/WRInEl4EyJ45eAsrx7K+XPgu1sCOj9v77W5yHQBQVBhkmIO
 q+z2EI/TyAQDoCTseCae7zZBx3krkKc1dXZepCL5JX0vPg6ibq6KGyLtOB+5DsRId6NS
 P0t5wB4G8wvV3JFVN0lUdEIOM9fcw1y0x4cLJh/uvCGGI4dFNbiY11OwEphrMftHdi6W
 t+Lw==
X-Gm-Message-State: AOAM531P6dg1ytyfQgy02vro/P+9nHvNigo39z7yh0Hb603J8/YOHka0
 Ihhztk7Lw+AGMRmFQKHy+AYvsQYNLqFVjIWQxxEYDjmKkiSTqqAEiLcewh9mboY4Io09R1WCsVs
 GaV633KJHbD8Gmrbh6J5FLMbNFOt9ts00aCi3PlF2GI38+lY=
X-Received: by 2002:aca:bed5:: with SMTP id o204mr1793107oif.169.1593684160831; 
 Thu, 02 Jul 2020 03:02:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyauVBiCItK9XEojcNpD0Cvhe9aKPClnemrUcJhJdD03gok75/T6YRe0t/4fmw8WsnbF5EJ/SVT9dYzuJXVEKg=
X-Received: by 2002:aca:bed5:: with SMTP id o204mr1793086oif.169.1593684160519; 
 Thu, 02 Jul 2020 03:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
 <20200701180502.GE21462@kitsune.suse.cz>
In-Reply-To: <20200701180502.GE21462@kitsune.suse.cz>
From: Kevin Pouget <kpouget@redhat.com>
Date: Thu, 2 Jul 2020 12:02:29 +0200
Message-ID: <CADJ1XR2acVRoMx_z0nUGmBGdv75t+iAWX=gBbXsVD4LPGdve7Q@mail.gmail.com>
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kpouget@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Identifying and removing potentially divisive
 language
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGVsbG8gTWljaGFsLAoKT24gV2VkLCBKdWwgMSwgMjAyMCBhdCA4OjIzIFBNIE1pY2hhbCBTdWNo
w6FuZWsgPG1zdWNoYW5la0BzdXNlLmRlPiB3cm90ZToKPgo+IE9uIFdlZCwgSnVsIDAxLCAyMDIw
IGF0IDEwOjAzOjEwQU0gKzAyMDAsIEtldmluIFBvdWdldCB3cm90ZToKPiA+IEhlbGxvIFNQSUNF
IGNvbW11bml0eSwKPiA+Cj4gPiBmb2xsb3dpbmcgQ2hyaXMgV3JpZ2h0IChSZWQgSGF0IENUTykg
YmxvZyBwb3N0IG9uICJNYWtpbmcgb3BlbiBzb3VyY2UKPiA+IG1vcmUgaW5jbHVzaXZlIGJ5IGVy
YWRpY2F0aW5nIHByb2JsZW1hdGljIGxhbmd1YWdlIiBbMV0sIEkgd291bGQgbGlrZQo+ID4gdG8g
c3VnZ2VzdCB0aGF0IHdlIGhhdmUgYSBsb29rIGF0IFNQSUNFIHNvdXJjZSBjb2RlIHRvIGZpbmQg
b3V0IGlmL3doZXJlCj4gPiBzdWNoIGxhbmd1YWdlIGlzIHVzZWQgYW5kIGhvdyB0byByZW1vdmUg
aXQuCj4gPgo+ID4gVG8gaWxsdXN0cmF0ZSB0aGUgbW90aXZhdGlvbnMgb2YgdGhpcyBtb3ZlLCBj
b25zaWRlciB0aGUgcGhyYXNlICJ0aGUKPiA+IGZpbmFsIHNvbHV0aW9uIi4gSSBhbSBxdWl0ZSBz
dXJlIHlvdSB3b3VsZCBhZ3JlZSB0aGF0IHRoZXNlIHdvcmRzCj4gPiBjYW5ub3QgYmUgdXNlZCBp
bnNpZGUgYSBwcm9qZWN0LiBZb3Ugd291bGQgYWdyZWUgYmVjYXVzZSB0aGUgV1dJSQo+ID4gZXZl
bnRzIGFyZSBzdGlsbCBpbiBtaW5kcyBhbmQgbm90IHNvIGFuY2llbnQgeWV0Lgo+ID4gR2l0ICJt
YXN0ZXIiLCBvciB0aGUgIm1hc3Rlci9zbGF2ZSIgcGF0dGVybiBtYXkgbm90IHRyaWdnZXIgc2lt
aWxhcgo+ID4gdGhvdWdodHMgaWYgeW91ciBhbmNlc3RvcnMgZGlkbid0IHN1ZmZlciBzbGF2ZXJ5
Owo+ID4gIndoaXRlbGlzdC9ibGFja2xpc3QiIG5laXRoZXIsIGlmIHRoZSBjb2xvciBvZiB5b3Vy
IHNraW4gZG9lc24ndCBnZXQKPiA+IHlvdSBpbnRvIHRyb3VibGUgKHdoaXRlPWFsbG93LCBibGFj
az1kZW55KS4KPiA+IE92ZXJhbGwsIEkgd291bGQgYWR2aXNlLCB3aGVuIHRoaW5raW5nIGFib3V0
IHRoZXNlIHF1ZXN0aW9ucywgbm90IHRvCj4gPiBmb3JnZXQgb24gd2hpY2ggc2lkZSB5b3VyIGhp
c3RvcnkvY291bnRyeS9za2luIGNvbG9yL3NleHVhbAo+ID4gb3JpZW50YXRpb24gc2l0cyB5b3Uu
IElmIGl0J3MgdGhlIG9wcHJlc3NvciBzaWRlLCB5b3UncmUgbm90IGF0IHRoZQo+ID4gcmlnaHQg
cGxhY2UgdG8gc2F5IGl0J3Mgbm90IHJlbGV2YW50Lgo+IEZpcnN0IG9mZiwgSSB3b3VsZCBvYmpl
Y3QgdG8gJ29wcHJlc3NvciBzaWRlJy4gVGhhdCBpcyBwcmV0dHkgZGl2aXNpdmUKPiBsYW5ndWFn
ZS4gQW5kIGV2ZW4gdmVyeSBpbXByZWNpc2UuIE1vc3Qgb2YgdGhlIHdvcmxkIHNob3VsZCBiZQo+
IGNvbnNpZGVyZWQgJ3VuYWZmZWN0ZWQnIGluIHRoZSBzZW5zZSB0aGV5IGRvIG5vdCBsaXZlIGlu
IHRoZSBVUyBvcgo+IHNlbGVjdCBBZnJpY2FuIGNvdW50cmllcyB3aXRoIHJlbGF0aXZlbHkgcmVj
ZW50IGhpc3Rvcnkgb2Ygc2xhdmVyeSB3aGVyZQo+IHRoZSBhY3R1YWwgdGVybXMgJ3NsYXZlJyBh
bmQgJ21hc3RlcicgbWlnaHQgYmVhciBzb21lIGNvbm5lY3Rpb24gdG8gdGhlCj4gcHJhY3RpY2Uu
Cj4gRXZlbiBpZiBzb21lb25lcyBncmFuZC1ncmFuZC1ncmFuZC1mYXJ0aGVyIHdhcyBhIHNsYXZl
ciBwdXR0aW5nIHRoZW0gb24KPiBhbiAnb3BwcmVzc29yIHNpZGUnIGlzIHZlcnkgZGlzY3JpbWlu
YXRvcnkgaW4gbXkgdmlldy4KCgpJIGFncmVlIHRoYXQgInVuYWZmZWN0ZWQiIGZpdHMgYmV0dGVy
LCBhcyBpdCBpbmNsdWRlcyBhIGJyb2FkZXIgZ3JvdXAsCmJ1dCBJIHRoaW5rIGl0J3Mgc3RpbGwg
d29ydGgga2VlcGluZyBpbiBtaW5kIHdoZXJlIHlvdXIgc2hhcmVkIGhpc3RvcnkKcHV0cyB5b3Us
IGFzIGl0IG1heSBpbnRyb2R1Y2UgYmlhc2VzIGluIHRoZSB3YXkgeW91IGxvb2sgYXQgZXZlbnRz
LgoKCj4gU2Vjb25kbHksIGlmIHlvdSBkbyBub3QgdGhpbmsgdGhhdCBwZW9wbGUgbm90IGZyb20g
dGhlIGFmZmVjdGVkIGdyb3VwCj4gYXJlIHF1YWxpZmllZCB0byByZWplY3Qgc3VjaCBjaGFuZ2Ug
d2hhdCBpcyB5b3VyIHF1YWxpZmljYXRpb24gdG8KPiBwcm9wb3NlIGl0Pwo+Cj4gU2VlIGFsc28K
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9naXQvQ0FBT25Gc05VQl8rTlpNR251Mnlhc0w4dGtf
S1RmcVBZNkppSE9wdllIaXlZX0x5dHJ3QG1haWwuZ21haWwuY29tLwoKPj4gIlJlYWRpbmcgYSB0
aHJlYWQgb2Ygd2hpdGUgcGVvcGxlLCBpbmNsdWRpbmcgdGhlIENFTyBvZiBHaXRIdWIsCj4+IGFk
dm9jYXRpbmcgY2hhbmdpbmcgdGhlIG5hbWUgb2YgdGhlIOKAmE1hc3RlcuKAmSBicmFuY2ggdG8g
bWFrZSBibGFjayBkZXZzCj4+IG1vcmUgY29tZm9ydGFibGUuLi4KPj4gaXMgdGhlIG1vc3QgcmFj
aWFsbHkgdW5jb21mb3J0YWJsZSBJJ3ZlIGV2ZXIgZmVsdCBhYm91dCBHaXRIdWIuIgoKCgpZb3Ug
ZG9uJ3QgaGF2ZSB0byBiZSBhZmZlY3RlZCB0byBiZSBjb25jZXJuZWQuIEFuZCBjb250cmFyeSB0
byBHaXRIdWIKQ0VPIChhdCBsZWFzdCBwZXIgdGhpcyBxdW90ZSksIEkgZG9uJ3QgZG8gaXQgZm9y
IHRoZW0sIEkgZG8gaXQgZm9yCm1lLiBJIGRvbid0IHdhbnQgbXkgY2hpbGQgdG8gcGxheSBtYXN0
ZXImc2xhdmUsIG5vciBmaW5hbCBzb2x1dGlvbgpnYW1lcy4gSSBmaW5kIGl0IGRpc3Jlc3BlY3Rm
dWwgd2l0aCByZWdhcmRzIHRvIHRoZSBudW1iZXIgb2YgcGVvcGxlIHdobwpzdWZmZXJlZCB0aGVz
ZSBldmVudHMgaW4gcmVjZW50IGhpc3RvcnksIGFuZCBJJ2xsIHRlYWNoIGl0IHRvCmhpbS4gU28g
SSBkbyBub3Qgd2FudCB0byB1c2UgdGhpcyB2b2NhYnVsYXJ5IGluIChteSkgY29kZSBlaXRoZXIu
CgpBbmQgSSBkbyBpdCBmb3IgeW91IChpbXBlcnNvbmFsIHlvdSwgZG9uJ3QgZ2V0IG1lIHdyb25n
KS4gSW4gdGhlCm5hcnJvdyBidWJibGUgSSBsaXZlIGluLCBpdCdzIG1vc3RseSBob21vcGhvYmlh
IGFuZCB0b3hpYyBtYXNjdWxpbml0eQp0aGF0IEkgaGVhcjogaG93IGNhbiB5b3UgZmVlbCBzYWZl
IGJlaW5nIGdheSB3aGVuIGl0IGlzIHVzZWQgYXMgYW4KaW5zdWx0IG9yIGFzIGEgam9rZSwgZXZl
cnlkYXk/IGhvdyBjYW4geW91IGJlIGNvbmZpZGVudCB3aXRoIGZlbWluaW5lCnRyYWl0cyBvZiB5
b3Vyc2VsZiwgd2hlbiBwZW9wbGUgY29uc3RhbnRseSBkZXBpY3QgaXQgYXMgbmVnYXRpdmUKYXR0
cmlidXRlcz8gV29yZHMgYXJlIHdlYXBvbnMsIGFuZCBpZiB5b3UncmUgdW5hd2FyZSBvZiBpdCwg
eW91IGZpcmUKYmxpbmRseS4gU28gaGVyZSBJIHdhbnQgdG8gbWFrZSBzdXJlIHdlIGRvIG5vdCBi
YW5hbGx5IHVzZSB3b3JkcwpsaW5rZWQgd2l0aCBwYXN0IHRyYWdlZGllcyBvciBtb2Rlcm4gb3Bw
cmVzc2lvbi4KCkkgc2VlIHRocmVlIGJyb2FkIGNhdGVnb3JpZXMgb2YgcHJvYmxlbWF0aWMgd29y
ZHMgb3IgcGhyYXNlczoKCjEuIG5lZ2F0aXZlIGNvbm5vdGF0aW9uIChlZywgYGJsYWNrbGlzdC93
aGl0ZWxpc3RgKQoyLiByZXVzZSBvZiBwYXN0IGV2ZW50J3Mgdm9jYWJ1bGFyeSAoZWcsIGBtYXN0
ZXIvc2xhdmVgIHBhdHRlcm4pCjMuIGluZGlyZWN0IHJlZmVyZW5jZSB0byBwb2ludCAxIG9yIDIg
KGVnLCBnaXQncyBgbWFzdGVyYCkKCkkgdGhpbmsgdGhpcyBnaXZlcyBhbiBvcmRlciBvZiBwcmlv
cml0eSBmb3Igd2hhdCBzaG91bGQgYmUgdGFja2xlZC4KCgp0aGFua3MsCgpLZXZpbgoKCj4gPgo+
ID4gLS0tCj4gPgo+ID4gSSBoYWQgYSBxdWljayBgZ3JlcGAgbG9vayBhdCBTUElDRSBjb2RlIGJh
c2UsIHNlYXJjaGluZyBmb3IKPiA+IGBibGFja2xpc3Qvd2hpdGVsaXN0L3NsYXZlYCBhbmQgSSBj
b3VsZCBvbmx5IGZpbmQgdmVyeSBmZXcgb2NjdXJyZW5jZXMKPiA+IG9mIHRoZXNlIHdvcmRzLCB3
aGljaCBpcyBuaWNlLiBDYW4geW91IGZpbmQgb3RoZXIgcHJvYmxlbSB3b3Jkcz8KPiA+Cj4gPiBg
bWFzdGVyYCBpcyB1c2VkIGZvciBnaXQgZGVmYXVsdCdzIGJyYW5jaCwgYnV0IG5vdCBtdWNoCj4g
PiBlbHNld2hlcmUuIExldCdzIGRpc2N1c3MgaWYgd2UgY291bGQgZ2V0IHJpZCBvZiB0aGlzIG9u
ZSwgZm9yIGluc3RhbmNlCj4gPiBjaGFuZ2luZyBpdCB0byBgbWFpbmAgKGp1c3QgYSBzdWdnZXN0
aW9uKS4gSSBkb24ndCB0aGluayB0aGF0IGl0IGNhbgo+IFRoYXQgaXMgYWxzbyByZXBvcnRlZGx5
IG9mZmVuc2l2ZSAtIHNlZQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2dpdC8yMDIwMDYxNjIx
MDcwMS4yMjkyNC0xLXplZXZyaWVuZEBnbWFpbC5jb20vCj4gPiBicmVhayB0aGF0IG1hbnkgdGhp
bmdzIChvbmx5IHRoZSBDSSBjb21lcyB0byBteSBtaW5kLCB3aGVyZSB0aGUKPiA+IGBtYXN0ZXJg
IGJyYW5jaCBtYXkgYmUgdHJlYXRlZCBkaWZmZXJlbnRseSkgYXMgZ2l0IG5hbWUgZGVmYXVsdAo+
ID4gYnJhbmNoJ3MgbmFtZSBpcyBvZnRlbiBvbWl0dGVkIGluIHRoZSB1c3VhbCB3b3JrZmxvd3Mu
Cj4gPgo+ID4gUGxlYXNlIHNoYXJlIHlvdXIgdGhvdWdodHMgYWJvdXQgdGhpcwo+Cj4gVGhhbmtz
Cj4KPiBNaWNoYWwKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVsCg==
