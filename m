Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18CF850F2
	for <lists+spice-devel@lfdr.de>; Wed,  7 Aug 2019 18:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 694006E73B;
	Wed,  7 Aug 2019 16:20:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C2A6E73B
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Aug 2019 16:20:27 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id x21so13284089otq.12
 for <spice-devel@lists.freedesktop.org>; Wed, 07 Aug 2019 09:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i6FJFRbZ8pQQqyQWOpb1CzZwUu+w28prnM1vCEHfFdE=;
 b=pyVHDsbI4oTqlb36qEqX+2BJoJ2Ff9PrFjxDCmDOPWhIfI0bfXWRXwQaX0WK2ZonX/
 r8JtK20KJmv7ljMAix+PjT5jejwQT8ifpLTEAmptsocyjIGIOh2VOWZmwbkxDKDfo+U5
 jU1smTms+4165JXnGDHX6b9H6GMCJT+5+STYZ+hXjlGQxJif8e74tXnNb+gIz44Xz9qq
 OuxKCIz+hlDnYmRZ7Qj+0xAbqmL+5LQxL0/9eziNv9dLInyGVMM11vav8Tt4as1Lxo63
 L1YuNDUdJFIjQ+6dsaAD8/3UryKmdVnXXytTf1tpCEnDfI01mcxdccQHB7tVCvuLcpm5
 l0Zw==
X-Gm-Message-State: APjAAAUT6OETM8JDUGP8HINwqlTTBe4GTsz9IWdMyix03V2QBpI1eON/
 DB27yCRXSELouwT411R2WugHZDdbx6FLjOvll3wFXAEOfhY=
X-Google-Smtp-Source: APXvYqwI1Du2BUHqRTIHNirHSvfBunMDr09v73OQ1vrjHnpDKkevfYbiBGa9gJLjUj0PExqxmmOiHPV84MeV87YR8KU=
X-Received: by 2002:a02:6616:: with SMTP id k22mr11065715jac.100.1565194826367; 
 Wed, 07 Aug 2019 09:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-2-yuri.benditovich@daynix.com>
 <2116683883.4696862.1564999080941.JavaMail.zimbra@redhat.com>
 <CAOEp5OeTvOQiy6_n3tgLgkLP4UOnJ2W3Qq3b29mLJitk4BO8EQ@mail.gmail.com>
 <226410254.4719296.1565007428513.JavaMail.zimbra@redhat.com>
 <CAOEp5Odc3E4SjdPcmbV_F4GHB7B0w-ET67+9f-paBgw61smdWw@mail.gmail.com>
 <1194090178.5014782.1565191286300.JavaMail.zimbra@redhat.com>
In-Reply-To: <1194090178.5014782.1565191286300.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Wed, 7 Aug 2019 19:20:12 +0300
Message-ID: <CAOEp5OenpGZa_LTPHdG_+tW+dhDJDyQt7pGAjH-ssZ3Aq4f2FA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=i6FJFRbZ8pQQqyQWOpb1CzZwUu+w28prnM1vCEHfFdE=;
 b=Hl+omEGGGUGhdoAuoPHY9DMrEIyhv4HiVmaugy4zNn4zlczePPPTH761VtkPFIH/K7
 T+G2iQamTcVzWLj0GFKnUj9pArIlVp91S7dXLBUNB5oEQDhB+PzpKvXOX7DTiONFjomL
 wkMjt7cylr6gi4mtBYwYO2x4wTT37EmU/U8c9O2U2ww3tfGCQlHLB4Rdf7vh/Z8zgzX+
 UnI51YYzaY5yEMhya+gOIa5QBuhJ7TE1d/eGXqFUhINZvn3fJayZu8aoh7MlpN14CxSi
 OJ2LFpBUW/TMUoe13un97AeRtp9XqklegansM+IMjllThjYPNbeP8t/t/rKzGHZifcqx
 yJ2w==
Subject: Re: [Spice-devel] [spice-gtk v2 1/8] usb-redir: define interfaces
 to support emulated devices
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

