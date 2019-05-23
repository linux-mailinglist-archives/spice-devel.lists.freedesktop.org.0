Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA8F279F1
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 12:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A5989D7B;
	Thu, 23 May 2019 10:01:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC71189D7B
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 10:01:16 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r7so5535289wrr.13
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 03:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mMD1zGZfCsgpgdH1GnoMocTMUPggjV3mpEo2xKsPCJo=;
 b=pEaKgpfG6e+pY5y8OYJVelbtaRrpcrOEOF+YZjxNlcg60XXWf3FyDnwNikRLuwFBOl
 V7nUnCgQnHARg+2rRMRrQ4JlIxczfgsc4K9umcZ8s5wlNtxHMI4+Tqdok3jTk+4VKWQF
 3a+vpfD8YLgXe8N26lZcEk5t7978rdZdXvhRm91TvyG+kyVvUxgCWDyKuGtWoQCswEJO
 YAF244N3GdLMzaYNvDmA4AbIC9fupxmVK99jebFklZ0+njTOQe/6OcKX1g65CnDcsfWw
 aukwqdb4t+Yj/AyBva/sU4SLI9jFtptiLLckNatRuWtFBsL1gcxUNfS+OWBIKoe8TbNR
 RkMQ==
X-Gm-Message-State: APjAAAVyW0kMEY4IQE5PtNuwbdaWaWw63+Zct1j+AKZBcD3ACgh2o+ON
 wmXU8Z/dc8Q50Kwwh9mqL3G0aqZVV2w=
X-Google-Smtp-Source: APXvYqxfCO8A03NHmp1LtRXYSvat5X+364G44qppI4sImviSqOeiP1XqS3DjVntV0YEkawd19Dgf2w==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr20546236wrt.197.1558605675035; 
 Thu, 23 May 2019 03:01:15 -0700 (PDT)
Received: from dhcp-4-103.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id j190sm9625537wmb.19.2019.05.23.03.01.13
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 03:01:14 -0700 (PDT)
To: =?UTF-8?Q?Marc-Andr=c3=a9_Lureau?= <marcandre.lureau@gmail.com>
References: <20190317152830.5012-1-ssheribe@redhat.com>
 <CAJ+F1CL0zGYtr2wHab=YP-a_FBChZvsMqiseNwmCXjoiCHLgEw@mail.gmail.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <e6ae8724-50ea-f580-745b-5a15160a6ab5@redhat.com>
