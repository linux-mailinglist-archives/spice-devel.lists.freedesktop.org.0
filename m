Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B60618E87F
	for <lists+spice-devel@lfdr.de>; Thu, 15 Aug 2019 11:45:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540896E0F8;
	Thu, 15 Aug 2019 09:45:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA356E0F8
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 09:45:13 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id q20so3828843otl.0
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 02:45:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vzW1aCBSF3+8dVnOZb7Sy8UvkJUpm/Gm0DKhzyqVY/Q=;
 b=nkfRn4iN9zAyPE77yMVmtGAuo6nn9DlRPifE+LDRsNjchrFGuCmvxvTGtvFjmj7+oa
 ceBat8tVVqzdlxdIZ+g0gbHoxdD1ga3+WelW5OIkUMgAcXPe1qssNTHyVk02yFX2D8Gg
 r+bUndYxGLX7Y0kWGCKx9EpLAJyB69u3KeupT1BWdT5fKcR+vz9BngEdZCQiSt1eTBm7
 yqyKO1kO5ELWTQJKkl8VyJtxenh1vNy0kizwVJS/5yuykI9NjmTjXkzOEXcFSKmqpZ10
 5M/xVZBwkp3oba3oz0J3km/qCR69yvU8AveF98tFbP/kVyvxwNesoFfe73Ke1drdI3QP
 57aA==
X-Gm-Message-State: APjAAAUxejGKJZdTreZ2yh6Fi5a3SGis87wNTzab9a2PgRfweKzzBfqB
 +awT3R/tOtAm/1EYvSXKcQ9NNPQd3xRZIbs3oxnR8nDt
X-Google-Smtp-Source: APXvYqwE4zuLmQvcavcITWSGE7TAk9uSwwln7rn9DYdCagOkkIYIcCKSRRWPz2SjE2zwA8lXwZ0xTXhPP4QZ73HBh3w=
X-Received: by 2002:a6b:c9c2:: with SMTP id z185mr4616633iof.17.1565862312725; 
 Thu, 15 Aug 2019 02:45:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190812095729.32692-9-yuri.benditovich@daynix.com>
 <421257129.5631324.1565695757528.JavaMail.zimbra@redhat.com>
In-Reply-To: <421257129.5631324.1565695757528.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Thu, 15 Aug 2019 12:44:59 +0300
Message-ID: <CAOEp5Od4+z4GddJqat2h8fnpMer1rfpLP8c_Rq=LFcwV-yY2Fw@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=vzW1aCBSF3+8dVnOZb7Sy8UvkJUpm/Gm0DKhzyqVY/Q=;
 b=OxPYSKMcBXV1GZ6KwnD4B3i8GaX/VfQvk5AiQRRUFuWFnThlhO0iq46NJp4cPOlkXe
 0lrJJrkhevUfhcsY9Xee3P06OXiY/yrtOZg2WMzcNcTNf6wAb9TPTJRPk/ltdiv4T/3O
 2OlHwRRYfTsVE93Ade7H3/3fDLdbmzkURdIxwHU5uR6yFXAW28gRgljH5cl7tC631Nt3
 R6p+hKQVM0ahKBlZfrGR5WbjZ5N/mjv+1A/O5tfAtl44tPJ6j/3jMKiegUMIX897iggo
 bA3CogZz296DnqqgjsoTf/muEFrs3AAEjY+fKG473mOc6DSLCD/YpWFGyPzFt9mvZ1cz
 ENrw==
Subject: Re: [Spice-devel] [spice-gtk v3 8/9] usb-redir: enable redirection
 of emulated CD drive
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgMjoyOSBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBBZGQgaW1wbGVtZW50YXRpb24gb2YgZW11bGF0
ZWQgZGV2aWNlIHRvIGJ1aWxkLgo+ID4gTm93IGl0IGlzIHBvc3NpYmxlIHRvIGNyZWF0ZSBlbXVs
YXRlZCBDRCBkZXZpY2VzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2gg
PHl1cmkuYmVuZGl0b3ZpY2hAZGF5bml4LmNvbT4KPgo+IFdvdWxkIGJlIGJldHRlciB0byBjb21w
aWxlIG9ubHkgaWYgbmVlZGVkLCBsaWtlCj4KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZnppZ2xpby9zcGljZS1ndGsvY29tbWl0L2Y3NDQ0MzM5MDkwMjMzNWEwMjMzYmIzMmUxZDk0
NTA3ZTViOWY1ZjQKPgo+ID8KPgoKTm8gcHJvYmxlbS4uLgoKPiA+IC0tLQo+ID4gIHNyYy9tZXNv
bi5idWlsZCB8IDcgKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc3JjL21lc29uLmJ1aWxkIGIvc3JjL21lc29uLmJ1aWxkCj4g
PiBpbmRleCBmZTE5YzE2Li4zODM3YTlkIDEwMDY0NAo+ID4gLS0tIGEvc3JjL21lc29uLmJ1aWxk
Cj4gPiArKysgYi9zcmMvbWVzb24uYnVpbGQKPiA+IEBAIC0xMjQsNiArMTI0LDEzIEBAIHNwaWNl
X2NsaWVudF9nbGliX3NvdXJjZXMgPSBbCj4gPiAgICAndXNiLWJhY2tlbmQuYycsCj4gPiAgICAn
dXNiLWVtdWxhdGlvbi5oJywKPiA+ICAgICd1c2ItYmFja2VuZC5oJywKPiA+ICsgICd1c2ItZGV2
aWNlLWNkLmMnLAo+ID4gKyAgJ3VzYi1kZXZpY2UtY2QuaCcsCj4gPiArICAnY2Qtc2NzaS5jJywK
PiA+ICsgICdjZC1zY3NpLmgnLAo+ID4gKyAgJ2NkLXNjc2ktZGV2LXBhcmFtcy5oJywKPiA+ICsg
ICdjZC11c2ItYnVsay1tc2QuYycsCj4gPiArICAnY2QtdXNiLWJ1bGstbXNkLmgnLAo+ID4gICAg
J3ZtY3N0cmVhbS5jJywKPiA+ICAgICd2bWNzdHJlYW0uaCcsCj4gPiAgXQo+Cj4gRnJlZGlhbm8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
