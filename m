Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4D4262FE0
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 16:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B166E2DA;
	Wed,  9 Sep 2020 14:40:18 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
X-Greylist: delayed 592 seconds by postgrey-1.36 at gabe;
 Wed, 09 Sep 2020 14:40:17 UTC
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983876E2DA
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:40:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CF4B906382
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:30:24 +0000 (UTC)
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com
 [209.85.221.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-89NEkATaNdu0K2utWiCrjg-1; Wed, 09 Sep 2020 10:30:21 -0400
X-MC-Unique: 89NEkATaNdu0K2utWiCrjg-1
Received: by mail-vk1-f197.google.com with SMTP id w4so812521vke.0
 for <spice-devel@freedesktop.org>; Wed, 09 Sep 2020 07:30:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uP+65MPGUelrwqvTe05gEJ1GztfkNlsoEhIkjqPAJic=;
 b=OSDGz/1CPmroEzpED0TWx9ppCsO1LCD2NPSEeEkzODpNSjsFpSMIHq7FjgICh3PT1o
 /s9PAXS9BdkUq0ZU8HR3tQ3U+rhwAjrHH4CFkqdRP5FauZigafGvqUYBHY8GQWHe+SY2
 wtW1TtWodArxWnarsnv4cOUUhxLlKnth2DqnhhUwjGDVA2CU19POxriGNy3snkutvqgw
 eeBls7nuTbweIV4vVqf6qbaWvPdHDHVfk2e/R3Sgmc+7TX2V499TPtYPnzBq8Pz6jY3v
 4pZj1qrxsnSC180gpGYYic/ZiTj1wAyOro/rJwQ+JYH8WsoCCJLNbMad90wEHuDEAqv5
 0U+A==
X-Gm-Message-State: AOAM530tmS+TOcRf+9oWCLh8zFK4qgQj1TNwc5K5uaUsuzWdrd/ziGEl
 COHDnyLIeeXns/Vx5rL3GYUMkexX6FdBX4tjEg13pTuMkfVqHxxPr/+UrWMYULKTuqBGZHJXN3e
 L4zoNyRxJIaVA0Vk3B6u3bqqgo8qs8hvPpxD/xzY=
X-Received: by 2002:a05:6122:32e:: with SMTP id
 d14mr843602vko.32.1599661821040; 
 Wed, 09 Sep 2020 07:30:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzuYTsOHBFWAeslazWv1BbNWBqqOzu1JCiJtX4o4t/pbxSHvqc+/fidKr2heNSTlUnNWH/Qwp9GYh7Cy9qIhoU=
X-Received: by 2002:a05:6122:32e:: with SMTP id
 d14mr843585vko.32.1599661820761; 
 Wed, 09 Sep 2020 07:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
 <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
In-Reply-To: <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 9 Sep 2020 16:30:09 +0200
Message-ID: <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [Spice-commits] 6 commits - meson.build
 src/map-file src/spice-glib-sym-file src/spice-gtk-session.c
 src/spice-session.c src/spice-session.h src/spice-session-priv.h
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
Cc: spice-commits@lists.freedesktop.org, spice-devel@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgOSwgMjAyMCBhdCA0OjE2IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4gPiBjb21taXQgNGI5MDkyYjk2YjhkYTk0NmZmM2QxNzky
MmIwZmNmMjI1YzVkYzgxZgo+ID4KPiA+ID4gQXV0aG9yOiBKYWt1YiBKYW5rxa8gPCBqamFua3VA
cmVkaGF0LmNvbSA+Cj4gPgo+ID4gPiBEYXRlOiBTYXQgTWF5IDIzIDE2OjI4OjUyIDIwMjAgKzAy
MDAKPiA+Cj4KPiA+ID4gc2Vzc2lvbjogbWFrZSBzcGljZV9zZXNzaW9uX2dldF93ZWJkYXZfc2Vy
dmVyKCkgcHVibGljCj4gPgo+Cj4gPiA+IEl0IHdpbGwgYmUgbmVjZXNzYXJ5IHRvIGFjY2VzcyB0
aGUgd2ViZGF2IHNlcnZlciBmcm9tIHNwaWNlLWd0ay1zZXNzaW9uLmMKPiA+Cj4gPiA+IHdoaWNo
IGlzbid0IGNvbXBpbGVkIHdpdGggc3BpY2Utc2Vzc2lvbi1wcml2LmgsIHNvIG1ha2UKPiA+Cj4g
PiA+IHNwaWNlX3Nlc3Npb25fZ2V0X3dlYmRhdl9zZXJ2ZXIoKSBwdWJsaWMuCj4gPgo+Cj4gPiBJ
IGhhdmVuJ3QgbG9va2VkIGF0IHRoZSB3aG9sZSBzZXJpZXMuIFdvdWxkbid0IGl0IG1ha2Ugc2Vu
c2UgdG8gbWFrZSBpdCBhCj4gPiByZWFkLW9ubHkgcHJvcGVydHkgaW5zdGVhZD8KPgo+IEl0IHNv
dW5kcyByZWFzb25hYmxlIGZvciBtZS4KPiBKYWt1YiA/Cj4KCkkgYWdyZWUuCgpSZXZlcnQgdGhl
IGNvbW1pdHMgcGxlYXNlLiBJJ2xsIHJlb3BlbiB0aGUgbWVyZ2UgcmVxdWVzdCBvbmNlIEkgaGF2
ZSBpdCByZWFkeS4KCkNoZWVycywKSmFrdWIKCj4gRnJlZGlhbm8KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
