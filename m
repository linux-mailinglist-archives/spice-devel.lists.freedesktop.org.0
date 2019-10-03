Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E96CA805
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 18:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8CA36E165;
	Thu,  3 Oct 2019 16:59:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD85E6E1CF
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 16:52:53 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 8727d666
 for <spice-devel@lists.freedesktop.org>;
 Thu, 3 Oct 2019 16:06:05 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b4492759
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <spice-devel@lists.freedesktop.org>;
 Thu, 3 Oct 2019 16:06:05 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id 41so2884397oti.12
 for <spice-devel@lists.freedesktop.org>; Thu, 03 Oct 2019 09:52:52 -0700 (PDT)
X-Gm-Message-State: APjAAAWy4E1ixOLcHEugkIrTPqFjf9gjH+5/+lPLDdkM6w+HFZsU6gCC
 uuGYz0u7HYyrvDUDzvtBEzhMRcA7lReR7WBlqOA=
X-Google-Smtp-Source: APXvYqyUWU89bSMrUzbdG8oKWQYZAapw1HyQW8nb5DH7QkxIcvptgzGUBJR+tTGljeAeeyo+wtlhm5U4RWrczwcXi7s=
X-Received: by 2002:a9d:3476:: with SMTP id v109mr7578766otb.179.1570121571737; 
 Thu, 03 Oct 2019 09:52:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
 <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
 <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
 <03e794c0-70a8-f43e-6ba9-e8da5cbdfd27@redhat.com>
In-Reply-To: <03e794c0-70a8-f43e-6ba9-e8da5cbdfd27@redhat.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 3 Oct 2019 18:52:38 +0200
X-Gmail-Original-Message-ID: <CAHmME9phs=MA2tVhBNwQFVsFvisuxS=HhBU74mbpKm1+oKkfYQ@mail.gmail.com>
Message-ID: <CAHmME9phs=MA2tVhBNwQFVsFvisuxS=HhBU74mbpKm1+oKkfYQ@mail.gmail.com>
To: uril@redhat.com
X-Mailman-Approved-At: Thu, 03 Oct 2019 16:59:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com;
 h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=IJMycP3JNPAY/9J7CGYA7c8GhI8=; b=Tmhan5
 cemsq9TFx0al6UMUpZ9JGam43PAID4q/TyW/56vnu/rZkTxE2GaeC7JWyVm6RxeD
 RECohYqu8KiHhllNV6MDeekbd3gW6AOnUjS99r62gJ/hvKlwkT0AdYCUdU9q2Noc
 /ZkQ5FbKQd8RiTm7dI98W7eHbgfHje/h1dx6hDJbzvwi1IF4UDY7LnuUbQAtu/k+
 bqzSzyur5HIvI6WQXhmvp4+BmlZCLyeBBZk0fILI9NEWihQFvle7ijIf0TuCNL39
 /rzYQw5Y9Ww8q4ZiyG3Bem9GmGCe/NHeAxSq2C4Nill6dWwpTUglq2Mg/cwZCdlw
 tlwA1ITl2nKtdYEA==
Subject: Re: [Spice-devel] regression from 0.14.0 -> 0.14.2 in screen
 resizing
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMywgMjAxOSBhdCA2OjUyIFBNIFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4KPiBPbiAxMC8zLzE5IDY6MTEgUE0sIEphc29uIEEuIERvbmVuZmVsZCB3cm90
ZToKPiA+IE9uIFRodSwgT2N0IDMsIDIwMTkgYXQgNToxMCBQTSBVcmkgTHVibGluIDx1cmlsQHJl
ZGhhdC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGksCj4gPj4KPiA+PiBJIGp1c3QgdGVzdGVkIHYw
LjE0LjAgYW5kIHJlc29sdXRpb24gY2hhbmdlIHdvcmtzIGZvciBtZSAoV2luZG93cyA3IHg2NCwK
PiA+PiByZW1vdGUtdmlld2VyKS4KPiA+Cj4gPiBUaGlzIGlzIHdoeSBJIHNwZWNpZmllZCB0aGF0
IGl0IGZhaWxzIGluIDAuMTQuMi4KPgo+IEluZGVlZC4KPgo+IEl0IHdvcmtzIGZvciBtZSBhbHNv
IHdpdGggc3BpY2UgdjAuMTQuMiAoZnJvbSBnaXQpIGFuZCBjdXJyZW50IG1hc3Rlci4KPgo+IFRo
ZSBxZW11IHZlcnNpb24gaXMgNC4xLjUwIChmcm9tIGdpdCkgYW5kIGFsc28gdGVzdGVkIFFFTVUg
My4xLjEgKEZlZG9yYQo+IDMwKS4KPgo+IEJUVywgd2hhdCBkaXN0cm8gaXMgaXQgPyAgV2hpY2gg
V2luZG93cyBndWVzdCA/CgpHZW50b28uIFdpbmRvd3MgMTAuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
