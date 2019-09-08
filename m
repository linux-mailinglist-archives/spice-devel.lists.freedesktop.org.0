Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC32ACEF1
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2019 15:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D226897F6;
	Sun,  8 Sep 2019 13:40:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135A6897F6
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 13:40:57 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6E00EC0546F2
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 13:40:56 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id h6so3151296wrh.6
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Sep 2019 06:40:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=y62ln86o6gohIjL+eHZ/jDhljZ8O3O8Xn6mV7UFIOsM=;
 b=WH6ImviB8eibhORCfYOTAb7nX+Cg7qqwOPVx/7aVPDJWySHODq936/5mr65bsmEeob
 qatxADcZ8qn2a7rK6gpPtdCWKRU0Vwp5V3vkOCFLQkxRmvuvC1B8v39psIfcWoGGFTgW
 PoSX1wZZqcyvcsXba/1T01xGsGaonMhPqhx3DbKc1UJUP6xTwCiwhfH5wfFEwdDdm2jj
 R/xX1D5VMXqUuRocZKJi5wrXGNuEAQOYwYzAt3ah/cO5Qd0qRqxgSpZe7wEMcjsRoJcJ
 zJFRlOJ6nCzfc/GKYn62j7CJx2uNn/JHoKgWb8qxUVJqECITFYRk1lbLUCWGK2l2/VN/
 H/tw==
X-Gm-Message-State: APjAAAV4nHrxpXesh/AzENmzrM0W5PYrIqH5fHBSU68uM7IAzcrIeZC6
 K5lcc8lzyt9GCQKqTd2OwM0kjaDkrdRkN4ZffPYwwDj386W6l1etccRdyQYKqocuxX/LaR54bQy
 ylVnFxsnuf/QFqs2fXcEfYS7uUwqDNRg=
X-Received: by 2002:a5d:4649:: with SMTP id j9mr14518516wrs.193.1567950054916; 
 Sun, 08 Sep 2019 06:40:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhJw36PI5ZrpB1/jkcgNWqhrOq5i3xJ9hI2dlrc6Re8seNtAPPARf5+8YaxMxH3cIDXHYPNA==
X-Received: by 2002:a5d:4649:: with SMTP id j9mr14518504wrs.193.1567950054674; 
 Sun, 08 Sep 2019 06:40:54 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.220])
 by smtp.gmail.com with ESMTPSA id d17sm12884080wre.27.2019.09.08.06.40.53
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Sep 2019 06:40:54 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-7-victortoso@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <27429cfa-df7c-6e32-2784-cd243b0cd1bd@redhat.com>
Date: Sun, 8 Sep 2019 16:40:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902160449.19589-7-victortoso@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [spice-gtk v1 6/6] RFC: test: session: gstreamer
 init by us or client
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

