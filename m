Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EC9262FF3
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 16:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A036E0E3;
	Wed,  9 Sep 2020 14:45:11 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7FA6E0E3
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:45:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40F3A80121C
 for <spice-devel@freedesktop.org>; Wed,  9 Sep 2020 14:45:10 +0000 (UTC)
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com
 [209.85.217.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-39-Y5O42PCvPueNj8pW63vRFQ-1; Wed, 09 Sep 2020 10:45:08 -0400
X-MC-Unique: Y5O42PCvPueNj8pW63vRFQ-1
Received: by mail-vs1-f71.google.com with SMTP id v131so717558vsv.9
 for <spice-devel@freedesktop.org>; Wed, 09 Sep 2020 07:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mRVN6T/AnU6aQUS/fY/dEcjwWw628nmGIq7h+ZiY+YI=;
 b=Sd5J0ud7H2Cn/IYDtxkkA2LuNSlXr7/nTDRx9lAYrK4UqFw3uzPgkcTwxksli4zHJn
 OY043QLXX968j8naEWzn0mHSVxSDj2ve3WH29J0/E7l/kzewKfrgxUxYp17LaFNSzv4c
 tL3ocxD5SeaLYdH3gjWrXUXz8qDhGw601sG1ZSvFdzRa06DUmHofv5aPejOWpdVWPE2X
 khecgmx92/jMJzGzMdeBRwusq71wwmG8fCcHefbkCr+wOyMwj+MPb7HrXK6XkBlScro/
 Y1HRCPJ7531z2Hf8Pd3GIh7hTR5lhvagqgJFvyImEatNCLj7FoUQ+VSAuH3h79AGxlCs
 zbAQ==
X-Gm-Message-State: AOAM532SgudHo+ROS4CPzPQwLNN/joUi0CxTHW1Yrc7jiAZLj9B5NAcY
 GhQs4404EYZGhTk1Q4S0DhGEE/8FETi5czQ4tMsg9/cN2gIoc8/DAhxfbeSDUUokJxBGGJSLCBq
 DoY58/GsHUNwZdZUTfXMSJ1NVD3Hqa6GhsCNQxAw=
X-Received: by 2002:a1f:8c04:: with SMTP id o4mr941214vkd.18.1599662707937;
 Wed, 09 Sep 2020 07:45:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCQLCEC+SStLmeU5BbE6CALsAMuG1OILRU6rJkf8rbi5Lqvo7Paz6cXDjKlzdsufp4xUqNDA91UP19+0AvfxU=
X-Received: by 2002:a1f:8c04:: with SMTP id o4mr941205vkd.18.1599662707754;
 Wed, 09 Sep 2020 07:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200909135044.0B7FA76130@kemper.freedesktop.org>
 <CAJ+F1CJr=UC8H4CdpsTkv1yHPJh-yF85MDYkA-A4y6jtO5sf0Q@mail.gmail.com>
 <1746534140.655311.1599661009588.JavaMail.zimbra@redhat.com>
 <CAH=CeiBb4eUew8i0MjNnLdvi3Z8HG6bgXGQVedGcFtJtChpZUQ@mail.gmail.com>
 <28522181.657126.1599662196864.JavaMail.zimbra@redhat.com>
In-Reply-To: <28522181.657126.1599662196864.JavaMail.zimbra@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 9 Sep 2020 16:44:56 +0200
Message-ID: <CAH=CeiB+89q6C6fSu-814jaN98_eCGe72qkwZTFp7V7OXnehLw@mail.gmail.com>
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

T24gV2VkLCBTZXAgOSwgMjAyMCBhdCA0OjM2IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4gT24gV2VkLCBTZXAgOSwgMjAyMCBhdCA0OjE2IFBNIEZy
ZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gPiA+
IGNvbW1pdCA0YjkwOTJiOTZiOGRhOTQ2ZmYzZDE3OTIyYjBmY2YyMjVjNWRjODFmCj4gPiA+ID4K
PiA+ID4gPiA+IEF1dGhvcjogSmFrdWIgSmFua8WvIDwgamphbmt1QHJlZGhhdC5jb20gPgo+ID4g
PiA+Cj4gPiA+ID4gPiBEYXRlOiBTYXQgTWF5IDIzIDE2OjI4OjUyIDIwMjAgKzAyMDAKPiA+ID4g
Pgo+ID4gPgo+ID4gPiA+ID4gc2Vzc2lvbjogbWFrZSBzcGljZV9zZXNzaW9uX2dldF93ZWJkYXZf
c2VydmVyKCkgcHVibGljCj4gPiA+ID4KPiA+ID4KPiA+ID4gPiA+IEl0IHdpbGwgYmUgbmVjZXNz
YXJ5IHRvIGFjY2VzcyB0aGUgd2ViZGF2IHNlcnZlciBmcm9tCj4gPiA+ID4gPiBzcGljZS1ndGst
c2Vzc2lvbi5jCj4gPiA+ID4KPiA+ID4gPiA+IHdoaWNoIGlzbid0IGNvbXBpbGVkIHdpdGggc3Bp
Y2Utc2Vzc2lvbi1wcml2LmgsIHNvIG1ha2UKPiA+ID4gPgo+ID4gPiA+ID4gc3BpY2Vfc2Vzc2lv
bl9nZXRfd2ViZGF2X3NlcnZlcigpIHB1YmxpYy4KPiA+ID4gPgo+ID4gPgo+ID4gPiA+IEkgaGF2
ZW4ndCBsb29rZWQgYXQgdGhlIHdob2xlIHNlcmllcy4gV291bGRuJ3QgaXQgbWFrZSBzZW5zZSB0
byBtYWtlIGl0IGEKPiA+ID4gPiByZWFkLW9ubHkgcHJvcGVydHkgaW5zdGVhZD8KPiA+ID4KPiA+
ID4gSXQgc291bmRzIHJlYXNvbmFibGUgZm9yIG1lLgo+ID4gPiBKYWt1YiA/Cj4gPiA+Cj4gPgo+
ID4gSSBhZ3JlZS4KPiA+Cj4gPiBSZXZlcnQgdGhlIGNvbW1pdHMgcGxlYXNlLiBJJ2xsIHJlb3Bl
biB0aGUgbWVyZ2UgcmVxdWVzdCBvbmNlIEkgaGF2ZSBpdAo+ID4gcmVhZHkuCj4gPgo+ID4gQ2hl
ZXJzLAo+ID4gSmFrdWIKPiA+Cj4KPiBUbyBiZSBob25lc3QgSSBkb24ndCBzZWUgdGhlIG5lZWQg
dG8gcmV2ZXJ0IGNvbW1pdHMsIGl0J3MganVzdCBhIGNoYW5nZQo+IGZyb20gcHVibGljIHRvIHBy
aXZhdGUuCgpPaywgc28gc2hvdWxkIEkgb3BlbiBhIHNlcGFyYXRlIE1SPwoKVG8gbWFrZSBzdXJl
IHRoYXQgSSBkaWRuJ3QgbWlzdW5kZXJzdGFuZCBpdDogdGhlIHN1Z2dlc3Rpb24gaXMgdG8ga2Vl
cApzcGljZV9zZXNzaW9uX2dldF93ZWJkYXZfc2VydmVyKCkgcHJpdmF0ZSBhbmQgaW5zdGFsbCBh
IG5ldwpTcGljZVNlc3Npb24gcmVhZC1vbmx5IHByb3BlcnR5ICJ3ZWJkYXYiLCBjb3JyZWN0Pwo+
Cj4gRnJlZGlhbm8KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVsCg==
