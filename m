Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8138890D3
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B7D6E2F7;
	Sun, 11 Aug 2019 09:01:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71ECB6E2F7
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:01:27 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id z1so101985828wru.13
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 02:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MgxbtzC1nzlDD3QO9rlJbj1GyCRXrHHqG8tIHcgI2cE=;
 b=VnHj6KCDsdjzuuxrIBuJ2/1VQ6Z1yQt7wWor3JuPjNzadEg+R6q3CeFL4iXvHeML1P
 4Abl/6Nq3Sjvc6JfQxsnHjZSQ/ZFe7u8F+z6ITZcBE1G3xEOHZ+/zlFWv+QRa4haulxQ
 DMH9aKiCoOTiib4M28/UmAFMGNeYgkrRYWvD0PxMsr8ifcrReVD3U5rOb1k8nIkBgJWS
 8V/Au1UGDj09vB1gMepFtkAKOof5Xyc3+KinG9U04R5tQIzL+ojwAkvL8vL/5hNTJ05L
 ZfgI0ZNxoT4jTXHFdREjpJdIOc9d8BfgCrB+GeZYN9G5/A5/81AEzUO8l562Ag9fyiVx
 QQug==
X-Gm-Message-State: APjAAAWSEWnJeilvbrY3M6jo/QgQ2gKuBgw8D51d0NuV5umR4pPBEQNx
 l8UD/l4ND1gxxXvIvsIv+C/nCPoRcKs=
