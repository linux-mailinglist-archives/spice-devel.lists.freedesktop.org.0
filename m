Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C30424D1
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 13:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDCF89362;
	Wed, 12 Jun 2019 11:54:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B3089381
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 11:54:10 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c2so16576355wrm.8
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 04:54:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=h/DV/C3dISR9AB17GgrCclzlADcjt+ZeeSemhM5Y1Po=;
 b=XOmwzIn3jyZlr0Ll5/ZNCm6h3UW11XbIClD2wW/04heLVGdMytmQGM3s7YGl95z9f/
 dyP0gST9NazekpiIitCqLygr9qiEFo4/EsNBTnVzggH0CBkJnl/mS6xFUcl+h2tUy7h4
 SFRWYgn7s3yUPZfTYiKNWIvsVTkwuNJ8GJXJUJyyZpkTEQCSqQrS+/A5hrZLxJqBcJLX
 ypBnPP/AxvNeBxZRwlAU58Z0x6x0m+1wXwh+E9fdikDtOhFXLYsSFoP7ECtTwxAqjnxG
 xfDasE4J+5QHe5fsxOfrH6ZGzIyC2tLDZjQ2iq8qmQB7c+Jro7dOM1EAeQGV2Ca53lpx
 51Ew==
X-Gm-Message-State: APjAAAWpXVoLWKJXUvWGdbO3lzaS1Da88SaZYC5l6BQTJQYpjDCv2X5T
 26481BssirADzzI06jYmInGU6xGBOqVBwg==
X-Google-Smtp-Source: APXvYqzV/olXSYaRltK0Wr9EQXbD5EqyOlDauEmhDCeidB2q/GXKrordLkl4xDTkhh0h+XHcqEIKfg==
X-Received: by 2002:adf:afe8:: with SMTP id y40mr547451wrd.328.1560340448501; 
 Wed, 12 Jun 2019 04:54:08 -0700 (PDT)
Received: from dhcp-4-181.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id a2sm7752683wmj.9.2019.06.12.04.54.06
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 04:54:07 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <E1haljI-00014m-8z@amboise>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <6afef441-ac5d-36b6-1caa-d8c18b81cd7c@redhat.com>
Date: Wed, 12 Jun 2019 14:54:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <E1haljI-00014m-8z@amboise>
Content-Language: en-US
Subject: Re: [Spice-devel] [client] gstreamer: Fix the decoding time when
 not using GstVideoOverlay
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

