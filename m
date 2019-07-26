Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E26176F00
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 18:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B485B6EDC7;
	Fri, 26 Jul 2019 16:26:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462906EDC7
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 16:26:16 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id z3so106050660iog.0
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zjhwBMCwb/HTqhABuxvHNTqJ6yJcVp/uoLVyu8dStZg=;
 b=VEtOx/sI7kZXPHuEtJ4vzckl9qo6fqOKEWEMm/qBX0mtwqpjceggSh7BdUXOwgelba
 f/UiLBLGcU//DpnHR8Zwdf44zx/lOw20rttYvZ0ceS5RNkwGFJRoAPPL0chu4XIOUfrr
 xhwVX2h1hqoXaMeGL/ViyDLkLJSK00e+BQd8AwBKZ8HHkyWb51WvZpNqnRiwUoYuaPIp
 HQ7kHHkdb9sRIqnSimDeGU6ffVDiX1U/IuSfQkHNP+Xiyk6NRO+8Lu3ELDgqte5/bLXv
 Pa0Xqj4PRfP+1jfziXYyRjOMe9x7oLQG5cHmIXUPUNZzwW2WB++lZQ0fcvmbJSmpiPFF
 8vPQ==
X-Gm-Message-State: APjAAAWedM6lxgqP1abdKxPMGa0qFkT42fTCrS+C7g4sEZU/Mp9wpL30
 ZmT9f1Xjtp5cJRXaKKI4k0ij6P7N5xhEaopFBdI=
X-Google-Smtp-Source: APXvYqxuv2iSSXQzX6kBAFkYL1CZ8NiNB/C8kcjwIrLhuBQE/U25JBL2+UU+/exNvQ7ihmk7+ACHx3ubI6uKcNBb3gw=
X-Received: by 2002:a02:c550:: with SMTP id g16mr96213199jaj.49.1564158375521; 
 Fri, 26 Jul 2019 09:26:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-10-yuri.benditovich@daynix.com>
 <1289830693.3135464.1564147025076.JavaMail.zimbra@redhat.com>
 <CAOEp5OeNhuh7rEVGwD5FdYvtg8QFia8MBMi_uMyDUQeQ65eGJQ@mail.gmail.com>
 <492201422.3164441.1564156300927.JavaMail.zimbra@redhat.com>
In-Reply-To: <492201422.3164441.1564156300927.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Fri, 26 Jul 2019 19:26:01 +0300
Message-ID: <CAOEp5Oe7Zf0wmfuC9i-5F_eHMmuG4w_XXyEusiLRguhvubktHQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=zjhwBMCwb/HTqhABuxvHNTqJ6yJcVp/uoLVyu8dStZg=;
 b=jfhUQ+5IgJMo0/uO3mwv8J1odtRrtodKZIHPzdDmSAatBTsWa5hhF3KRiiwXxmJ1Fp
 ad1wT6Z/IHvogR6CQZmLWA8Y8eplHyPduynvswVM2OOXg3PQqSTXkZtDAsn/K1Q7be8n
 t1IK+aD/OXqqR003r0NJJO9RVKLYdzIsRc5adylbq3750L9pYCRCZIORzomGiA5rGqkc
 VmR8OP2YPUr+kShb87zTQ+MIrHE9xCyhz+lCS4H66xBp35+zeuA2dOsUGxtUPcks0F5i
 ygWyZyUJ8YpO4A7S4G87NkgZ4i51d+Xf4Ww7rdHFzgENWABWWJSEYQ073i2AXiVFuKr+
 Z98w==