X-Google-Smtp-Source: APXvYqxsLEBh2kEinGZGfuIWc/5/QjDhmrH/0tVMZH7gnCPM1dT19y3JsfaSGv5h0J/kUjfyphGGlQ==
X-Received: by 2002:a5d:4e82:: with SMTP id e2mr29381079wru.149.1565514085356; 
 Sun, 11 Aug 2019 02:01:25 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id d17sm11727449wrm.52.2019.08.11.02.01.24
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 02:01:24 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190729142328.13191-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <df9dd0a9-ebbe-549e-07ee-17437cf73be9@redhat.com>
Date: Sun, 11 Aug 2019 12:01:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729142328.13191-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk] Use "#pragma once" instead of
 preprocessor guards
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpJdCBjb3VsZCBiZSBhbiBpc3N1ZSB3aXRoIGR1cGxpY2F0ZWQgbmFtZSBoZWFkZXJzIGJ1
dApzZWVtcyB3ZSBkbyBub3QgaGF2ZSBzdWNoIGhlYWRlcnMuCgpBY2sKCk9uIDcvMjkvMTkgNToy
MyBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IEd1YXJkcyBjdXJyZW50bHkgYXJlIHF1aXRl
IGRpZmZlcmVudCBpbiBmb3JtYXQuCj4gVW5pZnkgdXBkYXRpbmcgdG8gIiNwcmFnbWEgb25jZSIg
c3ludGF4LiBUaGlzIHN5bnRheCBpcyB1c2VkCj4gYnkgR1RLIHRvb2xzIHRvby4KPiBUbyBhdm9p
ZCBwb3NzaWJsZSByZWdyZXNzaW9uIHB1YmxpYyBoZWFkZXJzIGFyZSBsZWZ0IHVudG91Y2hlZC4K
CkkgZ3Vlc3MgaXQncyBiZXR0ZXIgdG8gZ28gc2FmZSA7KQoKU25pci4KCj4KPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIHNyYy9i
aW8tZ2lvLmggICAgICAgICAgICAgICAgICAgICAgIHwgNSArLS0tLQo+ICAgc3JjL2NoYW5uZWwt
ZGlzcGxheS1wcml2LmggICAgICAgICAgfCA1ICstLS0tCj4gICBzcmMvY2hhbm5lbC1wbGF5YmFj
ay1wcml2LmggICAgICAgICB8IDQgKy0tLQo+ICAgc3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5o
ICAgICAgICAgfCA1ICstLS0tCj4gICBzcmMvY2xpZW50X3N3X2NhbnZhcy5oICAgICAgICAgICAg
ICB8IDUgKy0tLS0KPiAgIHNyYy9jb250aW51YXRpb24uaCAgICAgICAgICAgICAgICAgIHwgNCAr
LS0tCj4gICBzcmMvY29yb3V0aW5lLmggICAgICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICAg
c3JjL2RlY29kZS5oICAgICAgICAgICAgICAgICAgICAgICAgfCA1ICstLS0tCj4gICBzcmMvZGVz
a3RvcC1pbnRlZ3JhdGlvbi5oICAgICAgICAgICB8IDUgKy0tLS0KPiAgIHNyYy9naW8tY29yb3V0
aW5lLmggICAgICAgICAgICAgICAgIHwgNSArLS0tLQo+ICAgc3JjL2dpb3BpcGUuaCAgICAgICAg
ICAgICAgICAgICAgICAgfCA1ICstLS0tCj4gICBzcmMvc21hcnRjYXJkLW1hbmFnZXItcHJpdi5o
ICAgICAgICB8IDUgKy0tLS0KPiAgIHNyYy9zcGljZS1hdWRpby1wcml2LmggICAgICAgICAgICAg
IHwgNSArLS0tLQo+ICAgc3JjL3NwaWNlLWNoYW5uZWwtY2FjaGUuaCAgICAgICAgICAgfCA1ICst
LS0tCj4gICBzcmMvc3BpY2UtY2hhbm5lbC1wcml2LmggICAgICAgICAgICB8IDUgKy0tLS0KPiAg
IHNyYy9zcGljZS1jb21tb24uaCAgICAgICAgICAgICAgICAgIHwgNSArLS0tLQo+ICAgc3JjL3Nw
aWNlLWZpbGUtdHJhbnNmZXItdGFzay1wcml2LmggfCA1ICstLS0tCj4gICBzcmMvc3BpY2UtZ3Jh
YnNlcXVlbmNlLXByaXYuaCAgICAgICB8IDUgKy0tLS0KPiAgIHNyYy9zcGljZS1nc3RhdWRpby5o
ICAgICAgICAgICAgICAgIHwgNSArLS0tLQo+ICAgc3JjL3NwaWNlLWd0ay1zZXNzaW9uLXByaXYu
aCAgICAgICAgfCA1ICstLS0tCj4gICBzcmMvc3BpY2UtcHVsc2UuaCAgICAgICAgICAgICAgICAg
ICB8IDUgKy0tLS0KPiAgIHNyYy9zcGljZS1zZXNzaW9uLXByaXYuaCAgICAgICAgICAgIHwgNSAr
LS0tLQo+ICAgc3JjL3NwaWNlLXVyaS1wcml2LmggICAgICAgICAgICAgICAgfCA1ICstLS0tCj4g
ICBzcmMvc3BpY2UtdXRpbC1wcml2LmggICAgICAgICAgICAgICB8IDUgKy0tLS0KPiAgIHNyYy9z
cGljZS13aWRnZXQtcHJpdi5oICAgICAgICAgICAgIHwgNSArLS0tLQo+ICAgc3JjL3VzYi1hY2wt
aGVscGVyLmggICAgICAgICAgICAgICAgfCA1ICstLS0tCj4gICBzcmMvdXNiLWJhY2tlbmQuaCAg
ICAgICAgICAgICAgICAgICB8IDUgKy0tLS0KPiAgIHNyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJp
di5oICAgICAgIHwgNSArLS0tLQo+ICAgc3JjL3VzYmRrX2FwaS5oICAgICAgICAgICAgICAgICAg
ICAgfCA0ICstLS0KPiAgIHNyYy91c2J1dGlsLmggICAgICAgICAgICAgICAgICAgICAgIHwgNCAr
LS0tCj4gICBzcmMvdm1jc3RyZWFtLmggICAgICAgICAgICAgICAgICAgICB8IDUgKy0tLS0KPiAg
IHNyYy92bmNkaXNwbGF5a2V5bWFwLmggICAgICAgICAgICAgIHwgNSArLS0tLQo+ICAgMzIgZmls
ZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTIzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL3NyYy9iaW8tZ2lvLmggYi9zcmMvYmlvLWdpby5oCj4gaW5kZXggMzFmZDM2OTMuLjdm
NDFjZTEwIDEwMDY0NAo+IC0tLSBhL3NyYy9iaW8tZ2lvLmgKPiArKysgYi9zcmMvYmlvLWdpby5o
Cj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNv
cHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxvbmcg
d2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5z
ZXMvPi4KPiAgICovCj4gLSNpZm5kZWYgQklPX0dJT19IXwo+IC0jIGRlZmluZSBCSU9fR0lPX0hf
Cj4gKyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaW5jbHVkZSA8b3BlbnNzbC9iaW8uaD4KPiAgICNp
bmNsdWRlIDxnaW8vZ2lvLmg+Cj4gQEAgLTI2LDUgKzI1LDMgQEAgR19CRUdJTl9ERUNMUwo+ICAg
QklPKiBiaW9fbmV3X2dpb3N0cmVhbShHSU9TdHJlYW0gKnN0cmVhbSk7Cj4gICAKPiAgIEdfRU5E
X0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogIUJJT19HSU9fSF8gKi8KPiBkaWZmIC0tZ2l0IGEvc3Jj
L2NoYW5uZWwtZGlzcGxheS1wcml2LmggYi9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAo+IGlu
ZGV4IDE2YzEyYzZlLi5iNWQ2NzI4NSAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LXByaXYuaAo+ICsrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oCj4gQEAgLTE1LDggKzE1
LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBM
ZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJh
cnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgICovCj4g
LSNpZm5kZWYgQ0hBTk5FTF9ESVNQTEFZX1BSSVZfSF8KPiAtIyBkZWZpbmUgQ0hBTk5FTF9ESVNQ
TEFZX1BSSVZfSF8KPiArI3ByYWdtYSBvbmNlCj4gICAKPiAgICNpbmNsdWRlIDxwaXhtYW4uaD4K
PiAgICNpZmRlZiBXSU4zMgo+IEBAIC0yMDMsNSArMjAyLDMgQEAgZ2Jvb2xlYW4gaGFuZF9waXBl
bGluZV90b193aWRnZXQoZGlzcGxheV9zdHJlYW0gKnN0LCAgR3N0UGlwZWxpbmUgKnBpcGVsaW5l
KTsKPiAgIHZvaWQgc3BpY2VfZnJhbWVfZnJlZShTcGljZUZyYW1lICpmcmFtZSk7Cj4gICAKPiAg
IEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLy8gQ0hBTk5FTF9ESVNQTEFZX1BSSVZfSF8KPiBk
aWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtcGxheWJhY2stcHJpdi5oIGIvc3JjL2NoYW5uZWwtcGxh
eWJhY2stcHJpdi5oCj4gaW5kZXggYWEzM2QyYzQuLjE5Y2NjMTUwIDEwMDY0NAo+IC0tLSBhL3Ny
Yy9jaGFubmVsLXBsYXliYWNrLXByaXYuaAo+ICsrKyBiL3NyYy9jaGFubmVsLXBsYXliYWNrLXBy
aXYuaAo+IEBAIC0xNSwxMCArMTUsOCBAQAo+ICAgICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVk
IGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICAgTGljZW5zZSBh
bG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9s
aWNlbnNlcy8+Lgo+ICAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NMSUVOVF9QTEFZQkFDS19DSEFO
TkVMX1BSSVZfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRfUExBWUJBQ0tfQ0hBTk5FTF9Q
UklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgZ2Jvb2xlYW4gc3BpY2VfcGxheWJhY2tf
Y2hhbm5lbF9pc19hY3RpdmUoU3BpY2VQbGF5YmFja0NoYW5uZWwgKmNoYW5uZWwpOwo+ICAgZ3Vp
bnQzMiBzcGljZV9wbGF5YmFja19jaGFubmVsX2dldF9sYXRlbmN5KFNwaWNlUGxheWJhY2tDaGFu
bmVsICpjaGFubmVsKTsKPiAgIHZvaWQgc3BpY2VfcGxheWJhY2tfY2hhbm5lbF9zeW5jX2xhdGVu
Y3koU3BpY2VQbGF5YmFja0NoYW5uZWwgKmNoYW5uZWwpOwo+IC0jZW5kaWYKPiBkaWZmIC0tZ2l0
IGEvc3JjL2NoYW5uZWwtdXNicmVkaXItcHJpdi5oIGIvc3JjL2NoYW5uZWwtdXNicmVkaXItcHJp
di5oCj4gaW5kZXggODBjZDMxZjYuLmEzNmY1ZDliIDEwMDY0NAo+IC0tLSBhL3NyYy9jaGFubmVs
LXVzYnJlZGlyLXByaXYuaAo+ICsrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLXByaXYuaAo+IEBA
IC0xOCw4ICsxOCw3IEBACj4gICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9m
IHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgICBMaWNlbnNlIGFsb25nIHdpdGgg
dGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4u
Cj4gICAqLwo+IC0jaWZuZGVmIF9fU1BJQ0VfQ0xJRU5UX1VTQlJFRElSX0NIQU5ORUxfUFJJVl9I
X18KPiAtI2RlZmluZSBfX1NQSUNFX0NMSUVOVF9VU0JSRURJUl9DSEFOTkVMX1BSSVZfSF9fCj4g
KyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaWZkZWYgVVNFX1VTQlJFRElSCj4gICAKPiBAQCAtNzYs
NSArNzUsMyBAQCBpbnQgc3BpY2VfdXNicmVkaXJfd3JpdGVfY2FsbGJhY2soU3BpY2VVc2JyZWRp
ckNoYW5uZWwgKmNoYW5uZWwsIHVpbnQ4X3QgKmRhdGEsCj4gICBHX0VORF9ERUNMUwo+ICAgCj4g
ICAjZW5kaWYgLyogVVNFX1VTQlJFRElSICovCj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9DTElF
TlRfVVNCUkVESVJfQ0hBTk5FTF9QUklWX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvY2xpZW50
X3N3X2NhbnZhcy5oIGIvc3JjL2NsaWVudF9zd19jYW52YXMuaAo+IGluZGV4IDExODBjNWI2Li5h
YzMwMjQwZiAxMDA2NDQKPiAtLS0gYS9zcmMvY2xpZW50X3N3X2NhbnZhcy5oCj4gKysrIGIvc3Jj
L2NsaWVudF9zd19jYW52YXMuaAo+IEBAIC0xNSwxMSArMTUsOCBAQAo+ICAgICAgWW91IHNob3Vs
ZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+
ICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6
Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NMSUVO
VF9TV19DQU5WQVNfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRfU1dfQ0FOVkFTX0hfXwo+
ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgI2RlZmluZSBTV19DQU5WQVNfQ0FDSEUKPiAgIAo+ICAg
I2luY2x1ZGUgPGNvbW1vbi9zd19jYW52YXMuaD4KPiAtCj4gLSNlbmRpZiAvKiBfX1NQSUNFX0NM
SUVOVF9TV19DQU5WQVNfSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy9jb250aW51YXRpb24uaCBi
L3NyYy9jb250aW51YXRpb24uaAo+IGluZGV4IGQxZmQxMzc3Li5iYmRlMzg2MyAxMDA2NDQKPiAt
LS0gYS9zcmMvY29udGludWF0aW9uLmgKPiArKysgYi9zcmMvY29udGludWF0aW9uLmgKPiBAQCAt
MTgsOCArMTgsNyBAQAo+ICAgICogRm91bmRhdGlvbiwgSW5jLiwgNTEgRnJhbmtsaW4gU3RyZWV0
LCBGaWZ0aCBGbG9vciwgQm9zdG9uLCBNQSAgMDIxMTAtMTMwMSBVU0EKPiAgICAqLwo+ICAgCj4g
LSNpZm5kZWYgX0NPTlRJTlVBVElPTl9IXwo+IC0jZGVmaW5lIF9DT05USU5VQVRJT05fSF8KPiAr
I3ByYWdtYSBvbmNlCj4gICAKPiAgICNpbmNsdWRlICJzcGljZS1jb21tb24uaCIKPiAgICNpbmNs
dWRlIDxzdGRkZWYuaD4KPiBAQCAtNTMsNyArNTIsNiBAQCBpbnQgY2Nfc3dhcChzdHJ1Y3QgY29u
dGludWF0aW9uICpmcm9tLCBzdHJ1Y3QgY29udGludWF0aW9uICp0byk7Cj4gICAgICAgICAgIFNQ
SUNFX0FMSUdORURfQ0FTVCh0eXBlICosICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBcCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoKChjaGFyICopb2JqKSAtIG9m
ZnNldF9vZih0eXBlLCBtZW1iZXIpKSkKPiAgIAo+IC0jZW5kaWYKPiAgIC8qCj4gICAgKiBMb2Nh
bCB2YXJpYWJsZXM6Cj4gICAgKiAgYy1pbmRlbnQtbGV2ZWw6IDgKPiBkaWZmIC0tZ2l0IGEvc3Jj
L2Nvcm91dGluZS5oIGIvc3JjL2Nvcm91dGluZS5oCj4gaW5kZXggNzhkYzQ2NzAuLjllYjhlMGNi
IDEwMDY0NAo+IC0tLSBhL3NyYy9jb3JvdXRpbmUuaAo+ICsrKyBiL3NyYy9jb3JvdXRpbmUuaAo+
IEBAIC0xOCw4ICsxOCw3IEBACj4gICAgKiBGb3VuZGF0aW9uLCBJbmMuLCA1MSBGcmFua2xpbiBT
dHJlZXQsIEZpZnRoIEZsb29yLCBCb3N0b24sIE1BICAwMjExMC0xMzAxIFVTQQo+ICAgICovCj4g
ICAKPiAtI2lmbmRlZiBfQ09ST1VUSU5FX0hfCj4gLSNkZWZpbmUgX0NPUk9VVElORV9IXwo+ICsj
cHJhZ21hIG9uY2UKPiAgIAo+ICAgI2luY2x1ZGUgImNvbmZpZy5oIgo+ICAgCj4gQEAgLTczLDcg
KzcyLDYgQEAgc3RhdGljIGlubGluZSBnYm9vbGVhbiBjb3JvdXRpbmVfc2VsZl9pc19tYWluKHZv
aWQpIHsKPiAgIAlyZXR1cm4gY29yb3V0aW5lX3NlbGYoKSA9PSBOVUxMIHx8IGNvcm91dGluZV9p
c19tYWluKGNvcm91dGluZV9zZWxmKCkpOwo+ICAgfQo+ICAgCj4gLSNlbmRpZgo+ICAgLyoKPiAg
ICAqIExvY2FsIHZhcmlhYmxlczoKPiAgICAqICBjLWluZGVudC1sZXZlbDogOAo+IGRpZmYgLS1n
aXQgYS9zcmMvZGVjb2RlLmggYi9zcmMvZGVjb2RlLmgKPiBpbmRleCBiMjc0ZDY3My4uZGMzMTcz
OGMgMTAwNjQ0Cj4gLS0tIGEvc3JjL2RlY29kZS5oCj4gKysrIGIvc3JjL2RlY29kZS5oCj4gQEAg
LTE1LDggKzE1LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2Yg
dGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0
aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4K
PiAgICovCj4gLSNpZm5kZWYgU1BJQ0VHVEtfREVDT0RFX0hfCj4gLSMgZGVmaW5lIFNQSUNFR1RL
X0RFQ09ERV9IXwo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgI2luY2x1ZGUgPGdsaWIuaD4KPiAg
IAo+IEBAIC00MCw1ICszOSwzIEBAIFNwaWNlSnBlZ0RlY29kZXIgKmpwZWdfZGVjb2Rlcl9uZXco
dm9pZCk7Cj4gICB2b2lkIGpwZWdfZGVjb2Rlcl9kZXN0cm95KFNwaWNlSnBlZ0RlY29kZXIgKmQp
Owo+ICAgCj4gICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8vIFNQSUNFR1RLX0RFQ09ERV9I
Xwo+IGRpZmYgLS1naXQgYS9zcmMvZGVza3RvcC1pbnRlZ3JhdGlvbi5oIGIvc3JjL2Rlc2t0b3At
aW50ZWdyYXRpb24uaAo+IGluZGV4IDM3MTYwODllLi4yZGQ5MTU2YyAxMDA2NDQKPiAtLS0gYS9z
cmMvZGVza3RvcC1pbnRlZ3JhdGlvbi5oCj4gKysrIGIvc3JjL2Rlc2t0b3AtaW50ZWdyYXRpb24u
aAo+IEBAIC0xOCw4ICsxOCw3IEBACj4gICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBj
b3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgICBMaWNlbnNlIGFsb25n
IHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vu
c2VzLz4uCj4gICAqLwo+IC0jaWZuZGVmIF9fU1BJQ0VfREVTS1RPUF9JTlRFR1JBVElPTl9IX18K
PiAtI2RlZmluZSBfX1NQSUNFX0RFU0tUT1BfSU5URUdSQVRJT05fSF9fCj4gKyNwcmFnbWEgb25j
ZQo+ICAgCj4gICAjaW5jbHVkZSAic3BpY2UtY2xpZW50LmgiCj4gICAKPiBAQCAtNjAsNSArNTks
MyBAQCB2b2lkIHNwaWNlX2Rlc2t0b3BfaW50ZWdyYXRpb25faW5oaWJpdF9hdXRvbW91bnQoU3Bp
Y2VEZXNrdG9wSW50ZWdyYXRpb24gKnNlbGYpOwo+ICAgdm9pZCBzcGljZV9kZXNrdG9wX2ludGVn
cmF0aW9uX3VuaW5oaWJpdF9hdXRvbW91bnQoU3BpY2VEZXNrdG9wSW50ZWdyYXRpb24gKnNlbGYp
Owo+ICAgCj4gICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0VfREVTS1RPUF9J
TlRFR1JBVElPTl9IX18gKi8KPiBkaWZmIC0tZ2l0IGEvc3JjL2dpby1jb3JvdXRpbmUuaCBiL3Ny
Yy9naW8tY29yb3V0aW5lLmgKPiBpbmRleCBiM2E2ZDc4ZS4uNmIyMGEwODEgMTAwNjQ0Cj4gLS0t
IGEvc3JjL2dpby1jb3JvdXRpbmUuaAo+ICsrKyBiL3NyYy9naW8tY29yb3V0aW5lLmgKPiBAQCAt
MTgsOCArMTgsNyBAQAo+ICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYg
bm90LCB3cml0ZSB0byB0aGUgRnJlZSBTb2Z0d2FyZQo+ICAgICAgRm91bmRhdGlvbiwgSW5jLiwg
NTEgRnJhbmtsaW4gU3RyZWV0LCBGaWZ0aCBGbG9vciwgQm9zdG9uLCBNQSAgMDIxMTAtMTMwMSBV
U0EKPiAgICovCj4gLSNpZm5kZWYgX19HSU9fQ09ST1VUSU5FX0hfXwo+IC0jZGVmaW5lIF9fR0lP
X0NPUk9VVElORV9IX18KPiArI3ByYWdtYSBvbmNlCj4gICAKPiAgICNpbmNsdWRlIDxnaW8vZ2lv
Lmg+Cj4gICAjaW5jbHVkZSAiY29yb3V0aW5lLmgiCj4gQEAgLTYyLDUgKzYxLDMgQEAgdm9pZCAg
ICAgICAgIGdfY29yb3V0aW5lX3NpZ25hbF9lbWl0IChncG9pbnRlciBpbnN0YW5jZSwgZ3VpbnQg
c2lnbmFsX2lkLAo+ICAgdm9pZCAgICAgICAgIGdfY29yb3V0aW5lX29iamVjdF9ub3RpZnkoR09i
amVjdCAqb2JqZWN0LCBjb25zdCBnY2hhciAqcHJvcGVydHlfbmFtZSk7Cj4gICAKPiAgIEdfRU5E
X0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogX19HSU9fQ09ST1VUSU5FX0hfXyAqLwo+IGRpZmYgLS1n
aXQgYS9zcmMvZ2lvcGlwZS5oIGIvc3JjL2dpb3BpcGUuaAo+IGluZGV4IDQ2YzJjOWM4Li4yMDU2
ODQxYyAxMDA2NDQKPiAtLS0gYS9zcmMvZ2lvcGlwZS5oCj4gKysrIGIvc3JjL2dpb3BpcGUuaAo+
IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkg
b2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgTGljZW5zZSBhbG9uZyB3aXRo
IHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+
Lgo+ICAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0dJT19QSVBFX0hfXwo+IC0jZGVmaW5lIF9fU1BJ
Q0VfR0lPX1BJUEVfSF9fCj4gKyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaW5jbHVkZSA8Z2lvL2dp
by5oPgo+ICAgCj4gQEAgLTI1LDUgKzI0LDMgQEAgR19CRUdJTl9ERUNMUwo+ICAgdm9pZCBzcGlj
ZV9tYWtlX3BpcGUoR0lPU3RyZWFtICoqcDEsIEdJT1N0cmVhbSAqKnAyKTsKPiAgIAo+ICAgR19F
TkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvKiBfX1NQSUNFX0dJT19QSVBFX0hfXyAqLwo+IGRpZmYg
LS1naXQgYS9zcmMvc21hcnRjYXJkLW1hbmFnZXItcHJpdi5oIGIvc3JjL3NtYXJ0Y2FyZC1tYW5h
Z2VyLXByaXYuaAo+IGluZGV4IDQwOWMxYzU0Li44ZGMzOWU0ZSAxMDA2NDQKPiAtLS0gYS9zcmMv
c21hcnRjYXJkLW1hbmFnZXItcHJpdi5oCj4gKysrIGIvc3JjL3NtYXJ0Y2FyZC1tYW5hZ2VyLXBy
aXYuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQg
YSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgICBMaWNlbnNlIGFs
b25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xp
Y2Vuc2VzLz4uCj4gICAqLwo+IC0jaWZuZGVmIF9fU01BUlRDQVJEX01BTkFHRVJfUFJJVl9IX18K
PiAtI2RlZmluZSBfX1NNQVJUQ0FSRF9NQU5BR0VSX1BSSVZfSF9fCj4gKyNwcmFnbWEgb25jZQo+
ICAgCj4gICAjaW5jbHVkZSAiY29uZmlnLmgiCj4gICAjaW5jbHVkZSA8Z2lvL2dpby5oPgo+IEBA
IC0zMyw1ICszMiwzIEBAIGdib29sZWFuIHNwaWNlX3NtYXJ0Y2FyZF9tYW5hZ2VyX2luaXRfZmlu
aXNoKFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycik7Cj4gICAKPiAgIEdfRU5EX0RFQ0xTCj4g
LQo+IC0jZW5kaWYgLyogX19TTUFSVENBUkRfTUFOQUdFUl9QUklWX0hfXyAqLwo+IGRpZmYgLS1n
aXQgYS9zcmMvc3BpY2UtYXVkaW8tcHJpdi5oIGIvc3JjL3NwaWNlLWF1ZGlvLXByaXYuaAo+IGlu
ZGV4IDA0MTIzZjU1Li5mOTZlNzIxMCAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2UtYXVkaW8tcHJp
di5oCj4gKysrIGIvc3JjL3NwaWNlLWF1ZGlvLXByaXYuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4g
ICAgICBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdl
bmVyYWwgUHVibGljCj4gICAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBu
b3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gICAqLwo+IC0jaWZuZGVm
IF9fU1BJQ0VfQVVESU9fUFJJVkFURV9IX18KPiAtI2RlZmluZSBfX1NQSUNFX0FVRElPX1BSSVZB
VEVfSF9fCj4gKyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaW5jbHVkZSA8Z2xpYi5oPgo+ICAgI2lu
Y2x1ZGUgPGdpby9naW8uaD4KPiBAQCAtNDEsNSArNDAsMyBAQCB2b2lkIHNwaWNlX2F1ZGlvX2dl
dF9yZWNvcmRfdm9sdW1lX2luZm9fYXN5bmMoU3BpY2VBdWRpbyAqYXVkaW8sIEdDYW5jZWxsYWJs
ZSAqYwo+ICAgZ2Jvb2xlYW4gc3BpY2VfYXVkaW9fZ2V0X3JlY29yZF92b2x1bWVfaW5mb19maW5p
c2goU3BpY2VBdWRpbyAqYXVkaW8sIEdBc3luY1Jlc3VsdCAqcmVzLAo+ICAgICAgICAgICBnYm9v
bGVhbiAqbXV0ZSwgZ3VpbnQ4ICpuY2hhbm5lbHMsIGd1aW50MTYgKip2b2x1bWUsIEdFcnJvciAq
KmVycm9yKTsKPiAgIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9BVURJT19Q
UklWQVRFX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtY2hhbm5lbC1jYWNoZS5oIGIv
c3JjL3NwaWNlLWNoYW5uZWwtY2FjaGUuaAo+IGluZGV4IDM2NWZhZTYwLi4yNGNkN2NhNyAxMDA2
NDQKPiAtLS0gYS9zcmMvc3BpY2UtY2hhbm5lbC1jYWNoZS5oCj4gKysrIGIvc3JjL3NwaWNlLWNo
YW5uZWwtY2FjaGUuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgICBZb3Ugc2hvdWxkIGhhdmUg
cmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4gICAgICBM
aWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5n
bnUub3JnL2xpY2Vuc2VzLz4uCj4gICAqLwo+IC0jaWZuZGVmIFNQSUNFX0NIQU5ORUxfQ0FDSEVf
SF8KPiAtIyBkZWZpbmUgU1BJQ0VfQ0hBTk5FTF9DQUNIRV9IXwo+ICsjcHJhZ21hIG9uY2UKPiAg
IAo+ICAgI2luY2x1ZGUgImNvbW1vbi9tZW0uaCIKPiAgIAo+IEBAIC0xNTAsNSArMTQ5LDMgQEAg
c3RhdGljIGlubGluZSB2b2lkIGNhY2hlX2ZyZWUoZGlzcGxheV9jYWNoZSAqY2FjaGUpCj4gICB9
Cj4gICAKPiAgIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLy8gU1BJQ0VfQ0hBTk5FTF9DQUNI
RV9IXwo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtY2hhbm5lbC1wcml2LmggYi9zcmMvc3BpY2Ut
Y2hhbm5lbC1wcml2LmgKPiBpbmRleCA1OTg0Y2E1Ni4uODBlYTcxNDAgMTAwNjQ0Cj4gLS0tIGEv
c3JjL3NwaWNlLWNoYW5uZWwtcHJpdi5oCj4gKysrIGIvc3JjL3NwaWNlLWNoYW5uZWwtcHJpdi5o
Cj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNv
cHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxvbmcg
d2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5z
ZXMvPi4KPiAgICovCj4gLSNpZm5kZWYgX19TUElDRV9DTElFTlRfQ0hBTk5FTF9QUklWX0hfXwo+
IC0jZGVmaW5lIF9fU1BJQ0VfQ0xJRU5UX0NIQU5ORUxfUFJJVl9IX18KPiArI3ByYWdtYSBvbmNl
Cj4gICAKPiAgICNpbmNsdWRlICJjb25maWcuaCIKPiAgIAo+IEBAIC0yMTAsNSArMjA5LDMgQEAg
Z2ludCBzcGljZV9jaGFubmVsX3VuaXhfcmVhZF9mZChTcGljZUNoYW5uZWwgKmNoYW5uZWwpOwo+
ICAgI2VuZGlmCj4gICAKPiAgIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9D
TElFTlRfQ0hBTk5FTF9QUklWX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtY29tbW9u
LmggYi9zcmMvc3BpY2UtY29tbW9uLmgKPiBpbmRleCA4NTU0ZjRjOC4uMWFmMWY1ZGMgMTAwNjQ0
Cj4gLS0tIGEvc3JjL3NwaWNlLWNvbW1vbi5oCj4gKysrIGIvc3JjL3NwaWNlLWNvbW1vbi5oCj4g
QEAgLTE1LDggKzE1LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkg
b2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxvbmcgd2l0
aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMv
Pi4KPiAgICovCj4gLSNpZm5kZWYgU1BJQ0VfQ09NTU9OX0hfCj4gLSMgZGVmaW5lIFNQSUNFX0NP
TU1PTl9IXwo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgLyogc3lzdGVtICovCj4gICAjaW5jbHVk
ZSA8c3RkaW8uaD4KPiBAQCAtMzIsNSArMzEsMyBAQAo+ICAgI2luY2x1ZGUgImNvbW1vbi9tYXJz
aGFsbGVyLmgiCj4gICAKPiAgICNpbmNsdWRlICJzcGljZS11dGlsLmgiCj4gLQo+IC0jZW5kaWYg
Ly8gU1BJQ0VfQ09NTU9OX0hfCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1maWxlLXRyYW5zZmVy
LXRhc2stcHJpdi5oIGIvc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXItdGFzay1wcml2LmgKPiBpbmRl
eCAyNTNiM2M1ZS4uMDZiYzNhYjQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLWZpbGUtdHJhbnNm
ZXItdGFzay1wcml2LmgKPiArKysgYi9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLXByaXYu
aAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJy
YXJ5OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gICAqLwo+
ICAgCj4gLSNpZm5kZWYgX19TUElDRV9GSUxFX1RSQU5TRkVSX1RBU0tfUFJJVl9IX18KPiAtI2Rl
ZmluZSBfX1NQSUNFX0ZJTEVfVFJBTlNGRVJfVEFTS19QUklWX0hfXwo+ICsjcHJhZ21hIG9uY2UK
PiAgIAo+ICAgI2luY2x1ZGUgImNvbmZpZy5oIgo+ICAgCj4gQEAgLTUzLDUgKzUyLDMgQEAgZ3Nz
aXplIHNwaWNlX2ZpbGVfdHJhbnNmZXJfdGFza19yZWFkX2ZpbmlzaChTcGljZUZpbGVUcmFuc2Zl
clRhc2sgKnNlbGYsCj4gICBnYm9vbGVhbiBzcGljZV9maWxlX3RyYW5zZmVyX3Rhc2tfaXNfY29t
cGxldGVkKFNwaWNlRmlsZVRyYW5zZmVyVGFzayAqc2VsZik7Cj4gICAKPiAgIEdfRU5EX0RFQ0xT
Cj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9GSUxFX1RSQU5TRkVSX1RBU0tfUFJJVl9IX18gKi8K
PiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWdyYWJzZXF1ZW5jZS1wcml2LmggYi9zcmMvc3BpY2Ut
Z3JhYnNlcXVlbmNlLXByaXYuaAo+IGluZGV4IDk3ZjA1YjIwLi40YjQ5ODE0OSAxMDA2NDQKPiAt
LS0gYS9zcmMvc3BpY2UtZ3JhYnNlcXVlbmNlLXByaXYuaAo+ICsrKyBiL3NyYy9zcGljZS1ncmFi
c2VxdWVuY2UtcHJpdi5oCj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgWW91IHNob3VsZCBoYXZl
IHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICBM
aWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDovL3d3dy5n
bnUub3JnL2xpY2Vuc2VzLz4uCj4gICAqLwo+IC0jaWZuZGVmIF9fU1BJQ0VfR1JBQlNFUVVFTkNF
X1BSSVZfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9HUkFCU0VRVUVOQ0VfUFJJVl9IX18KPiArI3By
YWdtYSBvbmNlCj4gICAKPiAgICNpbmNsdWRlIDxnbGliLmg+Cj4gICAKPiBAQCAtMjUsNSArMjQs
MyBAQCBzdHJ1Y3QgX1NwaWNlR3JhYlNlcXVlbmNlIHsKPiAgICAgICBndWludCBua2V5c3ltczsK
PiAgICAgICBndWludCAqa2V5c3ltczsKPiAgIH07Cj4gLQo+IC0jZW5kaWYKPiBkaWZmIC0tZ2l0
IGEvc3JjL3NwaWNlLWdzdGF1ZGlvLmggYi9zcmMvc3BpY2UtZ3N0YXVkaW8uaAo+IGluZGV4IGI2
MDVmMWNmLi4yMWIxNDkwOSAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2UtZ3N0YXVkaW8uaAo+ICsr
KyBiL3NyYy9zcGljZS1nc3RhdWRpby5oCj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgIFlvdSBz
aG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJs
aWMKPiAgICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxo
dHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgICovCj4gLSNpZm5kZWYgX19TUElDRV9D
TElFTlRfR1NUQVVESU9fSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRfR1NUQVVESU9fSF9f
Cj4gKyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaW5jbHVkZSAic3BpY2UtY2xpZW50LmgiCj4gICAj
aW5jbHVkZSAic3BpY2UtYXVkaW8uaCIKPiBAQCAtNTIsNSArNTEsMyBAQCBTcGljZUdzdGF1ZGlv
ICpzcGljZV9nc3RhdWRpb19uZXcoU3BpY2VTZXNzaW9uICpzZXNzaW9uLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIEdNYWluQ29udGV4dCAqY29udGV4dCwgY29uc3QgY2hh
ciAqbmFtZSk7Cj4gICAKPiAgIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyogX19TUElDRV9D
TElFTlRfR1NUQVVESU9fSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1ndGstc2Vzc2lv
bi1wcml2LmggYi9zcmMvc3BpY2UtZ3RrLXNlc3Npb24tcHJpdi5oCj4gaW5kZXggMGRiYzllOTYu
LmNmYmU0YWM2IDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1ndGstc2Vzc2lvbi1wcml2LmgKPiAr
KysgYi9zcmMvc3BpY2UtZ3RrLXNlc3Npb24tcHJpdi5oCj4gQEAgLTE1LDggKzE1LDcgQEAKPiAg
ICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2Vu
ZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5v
dCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAgICovCj4gLSNpZm5kZWYg
X19TUElDRV9DTElFTlRfR1RLX1NFU1NJT05fUFJJVl9IX18KPiAtI2RlZmluZSBfX1NQSUNFX0NM
SUVOVF9HVEtfU0VTU0lPTl9QUklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgI2luY2x1
ZGUgInNwaWNlLWd0ay1zZXNzaW9uLmgiCj4gICAKPiBAQCAtNDYsNSArNDUsMyBAQCBnYm9vbGVh
biBzcGljZV9ndGtfc2Vzc2lvbl9nZXRfa2V5Ym9hcmRfaGFzX2ZvY3VzKFNwaWNlR3RrU2Vzc2lv
biAqc2VsZik7Cj4gICBnYm9vbGVhbiBzcGljZV9ndGtfc2Vzc2lvbl9nZXRfbW91c2VfaGFzX3Bv
aW50ZXIoU3BpY2VHdGtTZXNzaW9uICpzZWxmKTsKPiAgIAo+ICAgR19FTkRfREVDTFMKPiAtCj4g
LSNlbmRpZiAvKiBfX1NQSUNFX0NMSUVOVF9HVEtfU0VTU0lPTl9QUklWX0hfXyAqLwo+IGRpZmYg
LS1naXQgYS9zcmMvc3BpY2UtcHVsc2UuaCBiL3NyYy9zcGljZS1wdWxzZS5oCj4gaW5kZXggODE5
NjQ3ZTIuLmRjZmEzMjQzIDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1wdWxzZS5oCj4gKysrIGIv
c3JjL3NwaWNlLXB1bHNlLmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICAgWW91IHNob3VsZCBo
YXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAg
ICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93
d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NMSUVOVF9Q
VUxTRV9IX18KPiAtI2RlZmluZSBfX1NQSUNFX0NMSUVOVF9QVUxTRV9IX18KPiArI3ByYWdtYSBv
bmNlCj4gICAKPiAgICNpbmNsdWRlICJzcGljZS1jbGllbnQuaCIKPiAgICNpbmNsdWRlICJzcGlj
ZS1hdWRpby5oIgo+IEBAIC01Myw1ICs1MiwzIEBAIFNwaWNlUHVsc2UgKnNwaWNlX3B1bHNlX25l
dyhTcGljZVNlc3Npb24gKnNlc3Npb24sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29uc3QgY2hhciAqbmFtZSk7Cj4gICAKPiAgIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYgLyog
X19TUElDRV9DTElFTlRfUFVMU0VfSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1zZXNz
aW9uLXByaXYuaCBiL3NyYy9zcGljZS1zZXNzaW9uLXByaXYuaAo+IGluZGV4IDZlY2U3ZTAxLi42
MmNlYmM1MyAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2Utc2Vzc2lvbi1wcml2LmgKPiArKysgYi9z
cmMvc3BpY2Utc2Vzc2lvbi1wcml2LmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICAgWW91IHNo
b3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1Ymxp
Ywo+ICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0
dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX0NM
SUVOVF9TRVNTSU9OX1BSSVZfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9DTElFTlRfU0VTU0lPTl9Q
UklWX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgI2luY2x1ZGUgImNvbmZpZy5oIgo+ICAg
Cj4gQEAgLTk5LDUgKzk4LDMgQEAgZ2Jvb2xlYW4gc3BpY2Vfc2Vzc2lvbl9zZXRfbWlncmF0aW9u
X3Nlc3Npb24oU3BpY2VTZXNzaW9uICpzZXNzaW9uLCBTcGljZVNlc3Npb24KPiAgIFNwaWNlQXVk
aW8gKnNwaWNlX2F1ZGlvX2dldChTcGljZVNlc3Npb24gKnNlc3Npb24sIEdNYWluQ29udGV4dCAq
Y29udGV4dCk7Cj4gICBjb25zdCBnY2hhciogc3BpY2VfYXVkaW9fZGF0YV9tb2RlX3RvX3N0cmlu
ZyhnaW50IG1vZGUpOwo+ICAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvKiBfX1NQSUNFX0NM
SUVOVF9TRVNTSU9OX1BSSVZfSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS11cmktcHJp
di5oIGIvc3JjL3NwaWNlLXVyaS1wcml2LmgKPiBpbmRleCA1NDM1MWRlYy4uMWE4MzQxYjEgMTAw
NjQ0Cj4gLS0tIGEvc3JjL3NwaWNlLXVyaS1wcml2LmgKPiArKysgYi9zcmMvc3BpY2UtdXJpLXBy
aXYuaAo+IEBAIC0xNSw4ICsxNSw3IEBACj4gICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBh
IGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgTGljZW5zZSBhbG9u
ZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNl
bnNlcy8+Lgo+ICAgKi8KPiAtI2lmbmRlZiBfX1NQSUNFX1VSSV9QUklWX0hfXwo+IC0jZGVmaW5l
IF9fU1BJQ0VfVVJJX1BSSVZfSF9fCj4gKyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaW5jbHVkZSAi
c3BpY2UtdXJpLmgiCj4gICAKPiBAQCAtMjYsNSArMjUsMyBAQCBTcGljZVVSSSogc3BpY2VfdXJp
X25ldyh2b2lkKTsKPiAgIGdib29sZWFuIHNwaWNlX3VyaV9wYXJzZShTcGljZVVSSSogc2VsZiwg
Y29uc3QgZ2NoYXIqIHVyaSwgR0Vycm9yKiogZXJyb3IpOwo+ICAgCj4gICBHX0VORF9ERUNMUwo+
IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0VfVVJJX1BSSVZfSF9fICovCj4gZGlmZiAtLWdpdCBhL3Ny
Yy9zcGljZS11dGlsLXByaXYuaCBiL3NyYy9zcGljZS11dGlsLXByaXYuaAo+IGluZGV4IDM4YjBk
ZWI2Li45YzQzYTNkZSAxMDA2NDQKPiAtLS0gYS9zcmMvc3BpY2UtdXRpbC1wcml2LmgKPiArKysg
Yi9zcmMvc3BpY2UtdXRpbC1wcml2LmgKPiBAQCAtMTUsOCArMTUsNyBAQAo+ICAgICAgWW91IHNo
b3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1Ymxp
Ywo+ICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0
dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAgKi8KPiAtI2lmbmRlZiBTUElDRV9VVElM
X1BSSVZfSAo+IC0jZGVmaW5lIFNQSUNFX1VUSUxfUFJJVl9ICj4gKyNwcmFnbWEgb25jZQo+ICAg
Cj4gICAjaW5jbHVkZSA8Z2xpYi5oPgo+ICAgI2luY2x1ZGUgInNwaWNlLXV0aWwuaCIKPiBAQCAt
MzQsNSArMzMsMyBAQCB2b2lkIHNwaWNlX21vbm9fZWRnZV9oaWdobGlnaHQodW5zaWduZWQgd2lk
dGgsIHVuc2lnbmVkIGhpZ2h0LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNv
bnN0IGd1aW50OCAqYW5kLCBjb25zdCBndWludDggKnhvciwgZ3VpbnQ4ICpkZXN0KTsKPiAgIAo+
ICAgR19FTkRfREVDTFMKPiAtCj4gLSNlbmRpZiAvKiBTUElDRV9VVElMX1BSSVZfSCAqLwo+IGRp
ZmYgLS1naXQgYS9zcmMvc3BpY2Utd2lkZ2V0LXByaXYuaCBiL3NyYy9zcGljZS13aWRnZXQtcHJp
di5oCj4gaW5kZXggNjVlYjQwNDcuLjQzNmM4MDJjIDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS13
aWRnZXQtcHJpdi5oCj4gKysrIGIvc3JjL3NwaWNlLXdpZGdldC1wcml2LmgKPiBAQCAtMTUsOCAr
MTUsNyBAQAo+ICAgICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUgR05V
IExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGli
cmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAgKi8K
PiAtI2lmbmRlZiBfX1NQSUNFX1dJREdFVF9QUklWX0hfXwo+IC0jZGVmaW5lIF9fU1BJQ0VfV0lE
R0VUX1BSSVZfSF9fCj4gKyNwcmFnbWEgb25jZQo+ICAgCj4gICAjaW5jbHVkZSAiY29uZmlnLmgi
Cj4gICAKPiBAQCAtMTc3LDUgKzE3NiwzIEBAIHZvaWQgICAgIHNwaWNlX2Rpc3BsYXlfd2lkZ2V0
X2dsX3NjYW5vdXQgICAgIChTcGljZURpc3BsYXkgKmRpc3BsYXkpOwo+ICAgdm9pZCAgICAgc3Bp
Y2VfZGlzcGxheV93aWRnZXRfdXBkYXRlX21vbml0b3JfYXJlYShTcGljZURpc3BsYXkgKmRpc3Bs
YXkpOwo+ICAgCj4gICBHX0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmCj4gZGlmZiAtLWdpdCBhL3Ny
Yy91c2ItYWNsLWhlbHBlci5oIGIvc3JjL3VzYi1hY2wtaGVscGVyLmgKPiBpbmRleCBlMmUyN2Ri
NC4uMjVmMmY1ZjAgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1hY2wtaGVscGVyLmgKPiArKysgYi9z
cmMvdXNiLWFjbC1oZWxwZXIuaAo+IEBAIC0xOCw4ICsxOCw3IEBACj4gICAgICBZb3Ugc2hvdWxk
IGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4g
ICAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNlZSA8aHR0cDov
L3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gICAqLwo+IC0jaWZuZGVmIF9fU1BJQ0VfVVNCX0FD
TF9IRUxQRVJfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9VU0JfQUNMX0hFTFBFUl9IX18KPiArI3By
YWdtYSBvbmNlCj4gICAKPiAgICNpbmNsdWRlICJzcGljZS1jbGllbnQuaCIKPiAgICNpbmNsdWRl
IDxnaW8vZ2lvLmg+Cj4gQEAgLTY4LDUgKzY3LDMgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2FjbF9o
ZWxwZXJfb3Blbl9hY2xfZmluaXNoKAo+ICAgdm9pZCBzcGljZV91c2JfYWNsX2hlbHBlcl9jYW5j
ZWwoU3BpY2VVc2JBY2xIZWxwZXIgKnNlbGYpOwo+ICAgCj4gICBHX0VORF9ERUNMUwo+IC0KPiAt
I2VuZGlmIC8qIF9fU1BJQ0VfVVNCX0FDTF9IRUxQRVJfSF9fICovCj4gZGlmZiAtLWdpdCBhL3Ny
Yy91c2ItYmFja2VuZC5oIGIvc3JjL3VzYi1iYWNrZW5kLmgKPiBpbmRleCA2OWE0OTBiNS4uNjZl
MTNmNTQgMTAwNjQ0Cj4gLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmgKPiArKysgYi9zcmMvdXNiLWJh
Y2tlbmQuaAo+IEBAIC0xOSw4ICsxOSw3IEBACj4gICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRo
aXMgbGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+
ICAgKi8KPiAgIAo+IC0jaWZuZGVmIF9fU1BJQ0VfVVNCX0JBQ0tFTkRfSF9fCj4gLSNkZWZpbmUg
X19TUElDRV9VU0JfQkFDS0VORF9IX18KPiArI3ByYWdtYSBvbmNlCj4gICAKPiAgICNpbmNsdWRl
IDx1c2JyZWRpcmZpbHRlci5oPgo+ICAgI2luY2x1ZGUgInVzYi1kZXZpY2UtbWFuYWdlci5oIgo+
IEBAIC05MCw1ICs4OSwzIEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9nZXRfZ3Vl
c3RfZmlsdGVyKFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoLAo+ICAgdm9pZCBzcGljZV91c2Jf
YmFja2VuZF9yZXR1cm5fd3JpdGVfZGF0YShTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwgdm9p
ZCAqZGF0YSk7Cj4gICAKPiAgIEdfRU5EX0RFQ0xTCj4gLQo+IC0jZW5kaWYKPiBkaWZmIC0tZ2l0
IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmggYi9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LXByaXYuaAo+IGluZGV4IDY2YWNmNmQ1Li5lMmE1NGVkMSAxMDA2NDQKPiAtLS0gYS9zcmMvdXNi
LWRldmljZS1tYW5hZ2VyLXByaXYuaAo+ICsrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJp
di5oCj4gQEAgLTE4LDggKzE4LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBh
IGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExpY2Vuc2UgYWxv
bmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGlj
ZW5zZXMvPi4KPiAgICovCj4gLSNpZm5kZWYgX19TUElDRV9VU0JfREVWSUNFX01BTkFHRVJfUFJJ
Vl9IX18KPiAtI2RlZmluZSBfX1NQSUNFX1VTQl9ERVZJQ0VfTUFOQUdFUl9QUklWX0hfXwo+ICsj
cHJhZ21hIG9uY2UKPiAgIAo+ICAgI2luY2x1ZGUgInVzYi1kZXZpY2UtbWFuYWdlci5oIgo+ICAg
Cj4gQEAgLTM4LDUgKzM3LDMgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2RldmljZV9pc19pc29jaHJv
bm91cyhjb25zdCBTcGljZVVzYkRldmljZSAqZGV2aWNlKTsKPiAgICNlbmRpZgo+ICAgCj4gICBH
X0VORF9ERUNMUwo+IC0KPiAtI2VuZGlmIC8qIF9fU1BJQ0VfVVNCX0RFVklDRV9NQU5BR0VSX1BS
SVZfSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy91c2Jka19hcGkuaCBiL3NyYy91c2Jka19hcGku
aAo+IGluZGV4IDhlNTQwNmM4Li44OTc4ZDc1YyAxMDA2NDQKPiAtLS0gYS9zcmMvdXNiZGtfYXBp
LmgKPiArKysgYi9zcmMvdXNiZGtfYXBpLmgKPiBAQCAtMTksOCArMTksNyBAQAo+ICAgICAgIERt
aXRyeSBGbGV5dG1hbiA8ZG1pdHJ5QGRheW5peC5jb20+Cj4gICAgICAgS2lyaWxsIE1vaXppayA8
a2lyaWxsQGRheW5peC5jb20+Cj4gICAqLwo+IC0jaWZuZGVmIFVTQkRLX0hFQURFUgo+IC0jZGVm
aW5lIFVTQkRLX0hFQURFUgo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgdHlwZWRlZiBzdHJ1Y3Qg
dGFnX3VzYmRrX2FwaV93cmFwcGVyIHVzYmRrX2FwaV93cmFwcGVyOwo+ICAgCj4gQEAgLTMxLDQg
KzMwLDMgQEAgSEFORExFICAgdXNiZGtfY3JlYXRlX2hpZGVyX2hhbmRsZSh1c2Jka19hcGlfd3Jh
cHBlciAqdXNiZGtfYXBpKTsKPiAgIHZvaWQgICAgIHVzYmRrX2FwaV9zZXRfaGlkZV9ydWxlcyh1
c2Jka19hcGlfd3JhcHBlciAqdXNiZGtfYXBpLCBIQU5ETEUgaGlkZXJfaGFuZGxlLCBnY2hhciAq
cmVkaXJlY3Rfb25fY29ubmVjdCk7Cj4gICBCT09MICAgICB1c2Jka19jbGVhcl9oaWRlX3J1bGVz
KHVzYmRrX2FwaV93cmFwcGVyICp1c2Jka19hcGksIEhBTkRMRSBoaWRlcl9oYW5kbGUpOwo+ICAg
dm9pZCAgICAgdXNiZGtfY2xvc2VfaGlkZXJfaGFuZGxlKHVzYmRrX2FwaV93cmFwcGVyICp1c2Jk
a19hcGksIEhBTkRMRSBoaWRlcl9oYW5kbGUpOwo+IC0jZW5kaWYKPiBkaWZmIC0tZ2l0IGEvc3Jj
L3VzYnV0aWwuaCBiL3NyYy91c2J1dGlsLmgKPiBpbmRleCA1MGUzOTQ5My4uNmM1NzBkOTQgMTAw
NjQ0Cj4gLS0tIGEvc3JjL3VzYnV0aWwuaAo+ICsrKyBiL3NyYy91c2J1dGlsLmgKPiBAQCAtMTgs
OCArMTgsNyBAQAo+ICAgICAgWW91IHNob3VsZCBoYXZlIHJlY2VpdmVkIGEgY29weSBvZiB0aGUg
R05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+ICAgICAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMg
bGlicmFyeTsgaWYgbm90LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAg
Ki8KPiAtI2lmbmRlZiBfX1NQSUNFX1VTQlVUSUxfSF9fCj4gLSNkZWZpbmUgX19TUElDRV9VU0JV
VElMX0hfXwo+ICsjcHJhZ21hIG9uY2UKPiAgIAo+ICAgI2luY2x1ZGUgPGdsaWIuaD4KPiAgIAo+
IEBAIC0zNSw0ICszNCwzIEBAIHZvaWQgc3BpY2VfdXNiX3V0aWxfZ2V0X2RldmljZV9zdHJpbmdz
KGludCBidXMsIGludCBhZGRyZXNzLAo+ICAgR19FTkRfREVDTFMKPiAgIAo+ICAgI2VuZGlmIC8q
IFVTRV9VU0JSRURJUiAqLwo+IC0jZW5kaWYgLyogX19TUElDRV9VU0JVVElMX0hfXyAqLwo+IGRp
ZmYgLS1naXQgYS9zcmMvdm1jc3RyZWFtLmggYi9zcmMvdm1jc3RyZWFtLmgKPiBpbmRleCAxMzE2
Yjc3ZC4uNDg1MWNmNTIgMTAwNjQ0Cj4gLS0tIGEvc3JjL3ZtY3N0cmVhbS5oCj4gKysrIGIvc3Jj
L3ZtY3N0cmVhbS5oCj4gQEAgLTE1LDggKzE1LDcgQEAKPiAgICAgIFlvdSBzaG91bGQgaGF2ZSBy
ZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAgICAgIExp
Y2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3Lmdu
dS5vcmcvbGljZW5zZXMvPi4KPiAgICovCj4gLSNpZm5kZWYgX19TUElDRV9WTUNfU1RSRUFNX0hf
Xwo+IC0jZGVmaW5lIF9fU1BJQ0VfVk1DX1NUUkVBTV9IX18KPiArI3ByYWdtYSBvbmNlCj4gICAK
PiAgICNpbmNsdWRlIDxnaW8vZ2lvLmg+Cj4gICAKPiBAQCAtNzcsNSArNzYsMyBAQCBHVHlwZSAg
ICAgICAgICAgc3BpY2Vfdm1jX3N0cmVhbV9nZXRfdHlwZSAgICAgICAgKHZvaWQpIEdfR05VQ19D
T05TVDsKPiAgIFNwaWNlVm1jU3RyZWFtKiBzcGljZV92bWNfc3RyZWFtX25ldyAgICAgICAgICAg
ICAoU3BpY2VDaGFubmVsICpjaGFubmVsKTsKPiAgIAo+ICAgR19FTkRfREVDTFMKPiAtCj4gLSNl
bmRpZiAvKiBfX1NQSUNFX1ZNQ19TVFJFQU1fSF9fICovCj4gZGlmZiAtLWdpdCBhL3NyYy92bmNk
aXNwbGF5a2V5bWFwLmggYi9zcmMvdm5jZGlzcGxheWtleW1hcC5oCj4gaW5kZXggM2VjNTVkNTgu
LjJkM2RjNTI3IDEwMDY0NAo+IC0tLSBhL3NyYy92bmNkaXNwbGF5a2V5bWFwLmgKPiArKysgYi9z
cmMvdm5jZGlzcGxheWtleW1hcC5oCj4gQEAgLTE5LDggKzE5LDcgQEAKPiAgICAqIEZvdW5kYXRp
b24sIEluYy4sIDUxIEZyYW5rbGluIFN0cmVldCwgRmlmdGggRmxvb3IsIEJvc3RvbiwgTUEgIDAy
MTEwLTEzMDEgVVNBCj4gICAgKi8KPiAgIAo+IC0jaWZuZGVmIFZOQ19ESVNQTEFZX0tFWU1BUF9I
Cj4gLSNkZWZpbmUgVk5DX0RJU1BMQVlfS0VZTUFQX0gKPiArI3ByYWdtYSBvbmNlCj4gICAKPiAg
ICNpbmNsdWRlIDxnbGliLmg+Cj4gICAKPiBAQCAtMzIsNSArMzEsMyBAQCBndWludDE2IHZuY19k
aXNwbGF5X2tleW1hcF9nZGsyeHRrYmQoY29uc3QgZ3VpbnQxNiAqa2V5Y29kZV9tYXAsCj4gICB2
b2lkIHZuY19kaXNwbGF5X2tleXZhbF9zZXRfZW50cmllcyh2b2lkKTsKPiAgIHZvaWQgdm5jX2Rp
c3BsYXlfa2V5dmFsX2ZyZWVfZW50cmllcyh2b2lkKTsKPiAgIGd1aW50IHZuY19kaXNwbGF5X2tl
eXZhbF9mcm9tX2tleWNvZGUoZ3VpbnQga2V5Y29kZSwgZ3VpbnQga2V5dmFsKTsKPiAtCj4gLSNl
bmRpZiAvKiBWTkNfRElTUExBWV9LRVlNQVBfSCAqLwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
