Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E36A927E17
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776DD89E35;
	Thu, 23 May 2019 13:26:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1662F89811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:26:32 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id f10so6293874wre.7
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:26:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pme2N5RkCOYpbbWnwANvo7x3EpNdUZvhfh0rZ1dbx0s=;
 b=o1LfjfMQslkWdiR93+0QIcgCJUsZ38faE/GRKjSx319nGa/8wIxCSE6WLY9qx53859
 7P3BRMnQNCy+PSW8d1alTt3E5zcbVukhH/F7K8C8eKvouwuYoXHoYbKspSJnZQMalqKd
 Qs5IGCnxDCq1SJymFXT4hK4KmL6eb2+SMdaFqCMRdAWmIRmcA/5vL7T4wfkoYUpS1iOu
 mrVeVttsLuFRBDw/M963TjRoWMhqU09B/vwWK41CT5CmLBDg9qAjzD8EiuFOwZ8uz5WQ
 sRGHv+cXqtOiyj4yYo/lTnX1XUnelhNgjEyEvR8JCz+Se5rKDVXuhd9Eidd1Z95iBSR7
 03ug==
X-Gm-Message-State: APjAAAXHgbvYNTubHCcKQ2NsxJgSRbqmyo0/2JreWjDJbZ5OVpmHA9tH
 vJWJZgP3elqYG74qR3siw6ElXvH0PNbfy5tTxQF7vlqR
X-Google-Smtp-Source: APXvYqxEh5ywxHOYYpojPvWxfof6kHUVikBN9V599ZFrFai/5EBDju7sWAaYCfzFPY9vkR1/MMLrYhELxvkjBlMFDSw=
X-Received: by 2002:adf:c149:: with SMTP id w9mr48743954wre.40.1558617990682; 
 Thu, 23 May 2019 06:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-2-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-2-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:26:18 +0200
Message-ID: <CAJ+F1CKM37L+iqS8hm9stQGkm9o16knRsrHH7Svw3jE_tZ2xJg@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pme2N5RkCOYpbbWnwANvo7x3EpNdUZvhfh0rZ1dbx0s=;
 b=u808Eqsw0520jlFiS6M0ZPn/nkTA7MEFVEOXPWEGIshqNi94DwOc7HzGu8rVAlhCTe
 eDvuvEo63RaLhbhHTm/2+dmIJLnCqsB1rGzJcUvC/yYKl77QlUYSPJBNjPvvbFscvGwk
 dVhhfjSKnUJqFJjMWo7yrUvsUAn43Sbc4JoFPMbPYJ3dtnIlqTob9oHQxHfNSbyuNr3j
 9UuXYirKDuO8jDGhSq/Jr3dv2aao+Qin5UexdTDP2s0T75C5bAWtRtleGo9Jrt+Vmm46
 7kk8ODDOeT0Vz0nmMHDmqbIl92KBFkzaOEBS017E+vxPz3gEzcJJlQC52A9Oc5yREJf5
 +FVQ==
Subject: Re: [Spice-devel] [PATCH phodav 01/13] spice: remove
 G_SOURCE_{REMOVE, CONTINUE} definitions
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPdGhlciBzeW1ib2xzIHRoYXQgd2VyZSBhZGRlZCBhZnRlciBH
X1NPVVJDRV97UkVNT1ZFLCBDT05USU5VRX0KPiBhcmUgYWxyZWFkeSBiZWluZyB1c2VkIGluIHRo
ZSByZXN0IG9mIHRoZSBmaWxlIC0gZS5nLiBnX3Rhc2tfbmV3LAo+IHNvIHRoZXJlJ3Mgbm8gbmVl
ZCB0byBkZWZpbmUgdGhlc2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5r
dUByZWRoYXQuY29tPgoKYWNrLAp3ZSBzaG91bGQgYnVtcCBnbGliIGRlcCB0byAyLjM2IGF0IGxl
YXN0IChndGFzaykKCj4gLS0tCj4gIHNwaWNlL3NwaWNlLXdlYmRhdmQuYyB8IDcgLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zcGljZS9z
cGljZS13ZWJkYXZkLmMgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKPiBpbmRleCBjZDAwMjliLi44
MWZlNmJlIDEwMDY0NAo+IC0tLSBhL3NwaWNlL3NwaWNlLXdlYmRhdmQuYwo+ICsrKyBiL3NwaWNl
L3NwaWNlLXdlYmRhdmQuYwo+IEBAIC02NjUsMTMgKzY2NSw2IEBAIG1kbnNfc3RhdGVfY2hhbmdl
ZCAoR2FDbGllbnQgKmNsaWVudCwgR2FDbGllbnRTdGF0ZSBzdGF0ZSwgZ3BvaW50ZXIgdXNlcl9k
YXRhKQo+ICB9Cj4gICNlbmRpZgo+Cj4gLSNpZm5kZWYgR19TT1VSQ0VfUkVNT1ZFCj4gLSNkZWZp
bmUgR19TT1VSQ0VfUkVNT1ZFIEZBTFNFCj4gLSNlbmRpZgo+IC0jaWZuZGVmIEdfU09VUkNFX0NP
TlRJTlVFCj4gLSNkZWZpbmUgR19TT1VSQ0VfQ09OVElOVUUgVFJVRQo+IC0jZW5kaWYKPiAtCj4g
ICNpZmRlZiBHX09TX1VOSVgKPiAgc3RhdGljIHZvaWQKPiAgd2FpdF9mb3JfdmlydGlvX2hvc3Qg
KGdpbnQgZmQpCj4gLS0KPiAyLjIxLjAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAoKCgotLSAKTWFyYy1BbmRyw6kgTHVyZWF1Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
