Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3768185D
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 13:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371AE89CF8;
	Mon,  5 Aug 2019 11:47:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCF189CF8
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 11:47:01 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id f4so166680593ioh.6
 for <spice-devel@lists.freedesktop.org>; Mon, 05 Aug 2019 04:47:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y5GCuxJRNy+jxQBOBDvdrrLdWgt0ak8WujB4y+zrnzA=;
 b=TkuVLZ/sg/A3rzytV7Q05Msyh0js5e+2cEruP3V84rvNtxFdp/DTc1D+pO6JyfXrBx
 0slpOrbSp/8yAtaX6Xkic+eM18lqA8iBPlWq44lCgbvumHAuqqRQr1DBIgFvWGdpTWyX
 r+wKXj4PEulMExPBS4oHEVb+NGsy49F2hSrCf5Yq9nSeGtIUAj4hyV4hyQweqQ8E8oAC
 moK4nSWF2cJkCG/grM9HyUtC+R+1Hl6B3A1ULg/0CXnImEtrZIV62hwiSsAuICrcoE1K
 U4jXJRZzUY788evOkcEtrFVFAuVJ4xBOsBYjuK1hr0B3dydEabrYqSeTfvGlS5Ta4N7+
 OaGA==
X-Gm-Message-State: APjAAAXcy5CC9G4W9o2jUd/+6dm4rksOQqDx8/D1UOl5gFabu3Xw31w6
 1BwVLQrOfGTpmzt9Ukza+v1VTnf9O3EbBzBQO/g=
X-Google-Smtp-Source: APXvYqwyZ4Polrdl6jfz1NpeeOSJwsOTnzzRPQOCrGIkty+6Jx1AitzaScbmb8NwnWLliZwk/Mv+IpqbqqKZM2JTho8=
X-Received: by 2002:a6b:b9c2:: with SMTP id j185mr7039585iof.148.1565005620912; 
 Mon, 05 Aug 2019 04:47:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-2-yuri.benditovich@daynix.com>
 <2116683883.4696862.1564999080941.JavaMail.zimbra@redhat.com>