SGksCgpPbiA2LzExLzE5IDk6NDIgUE0sIEZyYW5jb2lzIEdvdWdldCB3cm90ZToKPiBzY2hlZHVs
ZV9mcmFtZSgpIG9ubHkgcHVsbHMgZnJhbWVzIG91dCBvZiBHU3RyZWFtZXIncyBwaXBlbGluZSBv
bmNlIGFsbAo+IHByZXZpb3VzIGRlY29kZWQgZnJhbWVzIGhhdmUgYmVlbiBkaXNwbGF5ZWQuIFRo
dXMgd2hlbiB0aGUgdmlkZW8gZGVsYXkKCgpJSVJDIHdlIHVzZWQgdG8gcHVsbCB3aGVuIHNhbXBs
ZXMgYXJyaXZlZCBidXQgaXQgd2FzIGNoYW5nZWQgdG8gdGhpcyBzbyAKcGVuZGluZyBmcmFtZXMg
d2lsbCBiZSBxdWV1ZWQKaW5zaWRlIGdzdHJlYW1lciBhbmQgbGV0IGl0IGRvIHRocm90dGxpbmcg
KG9yIHNvbWV0aGluZyBzaW1pbGFyKQoKCj4gaXMgaGlnaCBhIGRlY29kZWQgZnJhbWUgbWF5IGhh
dmUgdG8gd2FpdCBmb3Igc2V2ZXJhbCBmcmFtZSBpbnRlcnZhbHMKPiBiZWZvcmUgZ2V0X2RlY29k
ZWRfZnJhbWUoKSBsb29rcyBhdCBpdCBhbmQgY29tcHV0ZXMgaXRzIGRlY29kaW5nIHRpbWUuCj4K
PiBTbyBhdHRhY2ggZGVjb2RlZCBmcmFtZSBzYW1wbGVzIHRvIHRoZSBjb3JyZXNwb25kaW5nIGRl
Y29kaW5nX3F1ZXVlCj4gZW50cnkgYXMgc29vbiBhcyBuZXdfc2FtcGxlKCkgaXMgY2FsbGVkLCBh
bmQgY29tcHV0ZSB0aGUgZGVjb2RpbmcgdGltZQo+IGFuZCBhc3NvY2lhdGVkIHN0YXRpc3RpY3Mg
dGhlbi4gU2ltaWxhcmx5LCBtYXRjaCBzaW5rX2V2ZW50X3Byb2JlKCkncwo+IG5ldyBidWZmZXIg
dG8gYSBkZWNvZGluZ19xdWV1ZSBlbnRyeSBhbmQgdXBkYXRlIHRoZSBzdGF0aXN0aWNzIGluIHRo
ZQo+IHByb2Nlc3MuIFRoaXMgZW5zdXJlcyB0aGF0IHRoZXJlIGlzIG5vIGV4dHJhIGRlbGF5IGlu
IGVpdGhlciBjYXNlLgo+Cj4gU2lnbmVkLW9mZi1ieTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0
QGNvZGV3ZWF2ZXJzLmNvbT4KPiAtLS0KPiAgIHNyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgfCAx
ODMgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA5NiBpbnNlcnRpb25zKCspLCA4NyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9z
cmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IGlu
ZGV4IDkxZWNlMGZhLi5mZWQ3MzU5MiAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LWdzdC5jCj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IEBAIC0xLDYgKzEsNiBA
QAo+ICAgLyogLSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zmc2V0OiA0OyBpbmRlbnQtdGFicy1tb2Rl
OiBuaWwgLSotICovCj4gICAvKgo+IC0gICBDb3B5cmlnaHQgKEMpIDIwMTUtMjAxNiBDb2RlV2Vh
dmVycywgSW5jCj4gKyAgIENvcHlyaWdodCAoQykgMjAxNS0yMDE2LCAyMDE5IENvZGVXZWF2ZXJz
LCBJbmMKPiAgIAo+ICAgICAgVGhpcyBsaWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4g
cmVkaXN0cmlidXRlIGl0IGFuZC9vcgo+ICAgICAgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBv
ZiB0aGUgR05VIExlc3NlciBHZW5lcmFsIFB1YmxpYwo+IEBAIC01NCw5ICs1NCw5IEBAIHR5cGVk
ZWYgc3RydWN0IFNwaWNlR3N0RGVjb2RlciB7Cj4gICAKPiAgICAgICBHTXV0ZXggcXVldWVzX211
dGV4Owo+ICAgICAgIEdRdWV1ZSAqZGVjb2RpbmdfcXVldWU7Cj4gKyAgICBndWludCBkZWNvZGVk
X2ZyYW1lczsKPiAgICAgICBTcGljZUdzdEZyYW1lICpkaXNwbGF5X2ZyYW1lOwo+ICAgICAgIGd1
aW50IHRpbWVyX2lkOwo+IC0gICAgZ3VpbnQgcGVuZGluZ19zYW1wbGVzOwo+ICAgfSBTcGljZUdz
dERlY29kZXI7Cj4gICAKPiAgICNkZWZpbmUgVkFMSURfVklERU9fQ09ERUNfVFlQRShjb2RlYykg
XAo+IEBAIC0xMjAsOCArMTIwLDYgQEAgc3RhdGljIHZvaWQgZnJlZV9nc3RfZnJhbWUoU3BpY2VH
c3RGcmFtZSAqZ3N0ZnJhbWUpCj4gICAvKiAtLS0tLS0tLS0tIEdTdHJlYW1lciBwaXBlbGluZSAt
LS0tLS0tLS0tICovCj4gICAKPiAgIHN0YXRpYyB2b2lkIHNjaGVkdWxlX2ZyYW1lKFNwaWNlR3N0
RGVjb2RlciAqZGVjb2Rlcik7Cj4gLXN0YXRpYyB2b2lkIGZldGNoX3BlbmRpbmdfc2FtcGxlKFNw
aWNlR3N0RGVjb2RlciAqZGVjb2Rlcik7Cj4gLXN0YXRpYyBTcGljZUdzdEZyYW1lICpnZXRfZGVj
b2RlZF9mcmFtZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIsIEdzdEJ1ZmZlciAqYnVmZmVyKTsK
PiAgIAo+ICAgUkVDT1JERVIoZnJhbWVzX3N0YXRzLCA2NCwgIkZyYW1lcyBzdGF0aXN0aWNzIik7
Cj4gICAKPiBAQCAtMTkxLDIxICsxODksMjYgQEAgc3RhdGljIHZvaWQgc2NoZWR1bGVfZnJhbWUo
U3BpY2VHc3REZWNvZGVyICpkZWNvZGVyKQo+ICAgICAgIGdfbXV0ZXhfbG9jaygmZGVjb2Rlci0+
cXVldWVzX211dGV4KTsKPiAgIAo+ICAgICAgIHdoaWxlICghZGVjb2Rlci0+dGltZXJfaWQpIHsK
PiAtICAgICAgICB3aGlsZSAoZGVjb2Rlci0+ZGlzcGxheV9mcmFtZSA9PSBOVUxMICYmIGRlY29k
ZXItPnBlbmRpbmdfc2FtcGxlcykgewo+IC0gICAgICAgICAgICBmZXRjaF9wZW5kaW5nX3NhbXBs
ZShkZWNvZGVyKTsKPiArICAgICAgICBHTGlzdCAqaGVhZCA9IGdfcXVldWVfcGVla19oZWFkX2xp
bmsoZGVjb2Rlci0+ZGVjb2RpbmdfcXVldWUpOwo+ICsgICAgICAgIGlmICghaGVhZCkgewo+ICsg
ICAgICAgICAgICAvKiBObyBmcmFtZSBpbiB0aGUgcXVldWUgKi8KPiArICAgICAgICAgICAgYnJl
YWs7Cj4gICAgICAgICAgIH0KPiAtCj4gLSAgICAgICAgU3BpY2VHc3RGcmFtZSAqZ3N0ZnJhbWUg
PSBkZWNvZGVyLT5kaXNwbGF5X2ZyYW1lOwo+IC0gICAgICAgIGlmICghZ3N0ZnJhbWUpIHsKPiAr
ICAgICAgICBTcGljZUdzdEZyYW1lICpnc3RmcmFtZSA9IGhlYWQtPmRhdGE7Cj4gKyAgICAgICAg
aWYgKCFnc3RmcmFtZS0+ZGVjb2RlZF9zYW1wbGUpIHsKPiArICAgICAgICAgICAgLyogVGhpcyBm
cmFtZSBoYXMgbm90IGJlZW4gZGVjb2RlZCB5ZXQgKi8KPiAgICAgICAgICAgICAgIGJyZWFrOwo+
ICAgICAgICAgICB9Cj4gKyAgICAgICAgZ19xdWV1ZV9wb3BfaGVhZChkZWNvZGVyLT5kZWNvZGlu
Z19xdWV1ZSk7Cj4gKyAgICAgICAgZGVjb2Rlci0+ZGlzcGxheV9mcmFtZSA9IGdzdGZyYW1lOwo+
ICsgICAgICAgIGRlY29kZXItPmRlY29kZWRfZnJhbWVzLS07Cj4gICAKPiAgICAgICAgICAgaWYg
KHNwaWNlX21tdGltZV9kaWZmKGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lLT5tbV90aW1lLCBub3cp
ID49IDApIHsKPiAgICAgICAgICAgICAgIGRlY29kZXItPnRpbWVyX2lkID0gZ190aW1lb3V0X2Fk
ZChnc3RmcmFtZS0+ZW5jb2RlZF9mcmFtZS0+bW1fdGltZSAtIG5vdywKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkaXNwbGF5X2ZyYW1lLCBkZWNvZGVy
KTsKPiAtICAgICAgICB9IGVsc2UgaWYgKGRlY29kZXItPmRpc3BsYXlfZnJhbWUgJiYgIWRlY29k
ZXItPnBlbmRpbmdfc2FtcGxlcykgewo+IC0gICAgICAgICAgICAvKiBTdGlsbCBhdHRlbXB0IHRv
IGRpc3BsYXkgdGhlIGxlYXN0IG91dCBvZiBkYXRlIGZyYW1lIHNvIHRoZQo+IC0gICAgICAgICAg
ICAgKiB2aWRlbyBpcyBub3QgY29tcGxldGVseSBmcm96ZW4gZm9yIGFuIGV4dGVuZGVkIHBlcmlv
ZCBvZiB0aW1lLgo+ICsgICAgICAgIH0gZWxzZSBpZiAoZGVjb2Rlci0+ZGlzcGxheV9mcmFtZSAm
JiBkZWNvZGVyLT5kZWNvZGVkX2ZyYW1lcyA9PSAwKSB7Cj4gKyAgICAgICAgICAgIC8qIFRoaXMg
aXMgdGhlIGxlYXN0IG91dCBvZiBkYXRlIGZyYW1lLiBEaXNwbGF5IGl0IHNpbmNlIHRoYXQncwo+
ICsgICAgICAgICAgICAgKiBiZXR0ZXIgdGhhbiBoYXZpbmcgZnJvemVuIHZpZGVvIGZvciBhbiBl
eHRlbmRlZCBwZXJpb2Qgb2YgdGltZS4KPiAgICAgICAgICAgICAgICAqLwo+ICAgICAgICAgICAg
ICAgZGVjb2Rlci0+dGltZXJfaWQgPSBnX3RpbWVvdXRfYWRkKDAsIGRpc3BsYXlfZnJhbWUsIGRl
Y29kZXIpOwo+ICAgICAgICAgICB9IGVsc2Ugewo+IEBAIC0yMjEsMTIgKzIyNCwxNiBAQCBzdGF0
aWMgdm9pZCBzY2hlZHVsZV9mcmFtZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIpCj4gICAgICAg
Z19tdXRleF91bmxvY2soJmRlY29kZXItPnF1ZXVlc19tdXRleCk7Cj4gICB9Cj4gICAKPiAtLyog
R2V0IHRoZSBkZWNvZGVkIGZyYW1lIHJlbGF0aXZlIHRvIGJ1ZmZlciBvciBOVUxMIGlmIG5vdCBm
b3VuZC4KPiAtICogRGVxdWV1ZSB0aGUgZnJhbWUgZnJvbSBkZWNvZGluZ19xdWV1ZSBhbmQgcmV0
dXJuIGl0LCBjYWxsZXIKPiAtICogaXMgcmVzcG9uc2libGUgdG8gZnJlZSB0aGUgcG9pbnRlci4K
PiArLyogUmV0dXJucyB0aGUgZGVjb2RpbmcgcXVldWUgZW50cnkgdGhhdCBtYXRjaGVzIHRoZSBz
cGVjaWZpZWQgR1N0cmVhbWVyIGJ1ZmZlci4KPiArICoKPiArICogVGhlIGVudHJ5IGlzIGlkZW50
aWZpZWQgYmFzZWQgb24gdGhlIGJ1ZmZlciB0aW1lc3RhbXAuIEhvd2V2ZXIgc29tZXRpbWVzCj4g
KyAqIEdTdHJlYW1lciByZXR1cm5zIHRoZSBzYW1lIGJ1ZmZlciB0d2ljZSAoYW5kIHRoZSBzZWNv
bmQgdGltZSB0aGUgZW50cnkgbWF5Cj4gKyAqIGhhdmUgYmVlbiByZW1vdmVkIGFscmVhZHkpIG9y
IGJ1ZmZlcnMgdGhhdCBoYXZlIGEgbW9kaWZpZWQsIGFuZCB0aHVzCj4gKyAqIHVucmVjb2duaXph
YmxlLCB0aW1lc3RhbXAuIEluIHN1Y2ggY2FzZXMgTlVMTCBpcyByZXR1cm5lZC4KPiArICoKPiAg
ICAqIHF1ZXVlc19tdXRleCBtdXN0IGJlIGhlbGQuCj4gICAgKi8KPiAtc3RhdGljIFNwaWNlR3N0
RnJhbWUgKmdldF9kZWNvZGVkX2ZyYW1lKFNwaWNlR3N0RGVjb2RlciAqZGVjb2RlciwgR3N0QnVm
ZmVyICpidWZmZXIpCj4gK3N0YXRpYyBHTGlzdCAqZmluZF9kZWNvZGVkX2VudHJ5KFNwaWNlR3N0
RGVjb2RlciAqZGVjb2RlciwgR3N0QnVmZmVyICpidWZmZXIpCj4gICB7Cj4gICAgICAgR3N0Q2xv
Y2tUaW1lIGJ1ZmZlcl90cyA9IEdTVF9CVUZGRVJfUFRTKGJ1ZmZlcik7Cj4gICAjaWYgR1NUX0NI
RUNLX1ZFUlNJT04oMSwxNCwwKQo+IEBAIC0yMzgsODEgKzI0NSw3MSBAQCBzdGF0aWMgU3BpY2VH
c3RGcmFtZSAqZ2V0X2RlY29kZWRfZnJhbWUoU3BpY2VHc3REZWNvZGVyICpkZWNvZGVyLCBHc3RC
dWZmZXIgKmJ1Zgo+ICAgICAgIH0KPiAgICNlbmRpZgo+ICAgCj4gLSAgICAvKiBHc3RyZWFtZXIg
c29tZXRpbWVzIHJldHVybnMgdGhlIHNhbWUgYnVmZmVyIHR3aWNlCj4gLSAgICAgKiBvciBidWZm
ZXJzIHRoYXQgaGF2ZSBhIG1vZGlmaWVkLCBhbmQgdGh1cyB1bnJlY29nbml6YWJsZSwgUFRTLgo+
IC0gICAgICogQmxpbmRseSByZW1vdmluZyBmcmFtZXMgZnJvbSB0aGUgZGVjb2RpbmdfcXVldWUg
dW50aWwgd2UgZmluZCBhCj4gLSAgICAgKiBtYXRjaCB3b3VsZCBvbmx5IGVtcHR5IHRoZSBxdWV1
ZSwgcmVzdWx0aW5nIGluIGxhdGVyIGJ1ZmZlcnMgbm90Cj4gLSAgICAgKiBmaW5kaW5nIGEgbWF0
Y2ggZWl0aGVyLCBldGMuIFNvIGNoZWNrIHRoZSBidWZmZXIgaGFzIGEgbWF0Y2hpbmcKPiAtICAg
ICAqIGZyYW1lIGZpcnN0Lgo+IC0gICAgICovCj4gLSAgICBTcGljZUdzdEZyYW1lICpnc3RmcmFt
ZSA9IE5VTEw7Cj4gICAgICAgR0xpc3QgKmwgPSBnX3F1ZXVlX3BlZWtfaGVhZF9saW5rKGRlY29k
ZXItPmRlY29kaW5nX3F1ZXVlKTsKPiAgICAgICB3aGlsZSAobCkgewo+IC0gICAgICAgIGdzdGZy
YW1lID0gbC0+ZGF0YTsKPiArICAgICAgICBTcGljZUdzdEZyYW1lICpnc3RmcmFtZSA9IGwtPmRh
dGE7Cj4gICAgICAgICAgIGlmIChnc3RmcmFtZS0+dGltZXN0YW1wID09IGJ1ZmZlcl90cykgewo+
IC0gICAgICAgICAgICBicmVhazsKPiArICAgICAgICAgICAgLyogVXBkYXRlIHRoZSBzdGF0aXN0
aWNzICovCj4gKyAgICAgICAgICAgIGNvbnN0IFNwaWNlRnJhbWUgKmZyYW1lID0gZ3N0ZnJhbWUt
PmVuY29kZWRfZnJhbWU7Cj4gKyAgICAgICAgICAgIGludDY0X3QgZHVyYXRpb24gPSBnX2dldF9t
b25vdG9uaWNfdGltZSgpIC0gZnJhbWUtPmNyZWF0aW9uX3RpbWU7Cj4gKyAgICAgICAgICAgIHJl
Y29yZChmcmFtZXNfc3RhdHMsCj4gKyAgICAgICAgICAgICAgICAgICAiZnJhbWUgbW1fdGltZSAl
dSBzaXplICV1IGNyZWF0aW9uIHRpbWUgJSIgUFJJZDY0Cj4gKyAgICAgICAgICAgICAgICAgICAi
IGRlY29kZWQgdGltZSAlIiBQUklkNjQgIiBxdWV1ZSAldSIsCj4gKyAgICAgICAgICAgICAgICAg
ICBmcmFtZS0+bW1fdGltZSwgZnJhbWUtPnNpemUsIGZyYW1lLT5jcmVhdGlvbl90aW1lLAo+ICsg
ICAgICAgICAgICAgICAgICAgZHVyYXRpb24sIGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLT5sZW5n
dGgpOwo+ICsgICAgICAgICAgICByZXR1cm4gbDsKPiAgICAgICAgICAgfQo+IC0gICAgICAgIGdz
dGZyYW1lID0gTlVMTDsKPiAgICAgICAgICAgbCA9IGwtPm5leHQ7Cj4gICAgICAgfQo+ICAgCj4g
LSAgICBpZiAoZ3N0ZnJhbWUgIT0gTlVMTCkgewo+IC0gICAgICAgIC8qIE5vdyB0aGF0IHdlIGtu
b3cgdGhlcmUgaXMgYSBtYXRjaCwgcmVtb3ZlIGl0IGFuZCB0aGUgb2xkZXIKPiAtICAgICAgICAg
KiBmcmFtZXMgZnJvbSB0aGUgZGVjb2RpbmcgcXVldWUgKi8KPiAtICAgICAgICBTcGljZUdzdEZy
YW1lICpsYXRlX2ZyYW1lOwo+IC0gICAgICAgIGd1aW50IG51bV9mcmFtZXNfZHJvcHBlZCA9IDA7
Cj4gLQo+IC0gICAgICAgIC8qIFRoZSBHU3RyZWFtZXIgcGlwZWxpbmUgZHJvcHBlZCB0aGUgY29y
cmVzcG9uZGluZyBidWZmZXIuICovCj4gLSAgICAgICAgd2hpbGUgKChsYXRlX2ZyYW1lID0gZ19x
dWV1ZV9wb3BfaGVhZChkZWNvZGVyLT5kZWNvZGluZ19xdWV1ZSkpICE9IGdzdGZyYW1lKSB7Cj4g
LSAgICAgICAgICAgIG51bV9mcmFtZXNfZHJvcHBlZCsrOwo+IC0gICAgICAgICAgICBmcmVlX2dz
dF9mcmFtZShsYXRlX2ZyYW1lKTsKPiAtICAgICAgICB9Cj4gLQo+IC0gICAgICAgIGlmIChudW1f
ZnJhbWVzX2Ryb3BwZWQgIT0gMCkgewo+IC0gICAgICAgICAgICBTUElDRV9ERUJVRygidGhlIEdT
dHJlYW1lciBwaXBlbGluZSBkcm9wcGVkICV1IGZyYW1lcyIsIG51bV9mcmFtZXNfZHJvcHBlZCk7
Cj4gLSAgICAgICAgfQo+IC0KPiAtICAgICAgICBjb25zdCBTcGljZUZyYW1lICpmcmFtZSA9IGdz
dGZyYW1lLT5lbmNvZGVkX2ZyYW1lOwo+IC0gICAgICAgIGludDY0X3QgZHVyYXRpb24gPSBnX2dl
dF9tb25vdG9uaWNfdGltZSgpIC0gZnJhbWUtPmNyZWF0aW9uX3RpbWU7Cj4gLSAgICAgICAgcmVj
b3JkKGZyYW1lc19zdGF0cywKPiAtICAgICAgICAgICAgICAgImZyYW1lIG1tX3RpbWUgJXUgc2l6
ZSAldSBjcmVhdGlvbiB0aW1lICUiIFBSSWQ2NAo+IC0gICAgICAgICAgICAgICAiIGRlY29kZWQg
dGltZSAlIiBQUklkNjQgIiBxdWV1ZSAldSIsCj4gLSAgICAgICAgICAgICAgIGZyYW1lLT5tbV90
aW1lLCBmcmFtZS0+c2l6ZSwgZnJhbWUtPmNyZWF0aW9uX3RpbWUsCj4gLSAgICAgICAgICAgICAg
IGR1cmF0aW9uLCBkZWNvZGVyLT5kZWNvZGluZ19xdWV1ZS0+bGVuZ3RoKTsKPiAtICAgIH0KPiAt
ICAgIHJldHVybiBnc3RmcmFtZTsKPiArICAgIHJldHVybiBOVUxMOwo+ICAgfQo+ICAgCj4gLXN0
YXRpYyB2b2lkIGZldGNoX3BlbmRpbmdfc2FtcGxlKFNwaWNlR3N0RGVjb2RlciAqZGVjb2RlcikK
PiArLyogQXR0YWNoZXMgdGhlIHNwZWNpZmllZCBHU3RyZWFtZXIgc2FtcGxlIHRvIHRoZSBjb3Jy
ZXNwb25kaW5nIFNwaWNlR3N0RnJhbWUKPiArICogaW4gdGhlIGRlY29kaW5nIHF1ZXVlIGFuZCBy
ZXR1cm5zIFRSVUUuIFJldHVybnMgRkFMU0UgaWYgbm8gbWF0Y2ggd2FzIGZvdW5kLgo+ICsgKgo+
ICsgKiBUaGlzIGFsc28gcmVtb3ZlcyBhbnkgb2xkZXIgZnJhbWUgdGhhdCBoYXZlIG5vdCBiZWVu
IGRlY29kZWQgeWV0IGFzCj4gKyAqIGl0IG1lYW5zIEdTdHJlYW1lciBkcm9wcGVkIHRoZW0uIFRo
aXMgZW5zdXJlcyB0aGUgZGVjb2RlZCBmcmFtZXMgZm9ybSBhCj4gKyAqIGNvbnRpZ3VvdXMgYmxv
Y2sgYXQgdGhlIGhlYWQgb2YgdGhlIGRlY29kaW5nIHF1ZXVlLgo+ICsgKgo+ICsgKiBxdWV1ZXNf
bXV0ZXggbXVzdCBiZSBoZWxkLgo+ICsgKi8KPiArc3RhdGljIGdib29sZWFuIGF0dGFjaF9kZWNv
ZGVkX3NhbXBsZShTcGljZUdzdERlY29kZXIgKmRlY29kZXIsIEdzdFNhbXBsZSAqc2FtcGxlKQo+
ICAgewo+IC0gICAgR3N0U2FtcGxlICpzYW1wbGUgPSBnc3RfYXBwX3NpbmtfcHVsbF9zYW1wbGUo
ZGVjb2Rlci0+YXBwc2luayk7Cj4gLSAgICBpZiAoc2FtcGxlKSB7Cj4gLSAgICAgICAgLy8gYWNj
b3VudCBmb3IgdGhlIGZldGNoZWQgc2FtcGxlCj4gLSAgICAgICAgZGVjb2Rlci0+cGVuZGluZ19z
YW1wbGVzLS07Cj4gKyAgICBHc3RCdWZmZXIgKmJ1ZmZlciA9IGdzdF9zYW1wbGVfZ2V0X2J1ZmZl
cihzYW1wbGUpOwo+ICsgICAgR0xpc3QgKmwgPSBmaW5kX2RlY29kZWRfZW50cnkoZGVjb2Rlciwg
YnVmZmVyKTsKPiArICAgIGlmIChsID09IE5VTEwpIHsKPiArICAgICAgICByZXR1cm4gRkFMU0U7
CgoKSXMgaXQgcG9zc2libGUgdG8gaGF2ZSBhIHNhbXBsZSB3aXRoIG5vIG1hdGNoaW5nIGVudHJ5
PyBob3cgdGhpcyBzYW1wbGUgCmlzIHVucmVmZWQgaW4gdGhhdCBjYXNlPwoKCj4gKyAgICB9Cj4g
ICAKPiAtICAgICAgICBHc3RCdWZmZXIgKmJ1ZmZlciA9IGdzdF9zYW1wbGVfZ2V0X2J1ZmZlcihz
YW1wbGUpOwo+ICsgICAgU3BpY2VHc3RGcmFtZSAqZ3N0ZnJhbWUgPSBsLT5kYXRhOwo+ICsgICAg
Z3N0ZnJhbWUtPmRlY29kZWRfc2FtcGxlID0gc2FtcGxlOwo+ICsgICAgZGVjb2Rlci0+ZGVjb2Rl
ZF9mcmFtZXMrKzsKPiAgIAo+IC0gICAgICAgIC8qIGdzdF9hcHBfc2lua19wdWxsX3NhbXBsZSgp
IHNvbWV0aW1lcyByZXR1cm5zIHRoZSBzYW1lIGJ1ZmZlciB0d2ljZQo+IC0gICAgICAgICAqIG9y
IGJ1ZmZlcnMgdGhhdCBoYXZlIGEgbW9kaWZpZWQsIGFuZCB0aHVzIHVucmVjb2duaXphYmxlLCBQ
VFMuCj4gLSAgICAgICAgICogQmxpbmRseSByZW1vdmluZyBmcmFtZXMgZnJvbSB0aGUgZGVjb2Rp
bmdfcXVldWUgdW50aWwgd2UgZmluZCBhCj4gLSAgICAgICAgICogbWF0Y2ggd291bGQgb25seSBl
bXB0eSB0aGUgcXVldWUsIHJlc3VsdGluZyBpbiBsYXRlciBidWZmZXJzIG5vdAo+IC0gICAgICAg
ICAqIGZpbmRpbmcgYSBtYXRjaCBlaXRoZXIsIGV0Yy4gU28gY2hlY2sgdGhlIGJ1ZmZlciBoYXMg
YSBtYXRjaGluZwo+IC0gICAgICAgICAqIGZyYW1lIGZpcnN0Lgo+IC0gICAgICAgICAqLwo+IC0g
ICAgICAgIFNwaWNlR3N0RnJhbWUgKmdzdGZyYW1lID0gZ2V0X2RlY29kZWRfZnJhbWUoZGVjb2Rl
ciwgYnVmZmVyKTsKPiAtICAgICAgICBpZiAoZ3N0ZnJhbWUpIHsKPiAtICAgICAgICAgICAgLyog
VGhlIGZyYW1lIGlzIG5vdyByZWFkeSBmb3IgZGlzcGxheSAqLwo+IC0gICAgICAgICAgICBnc3Rm
cmFtZS0+ZGVjb2RlZF9zYW1wbGUgPSBzYW1wbGU7Cj4gLSAgICAgICAgICAgIGRlY29kZXItPmRp
c3BsYXlfZnJhbWUgPSBnc3RmcmFtZTsKPiAtICAgICAgICB9IGVsc2Ugewo+IC0gICAgICAgICAg
ICBzcGljZV93YXJuaW5nKCJnb3QgYW4gdW5leHBlY3RlZCBkZWNvZGVkIGJ1ZmZlciEiKTsKPiAt
ICAgICAgICAgICAgZ3N0X3NhbXBsZV91bnJlZihzYW1wbGUpOwo+ICsgICAgLyogQW55IG9sZGVy
IHVuZGVjb2RlZCBmcmFtZSBtdXN0IGhhdmUgYmVlbiBkcm9wcGVkIGJ5IHRoZSBHU3RyZWFtZXIK
PiArICAgICAqIHBpcGVsaW5lIHNvIHRoZXJlIGlzIG5vIHBvaW50IGluIGtlZXBpbmcgaXQgYXJv
dW5kLgo+ICsgICAgICovCj4gKyAgICBndWludCBudW1fZnJhbWVzX2Ryb3BwZWQgPSAwOwo+ICsg
ICAgbCA9IGwtPnByZXY7Cj4gKyAgICB3aGlsZSAobCkgewo+ICsgICAgICAgIGdzdGZyYW1lID0g
bC0+ZGF0YTsKPiArICAgICAgICBpZiAoZ3N0ZnJhbWUtPmRlY29kZWRfc2FtcGxlKSB7Cj4gKyAg
ICAgICAgICAgIC8qIEl0J3Mgb25seSBkZWNvZGVkIGZyYW1lcyBmcm9tIHRoZXJlIHRvIHRoZSBm
aXJzdCBvbmUgKi8KPiArICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICAgIH0KPiAtICAgIH0g
ZWxzZSB7Cj4gLSAgICAgICAgLy8gbm8gbW9yZSBzYW1wbGVzIHRvIGdldCwgcG9zc2libHkgc29t
ZSBzYW1wbGUgd2FzIGRyb3BwZWQKPiAtICAgICAgICBkZWNvZGVyLT5wZW5kaW5nX3NhbXBsZXMg
PSAwOwo+IC0gICAgICAgIHNwaWNlX3dhcm5pbmcoIkdTdHJlYW1lciBlcnJvcjogY291bGQgbm90
IHB1bGwgc2FtcGxlIik7Cj4gKwo+ICsgICAgICAgIG51bV9mcmFtZXNfZHJvcHBlZCsrOwo+ICsg
ICAgICAgIGZyZWVfZ3N0X2ZyYW1lKGdzdGZyYW1lKTsKPiArICAgICAgICBHTGlzdCAqcCA9IGwt
PnByZXY7Cj4gKyAgICAgICAgZ19xdWV1ZV9kZWxldGVfbGluayhkZWNvZGVyLT5kZWNvZGluZ19x
dWV1ZSwgbCk7Cj4gKwo+ICsgICAgICAgIGwgPSBwOwo+ICAgICAgIH0KPiArICAgIGlmIChudW1f
ZnJhbWVzX2Ryb3BwZWQpIHsKPiArICAgICAgICBTUElDRV9ERUJVRygidGhlIEdTdHJlYW1lciBw
aXBlbGluZSBkcm9wcGVkICV1IGZyYW1lcyIsIG51bV9mcmFtZXNfZHJvcHBlZCk7Cj4gKyAgICB9
Cj4gKwo+ICsgICAgcmV0dXJuIFRSVUU7Cj4gICB9Cj4gICAKPiAgIC8qIEdTdHJlYW1lciB0aHJl
YWQKPiBAQCAtMzI3LDE1ICszMjQsMTggQEAgc3RhdGljIEdzdEZsb3dSZXR1cm4gbmV3X3NhbXBs
ZShHc3RBcHBTaW5rICpnc3RhcHBzaW5rLCBncG9pbnRlciB2aWRlb19kZWNvZGVyKQo+ICAgewo+
ICAgICAgIFNwaWNlR3N0RGVjb2RlciAqZGVjb2RlciA9IHZpZGVvX2RlY29kZXI7Cj4gICAKPiAt
ICAgIGdfbXV0ZXhfbG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKPiAtICAgIGRlY29kZXIt
PnBlbmRpbmdfc2FtcGxlcysrOwo+IC0gICAgaWYgKGRlY29kZXItPnRpbWVyX2lkICYmIGRlY29k
ZXItPmRpc3BsYXlfZnJhbWUpIHsKPiArICAgIEdzdFNhbXBsZSAqc2FtcGxlID0gZ3N0X2FwcF9z
aW5rX3B1bGxfc2FtcGxlKGRlY29kZXItPmFwcHNpbmspOwo+ICsgICAgaWYgKHNhbXBsZSkgewo+
ICsgICAgICAgIGdfbXV0ZXhfbG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKPiArICAgICAg
ICBpZiAoIWF0dGFjaF9kZWNvZGVkX3NhbXBsZShkZWNvZGVyLCBzYW1wbGUpIHx8IGRlY29kZXIt
PnRpbWVyX2lkKSB7Cj4gKyAgICAgICAgICAgIGdfbXV0ZXhfdW5sb2NrKCZkZWNvZGVyLT5xdWV1
ZXNfbXV0ZXgpOwo+ICsgICAgICAgICAgICByZXR1cm4gR1NUX0ZMT1dfT0s7Cj4gKwoKbmV3IGxp
bmUKCj4gKyAgICAgICAgfQo+ICAgICAgICAgICBnX211dGV4X3VubG9jaygmZGVjb2Rlci0+cXVl
dWVzX211dGV4KTsKPiAtICAgICAgICByZXR1cm4gR1NUX0ZMT1dfT0s7Cj4gLSAgICB9Cj4gLSAg
ICBnX211dGV4X3VubG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKPiAgIAo+IC0gICAgc2No
ZWR1bGVfZnJhbWUoZGVjb2Rlcik7Cj4gKyAgICAgICAgc2NoZWR1bGVfZnJhbWUoZGVjb2Rlcik7
Cj4gKyAgICB9Cj4gICAKPiAgICAgICByZXR1cm4gR1NUX0ZMT1dfT0s7Cj4gICB9Cj4gQEAgLTQy
OSwxMCArNDI5LDE5IEBAIHNpbmtfZXZlbnRfcHJvYmUoR3N0UGFkICpwYWQsIEdzdFBhZFByb2Jl
SW5mbyAqaW5mbywgZ3BvaW50ZXIgZGF0YSkKPiAgICAgICBpZiAoaW5mby0+dHlwZSAmIEdTVF9Q
QURfUFJPQkVfVFlQRV9CVUZGRVIpIHsgLy8gQnVmZmVyIGFycml2ZWQKPiAgICAgICAgICAgR3N0
QnVmZmVyICpidWZmZXIgPSBHU1RfUEFEX1BST0JFX0lORk9fQlVGRkVSKGluZm8pOwo+ICAgICAg
ICAgICBnX211dGV4X2xvY2soJmRlY29kZXItPnF1ZXVlc19tdXRleCk7Cj4gLSAgICAgICAgU3Bp
Y2VHc3RGcmFtZSAqZ3N0ZnJhbWUgPSBnZXRfZGVjb2RlZF9mcmFtZShkZWNvZGVyLCBidWZmZXIp
Owo+IC0gICAgICAgIGlmIChnc3RmcmFtZSkgewo+IC0gICAgICAgICAgICBmcmVlX2dzdF9mcmFt
ZShnc3RmcmFtZSk7Cj4gKwo+ICsgICAgICAgIC8qIEFzIGEgc2lkZS1lZmZlY3QgdGhpcyB1cGRh
dGVzIHRoZSBkZWNvZGVyIHN0YXRpc3RpY3MgKi8KPiArICAgICAgICBHTGlzdCAqbCA9IGZpbmRf
ZGVjb2RlZF9lbnRyeShkZWNvZGVyLCBidWZmZXIpOwo+ICsKPiArICAgICAgICAvKiBEcm9wIGFs
bCBlbnRyaWVzIHVwIHRvIHRoaXMgb25lICovCj4gKyAgICAgICAgd2hpbGUgKGwpIHsKPiArICAg
ICAgICAgICAgZnJlZV9nc3RfZnJhbWUoKFNwaWNlR3N0RnJhbWUqKWwtPmRhdGEpOwo+ICsKPiAr
ICAgICAgICAgICAgR0xpc3QgKnAgPSBsLT5wcmV2Owo+ICsgICAgICAgICAgICBnX3F1ZXVlX2Rl
bGV0ZV9saW5rKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLCBsKTsKPiArICAgICAgICAgICAgbCA9
IHA7Cj4gICAgCgoKSXNuJ3QgaXQgZG9uZSBvbiBhdHRhY2hfZGVjb2RlZF9zYW1wbGU/CgoKQWxz
byB3b3VsZCBiZSBuaWNlIHRvIHVwZGF0ZSB0aGUgY29tbWVudCBhYm92ZSBzcGljZV9nc3RfZGVj
b2Rlcl9xdWV1ZV9mcmFtZQp3aXRoIHRoZSBjdXJyZW50IGZsb3csIHdpbGwgbWFrZSBpdCBlYXNp
ZXIgdG8gZm9sbG93LgoKClNuaXIuCgoKPiAgICAgICAgIH0KPiArCj4gICAgICAgICAgIGdfbXV0
ZXhfdW5sb2NrKCZkZWNvZGVyLT5xdWV1ZXNfbXV0ZXgpOwo+ICAgICAgIH0KPiAgICAgICByZXR1
cm4gR1NUX1BBRF9QUk9CRV9PSzsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