SEksCgpPbiA5LzIvMTkgNzowNCBQTSwgVmljdG9yIFRvc28gd3JvdGU6Cj4gRnJvbTogVmljdG9y
IFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgo+Cj4gRG9lcyBub3Qgd29yayBwcm9wZXJseSBqdXN0
IGJlY2F1c2UgZ3N0X2lzX2luaXRpYWxpemVkKCkgY2hlY2tzIGlmCj4gZ3N0X2luaXQoKSBvciBn
c3RfY2hlY2tfaW5pdCgpIHdhcyBldmVyIGNhbGxlZCBidXQgaXQgZG9lcyBub3QKPiBjb25zaWRl
ciBpZiBnc3RfZGVpbml0KCkgd2FzIGNhbGxlZCB0b28uIEknbSBzZW5kaW5nIHRoaXMgUkZDIHRv
IGNoZWNrCj4gaWYgc2hvdWxkIGJlIGFkZGVkIG9yIHdhaXQgdGlsbCBmZWVkYmFjayBvbiB1cHN0
cmVhbSBhYm91dCB0aGUgQVBJLAo+IHRoYXQgaXMsIEkgaGF2ZSBhIGRvd25zdHJlYW0gcGF0Y2gg
dGhhdCBnc3RfaXNfaW5pdGlhbGl6ZWQoKSB3b3VsZAo+IHJldHVybiBGQUxTRSBpZiBnc3RfZGVp
bml0KCkgd2FzIGNhbGxlZCAuLi4KCgpNYXliZSBzaG91bGQgYWxzbyBiZSBtZW50aW9uZWQgYXMg
Y29tbWVudCBpbiB0aGUgY29kZQoKCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmlj
dG9ydG9zb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgdGVzdHMvc2Vzc2lvbi5jIHwgNDkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNo
YW5nZWQsIDQ5IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS90ZXN0cy9zZXNzaW9uLmMg
Yi90ZXN0cy9zZXNzaW9uLmMKPiBpbmRleCA4MjA4MDE2Li44ZTE4MTRlIDEwMDY0NAo+IC0tLSBh
L3Rlc3RzL3Nlc3Npb24uYwo+ICsrKyBiL3Rlc3RzL3Nlc3Npb24uYwo+IEBAIC0xLDMgKzEsNiBA
QAo+ICsjaW5jbHVkZSA8c3RkYm9vbC5oPgo+ICsjaW5jbHVkZSA8Z3N0L2dzdC5oPgo+ICsKPiAg
ICNpbmNsdWRlIDxzcGljZS1jbGllbnQuaD4KPiAgIAo+ICAgdHlwZWRlZiBzdHJ1Y3Qgewo+IEBA
IC0zMzMsNiArMzM2LDUwIEBAIHN0YXRpYyB2b2lkIHRlc3Rfc2Vzc2lvbl91cmlfdW5peF9nb29k
KHZvaWQpCj4gICAgICAgdGVzdF9zZXNzaW9uX3VyaV9nb29kKHRlc3RzLCBHX05fRUxFTUVOVFMo
dGVzdHMpKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgdm9pZCBzZXNzaW9uX2luaXRfdGVzdF9vbl9n
c3QoYm9vbCBzaG91bGRfaW5pdCkKPiArewo+ICsKPiArICAgIGlmIChzaG91bGRfaW5pdCkgewo+
ICsgICAgICAgIEdFcnJvciAqZXJyID0gTlVMTDsKPiArICAgICAgICBnc3RfaW5pdF9jaGVjayhO
VUxMLCBOVUxMLCAmZXJyKTsKPiArICAgICAgICBnX2Fzc2VydF9ub19lcnJvcihlcnIpOwo+ICsg
ICAgICAgIGdfYXNzZXJ0X3RydWUoZ3N0X2lzX2luaXRpYWxpemVkKCkpOwo+ICsgICAgfSBlbHNl
IGlmIChnc3RfaXNfaW5pdGlhbGl6ZWQoKSkgewoKCklzIHRoaXMgbGlrZWx5IHRvIGhhcHBlbj8K
Cgo+ICsjaWYgMAo+ICsgICAgICAgIC8qIE5vdCB3b3JraW5nIGZvciBub3csIGdzdF9pc19pbml0
aWFsaXplZCgpIHJldHVybiBUUlVFIGFsc28gaWYKPiArICAgICAgICAgKiBnc3RfZGVpbml0KCkg
d2FzIGNhbGxlZCAqLwo+ICsgICAgICAgIGdzdF9kZWluaXQoKTsKCmFsc28gZG9jdW1lbnRhdGlv
biBvZiBnc3RfZGVpbml0IG1lbnRpb246CgoiQWZ0ZXIgdGhpcyBjYWxsIEdTdHJlYW1lciAoaW5j
bHVkaW5nIHRoaXMgbWV0aG9kKSBzaG91bGQgbm90IGJlIHVzZWQgCmFueW1vcmUuIgoKCj4gKyAg
ICAgICAgZ19hc3NlcnRfZmFsc2UoZ3N0X2lzX2luaXRpYWxpemVkKCkpOwo+ICsjZW5kaWYKPiAr
ICAgIH0KPiArCj4gKyAgICBTcGljZVNlc3Npb24gKnNlc3Npb24gPSBzcGljZV9zZXNzaW9uX25l
dygpOwo+ICsgICAgZ19hc3NlcnRfdHJ1ZShnc3RfaXNfaW5pdGlhbGl6ZWQoKSk7Cj4gKyAgICBn
X29iamVjdF91bnJlZihzZXNzaW9uKTsKPiArICAgIGlmIChzaG91bGRfaW5pdCkgewo+ICsgICAg
ICAgIGdfYXNzZXJ0X3RydWUoZ3N0X2lzX2luaXRpYWxpemVkKCkpOwo+ICsgICAgICAgIGdzdF9k
ZWluaXQoKTsKPiArI2lmIDAKPiArICAgICAgICBnX2Fzc2VydF9mYWxzZShnc3RfaXNfaW5pdGlh
bGl6ZWQoKSk7Cj4gKyNlbmRpZgo+ICsgICAgfSBlbHNlIHsKPiArI2lmIDAKPiArICAgICAgICAv
KiBFdmVuIGlmIGdzdF9kZWluaXQoKSBpcyBjYWxsZWQsIHJldHVybnMgVFJVRSBiZWxvdyAqLwo+
ICsgICAgICAgIGdfYXNzZXJ0X2ZhbHNlKGdzdF9pc19pbml0aWFsaXplZCgpKTsKPiArI2VuZGlm
Cj4gKyAgICB9Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHRlc3Rfc2Vzc2lvbl9nc3RfaW5pdF9i
eV91cyh2b2lkKQo+ICt7Cj4gKyAgICBzZXNzaW9uX2luaXRfdGVzdF9vbl9nc3QodHJ1ZSk7Cj4g
K30KPiArCj4gK3N0YXRpYyB2b2lkIHRlc3Rfc2Vzc2lvbl9nc3RfaW5pdF9ieV9jbGllbnQodm9p
ZCkKPiArewo+ICsgICAgc2Vzc2lvbl9pbml0X3Rlc3Rfb25fZ3N0KGZhbHNlKTsKPiArfQo+ICsK
CkkgZmluZCBpdCBhIGJpdCBjb25mdXNpbmcsIHdoYXQgYWJvdXQgaW5pdF9ieV9zZXNzaW9uIGFu
ZCBpbml0X2J5X3Rlc3QKKG9yIG1heWJlIGluaXRfZXh0ZXJuYWxseSBhbmQgaW50ZXJuYWxseSkK
Ck9oLCBhbmQgdGhlIHJlc3Qgb2YgdGhlIHBhdGNoZXMgaSBkaWRuJ3QgY29tbWVudCBvbiBsb29r
cyBnb29kIHRvIG1lIDopCgpTbmlyLgoKCj4gICBpbnQgbWFpbihpbnQgYXJnYywgY2hhciogYXJn
dltdKQo+ICAgewo+ICAgICAgIGdfdGVzdF9pbml0KCZhcmdjLCAmYXJndiwgTlVMTCk7Cj4gQEAg
LTM0MSw2ICszODgsOCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciogYXJndltdKQo+ICAgICAg
IGdfdGVzdF9hZGRfZnVuYygiL3Nlc3Npb24vZ29vZC1pcHY0LXVyaSIsIHRlc3Rfc2Vzc2lvbl91
cmlfaXB2NF9nb29kKTsKPiAgICAgICBnX3Rlc3RfYWRkX2Z1bmMoIi9zZXNzaW9uL2dvb2QtaXB2
Ni11cmkiLCB0ZXN0X3Nlc3Npb25fdXJpX2lwdjZfZ29vZCk7Cj4gICAgICAgZ190ZXN0X2FkZF9m
dW5jKCIvc2Vzc2lvbi9nb29kLXVuaXgiLCB0ZXN0X3Nlc3Npb25fdXJpX3VuaXhfZ29vZCk7Cj4g
KyAgICBnX3Rlc3RfYWRkX2Z1bmMoIi9zZXNzaW9uL2dzdHJlYW1lci9pbml0LWJ5LXVzIiwgdGVz
dF9zZXNzaW9uX2dzdF9pbml0X2J5X3VzKTsKPiArICAgIGdfdGVzdF9hZGRfZnVuYygiL3Nlc3Np
b24vZ3N0cmVhbWVyL2luaXQtYnktY2xpZW50IiwgdGVzdF9zZXNzaW9uX2dzdF9pbml0X2J5X2Ns
aWVudCk7Cj4gICAKPiAgICAgICByZXR1cm4gZ190ZXN0X3J1bigpOwo+ICAgfQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
