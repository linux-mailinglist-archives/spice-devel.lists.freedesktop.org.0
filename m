Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C4527E8D
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898EB89F08;
	Thu, 23 May 2019 13:45:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5630E89F2D
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:45:07 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id r7so6329006wrr.13
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F/7csSgODcS0wRosgwFKhIIGordP4Ir6xLkuKOHnO0o=;
 b=gO7ZbQCCp4r6xct1r0aQC8CLgY0GNtNP9p09EPe3IG7VpWpkEEaXwWAcvTzk7S4QCk
 6KZszIuSw5hKYjeD2+kciYFmShNYSZplzdurWp2Mw4en3Fo50/pzmaW4UfLbSKtuLP5a
 RpxKQiPeHItmpMtFJyIJ72IAHQNgxGEMqjE3zS9fZAkEMTw2bkQhwyBcWPbC5wH4sUO3
 inzDGKR4w/9WzjbeP8Dlznym49yG978pAoMbzW0wSNX466tJ7a83C4kH52unbfgz01M7
 JdDnRYMi7K/qMRPshCRaRY31I5j0rpEiecFOEzNp3+lkHcrF9L2GzsIphmH1mUndbbQE
 Vv/Q==
X-Gm-Message-State: APjAAAV8BWdZlLFG1Z28vPm+Sdq9JZQqurAtnzdji7SyphiIxG61p2TJ
 3omnzdZvOV9HrYAlKW9acwlOfO8yXOd2oZthkT4=
X-Google-Smtp-Source: APXvYqzOdC3YumTj/E9mBLCpDsPb3Tisrr6AfnoPSr3MJIu8kKBMr2Q0W/kzSlxoZv0LKLjQ/kfaSwO6eu3uZ1p0unI=
X-Received: by 2002:adf:ec8c:: with SMTP id z12mr1050098wrn.209.1558619102192; 
 Thu, 23 May 2019 06:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-1-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:44:50 +0200
Message-ID: <CAJ+F1CJqyOdziLhaWXnn8UVdcoA5oqXLSF4XfLyM2RPQUT19fw@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=F/7csSgODcS0wRosgwFKhIIGordP4Ir6xLkuKOHnO0o=;
 b=CgAaBOTjdISL48AKiY9rsO947NBcl9zLPJ/yZhv5xainpedk+gZGFBC5bQWQ4dcIiS
 vkNu9AQ/JEWZA2fHOKTpuLmK0ZvnhgikqByOnWWbA3XYURnRkpSjf4othUHgAAdYcbg9
 2IbscCfebG9koY6mbwVipQ8PDarUuvoF5tdVkPMBnzR+ZryTM3Ke8phhzQgLEXunGHcp
 vGgv+m7G4gQRHfIE5YXSvmhgIMccRmFTQolYqaXKTlLA3I7AHV0ewpKHB9X+WZ1VsGM8
 mBVgB9SaPu06N4+WGRlUS7YKlXxbSI1Z+AN1+3Xn9P79cjadethE7RvxW1zS3qsmmrsj
 yOog==
Subject: Re: [Spice-devel] [PATCH phodav 00/13] Miscellaneous series
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

SGkKCk9uIFRodSwgTWF5IDIzLCAyMDE5IGF0IDEwOjM3IEFNIEpha3ViIEphbmvFryA8amphbmt1
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiB0aGlzIHNlcmllcyBjb250YWlucyBtb3N0
bHkgZml4ZXMgb2Ygc29tZSB0aGluZ3MKPiB0aGF0IEkgY2FtZSBhY3Jvc3Mgd2hpbGUgcmVhZGlu
ZyB0aGUgc3BpY2Utd2ViZGF2ZC5jIGNvZGUsCj4gd2l0aG91dCBhbnkgb3JkZXIuCj4KPiBDaGVl
cnMsCj4KPiBKYWt1YiBKYW5rxa8gKDEzKToKPiAgIHNwaWNlOiByZW1vdmUgR19TT1VSQ0Vfe1JF
TU9WRSxDT05USU5VRX0gZGVmaW5pdGlvbnMKPiAgIHNwaWNlOiByZW5hbWUgbXlfaW5wdXRfY2hh
bm5lbAo+ICAgc3BpY2U6IGhhbmRsZSBTSUdJTlQgcHJvcGVybHkKPiAgIHNwaWNlOiBxdWl0IHNl
cnZpY2UgcXVpY2tseQo+ICAgc3BpY2U6IGNsZWFyIGxvb3AgcG9pbnRlciBvbiB1bnJlZgo+ICAg
c3BpY2U6IHByaW50IGVyciB3aGVuIGdfb3BlbiBmYWlscwo+ICAgc3BpY2U6IHVucmVmIEdTb2Nr
ZXRBZGRyZXNzCj4gICBzcGljZS13aW46IGRlZmluZSBTRVJWSUNFX05BTUUKPiAgIHNwaWNlLXdp
bjogcmVtb3ZlIE1hcERyaXZlRW51bQo+ICAgc3BpY2Utd2luOiBkb24ndCBhc3NpZ24gZHJpdmVf
bGV0dGVyIG9uIGVycm9yCj4gICBzcGljZTogbW92ZSBPdXRwdXRRdWV1ZSB0byBmaWxlCj4gICBy
ZW5hbWUgUkVBRE1FIHRvIFJFQURNRS5tZAo+ICAgcmVuYW1lIE5FV1MgdG8gTkVXUy5tZAoKTG9v
a3MgZ29vZCBvdmVyYWxsLAoKUGhvZGF2IGlzIGhvc3RlZCBvbiBHTk9NRSBnaXRsYWIsIHBsZWFz
ZSBvcGVuIGEgTVIgdGhlcmUsIHNvIENJIGNhbiBydW4uCgpUaGFua3MKCj4gIE5FV1MgPT4gTkVX
Uy5tZCAgICAgICB8ICAgMAo+ICBSRUFETUUgPT4gUkVBRE1FLm1kICAgfCAgMjEgKystLQo+ICBz
cGljZS9tZXNvbi5idWlsZCAgICAgfCAgIDggKy0KPiAgc3BpY2Uvb3V0cHV0LXF1ZXVlLmMgIHwg
MTY0ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgc3BpY2Uvb3V0cHV0LXF1ZXVlLmggIHwg
IDM4ICsrKysrKwo+ICBzcGljZS9zcGljZS13ZWJkYXZkLmMgfCAyODAgKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgMjg2IGluc2Vy
dGlvbnMoKyksIDIyNSBkZWxldGlvbnMoLSkKPiAgcmVuYW1lIE5FV1MgPT4gTkVXUy5tZCAoMTAw
JSkKPiAgcmVuYW1lIFJFQURNRSA9PiBSRUFETUUubWQgKDU2JSkKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IHNwaWNlL291dHB1dC1xdWV1ZS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcGljZS9vdXRw
dXQtcXVldWUuaAo+Cj4gLS0KPiAyLjIxLjAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAoKCgotLSAKTWFyYy1BbmRyw6kgTHVyZWF1
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