T24gV2VkLCBBdWcgNywgMjAxOSBhdCA2OjIxIFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4KPiA+IE9uIE1vbiwgQXVnIDUsIDIwMTkgYXQgMzoxNyBQ
TSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
ID4KPiA+ID4gPiBPbiBNb24sIEF1ZyA1LCAyMDE5IGF0IDEyOjU4IFBNIEZyZWRpYW5vIFppZ2xp
byA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gPiA+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gU3BpY2VVc2JCYWNrZW5kRGV2aWNlIHN0cnVjdHVyZSBpcyBleHRlbmRl
ZCB0byBzdXBwb3J0Cj4gPiA+ID4gPiA+IGFkZGl0aW9uYWwga2luZCBvZiBkZXZpY2UgdGhhdCBp
cyBlbXVsYXRlZCBieSBTcGljZS1HVEsKPiA+ID4gPiA+ID4gYW5kIG5vdCBwcmVzZW50IGxvY2Fs
bHkgKGFuZCBkb2VzIG5vdCBoYXZlIGxpYnVzYl9kZXZpY2UpLAo+ID4gPiA+ID4gPiBzdWNoIGRl
dmljZSBoYXMgaW5zdGVhZCBwb2ludGVyIHRvIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UKPiA+ID4g
PiA+ID4gYWJzdHJhY3Qgc3RydWN0dXJlLiBTcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiBvZiBzdWNo
IGRldmljZQo+ID4gPiA+ID4gPiBkZXBlbmRzIG9uIGl0cyBkZXZpY2UgdHlwZS4gSW1wbGVtZW50
YXRpb24gbW9kdWxlIHdpbGwgZGVmaW5lCj4gPiA+ID4gPiA+IGNvbnN0cnVjdG9yIGZvciBzcGVj
aWZpYyBkZXZpY2UgdHlwZS4KPiA+ID4gPiA+ID4gRGV2aWNlIHN0cnVjdHVyZSBpcyBhYnN0cmFj
dCBidXQgYWx3YXlzIHN0YXJ0cyBmcm9tIHRhYmxlIG9mCj4gPiA+ID4gPiA+IHZpcnR1YWwgZnVu
Y3Rpb25zIHJlcXVpcmVkIHRvIHJlZGlyZWN0IHN1Y2ggdmlydHVhbCBkZXZpY2UuCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVu
ZGl0b3ZpY2hAZGF5bml4LmNvbT4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBzcmMvbWVz
b24uYnVpbGQgICAgIHwgICAxICsKPiA+ID4gPiA+ID4gIHNyYy91c2ItYmFja2VuZC5jICAgfCAx
MDIKPiA+ID4gPiA+ID4gICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystCj4gPiA+ID4gPiA+ICBzcmMvdXNiLWJhY2tlbmQuaCAgIHwgICAzICsrCj4gPiA+ID4gPiA+
ICBzcmMvdXNiLWVtdWxhdGlvbi5oIHwgIDkxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gPiA+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAxOTUgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNi
LWVtdWxhdGlvbi5oCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zcmMvbWVz
b24uYnVpbGQgYi9zcmMvbWVzb24uYnVpbGQKPiA+ID4gPiA+ID4gaW5kZXggYjRhNjg3MC4uZmUx
OWMxNiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvc3JjL21lc29uLmJ1aWxkCj4gPiA+ID4gPiA+
ICsrKyBiL3NyYy9tZXNvbi5idWlsZAo+ID4gPiA+ID4gPiBAQCAtMTIyLDYgKzEyMiw3IEBAIHNw
aWNlX2NsaWVudF9nbGliX3NvdXJjZXMgPSBbCj4gPiA+ID4gPiA+ICAgICd1c2J1dGlsLmMnLAo+
ID4gPiA+ID4gPiAgICAndXNidXRpbC5oJywKPiA+ID4gPiA+ID4gICAgJ3VzYi1iYWNrZW5kLmMn
LAo+ID4gPiA+ID4gPiArICAndXNiLWVtdWxhdGlvbi5oJywKPiA+ID4gPiA+ID4gICAgJ3VzYi1i
YWNrZW5kLmgnLAo+ID4gPiA+ID4gPiAgICAndm1jc3RyZWFtLmMnLAo+ID4gPiA+ID4gPiAgICAn
dm1jc3RyZWFtLmgnLAo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMg
Yi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gPiA+ID4gPiBpbmRleCAzMzM0ZjU2Li5iZTYwY2YzIDEw
MDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gPiA+ID4gPiArKysg
Yi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gPiA+ID4gPiBAQCAtMzksNiArMzksNyBAQAo+ID4gPiA+
ID4gPiAgI2luY2x1ZGUgInVzYnJlZGlycGFyc2VyLmgiCj4gPiA+ID4gPiA+ICAjaW5jbHVkZSAi
c3BpY2UtdXRpbC5oIgo+ID4gPiA+ID4gPiAgI2luY2x1ZGUgInVzYi1iYWNrZW5kLmgiCj4gPiA+
ID4gPiA+ICsjaW5jbHVkZSAidXNiLWVtdWxhdGlvbi5oIgo+ID4gPiA+ID4gPiAgI2luY2x1ZGUg
ImNoYW5uZWwtdXNicmVkaXItcHJpdi5oIgo+ID4gPiA+ID4gPiAgI2luY2x1ZGUgInNwaWNlLWNo
YW5uZWwtcHJpdi5oIgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBAQCAtNDYsNyArNDcsMTAgQEAK
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlCj4g
PiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ICsgICAgLyogUG9pbnRlciB0byBkZXZpY2UuIEVpdGhl
ciByZWFsIGRldmljZSAobGlidXNiX2RldmljZSkKPiA+ID4gPiA+ID4gKyAgICAgKiBvciBlbXVs
YXRlZCBvbmUgKGVkZXYpICovCj4gPiA+ID4gPiA+ICAgICAgbGlidXNiX2RldmljZSAqbGlidXNi
X2RldmljZTsKPiA+ID4gPiA+ID4gKyAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlICplZGV2Owo+
ID4gPiA+ID4gPiAgICAgIGdpbnQgcmVmX2NvdW50Owo+ID4gPiA+ID4gPiAgICAgIFNwaWNlVXNi
QmFja2VuZENoYW5uZWwgKmF0dGFjaGVkX3RvOwo+ID4gPiA+ID4gPiAgICAgIFVzYkRldmljZUlu
Zm9ybWF0aW9uIGRldmljZV9pbmZvOwo+ID4gPiA+ID4gPiBAQCAtNjYsNiArNzAsMTAgQEAgc3Ry
dWN0IF9TcGljZVVzYkJhY2tlbmQKPiA+ID4gPiA+ID4gICAgICBsaWJ1c2JfZGV2aWNlICoqbGli
dXNiX2RldmljZV9saXN0Owo+ID4gPiA+ID4gPiAgICAgIGdpbnQgcmVkaXJlY3Rpbmc7Cj4gPiA+
ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgIC8qIE1hc2sgb2Yg
YWxsb2NhdGVkIGRldmljZSwgYSBzcGVjaWZpYyBiaXQgc2V0IHRvIDEgdG8gaW5kaWNhdGUKPiA+
ID4gPiA+ID4gdGhhdAo+ID4gPiA+ID4gPiB0aGUgZGV2aWNlIGF0Cj4gPiA+ID4gPiA+ICsgICAg
ICogdGhhdCBhZGRyZXNzIGlzIGFsbG9jYXRlZCAqLwo+ID4gPiA+ID4gPiArICAgIHVpbnQzMl90
IG93bl9kZXZpY2VzX21hc2s7Cj4gPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiAgc3RydWN0IF9TcGljZVVzYkJhY2tlbmRDaGFubmVsCj4gPiA+ID4gPiA+IEBAIC00MTMsNiAr
NDIxLDggQEAgU3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXcoR0Vycm9yCj4g
PiA+ID4gPiA+ICoqZXJyb3IpCj4gPiA+ID4gPiA+ICAgICAgICAgIGxpYnVzYl9zZXRfb3B0aW9u
KGJlLT5saWJ1c2JfY29udGV4dCwKPiA+ID4gPiA+ID4gICAgICAgICAgTElCVVNCX09QVElPTl9V
U0VfVVNCREspOwo+ID4gPiA+ID4gPiAgI2VuZGlmCj4gPiA+ID4gPiA+ICAjZW5kaWYKPiA+ID4g
PiA+ID4gKyAgICAgICAgLyogZXhjbHVkZSBhZGRyZXNzZXMgMCAocmVzZXJ2ZWQpIGFuZCAxIChy
b290IGh1YikgKi8KPiA+ID4gPiA+ID4gKyAgICAgICAgYmUtPm93bl9kZXZpY2VzX21hc2sgPSAz
Owo+ID4gPiA+ID4gPiAgICAgIH0KPiA+ID4gPiA+ID4gICAgICBTUElDRV9ERUJVRygiJXMgPDwi
LCBfX0ZVTkNUSU9OX18pOwo+ID4gPiA+ID4gPiAgICAgIHJldHVybiBiZTsKPiA+ID4gPiA+ID4g
QEAgLTUyOSw4ICs1MzksMTMgQEAgdm9pZAo+ID4gPiA+ID4gPiBzcGljZV91c2JfYmFja2VuZF9k
ZXZpY2VfdW5yZWYoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gPiA+ID4gPiA+ICB7Cj4g
PiA+ID4gPiA+ICAgICAgTE9VRF9ERUJVRygiJXMgPj4gJXAoJWQpIiwgX19GVU5DVElPTl9fLCBk
ZXYsIGRldi0+cmVmX2NvdW50KTsKPiA+ID4gPiA+ID4gICAgICBpZiAoZ19hdG9taWNfaW50X2Rl
Y19hbmRfdGVzdCgmZGV2LT5yZWZfY291bnQpKSB7Cj4gPiA+ID4gPiA+IC0gICAgICAgIGxpYnVz
Yl91bnJlZl9kZXZpY2UoZGV2LT5saWJ1c2JfZGV2aWNlKTsKPiA+ID4gPiA+ID4gLSAgICAgICAg
TE9VRF9ERUJVRygiJXMgZnJlZWluZyAlcCAobGlidXNiICVwKSIsIF9fRlVOQ1RJT05fXywgZGV2
LAo+ID4gPiA+ID4gPiBkZXYtPmxpYnVzYl9kZXZpY2UpOwo+ID4gPiA+ID4gPiArICAgICAgICBp
ZiAoZGV2LT5saWJ1c2JfZGV2aWNlKSB7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICBsaWJ1c2Jf
dW5yZWZfZGV2aWNlKGRldi0+bGlidXNiX2RldmljZSk7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICBMT1VEX0RFQlVHKCIlcyBmcmVlaW5nICVwIChsaWJ1c2IgJXApIiwgX19GVU5DVElPTl9fLAo+
ID4gPiA+ID4gPiBkZXYsCj4gPiA+ID4gPiA+IGRldi0+bGlidXNiX2RldmljZSk7Cj4gPiA+ID4g
PiA+ICsgICAgICAgIH0KPiA+ID4gPiA+ID4gKyAgICAgICAgaWYgKGRldi0+ZWRldikgewo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgZGV2aWNlX29wcyhkZXYtPmVkZXYpLT51bnJlYWxpemUoZGV2
LT5lZGV2KTsKPiA+ID4gPiA+ID4gKyAgICAgICAgfQo+ID4gPiA+ID4gPiAgICAgICAgICBnX2Zy
ZWUoZGV2KTsKPiA+ID4gPiA+ID4gICAgICB9Cj4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+IEBA
IC04MjksNCArODQ0LDg3IEBACj4gPiA+ID4gPiA+IHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxf
Z2V0X2d1ZXN0X2ZpbHRlcihTcGljZVVzYkJhY2tlbmRDaGFubmVsCj4gPiA+ID4gPiA+ICpjaCwK
PiA+ID4gPiA+ID4gICAgICB9Cj4gPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ICt2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9yZXBvcnRfY2hhbmdlKFNwaWNlVXNiQmFj
a2VuZCAqYmUsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFNwaWNlVXNiQmFja2VuZERldmljZQo+ID4gPiA+ID4gPiAqZGV2KQo+ID4gPiA+
ID4gPiArewo+ID4gPiA+ID4gPiArICAgIGdjaGFyICpkZXNjOwo+ID4gPiA+ID4gPiArICAgIGdf
cmV0dXJuX2lmX2ZhaWwoZGV2ICYmIGRldi0+ZWRldik7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ID4gKyAgICBkZXNjID0KPiA+ID4gPiA+ID4gZGV2aWNlX29wcyhkZXYtPmVkZXYpLT5nZXRfcHJv
ZHVjdF9kZXNjcmlwdGlvbihkZXYtPmVkZXYpOwo+ID4gPiA+ID4gPiArICAgIFNQSUNFX0RFQlVH
KCIlczogJXMiLCBfX0ZVTkNUSU9OX18sIGRlc2MpOwo+ID4gPiA+ID4gPiArICAgIGdfZnJlZShk
ZXNjKTsKPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4KPiA+ID4gPiA+IExv
b2tzIGxpa2UgdGhpcyBmdW5jdGlvbiBpcyBqdXN0IGZvciBkZWJ1Z2dpbmcuCj4gPiA+ID4gPiBX
aHkgaW5zdGVhZCB1c2Ugc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2dldF9kZXNjcmlwdGlvbiBp
bgo+ID4gPiA+ID4gdXNiLWRldmljZS1jZC5jCj4gPiA+ID4gPiBhbmQgY2FsbCBTUElDRV9ERUJV
RyBkaXJlY3RseT8KPiA+ID4gPgo+ID4gPiA+IHVzYi1kZXZpY2UtY2QuYyBoYXMgbm90aGluZyB0
byBkbyB3aXRoIHRoaXMgY2hhbmdlLgo+ID4gPiA+IEl0IGlzc3VlcyB0aGUgdXBkYXRlIHRvIHdo
b20gaXQgbWlnaHQgYmUgaW1wb3J0YW50Lgo+ID4gPiA+IEN1cnJlbnRseSBhcyB3ZSBkbyBub3Qg
aGF2ZSBVSSwgYWxzbyBvdXRzaWRlIG9mIHVzYi1kZXZpY2UtY2QuYyB0aGVyZQo+ID4gPiA+IGlz
IG5vIGFjdGlvbi4KPiA+ID4gPgo+ID4gPgo+ID4gPiBJdCBzb3VuZHMgZmluZS4gSSBmb3VuZCB0
aGUgbmFtZSBub3QgbXVjaCBtZWFuaW5nZnVsLiBMb29raW5nIGF0IHRoZSBjb2RlCj4gPiA+IHRo
aXMgaXMgYSBzdGF0ZSBjaGFuZ2UgKHN0b3Agb3Igc3RhcnQpLCB0aGUgbmFtZSBpbmRpY2F0ZSBh
IGdlbmVyaWMKPiA+ID4gImNoYW5nZSIuIE1heWJlICJzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
c3RhdGVfY2hhbmdlZCIgd291bGQgYmUgbW9yZQo+ID4gPiBtZWFuaW5nZnVsPwo+ID4gPgo+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gK3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0KFNw
aWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+ID4gPiA+IFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2
KQo+ID4gPiA+ID4gPiArewo+ID4gPiA+ID4gPiArICAgIGdfcmV0dXJuX2lmX2ZhaWwoZGV2ICYm
IGRldi0+ZWRldik7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICBpZiAoYmUtPmhvdHBs
dWdfY2FsbGJhY2spIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2so
YmUtPmhvdHBsdWdfdXNlcl9kYXRhLCBkZXYsIEZBTFNFKTsKPiA+ID4gPiA+ID4gKyAgICB9Cj4g
PiA+ID4gPiA+ICsgICAgYmUtPm93bl9kZXZpY2VzX21hc2sgJj0gfigxIDw8IGRldi0+ZGV2aWNl
X2luZm8uYWRkcmVzcyk7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICBzcGljZV91c2Jf
YmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiBGcm9tIG15IGV4
cGVyaW1lbnRzIGxvb2tzIGxpa2UgdGhhdCByZWZlcmVuY2UgY291bnRpbmcgZm9yIHRoZXNlCj4g
PiA+ID4gPiBlbXVsYXRlZCBkZXZpY2VzIGFyZSBkaWZmZXJlbnQgZnJvbSBub3JtYWwgb25lcy4K
PiA+ID4gPiA+IEluIG5vcm1hbCBvbmVzIHRoZSBkZXZpY2UgbGlzdCBpbiB1c2IgbWFuYWdlciBp
cyB0aGUgbWFpbiBvd25lciwKPiA+ID4gPiA+IGZvciB0aGVzZSBkZXZpY2VzIHlvdSBoYXZlIGFu
IGFkZGl0aW9uYWwgcmVmZXJlbmNlIHRoYXQgaXMgcmVtb3ZlZAo+ID4gPiA+ID4gaGVyZS4gU28g
aWYgdGhpcyBmdW5jdGlvbiBpcyBub3QgY2FsbGVkIHlvdSBoYXZlIGEgbGVhay4gQWxzbwo+ID4g
PiA+ID4gaXMgd2VpcmQgdG8gaGF2ZSBhIHJlZmVyZW5jZSB3aXRob3V0IGhhdmluZyBhbiBhY3R1
YWwgcG9pbnRlci4KPiA+ID4gPiA+IFRoZSBzYW1lIGFwcGx5IHRvIG93bl9kZXZpY2VzX21hc2sg
Yml0IGNsZWFyYW5jZSAoYWRkZWQgaW4gdGhpcwo+ID4gPiA+ID4gdmVyc2lvbiBvZiB0aGUgcGF0
Y2gpLiBJZiBJIHNldCB0aGUgYml0IGNyZWF0aW5nIGFuIG9iamVjdCBJIGV4cGVjdAo+ID4gPiA+
ID4gdGhlIGJpdCB0byBiZSBjbGVhciBkdXJpbmcgdGhlIG9iamVjdCBkZXN0cnVjdGlvbiwgbm90
IGFub3RoZXIKPiA+ID4gPiA+IG5vdCByZWxhdGVkIGZ1bmN0aW9uLiBJIHdyb3RlIGEgdGVzdCB0
aGF0IGNhbGwgaW4gYSBsb29wIDEyOCB0aW1lcwo+ID4gPiA+ID4gY3JlYXRlX2VtdWxhdGVkX2Nk
IGFuZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYgYW5kIGZhaWxzCj4gPiA+ID4gPiAo
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UtZ3RrL2NvbW1pdC8w
YmJjMGQ4NWI0M2I1ZGJjYjkyYzJhMzkxNWI0YjFjOWQ5MjI4YTdhLAo+ID4gPiA+ID4gd2lsbCBw
cm9iYWJseSBkaXNhcHBlYXIgaW4gYSB3aGlsZSkuIEkgd291bGQgZXhwZWN0IHRoaXMgdGVzdCB0
bwo+ID4gPiA+ID4gcGFzcyBhbmQgdG8gZGVsZXRlIGNvbXBsZXRlbHkgdGhlIG9iamVjdCB3aXRo
b3V0IGxlYWtzLgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBpcyB3cm9uZyBhcHByb2FjaCwgSSB0aGlu
ay4KPiA+ID4gPiBUaGUgaW50ZXJmYWNlIHNob3VsZCBiZSBjaGFuZ2VkIGFuZCBzaGFsbCBub3Qg
cmV0dXJuIHRoZSBvYmplY3QuCj4gPiA+ID4gKGluaXRpYWwgaW50ZXJmYWNlIHJldHVybmVkIGJv
b2xlYW4pCj4gPiA+ID4gdXNiLWRldmljZS1tYW5hZ2VyIHNoYWxsIHJlY2VpdmUgdGhlIGRldmlj
ZSBvbmx5IHZpYSBob3RwbHVnCj4gPiA+ID4gaW5kaWNhdGlvbiwgcmVmZXJlbmNlIGl0IGFuZCBk
ZXJlZiBpdCB3aGVuIGl0IHJlY2VpdmVzIHVucGx1Zy4KPiA+ID4gPgo+ID4gPgo+ID4gPiBUaGF0
IG1ha2Ugc2Vuc2UgYW5kIGJlIG1vcmUgY29oZXJlbnQuIEluIHRoaXMgY2FzZSB0aGUgY2FsbCB0
bwo+ID4gPiBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYgaXMgc3VyZWx5IHdyb25nIGFu
ZCBzaG91bGQgYmUgbW92ZWQKPiA+ID4gdG8gc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxh
dGVkX2RldmljZSAoYXMgc3VnZ2VzdGVkIGJlbG93KQo+ID4gPiB0byBhdm9pZCBsZWFrcyBvciB1
c2UtYWZ0ZXItZnJlZS4KPiA+ID4gSSBzdGlsbCB0aGluayB0aGF0IGEgYWxsb2MvZnJlZSB0ZXN0
IHNob3VsZCB3b3JrIHdpdGhvdXQgY2FsbGluZwo+ID4gPiBhIHNwaWNlX3VzYl9iYWNrZW5kX2Rl
dmljZV9lamVjdCBmdW5jdGlvbi4KPiA+Cj4gPiBUaGlzIHRlc3QgaXMgcHJvYmFibHkgZ29vZCBm
b3Igc29tZXRoaW5nIHRoYXQgSSBkbyBub3Qgc2VlLCBidXQgaXQgaGFzCj4gPiBub3RoaW5nIGNv
bW1vbiB3aXRoIGhvdyB0aGluZ3Mgd29yayBpbiByZWFsaXR5Lgo+ID4gVGhlIG1haW4gZGlmZmVy
ZW5jZSB3aXRoIGxvY2FsIHVzYiBkZXZpY2VzIChhbmQgdGhlIHJlYXNvbiB3aHkgdGVoCj4gPiBy
ZWZlcmVuY2luZyBpcyBkb25lIGRpZmZlcmVudGx5KSBpcyB0aGF0IGZvciBsb2NhbCBkZXZpY2Vz
IHRoZSBsaXN0IG9mCj4gPiBleGlzdGluZyBkZXZpY2VzIGlzIGFsd2F5cyBtYWludGFpbmVkIGJ5
IHNvbWVib2R5Lgo+ID4gTG9jYWwgZGV2aWNlcyBleGlzdCB3aXRob3V0IGFueSByZWxhdGlvbiB0
byBiYWNrZW5kIG9iamVjdDogaW4gTGludXgKPiA+IGxpYnVzYiBtYWludGFpbnMgdGhlIGxpc3Qs
IGluIFdpbmRvd3MgbGlidXNiIGlzIGFibGUgdG8gcmV0dXJuIHRoZQo+ID4gbGlzdC4KPiA+IEkn
ZCBwcmVmZXIgdG8gYXZvaWQgdGhpcyBjb21wbGljYXRpb24gKGkuZS4gbWFpbnRhaW5pbmcgbGlz
dCBvZiBhbGwKPiA+IHRoZSBlbXVsYXRlZCBkZXZpY2VzKS4KPiA+Cj4KPiBJIHdhcyBub3QgcmVm
ZXJyaW5nIHRvIGFuIGFkZGl0aW9uYWwgbGlzdCwgSSB3YXMgdGFsa2luZyBhYm91dCAiZGV2aWNl
cyIKPiBhcnJheSBpbiBTcGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlLiBEZXZpY2VzIChlaXRo
ZXIgZnJvbSBsaWJ1c2IgYW5kCj4gYWxzbyBlbXVsYXRlZCkgYXJlIHdyYXBwZWQgaW5zaWRlIGEg
U3BpY2VVc2JCYWNrZW5kRGV2aWNlIHdoaWNoIGlzCj4gd3JhcHBlZCBpbnNpZGUgYSBTcGljZVVz
YkRldmljZSBhbmQgImRldmljZXMiIGZpZWxkIGtlZXAgYWxsIFNwaWNlVXNiRGV2aWNlLgo+Ckkg
anVzdCBleHBsYWluIHRoYXQgdGhlIGxpZmVjeWNsZSBvZiBsb2NhbCBkZXZpY2VzIGFuZCBlbXVs
YXRlZApkZXZpY2VzIGlzIGRpZmZlcmVudC4KTGV0J3MgdGFrZSBMaW51eCBhcyBhbiBleGFtcGxl
OgpsaWJ1c2IgbWFpbnRhaW5zIHVuZGVyIGxpYnVzYiBjb250ZXh0IHRoZSBsaXN0IG9mIGxvY2Fs
IGRldmljZXMgKHdpdGgKbWluaW1hbCByZWZjb3VudCBvZiAxKS4KV2hlbiB0aGUgZGV2aWNlIGlz
IGp1c3QgYWRkZWQ6IGxpYnVzYiBjYWxscyBob3RwbHVnIGluZGljYXRpb24sIGlmIHRoZQp1c2It
ZGV2aWNlLW1hbmFnZXIgZG9lcyBub3QgaW5jcmVtZW50IHRoZSByZWZjb3VudCwgbm9ib2R5IGtu
b3dzIHRoYXQKdGhlIGRldmljZSBpcyBleGlzdHMsIGJ1dCBpdCBkb2VzLgooSXQgd2lsbCBiZSBy
ZXBvcnRlZCwgZm9yIGV4YW1wbGUsIGlmIG9uZSByZWdpc3RlcnMgaG90cGx1ZyBjYWxsYmFjayAt
CmhvdHBsdWcgY2FsbGJhY2sgd2lsbCBiZSBmaXJlZCB3aXRoIGFsbCBleGlzdGluZyBkZXZpY2Vz
IGZyb20gX3RoaXNfCmxpc3QpLgpVc3VhbGx5LCBvZiBjb3Vyc2UsIHVzYi1kZXZpY2UtbWFuYWdl
ciByZWZlcmVuY2VzIHRoZSBiYWNrZW5kIGRldmljZQphbmQgdGhlIGJhY2tlbmQgZGV2aWNlIGhv
bGRzIGFkZGl0aW9uYWwgcmVmZXJlbmNlIHRvIHRoZSBsaWJ1c2IKZGV2aWNlLgpXaGVuIHRoZSBs
b2NhbCBkZXZpY2UgZGlzYXBwZWFycywgaG90IHVucGx1ZyBwcm9jZWR1cmUgaGFwcGVucywgYWxs
CnRoZSBndXlzICh0aGF0IHVzZWQgdGhlIGRldmljZSkgZGVyZWZlcmVuY2UgaXQsIGxpYnVzYiBh
bHNvCmRlcmVmZXJlbmNlcyBpdCAtPiB0aGUgZGV2aWNlIGRvZXMgbm90IGV4aXN0IGFueW1vcmUu
CldpdGggZW11bGF0ZWQgZGV2aWNlcyB3ZSBqdXN0IHVzZSB0aGUgZmFjdCB0aGF0IHVzYi1kZXZp
Y2UtbWFuYWdlcgpkb2VzIG5vdCBoYXZlIGFueSBleGNlcHRpb25zLCBpdCByZWZlcmVuY2VzIGVh
Y2ggbmV3IGRldmljZSBhbmQKZGVyZWZlcmVuY2VzIGl0IHdoZW4gdGhlIGRldmljZSBkaXNhcHBl
YXJzLgoKVGhlIHByb2JsZW0gb2YgdGhlIHRlc3QgaXM6Cml0IGRvZXMgY3JlYXRlX2NkX2Rldmlj
ZSwgdGhlbiB1bnJlZnMgaXQuYW5kIGV4cGVjdCB0aGUgZGV2aWNlIHdpbGwgYmUKZnJlZWQgY29y
cmVjdGx5IGFuZCBjb21wbGV0ZWx5LgpCdXQgdGhlIHVucmVmIGlzIG5vdCBhbiBvcHBvc2l0ZSBv
ZiBjcmVhdGVfY2RfZGV2aWNlIChmb3IgbW9zdCBvZiBnbGliCm9iamVjdCBpdCBzZWVtcyBuYXR1
cmFsLCBidXQgdGhpcyBpcyBub3QgYSBnbGliIG9iamVjdCkuCm9wcG9zaXRlIG9mICdjcmVhdGUn
IGlzICdlamVjdCcuCgpZZXMsIHdlIGNhbiBtYWtlIHRoaXMgdGVzdCB3b3JrLCBidXQgX0lNT18g
dGhpcyB3aWxsIG5vdCBpbXByb3ZlIHRoZQpxdWFsaXR5IG9mIHRoZSBsaWZlIHRvIGFueWJvZHkg
KGJlY2F1c2UgdGhlIHRlc3QgdXNlcyB0aGUgc2VxdWVuY2Ugb2YKb3BlcmF0aW9ucyB0aGF0IGlz
IG5vdCB1c2VkIGluIGFueSByZWFsIHNjZW5hcmlvKS4KRm9yIGV4YW1wbGUsIHdlIGNhbiBhZGQg
YmFja2VuZCAqIHRvIHRoZSBiYWNrZW5kIGRldmljZSBhbmQgcmVtb3ZlIHRoZQptYXNrIHdoZW4g
dGhlIHJlZmNvdW50IG9mIGJhY2tlbmQgZGV2aWNlIGdvZXMgdG8gemVyby4KSXMgdGhpcyB3aGF0
IHlvdSB3YW50IHRvIGJlIGRvbmU/Cgo+ID4gQW5vdGhlciBvcHRpb24gaXMganVzdCB0byBjaGFu
Z2UgdGhlIHRlc3Q6Cj4gPiBkZXZpY2UgPSBjcmVhdGVfY2RfZGV2aWNlKGJhY2tlbmQsIHBhcmFt
cykKPiA+IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9lamVjdChiYWNrZW5kLCBkZXZpY2UpCj4g
Pgo+Cj4gSW4gYSBwcmV2aW91cyBtYWlsIHlvdSBwcm9wb3NlZCB0byByZXR1cm4gYSBib29sZWFu
IGFuZCBkcm9wIGEgcmVmZXJlbmNlIHNvCj4geW91IHdvbid0IGhhdmUgYSBwb2ludGVyIHRvIGRl
dmljZSB0byBjYWxsIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9lamVjdC4KPgo+IFRoZSB0ZXN0
IGlzIHN1cHBvc2VkIHRvIHVzZSB1c2ItYmFja2VuZCBBUElzIGJ1dCBzcGljZV91c2JfYmFja2Vu
ZF9kZXZpY2VfZWplY3QKPiBpcyBub3QgYSB1c2ItYmFja2VuZCBBUEkgc28gdGhpcyB3b3VsZCBy
ZXF1aXJlIHRoYXQgQVBJIHRvIGJlIG1vdmVkLyJwcm9tb3RlZCIKPiB0byB1c2ItYmFja2VuZC4g
QWxzbyBpZiB0aGlzIGlzIHRoZSBBUEkgdGhpcyBtZWFucyB0aGF0IGFsbCBjcmVhdGVfY2RfZGV2
aWNlCj4gc2hvdWxkIGJlIGZvbGxvd2VkIGJ5IGEgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2Vq
ZWN0IGZvciBjb25zaXN0ZW5jeSBidXQKPiB0aGlzIHdvdWxkIGNhdXNlIHRoZSBkZXZpY2UgdG8g
YmUgcmVtb3ZlIHN0cmFpZ2h0IGF3YXkuIE9yIHlvdSBjb3VsZCBhZGQKPiBhbiBhZGRpdGlvbmFs
IGxpc3QgKHRoYXQgYXMgeW91IHN0YXRlZCBiZWZvcmUgeW91IGRvbid0IHdhbnQpIGFuZCBjYWxs
Cj4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0IGF0IHNvbWUgb3RoZXIgdGltZSAobm90
IGNsZWFyIHdoZW4pIGJ1dCB0aGlzCj4gc2hvdWxkIG5vdCBiZSBkb25lIGF1dG9tYXRpY2FsbHkg
b24gU0NTSSBzdGF0ZSBjaGFuZ2UgYXMgdGhpcyB3b3VsZCB0cmlnZ2VyCj4gYSB1c2UtYWZ0ZXIt
ZnJlZSBhcyB0aGUgcmVmZXJlbmNlIGNvdW50ZXIgZ2V0IG5lZ2F0aXZlLgo+IE9yIHlvdSB3b3Vs
ZCBoYXZlIHRvIGFkZCBhIHJ1bGUgdGhhdCB5b3UgbmVlZCB0byBjYWxsCj4gc3BpY2VfdXNiX2Jh
Y2tlbmRfZGV2aWNlX2VqZWN0IG9ubHkgaWYgeW91IGRvbid0IHNldCBkZWxldGVfb25fZWplY3Qu
Cj4gSG9uZXN0bHkgdGhlc2UgcnVsZXMgbG9va3MgdG8gbWUgd2VpcmQgYW5kIGNvbXBsaWNhdGVk
Lgo+IFJlc291cmNlIG1hbmFnZW1lbnQgdXN1YWxseSBoYXMgc29tZSBzaW1wbGUgcnVsZXMgbGlr
ZSAiaWYgeW91IGFsbG9jYXRlCj4gd2l0aCBtYWxsb2MgcmVsZWFzZSB3aXRoIGZyZWUiIG9yICJp
ZiB5b3UgbmVlZCB0byBrZWVwIGEgcmVmZXJlbmNlCj4gY2FsbCBYWFhfcmVmLCBpZiB5b3UgbmVl
ZCB0byByZW1vdmUgYSByZWZlcmVuY2UgY2FsbCBYWFhfdW5yZWYiLAo+IHF1aXRlIGZhciBmcm9t
IHRoZSBBUElzIHlvdSBhcmUgcHJvcG9zaW5nLgo+IE15IHRlc3QgZGlkIHNvbWUgc2ltcGxlIGFz
c3VtcHRpb24sICJpZiB5b3UgZ2V0IGEgcmVmZXJlbmNlIHRvIGFuCj4gZW11bGF0ZWQgZGV2aWNl
IHlvdSBjYW4gcmVtb3ZlIGl0IHdpdGggc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmIiwK
PiBhcyB0aGUgZW11bGF0ZWQgZGV2aWNlIGlzIGEgU3BpY2VVc2JCYWNrZW5kRGV2aWNlIGl0IHNl
ZW1zIGxvZ2ljYWwKPiB0byBtZS4KPgo+IEl0IHNlZW1zIG1vcmUgY29uc2lzdGVudCB0byBtZSBp
ZiBlaXRoZXIgdGhlICJkZXZpY2VzIiBsaXN0IGhvbGRzIHRoZQo+ICJtYWluIiAoc2F5IGluaXRp
YWwpIHJlZmVyZW5jZSB0byB0aGUgZW11bGF0ZWQgZGV2aWNlIHNvIGluIGNhc2UKPiBzcGljZV91
c2JfYmFja2VuZF9kZXZpY2VfZWplY3QgaXMgY2FsbGVkIGJ5IHRoZSBTQ1NJIGxheWVyIGFsbCBp
dCBoYXMKPiB0byBkbyBpcyBjYWxsaW5nIHRoZSBob3RwbHVnIGZ1bmN0aW9uIHRvIHJlbW92ZSBm
cm9tIHRoaXMgbGlzdC4KPiBGb3IgdGhpcyByZWFzb24gdGhlIGNhbGwgdG8gc3BpY2VfdXNiX2Jh
Y2tlbmRfZGV2aWNlX3VucmVmIGluCj4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0IHNl
ZW1zIHdyb25nIHRvIG1lLgo+IElmIHRoZSBkZXZpY2UgaXMgbm90IHJlbGVhc2VkIGJ5IHNwaWNl
X3VzYl9iYWNrZW5kX2RldmljZV9lamVjdCB3aWxsCj4gYmUgcmVsZWFzZWQgd2hlbiB0aGUgdXNi
IGRldmljZSBtYW5hZ2VyIHJlbGVhc2UgImRldmljZXMiLgo+IFRoZSBvbmx5IHByb2JsZW0gKGN1
cnJlbnRseSkgaXMgdGhhdCBvd25fZGV2aWNlc19tYXNrIGJpdCBpcyBub3QgY2xlYXJlZAo+IChu
b3QgdGhhdCBpcyBpbXBvc3NpYmxlIHRvIGRvIGl0KS4gSSBhbHNvIHdvdWxkIGNvbnNpZGVyIGNv
cnJlbnQgdG8KPiBjbGVhciBvd25fZGV2aWNlc19tYXNrIGJpdCB3aGVuIHRoZSBkZXZpY2UgaXMg
cmVsZWFzZWQgaW4gb3JkZXIgdG8KPiBhdm9pZCB0byBoYXZlIHR3byBlbXVsYXRlZCBkZXZpY2Vz
IHdpdGggdGhlIHNhbWUgYWRkcmVzcyBhdCB0aGUgc2FtZQo+IHRpbWUuCj4KPiA+ID4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gK1NwaWNlVXNiQmFj
a2VuZERldmljZSoKPiA+ID4gPiA+ID4gK3NwaWNlX3VzYl9iYWNrZW5kX2NyZWF0ZV9lbXVsYXRl
ZF9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiBT
cGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlCj4gPiA+ID4gPiA+IGNyZWF0ZV9wcm9jLAo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpj
cmVhdGVfcGFyYW1zLAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBHRXJyb3IgKiplcnIpCj4gPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiA+ICsgICAg
U3BpY2VVc2JFbXVsYXRlZERldmljZSAqZWRldjsKPiA+ID4gPiA+ID4gKyAgICBTcGljZVVzYkJh
Y2tlbmREZXZpY2UgKmRldjsKPiA+ID4gPiA+ID4gKyAgICBzdHJ1Y3QgbGlidXNiX2RldmljZV9k
ZXNjcmlwdG9yICpkZXNjOwo+ID4gPiA+ID4gPiArICAgIHVpbnQxNl90IGRldmljZV9kZXNjX3Np
emU7Cj4gPiA+ID4gPiA+ICsgICAgdWludDhfdCBhZGRyZXNzID0gMDsKPiA+ID4gPiA+ID4gKwo+
ID4gPiA+ID4gPiArICAgIGlmIChiZS0+b3duX2RldmljZXNfbWFzayA9PSAweGZmZmZmZmZmKSB7
Cj4gPiA+ID4gPiA+ICsgICAgICAgIGdfc2V0X2Vycm9yKGVyciwgU1BJQ0VfQ0xJRU5UX0VSUk9S
LAo+ID4gPiA+ID4gPiBTUElDRV9DTElFTlRfRVJST1JfRkFJTEVELAo+ID4gPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICBfKCJjYW4ndCBjcmVhdGUgZGV2aWNlIC0gbGltaXQgcmVhY2hlZCIp
KTsKPiA+ID4gPiA+ID4gKyAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPiA+ID4gPiA+ICsgICAgfQo+
ID4gPiA+ID4gPiArICAgIGZvciAoYWRkcmVzcyA9IDA7IGFkZHJlc3MgPCAzMjsgKythZGRyZXNz
KSB7Cj4gPiA+ID4gPiA+ICsgICAgICAgIGlmICh+YmUtPm93bl9kZXZpY2VzX21hc2sgJiAoMSA8
PCBhZGRyZXNzKSkgewo+ID4gPiA+ID4gPiArICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ID4gPiA+
ICsgICAgICAgIH0KPiA+ID4gPiA+ID4gKyAgICB9Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
KyAgICBkZXYgPSBnX25ldzAoU3BpY2VVc2JCYWNrZW5kRGV2aWNlLCAxKTsKPiA+ID4gPiA+ID4g
KyAgICBkZXYtPmRldmljZV9pbmZvLmJ1cyA9IEJVU19OVU1CRVJfRk9SX0VNVUxBVEVEX1VTQjsK
PiA+ID4gPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLmFkZHJlc3MgPSBhZGRyZXNzOwo+ID4g
PiA+ID4gPiArICAgIGRldi0+cmVmX2NvdW50ID0gMTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiArICAgIGRldi0+ZWRldiA9IGVkZXYgPSBjcmVhdGVfcHJvYyhiZSwgZGV2LCBjcmVhdGVfcGFy
YW1zLCBlcnIpOwo+ID4gPiA+ID4gPiArICAgIGlmIChlZGV2ID09IE5VTEwpIHsKPiA+ID4gPiA+
ID4gKyAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmKGRldik7Cj4gPiA+ID4g
PiA+ICsgICAgICAgIHJldHVybiBOVUxMOwo+ID4gPiA+ID4gPiArICAgIH0KPiA+ID4gPiA+ID4g
Kwo+ID4gPiA+ID4gPiArICAgIGlmICghZGV2aWNlX29wcyhlZGV2KS0+Z2V0X2Rlc2NyaXB0b3Io
ZWRldiwgTElCVVNCX0RUX0RFVklDRSwgMCwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICh2b2lkICoqKSZkZXNjLAo+ID4gPiA+ID4gPiAmZGV2
aWNlX2Rlc2Nfc2l6ZSkKPiA+ID4gPiA+ID4gKyAgICAgICAgfHwgZGV2aWNlX2Rlc2Nfc2l6ZSAh
PSBzaXplb2YoKmRlc2MpKSB7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgICAgc3Bp
Y2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmKGRldik7Cj4gPiA+ID4gPiA+ICsgICAgICAgIGdf
c2V0X2Vycm9yKGVyciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLAo+ID4gPiA+ID4gPiBTUElDRV9DTElF
TlRfRVJST1JfRkFJTEVELAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBfKCJjYW4n
dCBjcmVhdGUgZGV2aWNlIC0gaW50ZXJuYWwgZXJyb3IiKSk7Cj4gPiA+ID4gPiA+ICsgICAgICAg
IHJldHVybiBOVUxMOwo+ID4gPiA+ID4gPiArICAgIH0KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiArICAgIGJlLT5vd25fZGV2aWNlc19tYXNrIHw9IDEgPDwgYWRkcmVzczsKPiA+ID4gPiA+ID4g
Kwo+ID4gPiA+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8udmlkID0gZGVzYy0+aWRWZW5kb3I7
Cj4gPiA+ID4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5waWQgPSBkZXNjLT5pZFByb2R1Y3Q7
Cj4gPiA+ID4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5iY2RVU0IgPSBkZXNjLT5iY2RVU0I7
Cj4gPiA+ID4gPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5jbGFzcyA9IGRlc2MtPmJEZXZpY2VD
bGFzczsKPiA+ID4gPiA+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLnN1YmNsYXNzID0gZGVzYy0+
YkRldmljZVN1YkNsYXNzOwo+ID4gPiA+ID4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8ucHJvdG9j
b2wgPSBkZXNjLT5iRGV2aWNlUHJvdG9jb2w7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAg
ICBpZiAoYmUtPmhvdHBsdWdfY2FsbGJhY2spIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgYmUtPmhv
dHBsdWdfY2FsbGJhY2soYmUtPmhvdHBsdWdfdXNlcl9kYXRhLCBkZXYsIFRSVUUpOwo+ID4gPiA+
ID4gPiArICAgIH0KPiA+ID4gPiA+Cj4gPiA+ID4gPiBIZXJlIHRoZSBkaWZmZXJlbmNlIGZyb20g
bm9ybWFsIGRldmljZXMuIEluIG5vcm1hbCBkZXZpY2VzCj4gPiA+ID4gPiBob3RwbHVnX2NhbGxi
YWNrIGNhbGxiYWNrIGlzIGNhbGxlZCBmcm9tIGhvdHBsdWdfY2FsbGJhY2sgZnVuY3Rpb24gdGhl
bgo+ID4gPiA+ID4gZGV2aWNlIGlzIHJlbGVhc2VkIHdpdGggc3BpY2VfdXNiX2JhY2tlbmRfZGV2
aWNlX3VucmVmLiBIZXJlIHRoZQo+ID4gPiA+ID4gZnVuY3Rpb24gcmV0dXJucyB0aGUgb2JqZWN0
LiBUaGlzIHBvaW50ZXIgaXMgcmV0dXJuZWQgYnkKPiA+ID4gPiA+IGNyZWF0ZV9lbXVsYXRlZF9j
ZAo+ID4gPiA+ID4gdGhlbiB0aGUgY2FsbGVyIChzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfc2V0
X3Byb3BlcnR5KSBqdXN0IGRpc2NhcmQKPiA+ID4gPiA+IHRoZSBwb2ludGVyLgo+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgIHJldHVybiBkZXY7Cj4gPiA+ID4gPiA+ICt9
Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gICNlbmRpZiAvKiBVU0JfUkVESVIgKi8KPiA+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgK
PiA+ID4gPiA+ID4gaW5kZXggNjlhNDkwYi4uNjNiOTIwMiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0t
IGEvc3JjL3VzYi1iYWNrZW5kLmgKPiA+ID4gPiA+ID4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmgK
PiA+ID4gPiA+ID4gQEAgLTMxLDEyICszMSwxNSBAQCB0eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JC
YWNrZW5kIFNwaWNlVXNiQmFja2VuZDsKPiA+ID4gPiA+ID4gIHR5cGVkZWYgc3RydWN0IF9TcGlj
ZVVzYkJhY2tlbmREZXZpY2UgU3BpY2VVc2JCYWNrZW5kRGV2aWNlOwo+ID4gPiA+ID4gPiAgdHlw
ZWRlZiBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5uZWwgU3BpY2VVc2JCYWNrZW5kQ2hhbm5l
bDsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gKyNkZWZpbmUgQlVTX05VTUJFUl9GT1JfRU1VTEFU
RURfVVNCIEdfTUFYVUlOVDE2Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gIHR5cGVkZWYgc3Ry
dWN0IFVzYkRldmljZUluZm9ybWF0aW9uCj4gPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiA+ICAgICAg
dWludDE2X3QgYnVzOwo+ID4gPiA+ID4gPiAgICAgIHVpbnQxNl90IGFkZHJlc3M7Cj4gPiA+ID4g
PiA+ICAgICAgdWludDE2X3QgdmlkOwo+ID4gPiA+ID4gPiAgICAgIHVpbnQxNl90IHBpZDsKPiA+
ID4gPiA+ID4gKyAgICB1aW50MTZfdCBiY2RVU0I7Cj4gPiA+ID4gPiA+ICAgICAgdWludDhfdCBj
bGFzczsKPiA+ID4gPiA+ID4gICAgICB1aW50OF90IHN1YmNsYXNzOwo+ID4gPiA+ID4gPiAgICAg
IHVpbnQ4X3QgcHJvdG9jb2w7Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWVtdWxh
dGlvbi5oIGIvc3JjL3VzYi1lbXVsYXRpb24uaAo+ID4gPiA+ID4gPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+ID4gPiA+ID4gPiBpbmRleCAwMDAwMDAwLi45ZTYyNmEyCj4gPiA+ID4gPiA+IC0tLSAv
ZGV2L251bGwKPiA+ID4gPiA+ID4gKysrIGIvc3JjL3VzYi1lbXVsYXRpb24uaAo+ID4gPiA+ID4g
PiBAQCAtMCwwICsxLDkxIEBACj4gPiA+ID4gPiA+ICsvKiAtKi0gTW9kZTogQzsgYy1iYXNpYy1v
ZmZzZXQ6IDQ7IGluZGVudC10YWJzLW1vZGU6IG5pbCAtKi0gKi8KPiA+ID4gPiA+ID4gKy8qCj4g
PiA+ID4gPiA+ICsgICAgQ29weXJpZ2h0IChDKSAyMDE5IFJlZCBIYXQsIEluYy4KPiA+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gPiArICAgIFJlZCBIYXQgQXV0aG9yczoKPiA+ID4gPiA+ID4gKyAgICBZ
dXJpIEJlbmRpdG92aWNoPHliZW5kaXRvQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ID4gKyAgICBUaGlzIGxpYnJhcnkgaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRpc3Ry
aWJ1dGUgaXQgYW5kL29yCj4gPiA+ID4gPiA+ICsgICAgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJt
cyBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ID4gPiA+ID4gPiArICAgIExpY2Vu
c2UgYXMgcHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlcgo+
ID4gPiA+ID4gPiArICAgIHZlcnNpb24gMi4xIG9mIHRoZSBMaWNlbnNlLCBvciAoYXQgeW91ciBv
cHRpb24pIGFueSBsYXRlcgo+ID4gPiA+ID4gPiB2ZXJzaW9uLgo+ID4gPiA+ID4gPiArCj4gPiA+
ID4gPiA+ICsgICAgVGhpcyBsaWJyYXJ5IGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQg
aXQgd2lsbCBiZSB1c2VmdWwsCj4gPiA+ID4gPiA+ICsgICAgYnV0IFdJVEhPVVQgQU5ZIFdBUlJB
TlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKPiA+ID4gPiA+ID4gKyAg
ICBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBT
ZWUgdGhlCj4gPiA+ID4gPiA+IEdOVQo+ID4gPiA+ID4gPiArICAgIExlc3NlciBHZW5lcmFsIFB1
YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
KyAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdl
bmVyYWwgUHVibGljCj4gPiA+ID4gPiA+ICsgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGli
cmFyeTsgaWYgbm90LCBzZWUKPiA+ID4gPiA+ID4gPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNl
cy8+Lgo+ID4gPiA+ID4gPiArKi8KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArI2lmbmRlZiBf
X1NQSUNFX1VTQl9FTVVMQVRJT05fSF9fCj4gPiA+ID4gPiA+ICsjZGVmaW5lIF9fU1BJQ0VfVVNC
X0VNVUxBVElPTl9IX18KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArI2luY2x1ZGUgInVzYnJl
ZGlycGFyc2VyLmgiCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSAidXNiLWJhY2tlbmQuaCIKPiA+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gPiArdHlwZWRlZiBzdHJ1Y3QgU3BpY2VVc2JFbXVsYXRlZERldmlj
ZSBTcGljZVVzYkVtdWxhdGVkRGV2aWNlOwo+ID4gPiA+ID4gPiArdHlwZWRlZiBTcGljZVVzYkVt
dWxhdGVkRGV2aWNlKgo+ID4gPiA+ID4gPiArKCpTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRl
KShTcGljZVVzYkJhY2tlbmQgKmJlLAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKnBhcmVudCwKPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqY3JlYXRlX3BhcmFtcywKPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyKTsKPiA+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArLyoKPiA+ID4gPiA+ID4gKyAgICBmdW5jdGlvbiB0YWJs
ZSBmb3IgZW11bGF0ZWQgVVNCIGRldmljZQo+ID4gPiA+ID4gPiArICAgIG11c3QgYmUgZmlyc3Qg
bWVtYmVyIG9mIGRldmljZSBzdHJ1Y3R1cmUKPiA+ID4gPiA+ID4gKyAgICBhbGwgZnVuY3Rpb25z
IGFyZSBtYW5kYXRvcnkgZm9yIGltcGxlbWVudGF0aW9uCj4gPiA+ID4gPiA+ICsqLwo+ID4gPiA+
ID4gPiArdHlwZWRlZiBzdHJ1Y3QgVXNiRGV2aWNlT3BzIHsKPiA+ID4gPiA+ID4gKyAgICBnYm9v
bGVhbiAoKmdldF9kZXNjcmlwdG9yKShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCj4g
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDhfdCB0eXBlLCB1
aW50OF90IGluZGV4LAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHZvaWQgKipidWZmZXIsIHVpbnQxNl90ICpzaXplKTsKPiA+ID4gPiA+ID4gKyAgICBnY2hhciAq
ICgqZ2V0X3Byb2R1Y3RfZGVzY3JpcHRpb24pKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UKPiA+ID4g
PiA+ID4gKmRldmljZSk7Cj4gPiA+ID4gPiA+ICsgICAgdm9pZCAoKmF0dGFjaCkoU3BpY2VVc2JF
bXVsYXRlZERldmljZSAqZGV2aWNlLCBzdHJ1Y3QKPiA+ID4gPiA+ID4gdXNicmVkaXJwYXJzZXIK
PiA+ID4gPiA+ID4gKnBhcnNlcik7Cj4gPiA+ID4gPiA+ICsgICAgdm9pZCAoKnJlc2V0KShTcGlj
ZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UpOwo+ID4gPiA+ID4gPiArICAgIC8qCj4gPiA+ID4g
PiA+ICsgICAgICAgIHByb2Nlc3NpbmcgaXMgc3luY2hyb25vdXMsIGRlZmF1bHQgPSBzdGFsbDoK
PiA+ID4gPiA+ID4gKyAgICAgICAgLSByZXR1cm4gc3VjY2VzcyB3aXRob3V0IGRhdGE6IHNldCBz
dGF0dXMgdG8gMAo+ID4gPiA+ID4gPiArICAgICAgICAtIHJldHVybiBlcnJvciAtIHNldCBzdGF0
dXMgdG8gZXJyb3IKPiA+ID4gPiA+ID4gKyAgICAgICAgLSByZXR1cm4gc3VjY2VzcyB3aXRoIGRh
dGEgLSBzZXQgc3RhdHVzIHRvIDAsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzZXQgYnVmZmVyIHRvIHNvbWUgYnVmZmVyCj4gPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZXQgbGVuZ3RoIHRvIG91dCBsZW4KPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRydW5jYXRpb24g
aXMgYXV0b21hdGljCj4gPiA+ID4gPiA+ICsgICAgKi8KPiA+ID4gPiA+ID4gKyAgICB2b2lkICgq
Y29udHJvbF9yZXF1ZXN0KShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCj4gPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDhfdCAqZGF0YSwgaW50IGRhdGFf
bGVuLAo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB1c2Jf
cmVkaXJfY29udHJvbF9wYWNrZXRfaGVhZGVyCj4gPiA+ID4gPiA+ICpoLAo+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKipidWZmZXIpOwo+ID4gPiA+ID4gPiAr
ICAgIC8qCj4gPiA+ID4gPiA+ICsgICAgICAgIHByb2Nlc3NpbmcgaXMgc3luY2hyb25vdXM6Cj4g
PiA+ID4gPiA+ICsgICAgICAgIC0gc2V0IGgtPnN0YXR1cyB0byByZXN1bHRpbmcgc3RhdHVzLCBk
ZWZhdWx0ID0gc3RhbGwKPiA+ID4gPiA+ID4gKyAgICAqLwo+ID4gPiA+ID4gPiArICAgIHZvaWQg
KCpidWxrX291dF9yZXF1ZXN0KShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4X3QgZXAsIHVpbnQ4X3Qg
KmRhdGEsIGludAo+ID4gPiA+ID4gPiBkYXRhX2xlbiwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdWludDhfdCAqc3RhdHVzKTsKPiA+ID4gPiA+ID4gKyAgICAvKgo+
ID4gPiA+ID4gPiArICAgICAgICBpZiByZXR1cm5zIHRydWUsIHByb2Nlc3NpbmcgaXMgYXN5bmNo
cm9ub3VzCj4gPiA+ID4gPiA+ICsgICAgICAgIG90aGVyd2lzZSBoZWFkZXIgY29udGFpbnMgZXJy
b3Igc3RhdHVzCj4gPiA+ID4gPiA+ICsgICAgKi8KPiA+ID4gPiA+ID4gKyAgICBnYm9vbGVhbiAo
KmJ1bGtfaW5fcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLAo+ID4gPiA+
ID4gPiB1aW50NjRfdAo+ID4gPiA+ID4gPiBpZCwKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgdXNiX3JlZGlyX2J1bGtfcGFja2V0X2hlYWRlcgo+ID4gPiA+
ID4gPiAqYnVsa19oZWFkZXIpOwo+ID4gPiA+ID4gPiArICAgIHZvaWQgKCpjYW5jZWxfcmVxdWVz
dCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLCB1aW50NjRfdAo+ID4gPiA+ID4gPiBp
ZCk7Cj4gPiA+ID4gPiA+ICsgICAgdm9pZCAoKmRldGFjaCkoU3BpY2VVc2JFbXVsYXRlZERldmlj
ZSAqZGV2aWNlKTsKPiA+ID4gPiA+ID4gKyAgICB2b2lkICgqdW5yZWFsaXplKShTcGljZVVzYkVt
dWxhdGVkRGV2aWNlICpkZXZpY2UpOwo+ID4gPiA+ID4gPiArfSBVc2JEZXZpY2VPcHM7Cj4gPiA+
ID4gPiA+ICsKPiA+ID4gPiA+ID4gK3N0YXRpYyBpbmxpbmUgY29uc3QgVXNiRGV2aWNlT3BzICpk
ZXZpY2Vfb3BzKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UKPiA+ID4gPiA+ID4gKmRldikKPiA+ID4g
PiA+ID4gK3sKPiA+ID4gPiA+ID4gKyAgICByZXR1cm4gKGNvbnN0IFVzYkRldmljZU9wcyAqKWRl
djsKPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArU3BpY2VVc2JCYWNr
ZW5kRGV2aWNlKgo+ID4gPiA+ID4gPiArc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxhdGVk
X2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJlLAo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+IFNw
aWNlVXNiRW11bGF0ZWREZXZpY2VDcmVhdGUKPiA+ID4gPiA+ID4gY3JlYXRlX3Byb2MsCj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKmNy
ZWF0ZV9wYXJhbXMsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEdFcnJvciAqKmVycik7Cj4gPiA+ID4gPiA+ICt2b2lkIHNwaWNlX3VzYl9iYWNr
ZW5kX2RldmljZV9lamVjdChTcGljZVVzYkJhY2tlbmQgKmJlLAo+ID4gPiA+ID4gPiBTcGljZVVz
YkJhY2tlbmREZXZpY2UgKmRldmljZSk7Cj4gPiA+ID4gPiA+ICt2b2lkIHNwaWNlX3VzYl9iYWNr
ZW5kX2RldmljZV9yZXBvcnRfY2hhbmdlKFNwaWNlVXNiQmFja2VuZCAqYmUsCj4gPiA+ID4gPiA+
IFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2aWNlKTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiArI2VuZGlmCj4gPiA+ID4gPgo+ID4gPiA+ID4gRnJlZGlhbm8KPiA+ID4gPgo+ID4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