In-Reply-To: <2116683883.4696862.1564999080941.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Mon, 5 Aug 2019 14:46:47 +0300
Message-ID: <CAOEp5OeTvOQiy6_n3tgLgkLP4UOnJ2W3Qq3b29mLJitk4BO8EQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=y5GCuxJRNy+jxQBOBDvdrrLdWgt0ak8WujB4y+zrnzA=;
 b=dDccNlaqufMbAjVxVuB/Z0af3CFRduvsUwAdsFeM14uWjJkKjDDFx0nXARH8TBc2mM
 eTqVgFMYVlKY9PRTeINfOohmFB2RmynLMfp6w/zuVzgp04+hi91SZ0uKt/Nssb9cQ9jM
 RDU2iyq4xyw1Si5qve0BvHY+p3cbbKsE2y7P3Z9JRkLwProek++KkEGO7C5TfaqWpUMv
 9Vl8RZ6/b3HjDE2oa2BwpPChP5XiuDf8o+gef0e1KW2qpkSs+IkDZvb/n2t9BL/z5sVT
 pRCIiqIae+vflS9j9Mcpiv5HOS/hLnI96+1UTbp4WGzjkxIMZCX5/euDYBRBHaVcsqRp
 rkkg==
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

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCAxMjo1OCBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBTcGljZVVzYkJhY2tlbmREZXZpY2Ugc3RydWN0
dXJlIGlzIGV4dGVuZGVkIHRvIHN1cHBvcnQKPiA+IGFkZGl0aW9uYWwga2luZCBvZiBkZXZpY2Ug
dGhhdCBpcyBlbXVsYXRlZCBieSBTcGljZS1HVEsKPiA+IGFuZCBub3QgcHJlc2VudCBsb2NhbGx5
IChhbmQgZG9lcyBub3QgaGF2ZSBsaWJ1c2JfZGV2aWNlKSwKPiA+IHN1Y2ggZGV2aWNlIGhhcyBp
bnN0ZWFkIHBvaW50ZXIgdG8gU3BpY2VVc2JFbXVsYXRlZERldmljZQo+ID4gYWJzdHJhY3Qgc3Ry
dWN0dXJlLiBTcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiBvZiBzdWNoIGRldmljZQo+ID4gZGVwZW5k
cyBvbiBpdHMgZGV2aWNlIHR5cGUuIEltcGxlbWVudGF0aW9uIG1vZHVsZSB3aWxsIGRlZmluZQo+
ID4gY29uc3RydWN0b3IgZm9yIHNwZWNpZmljIGRldmljZSB0eXBlLgo+ID4gRGV2aWNlIHN0cnVj
dHVyZSBpcyBhYnN0cmFjdCBidXQgYWx3YXlzIHN0YXJ0cyBmcm9tIHRhYmxlIG9mCj4gPiB2aXJ0
dWFsIGZ1bmN0aW9ucyByZXF1aXJlZCB0byByZWRpcmVjdCBzdWNoIHZpcnR1YWwgZGV2aWNlLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFl1cmkgQmVuZGl0b3ZpY2ggPHl1cmkuYmVuZGl0b3ZpY2hA
ZGF5bml4LmNvbT4KPiA+IC0tLQo+ID4gIHNyYy9tZXNvbi5idWlsZCAgICAgfCAgIDEgKwo+ID4g
IHNyYy91c2ItYmFja2VuZC5jICAgfCAxMDIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0KPiA+ICBzcmMvdXNiLWJhY2tlbmQuaCAgIHwgICAzICsrCj4gPiAgc3Jj
L3VzYi1lbXVsYXRpb24uaCB8ICA5MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDE5NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxhdGlvbi5oCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAo+ID4gaW5kZXgg
YjRhNjg3MC4uZmUxOWMxNiAxMDA2NDQKPiA+IC0tLSBhL3NyYy9tZXNvbi5idWlsZAo+ID4gKysr
IGIvc3JjL21lc29uLmJ1aWxkCj4gPiBAQCAtMTIyLDYgKzEyMiw3IEBAIHNwaWNlX2NsaWVudF9n
bGliX3NvdXJjZXMgPSBbCj4gPiAgICAndXNidXRpbC5jJywKPiA+ICAgICd1c2J1dGlsLmgnLAo+
ID4gICAgJ3VzYi1iYWNrZW5kLmMnLAo+ID4gKyAgJ3VzYi1lbXVsYXRpb24uaCcsCj4gPiAgICAn
dXNiLWJhY2tlbmQuaCcsCj4gPiAgICAndm1jc3RyZWFtLmMnLAo+ID4gICAgJ3ZtY3N0cmVhbS5o
JywKPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5j
Cj4gPiBpbmRleCAzMzM0ZjU2Li5iZTYwY2YzIDEwMDY0NAo+ID4gLS0tIGEvc3JjL3VzYi1iYWNr
ZW5kLmMKPiA+ICsrKyBiL3NyYy91c2ItYmFja2VuZC5jCj4gPiBAQCAtMzksNiArMzksNyBAQAo+
ID4gICNpbmNsdWRlICJ1c2JyZWRpcnBhcnNlci5oIgo+ID4gICNpbmNsdWRlICJzcGljZS11dGls
LmgiCj4gPiAgI2luY2x1ZGUgInVzYi1iYWNrZW5kLmgiCj4gPiArI2luY2x1ZGUgInVzYi1lbXVs
YXRpb24uaCIKPiA+ICAjaW5jbHVkZSAiY2hhbm5lbC11c2JyZWRpci1wcml2LmgiCj4gPiAgI2lu
Y2x1ZGUgInNwaWNlLWNoYW5uZWwtcHJpdi5oIgo+ID4KPiA+IEBAIC00Niw3ICs0NywxMCBAQAo+
ID4KPiA+ICBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZERldmljZQo+ID4gIHsKPiA+ICsgICAgLyog
UG9pbnRlciB0byBkZXZpY2UuIEVpdGhlciByZWFsIGRldmljZSAobGlidXNiX2RldmljZSkKPiA+
ICsgICAgICogb3IgZW11bGF0ZWQgb25lIChlZGV2KSAqLwo+ID4gICAgICBsaWJ1c2JfZGV2aWNl
ICpsaWJ1c2JfZGV2aWNlOwo+ID4gKyAgICBTcGljZVVzYkVtdWxhdGVkRGV2aWNlICplZGV2Owo+
ID4gICAgICBnaW50IHJlZl9jb3VudDsKPiA+ICAgICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAq
YXR0YWNoZWRfdG87Cj4gPiAgICAgIFVzYkRldmljZUluZm9ybWF0aW9uIGRldmljZV9pbmZvOwo+
ID4gQEAgLTY2LDYgKzcwLDEwIEBAIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kCj4gPiAgICAgIGxp
YnVzYl9kZXZpY2UgKipsaWJ1c2JfZGV2aWNlX2xpc3Q7Cj4gPiAgICAgIGdpbnQgcmVkaXJlY3Rp
bmc7Cj4gPiAgI2VuZGlmCj4gPiArCj4gPiArICAgIC8qIE1hc2sgb2YgYWxsb2NhdGVkIGRldmlj
ZSwgYSBzcGVjaWZpYyBiaXQgc2V0IHRvIDEgdG8gaW5kaWNhdGUgdGhhdAo+ID4gdGhlIGRldmlj
ZSBhdAo+ID4gKyAgICAgKiB0aGF0IGFkZHJlc3MgaXMgYWxsb2NhdGVkICovCj4gPiArICAgIHVp
bnQzMl90IG93bl9kZXZpY2VzX21hc2s7Cj4gPiAgfTsKPiA+Cj4gPiAgc3RydWN0IF9TcGljZVVz
YkJhY2tlbmRDaGFubmVsCj4gPiBAQCAtNDEzLDYgKzQyMSw4IEBAIFNwaWNlVXNiQmFja2VuZCAq
c3BpY2VfdXNiX2JhY2tlbmRfbmV3KEdFcnJvciAqKmVycm9yKQo+ID4gICAgICAgICAgbGlidXNi
X3NldF9vcHRpb24oYmUtPmxpYnVzYl9jb250ZXh0LCBMSUJVU0JfT1BUSU9OX1VTRV9VU0JESyk7
Cj4gPiAgI2VuZGlmCj4gPiAgI2VuZGlmCj4gPiArICAgICAgICAvKiBleGNsdWRlIGFkZHJlc3Nl
cyAwIChyZXNlcnZlZCkgYW5kIDEgKHJvb3QgaHViKSAqLwo+ID4gKyAgICAgICAgYmUtPm93bl9k
ZXZpY2VzX21hc2sgPSAzOwo+ID4gICAgICB9Cj4gPiAgICAgIFNQSUNFX0RFQlVHKCIlcyA8PCIs
IF9fRlVOQ1RJT05fXyk7Cj4gPiAgICAgIHJldHVybiBiZTsKPiA+IEBAIC01MjksOCArNTM5LDEz
IEBAIHZvaWQKPiA+IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91bnJlZihTcGljZVVzYkJhY2tl
bmREZXZpY2UgKmRldikKPiA+ICB7Cj4gPiAgICAgIExPVURfREVCVUcoIiVzID4+ICVwKCVkKSIs
IF9fRlVOQ1RJT05fXywgZGV2LCBkZXYtPnJlZl9jb3VudCk7Cj4gPiAgICAgIGlmIChnX2F0b21p
Y19pbnRfZGVjX2FuZF90ZXN0KCZkZXYtPnJlZl9jb3VudCkpIHsKPiA+IC0gICAgICAgIGxpYnVz
Yl91bnJlZl9kZXZpY2UoZGV2LT5saWJ1c2JfZGV2aWNlKTsKPiA+IC0gICAgICAgIExPVURfREVC
VUcoIiVzIGZyZWVpbmcgJXAgKGxpYnVzYiAlcCkiLCBfX0ZVTkNUSU9OX18sIGRldiwKPiA+IGRl
di0+bGlidXNiX2RldmljZSk7Cj4gPiArICAgICAgICBpZiAoZGV2LT5saWJ1c2JfZGV2aWNlKSB7
Cj4gPiArICAgICAgICAgICAgbGlidXNiX3VucmVmX2RldmljZShkZXYtPmxpYnVzYl9kZXZpY2Up
Owo+ID4gKyAgICAgICAgICAgIExPVURfREVCVUcoIiVzIGZyZWVpbmcgJXAgKGxpYnVzYiAlcCki
LCBfX0ZVTkNUSU9OX18sIGRldiwKPiA+IGRldi0+bGlidXNiX2RldmljZSk7Cj4gPiArICAgICAg
ICB9Cj4gPiArICAgICAgICBpZiAoZGV2LT5lZGV2KSB7Cj4gPiArICAgICAgICAgICAgZGV2aWNl
X29wcyhkZXYtPmVkZXYpLT51bnJlYWxpemUoZGV2LT5lZGV2KTsKPiA+ICsgICAgICAgIH0KPiA+
ICAgICAgICAgIGdfZnJlZShkZXYpOwo+ID4gICAgICB9Cj4gPiAgfQo+ID4gQEAgLTgyOSw0ICs4
NDQsODcgQEAKPiA+IHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfZ2V0X2d1ZXN0X2ZpbHRlcihT
cGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwKPiA+ICAgICAgfQo+ID4gIH0KPiA+Cj4gPiArdm9p
ZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfcmVwb3J0X2NoYW5nZShTcGljZVVzYkJhY2tlbmQg
KmJlLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3Bp
Y2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCj4gPiArewo+ID4gKyAgICBnY2hhciAqZGVzYzsKPiA+
ICsgICAgZ19yZXR1cm5faWZfZmFpbChkZXYgJiYgZGV2LT5lZGV2KTsKPiA+ICsKPiA+ICsgICAg
ZGVzYyA9IGRldmljZV9vcHMoZGV2LT5lZGV2KS0+Z2V0X3Byb2R1Y3RfZGVzY3JpcHRpb24oZGV2
LT5lZGV2KTsKPiA+ICsgICAgU1BJQ0VfREVCVUcoIiVzOiAlcyIsIF9fRlVOQ1RJT05fXywgZGVz
Yyk7Cj4gPiArICAgIGdfZnJlZShkZXNjKTsKPiA+ICt9Cj4gPiArCj4KPiBMb29rcyBsaWtlIHRo
aXMgZnVuY3Rpb24gaXMganVzdCBmb3IgZGVidWdnaW5nLgo+IFdoeSBpbnN0ZWFkIHVzZSBzcGlj
ZV91c2JfYmFja2VuZF9kZXZpY2VfZ2V0X2Rlc2NyaXB0aW9uIGluIHVzYi1kZXZpY2UtY2QuYwo+
IGFuZCBjYWxsIFNQSUNFX0RFQlVHIGRpcmVjdGx5PwoKdXNiLWRldmljZS1jZC5jIGhhcyBub3Ro
aW5nIHRvIGRvIHdpdGggdGhpcyBjaGFuZ2UuCkl0IGlzc3VlcyB0aGUgdXBkYXRlIHRvIHdob20g
aXQgbWlnaHQgYmUgaW1wb3J0YW50LgpDdXJyZW50bHkgYXMgd2UgZG8gbm90IGhhdmUgVUksIGFs
c28gb3V0c2lkZSBvZiB1c2ItZGV2aWNlLWNkLmMgdGhlcmUKaXMgbm8gYWN0aW9uLgoKPgo+ID4g
K3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0KFNwaWNlVXNiQmFja2VuZCAqYmUs
Cj4gPiBTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldikKPiA+ICt7Cj4gPiArICAgIGdfcmV0dXJu
X2lmX2ZhaWwoZGV2ICYmIGRldi0+ZWRldik7Cj4gPiArCj4gPiArICAgIGlmIChiZS0+aG90cGx1
Z19jYWxsYmFjaykgewo+ID4gKyAgICAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2soYmUtPmhvdHBs
dWdfdXNlcl9kYXRhLCBkZXYsIEZBTFNFKTsKPiA+ICsgICAgfQo+ID4gKyAgICBiZS0+b3duX2Rl
dmljZXNfbWFzayAmPSB+KDEgPDwgZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNzKTsKPiA+ICsKPiA+
ICsgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX3VucmVmKGRldik7Cj4KPiBGcm9tIG15IGV4
cGVyaW1lbnRzIGxvb2tzIGxpa2UgdGhhdCByZWZlcmVuY2UgY291bnRpbmcgZm9yIHRoZXNlCj4g
ZW11bGF0ZWQgZGV2aWNlcyBhcmUgZGlmZmVyZW50IGZyb20gbm9ybWFsIG9uZXMuCj4gSW4gbm9y
bWFsIG9uZXMgdGhlIGRldmljZSBsaXN0IGluIHVzYiBtYW5hZ2VyIGlzIHRoZSBtYWluIG93bmVy
LAo+IGZvciB0aGVzZSBkZXZpY2VzIHlvdSBoYXZlIGFuIGFkZGl0aW9uYWwgcmVmZXJlbmNlIHRo
YXQgaXMgcmVtb3ZlZAo+IGhlcmUuIFNvIGlmIHRoaXMgZnVuY3Rpb24gaXMgbm90IGNhbGxlZCB5
b3UgaGF2ZSBhIGxlYWsuIEFsc28KPiBpcyB3ZWlyZCB0byBoYXZlIGEgcmVmZXJlbmNlIHdpdGhv
dXQgaGF2aW5nIGFuIGFjdHVhbCBwb2ludGVyLgo+IFRoZSBzYW1lIGFwcGx5IHRvIG93bl9kZXZp
Y2VzX21hc2sgYml0IGNsZWFyYW5jZSAoYWRkZWQgaW4gdGhpcwo+IHZlcnNpb24gb2YgdGhlIHBh
dGNoKS4gSWYgSSBzZXQgdGhlIGJpdCBjcmVhdGluZyBhbiBvYmplY3QgSSBleHBlY3QKPiB0aGUg
Yml0IHRvIGJlIGNsZWFyIGR1cmluZyB0aGUgb2JqZWN0IGRlc3RydWN0aW9uLCBub3QgYW5vdGhl
cgo+IG5vdCByZWxhdGVkIGZ1bmN0aW9uLiBJIHdyb3RlIGEgdGVzdCB0aGF0IGNhbGwgaW4gYSBs
b29wIDEyOCB0aW1lcwo+IGNyZWF0ZV9lbXVsYXRlZF9jZCBhbmQgc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX3VucmVmIGFuZCBmYWlscwo+IChodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZnppZ2xpby9zcGljZS1ndGsvY29tbWl0LzBiYmMwZDg1YjQzYjVkYmNiOTJjMmEzOTE1YjRiMWM5
ZDkyMjhhN2EsCj4gd2lsbCBwcm9iYWJseSBkaXNhcHBlYXIgaW4gYSB3aGlsZSkuIEkgd291bGQg
ZXhwZWN0IHRoaXMgdGVzdCB0bwo+IHBhc3MgYW5kIHRvIGRlbGV0ZSBjb21wbGV0ZWx5IHRoZSBv
YmplY3Qgd2l0aG91dCBsZWFrcy4KClRoaXMgaXMgd3JvbmcgYXBwcm9hY2gsIEkgdGhpbmsuClRo
ZSBpbnRlcmZhY2Ugc2hvdWxkIGJlIGNoYW5nZWQgYW5kIHNoYWxsIG5vdCByZXR1cm4gdGhlIG9i
amVjdC4KKGluaXRpYWwgaW50ZXJmYWNlIHJldHVybmVkIGJvb2xlYW4pCnVzYi1kZXZpY2UtbWFu
YWdlciBzaGFsbCByZWNlaXZlIHRoZSBkZXZpY2Ugb25seSB2aWEgaG90cGx1ZwppbmRpY2F0aW9u
LCByZWZlcmVuY2UgaXQgYW5kIGRlcmVmIGl0IHdoZW4gaXQgcmVjZWl2ZXMgdW5wbHVnLgoKPgo+
ID4gK30KPiA+ICsKPiA+ICtTcGljZVVzYkJhY2tlbmREZXZpY2UqCj4gPiArc3BpY2VfdXNiX2Jh
Y2tlbmRfY3JlYXRlX2VtdWxhdGVkX2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJlLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JFbXVsYXRlZERl
dmljZUNyZWF0ZQo+ID4gY3JlYXRlX3Byb2MsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB2b2lkICpjcmVhdGVfcGFyYW1zLAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyKQo+ID4gK3sKPiA+ICsgICAg
U3BpY2VVc2JFbXVsYXRlZERldmljZSAqZWRldjsKPiA+ICsgICAgU3BpY2VVc2JCYWNrZW5kRGV2
aWNlICpkZXY7Cj4gPiArICAgIHN0cnVjdCBsaWJ1c2JfZGV2aWNlX2Rlc2NyaXB0b3IgKmRlc2M7
Cj4gPiArICAgIHVpbnQxNl90IGRldmljZV9kZXNjX3NpemU7Cj4gPiArICAgIHVpbnQ4X3QgYWRk
cmVzcyA9IDA7Cj4gPiArCj4gPiArICAgIGlmIChiZS0+b3duX2RldmljZXNfbWFzayA9PSAweGZm
ZmZmZmZmKSB7Cj4gPiArICAgICAgICBnX3NldF9lcnJvcihlcnIsIFNQSUNFX0NMSUVOVF9FUlJP
UiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKPiA+ICsgICAgICAgICAgICAgICAgICAgIF8o
ImNhbid0IGNyZWF0ZSBkZXZpY2UgLSBsaW1pdCByZWFjaGVkIikpOwo+ID4gKyAgICAgICAgcmV0
dXJuIE5VTEw7Cj4gPiArICAgIH0KPiA+ICsgICAgZm9yIChhZGRyZXNzID0gMDsgYWRkcmVzcyA8
IDMyOyArK2FkZHJlc3MpIHsKPiA+ICsgICAgICAgIGlmICh+YmUtPm93bl9kZXZpY2VzX21hc2sg
JiAoMSA8PCBhZGRyZXNzKSkgewo+ID4gKyAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgICAg
fQo+ID4gKyAgICB9Cj4gPiArCj4gPiArICAgIGRldiA9IGdfbmV3MChTcGljZVVzYkJhY2tlbmRE
ZXZpY2UsIDEpOwo+ID4gKyAgICBkZXYtPmRldmljZV9pbmZvLmJ1cyA9IEJVU19OVU1CRVJfRk9S
X0VNVUxBVEVEX1VTQjsKPiA+ICsgICAgZGV2LT5kZXZpY2VfaW5mby5hZGRyZXNzID0gYWRkcmVz
czsKPiA+ICsgICAgZGV2LT5yZWZfY291bnQgPSAxOwo+ID4gKwo+ID4gKyAgICBkZXYtPmVkZXYg
PSBlZGV2ID0gY3JlYXRlX3Byb2MoYmUsIGRldiwgY3JlYXRlX3BhcmFtcywgZXJyKTsKPiA+ICsg
ICAgaWYgKGVkZXYgPT0gTlVMTCkgewo+ID4gKyAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfZGV2
aWNlX3VucmVmKGRldik7Cj4gPiArICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICsgICAgfQo+ID4g
Kwo+ID4gKyAgICBpZiAoIWRldmljZV9vcHMoZWRldiktPmdldF9kZXNjcmlwdG9yKGVkZXYsIExJ
QlVTQl9EVF9ERVZJQ0UsIDAsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKHZvaWQgKiopJmRlc2MsICZkZXZpY2VfZGVzY19zaXplKQo+ID4gKyAgICAgICAg
fHwgZGV2aWNlX2Rlc2Nfc2l6ZSAhPSBzaXplb2YoKmRlc2MpKSB7Cj4gPiArCj4gPiArICAgICAg
ICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKPiA+ICsgICAgICAgIGdfc2V0
X2Vycm9yKGVyciwgU1BJQ0VfQ0xJRU5UX0VSUk9SLCBTUElDRV9DTElFTlRfRVJST1JfRkFJTEVE
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgXygiY2FuJ3QgY3JlYXRlIGRldmljZSAtIGludGVy
bmFsIGVycm9yIikpOwo+ID4gKyAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPiArICAgIH0KPiA+ICsK
PiA+ICsgICAgYmUtPm93bl9kZXZpY2VzX21hc2sgfD0gMSA8PCBhZGRyZXNzOwo+ID4gKwo+ID4g
KyAgICBkZXYtPmRldmljZV9pbmZvLnZpZCA9IGRlc2MtPmlkVmVuZG9yOwo+ID4gKyAgICBkZXYt
PmRldmljZV9pbmZvLnBpZCA9IGRlc2MtPmlkUHJvZHVjdDsKPiA+ICsgICAgZGV2LT5kZXZpY2Vf
aW5mby5iY2RVU0IgPSBkZXNjLT5iY2RVU0I7Cj4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uY2xh
c3MgPSBkZXNjLT5iRGV2aWNlQ2xhc3M7Cj4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8uc3ViY2xh
c3MgPSBkZXNjLT5iRGV2aWNlU3ViQ2xhc3M7Cj4gPiArICAgIGRldi0+ZGV2aWNlX2luZm8ucHJv
dG9jb2wgPSBkZXNjLT5iRGV2aWNlUHJvdG9jb2w7Cj4gPiArCj4gPiArICAgIGlmIChiZS0+aG90
cGx1Z19jYWxsYmFjaykgewo+ID4gKyAgICAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2soYmUtPmhv
dHBsdWdfdXNlcl9kYXRhLCBkZXYsIFRSVUUpOwo+ID4gKyAgICB9Cj4KPiBIZXJlIHRoZSBkaWZm
ZXJlbmNlIGZyb20gbm9ybWFsIGRldmljZXMuIEluIG5vcm1hbCBkZXZpY2VzCj4gaG90cGx1Z19j
YWxsYmFjayBjYWxsYmFjayBpcyBjYWxsZWQgZnJvbSBob3RwbHVnX2NhbGxiYWNrIGZ1bmN0aW9u
IHRoZW4KPiBkZXZpY2UgaXMgcmVsZWFzZWQgd2l0aCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2Vf
dW5yZWYuIEhlcmUgdGhlCj4gZnVuY3Rpb24gcmV0dXJucyB0aGUgb2JqZWN0LiBUaGlzIHBvaW50
ZXIgaXMgcmV0dXJuZWQgYnkgY3JlYXRlX2VtdWxhdGVkX2NkCj4gdGhlbiB0aGUgY2FsbGVyIChz
cGljZV91c2JfZGV2aWNlX21hbmFnZXJfc2V0X3Byb3BlcnR5KSBqdXN0IGRpc2NhcmQKPiB0aGUg
cG9pbnRlci4KPgo+ID4gKwo+ID4gKyAgICByZXR1cm4gZGV2Owo+ID4gK30KPiA+ICsKPiA+ICAj
ZW5kaWYgLyogVVNCX1JFRElSICovCj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmgg
Yi9zcmMvdXNiLWJhY2tlbmQuaAo+ID4gaW5kZXggNjlhNDkwYi4uNjNiOTIwMiAxMDA2NDQKPiA+
IC0tLSBhL3NyYy91c2ItYmFja2VuZC5oCj4gPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuaAo+ID4g
QEAgLTMxLDEyICszMSwxNSBAQCB0eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kIFNwaWNl
VXNiQmFja2VuZDsKPiA+ICB0eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlIFNw
aWNlVXNiQmFja2VuZERldmljZTsKPiA+ICB0eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5k
Q2hhbm5lbCBTcGljZVVzYkJhY2tlbmRDaGFubmVsOwo+ID4KPiA+ICsjZGVmaW5lIEJVU19OVU1C
RVJfRk9SX0VNVUxBVEVEX1VTQiBHX01BWFVJTlQxNgo+ID4gKwo+ID4gIHR5cGVkZWYgc3RydWN0
IFVzYkRldmljZUluZm9ybWF0aW9uCj4gPiAgewo+ID4gICAgICB1aW50MTZfdCBidXM7Cj4gPiAg
ICAgIHVpbnQxNl90IGFkZHJlc3M7Cj4gPiAgICAgIHVpbnQxNl90IHZpZDsKPiA+ICAgICAgdWlu
dDE2X3QgcGlkOwo+ID4gKyAgICB1aW50MTZfdCBiY2RVU0I7Cj4gPiAgICAgIHVpbnQ4X3QgY2xh
c3M7Cj4gPiAgICAgIHVpbnQ4X3Qgc3ViY2xhc3M7Cj4gPiAgICAgIHVpbnQ4X3QgcHJvdG9jb2w7
Cj4gPiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1lbXVsYXRpb24uaCBiL3NyYy91c2ItZW11bGF0aW9u
LmgKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwLi45ZTYyNmEyCj4g
PiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9zcmMvdXNiLWVtdWxhdGlvbi5oCj4gPiBAQCAtMCww
ICsxLDkxIEBACj4gPiArLyogLSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zmc2V0OiA0OyBpbmRlbnQt
dGFicy1tb2RlOiBuaWwgLSotICovCj4gPiArLyoKPiA+ICsgICAgQ29weXJpZ2h0IChDKSAyMDE5
IFJlZCBIYXQsIEluYy4KPiA+ICsKPiA+ICsgICAgUmVkIEhhdCBBdXRob3JzOgo+ID4gKyAgICBZ
dXJpIEJlbmRpdG92aWNoPHliZW5kaXRvQHJlZGhhdC5jb20+Cj4gPiArCj4gPiArICAgIFRoaXMg
bGlicmFyeSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IK
PiA+ICsgICAgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIExlc3NlciBHZW5l
cmFsIFB1YmxpYwo+ID4gKyAgICBMaWNlbnNlIGFzIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0
d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIKPiA+ICsgICAgdmVyc2lvbiAyLjEgb2YgdGhlIExpY2Vu
c2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCj4gPiArCj4gPiArICAg
IFRoaXMgbGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUg
dXNlZnVsLAo+ID4gKyAgICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0
aGUgaW1wbGllZCB3YXJyYW50eSBvZgo+ID4gKyAgICBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVT
UyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuICBTZWUgdGhlIEdOVQo+ID4gKyAgICBMZXNzZXIg
R2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgo+ID4gKwo+ID4gKyAgICBZ
b3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwg
UHVibGljCj4gPiArICAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwg
c2VlCj4gPiA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCj4gPiArKi8KPiA+ICsKPiA+
ICsjaWZuZGVmIF9fU1BJQ0VfVVNCX0VNVUxBVElPTl9IX18KPiA+ICsjZGVmaW5lIF9fU1BJQ0Vf
VVNCX0VNVUxBVElPTl9IX18KPiA+ICsKPiA+ICsjaW5jbHVkZSAidXNicmVkaXJwYXJzZXIuaCIK
PiA+ICsjaW5jbHVkZSAidXNiLWJhY2tlbmQuaCIKPiA+ICsKPiA+ICt0eXBlZGVmIHN0cnVjdCBT
cGljZVVzYkVtdWxhdGVkRGV2aWNlIFNwaWNlVXNiRW11bGF0ZWREZXZpY2U7Cj4gPiArdHlwZWRl
ZiBTcGljZVVzYkVtdWxhdGVkRGV2aWNlKgo+ID4gKygqU3BpY2VVc2JFbXVsYXRlZERldmljZUNy
ZWF0ZSkoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAqcGFyZW50LAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdm9pZCAqY3JlYXRlX3BhcmFtcywKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEdFcnJvciAqKmVycik7Cj4gPiArCj4gPiArLyoKPiA+ICsgICAg
ZnVuY3Rpb24gdGFibGUgZm9yIGVtdWxhdGVkIFVTQiBkZXZpY2UKPiA+ICsgICAgbXVzdCBiZSBm
aXJzdCBtZW1iZXIgb2YgZGV2aWNlIHN0cnVjdHVyZQo+ID4gKyAgICBhbGwgZnVuY3Rpb25zIGFy
ZSBtYW5kYXRvcnkgZm9yIGltcGxlbWVudGF0aW9uCj4gPiArKi8KPiA+ICt0eXBlZGVmIHN0cnVj
dCBVc2JEZXZpY2VPcHMgewo+ID4gKyAgICBnYm9vbGVhbiAoKmdldF9kZXNjcmlwdG9yKShTcGlj
ZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVpbnQ4X3QgdHlwZSwgdWludDhfdCBpbmRleCwKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdm9pZCAqKmJ1ZmZlciwgdWludDE2X3QgKnNpemUpOwo+ID4gKyAgICBn
Y2hhciAqICgqZ2V0X3Byb2R1Y3RfZGVzY3JpcHRpb24pKFNwaWNlVXNiRW11bGF0ZWREZXZpY2Ug
KmRldmljZSk7Cj4gPiArICAgIHZvaWQgKCphdHRhY2gpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2Ug
KmRldmljZSwgc3RydWN0IHVzYnJlZGlycGFyc2VyCj4gPiAqcGFyc2VyKTsKPiA+ICsgICAgdm9p
ZCAoKnJlc2V0KShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UpOwo+ID4gKyAgICAvKgo+
ID4gKyAgICAgICAgcHJvY2Vzc2luZyBpcyBzeW5jaHJvbm91cywgZGVmYXVsdCA9IHN0YWxsOgo+
ID4gKyAgICAgICAgLSByZXR1cm4gc3VjY2VzcyB3aXRob3V0IGRhdGE6IHNldCBzdGF0dXMgdG8g
MAo+ID4gKyAgICAgICAgLSByZXR1cm4gZXJyb3IgLSBzZXQgc3RhdHVzIHRvIGVycm9yCj4gPiAr
ICAgICAgICAtIHJldHVybiBzdWNjZXNzIHdpdGggZGF0YSAtIHNldCBzdGF0dXMgdG8gMCwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZXQgYnVmZmVyIHRvIHNvbWUg
YnVmZmVyCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2V0IGxlbmd0
aCB0byBvdXQgbGVuCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJ1
bmNhdGlvbiBpcyBhdXRvbWF0aWMKPiA+ICsgICAgKi8KPiA+ICsgICAgdm9pZCAoKmNvbnRyb2xf
cmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1aW50OF90ICpkYXRhLCBpbnQgZGF0YV9sZW4sCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB1c2JfcmVkaXJfY29udHJvbF9wYWNrZXRfaGVh
ZGVyICpoLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICoqYnVmZmVyKTsK
PiA+ICsgICAgLyoKPiA+ICsgICAgICAgIHByb2Nlc3NpbmcgaXMgc3luY2hyb25vdXM6Cj4gPiAr
ICAgICAgICAtIHNldCBoLT5zdGF0dXMgdG8gcmVzdWx0aW5nIHN0YXR1cywgZGVmYXVsdCA9IHN0
YWxsCj4gPiArICAgICovCj4gPiArICAgIHZvaWQgKCpidWxrX291dF9yZXF1ZXN0KShTcGljZVVz
YkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB1aW50OF90IGVwLCB1aW50OF90ICpkYXRhLCBpbnQgZGF0YV9sZW4sCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpzdGF0dXMpOwo+ID4gKyAgICAvKgo+ID4gKyAg
ICAgICAgaWYgcmV0dXJucyB0cnVlLCBwcm9jZXNzaW5nIGlzIGFzeW5jaHJvbm91cwo+ID4gKyAg
ICAgICAgb3RoZXJ3aXNlIGhlYWRlciBjb250YWlucyBlcnJvciBzdGF0dXMKPiA+ICsgICAgKi8K
PiA+ICsgICAgZ2Jvb2xlYW4gKCpidWxrX2luX3JlcXVlc3QpKFNwaWNlVXNiRW11bGF0ZWREZXZp
Y2UgKmRldmljZSwgdWludDY0X3QgaWQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNrZXRfaGVhZGVyCj4gPiAqYnVsa19oZWFkZXIpOwo+
ID4gKyAgICB2b2lkICgqY2FuY2VsX3JlcXVlc3QpKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmRl
dmljZSwgdWludDY0X3QgaWQpOwo+ID4gKyAgICB2b2lkICgqZGV0YWNoKShTcGljZVVzYkVtdWxh
dGVkRGV2aWNlICpkZXZpY2UpOwo+ID4gKyAgICB2b2lkICgqdW5yZWFsaXplKShTcGljZVVzYkVt
dWxhdGVkRGV2aWNlICpkZXZpY2UpOwo+ID4gK30gVXNiRGV2aWNlT3BzOwo+ID4gKwo+ID4gK3N0
YXRpYyBpbmxpbmUgY29uc3QgVXNiRGV2aWNlT3BzICpkZXZpY2Vfb3BzKFNwaWNlVXNiRW11bGF0
ZWREZXZpY2UgKmRldikKPiA+ICt7Cj4gPiArICAgIHJldHVybiAoY29uc3QgVXNiRGV2aWNlT3Bz
ICopZGV2Owo+ID4gK30KPiA+ICsKPiA+ICtTcGljZVVzYkJhY2tlbmREZXZpY2UqCj4gPiArc3Bp
Y2VfdXNiX2JhY2tlbmRfY3JlYXRlX2VtdWxhdGVkX2RldmljZShTcGljZVVzYkJhY2tlbmQgKmJl
LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JF
bXVsYXRlZERldmljZUNyZWF0ZQo+ID4gY3JlYXRlX3Byb2MsCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpjcmVhdGVfcGFyYW1zLAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0Vycm9yICoqZXJyKTsKPiA+ICt2
b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9lamVjdChTcGljZVVzYkJhY2tlbmQgKmJlLAo+
ID4gU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXZpY2UpOwo+ID4gK3ZvaWQgc3BpY2VfdXNiX2Jh
Y2tlbmRfZGV2aWNlX3JlcG9ydF9jaGFuZ2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKPiA+IFNwaWNl
VXNiQmFja2VuZERldmljZSAqZGV2aWNlKTsKPiA+ICsKPiA+ICsjZW5kaWYKPgo+IEZyZWRpYW5v
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