Date: Thu, 23 May 2019 13:01:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ+F1CL0zGYtr2wHab=YP-a_FBChZvsMqiseNwmCXjoiCHLgEw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH v2 spice-gtk] Adjust to window scaling
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiA1LzIyLzE5IDY6MDIgUE0sIE1hcmMtQW5kcsOpIEx1cmVhdSB3cm90ZToKPiBIaQo+
Cj4gT24gU3VuLCBNYXIgMTcsIDIwMTkgYXQgNDoyOCBQTSBTbmlyIFNoZXJpYmVyIDxzc2hlcmli
ZUByZWRoYXQuY29tPiB3cm90ZToKPj4gV2hlbiBHREtfU0NBTEUgaXMgIT0gMSBhbmQgZWdsIGlz
IHVzZWQsIHRoZSBpbWFnZSBwcmVzZW50ZWQgZG9lcyBub3QKPj4gZml0IHRvIHRoZSB3aW5kb3cg
KHNjYWxlIG9mIDIgaXMgb2Z0ZW4gdXNlZCB3aXRoIGhpZHBpIG1vbml0b3JzKS4KPj4gVXN1YWxs
eSB0aGlzIGlzIG5vdCBhIHByb2JsZW0gc2luY2UgYWxsIGNvbXBvbmVudHMgYXJlIGFkanVzdGVk
IGJ5Cj4+IGdkay9ndGsgYnV0IHdpdGggZWdsLCBwaXhlbC1iYXNlZCBkYXRhIGlzIG5vdCBiZWlu
ZyBzY2FsZWQuIEluIHRoaXMKPj4gY2FzZSB3aW5kb3cncyBzY2FsZSB2YWx1ZSBjYW4gYmUgdXNl
ZCBpbiBvcmRlciB0byBkZXRlcm1pbmUgd2hldGhlcgo+PiB0byB1c2UgYSBwaXhlbCByZXNvdXJj
ZSB3aXRoIGhpZ2hlciByZXNvbHV0aW9uIGRhdGEuCj4+Cj4+IEluIG9yZGVyIHRvIHJlcHJvZHVj
ZSB0aGUgcHJvYmxlbSBzZXQgc3BpY2Ugd2l0aCB2aXJnbC9JbnRlbC12R1BVCj4+IGFuZCBydW4g
c3BpY2UtZ3RrIHdpdGggR0RLX1NDQUxFPTIKPj4gLS0tCj4+IENoYW5nZXMgZnJvbSB2MToKPj4g
LWNvbW1pdCBtc2cKPj4gLXJlcGxhY2UgdmFyIG5hbWluZyAod3Mgd2l0aCB3aW5fc2NhbGUpCj4+
Cj4+Cj4+IFRoaXMgcGF0Y2ggaXMga2luZCBvZiBSRkMsIGl0IGZpeGVzIHRoZSBpc3N1ZSwgYnV0
IGl0J3MgYSBiaXQgaGFja3kKPj4gYW5kIHNwZWNpZmljLiBJIGRpZG4ndCBjb21lIGFjcm9zcyBv
dGhlciBzY2FsZSBpc3N1ZXMgYnV0IGl0IGlzIGxpa2VseQo+PiB0aGF0IG1vcmUgb2YgdGhlc2Ug
ZXhpc3QgYW5kIGJldHRlciBhbmQgZ2VuZXJpYyBmaXggaXMgbmVlZGVkLgo+Pgo+PiAtLS0KPj4g
ICBzcmMvc3BpY2Utd2lkZ2V0LWVnbC5jICB8IDE1ICsrKysrKysrKysrKystLQo+PiAgIHNyYy9z
cGljZS13aWRnZXQtcHJpdi5oIHwgIDEgKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS13aWRn
ZXQtZWdsLmMgYi9zcmMvc3BpY2Utd2lkZ2V0LWVnbC5jCj4+IGluZGV4IDQzZmNjZDcuLjYwMGM4
N2EgMTAwNjQ0Cj4+IC0tLSBhL3NyYy9zcGljZS13aWRnZXQtZWdsLmMKPj4gKysrIGIvc3JjL3Nw
aWNlLXdpZGdldC1lZ2wuYwo+PiBAQCAtMzI2LDYgKzMyNiw4IEBAIHN0YXRpYyBnYm9vbGVhbiBz
cGljZV93aWRnZXRfaW5pdF9lZ2xfd2luKFNwaWNlRGlzcGxheSAqZGlzcGxheSwgR2RrV2luZG93
ICp3aW4sCj4+ICAgICAgIGlmIChkLT5lZ2wuc3VyZmFjZSkKPj4gICAgICAgICAgIHJldHVybiBU
UlVFOwo+Pgo+PiArICAgIGQtPmVnbC5zY2FsZSA9IGdka193aW5kb3dfZ2V0X3NjYWxlX2ZhY3Rv
cih3aW4pOwo+IFdoeSBub3QgdXNlIGd0a193aWRnZXRfZ2V0X3NjYWxlX2ZhY3RvcigpIGRpcmVj
dGx5IGZyb20KPiBzcGljZV9lZ2xfcmVzaXplX2Rpc3BsYXk/CgoKVGhlcmUgaXMgbm8gc3BlY2lh
bCBvYmplY3Rpb24gZm9yIHRoYXQsIGp1c3QgYmVjYXVzZSBpIGFkanVzdCBzY2FsaW5nIAphbHNv
IGluIHNwaWNlX2VnbF91cGRhdGVfZGlzcGxheQphbmQgaSBhc3N1bWVkIHNjYWxpbmcgaXMgbm90
IGJlaW5nIGNoYW5nZWQgZnJlcXVlbnRseS4KCgpTbmlyLgoKPj4gKwo+PiAgICNpZmRlZiBHREtf
V0lORE9XSU5HX1gxMQo+PiAgICAgICBpZiAoR0RLX0lTX1gxMV9XSU5ET1cod2luKSkgewo+PiAg
ICAgICAgICAgbmF0aXZlID0gKEVHTE5hdGl2ZVdpbmRvd1R5cGUpR0RLX1dJTkRPV19YSUQod2lu
KTsKPj4gQEAgLTQzMSwxNSArNDMzLDE3IEBAIHZvaWQgc3BpY2VfZWdsX3Jlc2l6ZV9kaXNwbGF5
KFNwaWNlRGlzcGxheSAqZGlzcGxheSwgaW50IHcsIGludCBoKQo+PiAgIHsKPj4gICAgICAgU3Bp
Y2VEaXNwbGF5UHJpdmF0ZSAqZCA9IGRpc3BsYXktPnByaXY7Cj4+ICAgICAgIGludCBwcm9nOwo+
PiArICAgIGdpbnQgd2luX3NjYWxlOwo+Pgo+PiAgICAgICBpZiAoIWdsX21ha2VfY3VycmVudChk
aXNwbGF5LCBOVUxMKSkKPj4gICAgICAgICAgIHJldHVybjsKPj4KPj4gKyAgICB3aW5fc2NhbGUg
PSBkLT5lZ2wuc2NhbGU7Cj4+ICAgICAgIGdsR2V0SW50ZWdlcnYoR0xfQ1VSUkVOVF9QUk9HUkFN
LCAmcHJvZyk7Cj4+Cj4+ICAgICAgIGdsVXNlUHJvZ3JhbShkLT5lZ2wucHJvZyk7Cj4+IC0gICAg
YXBwbHlfb3J0aG8oZC0+ZWdsLm1wcm9qLCAwLCB3LCAwLCBoLCAtMSwgMSk7Cj4+IC0gICAgZ2xW
aWV3cG9ydCgwLCAwLCB3LCBoKTsKPj4gKyAgICBhcHBseV9vcnRobyhkLT5lZ2wubXByb2osIDAs
IHcgKiB3aW5fc2NhbGUgLCAwLCBoICogd2luX3NjYWxlLCAtMSwgMSk7Cj4+ICsgICAgZ2xWaWV3
cG9ydCgwLCAwLCB3ICogd2luX3NjYWxlLCBoICogd2luX3NjYWxlKTsKPj4KPj4gICAgICAgaWYg
KGQtPnJlYWR5KQo+PiAgICAgICAgICAgc3BpY2VfZWdsX3VwZGF0ZV9kaXNwbGF5KGRpc3BsYXkp
Owo+PiBAQCAtNTU5LDYgKzU2MywxMyBAQCB2b2lkIHNwaWNlX2VnbF91cGRhdGVfZGlzcGxheShT
cGljZURpc3BsYXkgKmRpc3BsYXkpCj4+Cj4+ICAgICAgIHNwaWNlX2Rpc3BsYXlfZ2V0X3NjYWxp
bmcoZGlzcGxheSwgJnMsICZ4LCAmeSwgJncsICZoKTsKPj4KPj4gKyAgICAvLyBBZGp1c3QgdG8g
Z2RrIHNjYWxlCj4+ICsgICAgcyAqPSBkLT5lZ2wuc2NhbGU7Cj4+ICsgICAgeCAqPSBkLT5lZ2wu
c2NhbGU7Cj4+ICsgICAgeSAqPSBkLT5lZ2wuc2NhbGU7Cj4+ICsgICAgdyAqPSBkLT5lZ2wuc2Nh
bGU7Cj4+ICsgICAgaCAqPSBkLT5lZ2wuc2NhbGU7Cj4+ICsKPj4gICAgICAgZ2xDbGVhckNvbG9y
KDAuMGYsIDAuMGYsIDAuMGYsIDAuMGYpOwo+PiAgICAgICBnbENsZWFyKEdMX0NPTE9SX0JVRkZF
Ul9CSVQpOwo+Pgo+PiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLXdpZGdldC1wcml2LmggYi9zcmMv
c3BpY2Utd2lkZ2V0LXByaXYuaAo+PiBpbmRleCA2NWViNDA0Li44ZjExMGFjIDEwMDY0NAo+PiAt
LS0gYS9zcmMvc3BpY2Utd2lkZ2V0LXByaXYuaAo+PiArKysgYi9zcmMvc3BpY2Utd2lkZ2V0LXBy
aXYuaAo+PiBAQCAtMTQ5LDYgKzE0OSw3IEBAIHN0cnVjdCBfU3BpY2VEaXNwbGF5UHJpdmF0ZSB7
Cj4+ICAgICAgICAgICBFR0xJbWFnZUtIUiAgICAgICAgIGltYWdlOwo+PiAgICAgICAgICAgZ2Jv
b2xlYW4gICAgICAgICAgICBjYWxsX2RyYXdfZG9uZTsKPj4gICAgICAgICAgIFNwaWNlR2xTY2Fu
b3V0ICAgICAgc2Nhbm91dDsKPj4gKyAgICAgICAgZ2ludCAgICAgICAgICAgICAgICBzY2FsZTsK
Pj4gICAgICAgfSBlZ2w7Cj4+ICAgI2VuZGlmIC8vIEhBVkVfRUdMCj4+ICAgICAgIGRvdWJsZSBz
Y3JvbGxfZGVsdGFfeTsKPj4gLS0KPj4gMi4xOS4xCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+
PiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+Cj4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