Subject: Re: [Spice-devel] [spice-gtk 9/9] usb-redir: enable redirection of
 emulated CD drive
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

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgNjo1MSBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDQ6MTcgUE0g
RnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiA+
Cj4gPiA+ID4gUmVnaXN0ZXIgY29uc3RydWN0b3IgZm9yIGVtdWxhdGVkIENEIGRldmljZS4gTm93
IGNyZWF0aW9uCj4gPiA+ID4gb2YgQ0QgZGV2aWNlcyBhdCBzdGFydHVwIGlzIHBvc3NpYmxlLgo+
ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5k
aXRvdmljaEBkYXluaXguY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBzcmMvbWVzb24uYnVpbGQg
ICB8IDYgKysrKysrCj4gPiA+ID4gIHNyYy91c2ItYmFja2VuZC5jIHwgMSArCj4gPiA+ID4gIDIg
ZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvc3JjL21lc29uLmJ1aWxkIGIvc3JjL21lc29uLmJ1aWxkCj4gPiA+ID4gaW5kZXggNDlmZWM1
Mi4uOTQ0YjA4MyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9zcmMvbWVzb24uYnVpbGQKPiA+ID4gPiAr
KysgYi9zcmMvbWVzb24uYnVpbGQKPiA+ID4gPiBAQCAtMTI0LDYgKzEyNCwxMiBAQCBzcGljZV9j
bGllbnRfZ2xpYl9zb3VyY2VzID0gWwo+ID4gPiA+ICAgICd1c2ItYmFja2VuZC5jJywKPiA+ID4g
PiAgICAndXNiLWVtdWxhdGlvbi5oJywKPiA+ID4gPiAgICAndXNiLWJhY2tlbmQuaCcsCj4gPiA+
ID4gKyAgJ3VzYi1kZXZpY2UtY2QuYycsCj4gPiA+ID4gKyAgJ2NkLXNjc2kuYycsCj4gPiA+ID4g
KyAgJ2NkLXNjc2kuaCcsCj4gPiA+ID4gKyAgJ2NkLXNjc2ktZGV2LXBhcmFtcy5oJywKPiA+ID4g
PiArICAnY2QtdXNiLWJ1bGstbXNkLmMnLAo+ID4gPiA+ICsgICdjZC11c2ItYnVsay1tc2QuaCcs
Cj4gPiA+ID4gICAgJ3ZtY3N0cmVhbS5jJywKPiA+ID4gPiAgICAndm1jc3RyZWFtLmgnLAo+ID4g
PiA+ICBdCj4gPiA+Cj4gPiA+IEkgd291bGQgc3BsaXQgdGhpcyBwYXJ0IG9mIHRoZSBwYXRjaCBh
bmQgYWRkIHRoZSBmaWxlcyB0byB0aGUKPiA+ID4gYnVpbGQgYXMgc29vbiBhcyB0aGV5IGFyZSBh
ZGRlZCBzbyB0byBjaGVjayB0aGF0IGF0IGxlYXN0IHRoZXkKPiA+ID4gY29tcGlsZXIsIGV2ZW4g
aWYgdGhleSBhcmUgbm90IHVzZWQuCj4gPgo+ID4gTm8gcHJvYmxlbQo+ID4KPiA+ID4KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4g
PiA+IGluZGV4IDAyMzY5ZDIuLjc2MGRjMTYgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvc3JjL3VzYi1i
YWNrZW5kLmMKPiA+ID4gPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gPiA+IEBAIC00MzIs
NiArNDMyLDcgQEAgU3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXcoR0Vycm9y
Cj4gPiA+ID4gKiplcnJvcikKPiA+ID4gPiAgI2VuZGlmCj4gPiA+ID4gICNlbmRpZgo+ID4gPiA+
ICAgICAgICAgIGJlLT5vd25fZGV2aWNlc19tYXNrID0gMzsgLyogZXhjbHVkZSBhZGRyZXNzZXMg
MCBhbmQgMSAqLwo+ID4gPiA+ICsgICAgICAgIHNwaWNlX3VzYl9kZXZpY2VfcmVnaXN0ZXJfY2Qo
YmUpOwo+ID4gPiA+ICAgICAgfQo+ID4gPiA+ICAgICAgU1BJQ0VfREVCVUcoIiVzIDw8IiwgX19G
VU5DVElPTl9fKTsKPiA+ID4gPiAgICAgIHJldHVybiBiZTsKPiA+ID4KPiA+ID4gVGhpcyBpcyBh
ZGRpbmcgYSBjaXJjdWxhciBkZXBlbmRlbmN5Lgo+ID4gPiB1c2ItYmFja2VuZCB3aWxsIGRlcGVu
ZCBvbiB1c2ItZGV2aWNlLWNkIHdoaWNoIGRlcGVuZHMgb24gdXNiLWJhY2tlbmQuCj4gPgo+ID4g
SSBhbSBub3QgYXdhcmUgb2YgZGVwcmVjYXRpb24gb2YgY2lyY3VsYXIgZGVwZW5kZW5jeSBiZXR3
ZWVuIEMgZmlsZXMuCj4gPiBGb3IgZXhhbXBsZSwgbGFzdCB0aW1lIEkgd2FzIHJlcXVlc3RlZCBi
eSBWaWN0b3IgdG8gY3JlYXRlIHN1Y2gKPiA+IGRlcGVuZGVuY3kgYmV0d2VlbiB1c2ItcmVkaXIt
Y2hhbm5lbCBhbmQgdXNiLWJhY2tlbmQuCj4gPgo+Cj4gTm90IHNwZWNpZmljYWxseSByZWZlcnJp
bmcgdG8gbGluayBpc3N1ZSwgSSdtIHRhbGtpbmcgYWJvdXQgRGVzaWduIFBhdHRlcm5zLAo+IERl
cGVuZGVuY3kgSW52ZXJzaW9uIFByaW5jaXBsZSBhbmQgc3VjaCBzdHVmZi4KPiBJZiB5b3UgbGlr
ZSBzcGFnaGV0dGkgY29kZSBjaXJjdWxhciBkZXBlbmRlbmN5IGlzIHBlcmZlY3RseSBmaW5lLgoK
dXNiLWRldmljZS1tYW5hZ2VyIGFuZCB1c2ItcmVkaXItY2hhbm5lbCBoYXZlIHN1Y2ggZGVwZW5k
ZW5jeSAtIHRoaXMgaXMgZmluZS4KdXNiLWJhY2tlbmQgYW5kIGNkLWVtdWxhdGlvbiBoYXZlIHN1
Y2ggZGVvZW5kZW5jeSAtIHRoaXMgZmFpbHMgdGhlIGRlc2lnbi4KSU1PLCBzb21lYm9keSBuZWVk
IHRvIGNvbmNlbnRyYXRlIGEgbWluaW1hbCBrbm93bGVkZ2UgYWJvdXQgZW11bGF0ZWQKZGV2aWNl
cyBhbmQgdGhlIGJlc3QgY2FuZGlkYXRlIGlzIHRoZSBiYWNrZW5kLgpBbmQgSU1PLCBhbGwgb3Ro
ZXIgZG8gbm90IG5lZWQgdGhpcyBrbm93bGVkZ2UuCkFuZCBJTU8sIHN1Y2ggbGltaXRhdGlvbiBv
ZiBrbm93bGVkZ2UgaXMgdGhlIHdheSB0byBwcmV2ZW50IGNyZWF0aW9uCm9mIHNwYWdoZXR0aSBj
b2RlLgoKCj4gRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
