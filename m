Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7E78920E
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 16:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5A66E34D;
	Sun, 11 Aug 2019 14:41:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23806E34D
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 14:41:54 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p17so102421436wrf.11
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 07:41:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=0cE/NdFnWQLH9D4SVCDa4yJcgFeaABnLx9HP5XqxRho=;
 b=HRk1VeY6EGiTJFu6wViW+e/62Ei5wNQNi6HIR8DraloC4eXLcznWwOd4oZN6G6xKXV
 DhHlghbdUTnpJ9e2oRTgvuTUJVL5Y3PoKv8zmqkbtICzk6Bz1zbyW2MJTlq+AMxWzonr
 ic1QqTYW1FK8cZqDfwj3M4kXfd8AO2GxJ6i0/SNVSFcjHimWDB1CXyEv39mGli1Svg2/
 3k6hsjSIcBHq4ZGPXfAihfAogf3iCU6vy6pZE4GL8MLEXA63CAqlwBtnq6wij/ZLb6aJ
 lhCuwNg/AROBM39tWbhl2GkkV1Bod7zKBL23mPQgVkYccTPf2eD3ArJAt4oxGM0IhPJX
 KsfQ==
X-Gm-Message-State: APjAAAWqCIMMUnGAQRNZLgHl8yH93qC81guAu16GPAZXGmhG4eVfrZYa
 WcyFdqQw1NIa/6scesStt9NVkOlOysw=
X-Google-Smtp-Source: APXvYqxeyErV0OCDljeWoE0Se4ZAO+CwAW1bsqh7UD9DyJ33vCWJYJtMtBped40OfoWAH3Z4ruUnhw==
X-Received: by 2002:a1c:a9ce:: with SMTP id s197mr2964873wme.35.1565534513257; 
 Sun, 11 Aug 2019 07:41:53 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id x6sm16428145wmf.6.2019.08.11.07.41.52
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 07:41:52 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190806153453.20616-1-kpouget@redhat.com>
 <20190806153453.20616-6-kpouget@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <650d1bdc-0fb7-5ac6-67cf-3138faf874c5@redhat.com>
Date: Sun, 11 Aug 2019 17:41:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806153453.20616-6-kpouget@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [RFC spice-streaming-agent 2/4]
 spice-streaming-agent: fully reset the capture loop on start/stop requests
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

SGksCgoKT24gOC82LzE5IDY6MzQgUE0sIEtldmluIFBvdWdldCB3cm90ZToKPiBXaXRoIHRoaXMg
cGF0Y2gsIHNwaWNlLXN0cmVhbWluZy1hZ2VudCBleGl0cyB0aGUgZnJhbWUtc2VuZGluZyBsb29w
Cj4gd2hlbiBTVEFSVC9TVE9QIHJlcXVlc3RzIGFyZSByZWNlaXZlZC4gVGhpcyBhbGxvd3MgdGhl
IHJlY29tcHV0YXRpb24KPiBvZiB0aGUgbW9zdCBzdWl0YWJsZSBjYXB0dXJlL2VuY29kaW5nIHBs
dWdpbiwgdGhhdCBtYXkgaGF2ZSBiZWVuCj4gdXBkYXRlZCB3aXRoIFNUQVJUL1NUT1AgbWVzc2Fn
ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtldmluIFBvdWdldCA8a3BvdWdldEByZWRoYXQuY29tPgo+
IC0tLQo+ICAgc3JjL3NwaWNlLXN0cmVhbWluZy1hZ2VudC5jcHAgfCAxOSArKysrKysrKysrKysr
LS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcCBiL3NyYy9z
cGljZS1zdHJlYW1pbmctYWdlbnQuY3BwCj4gaW5kZXggNDlmNWRjNC4uZDI3NGI1ZiAxMDA2NDQK
PiAtLS0gYS9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcAo+ICsrKyBiL3NyYy9zcGljZS1z
dHJlYW1pbmctYWdlbnQuY3BwCj4gQEAgLTEyNSw3ICsxMjUsOCBAQCBwcml2YXRlOgo+ICAgICAg
IHN0YXRpYyBjb25zdGV4cHIgdWludDMyX3QgbWF4X2RldmljZV9hZGRyZXNzX2xlbiA9IDI1NTsK
PiAgIH07Cj4gICAKPiAtc3RhdGljIGJvb2wgc3RyZWFtaW5nX3JlcXVlc3RlZCA9IGZhbHNlOwo+
ICtzdGF0aWMgYm9vbCBjYXB0dXJlX2luX3Byb2dyZXNzID0gZmFsc2U7Cj4gK3N0YXRpYyBib29s
IHJlc2V0X3JlcXVlc3RlZCA9IGZhbHNlOwo+ICAgc3RhdGljIGJvb2wgcXVpdF9yZXF1ZXN0ZWQg
PSBmYWxzZTsKPiAgIHN0YXRpYyBzdGQ6OnNldDxTcGljZVZpZGVvQ29kZWNUeXBlPiBjbGllbnRf
Y29kZWNzOwo+ICAgCj4gQEAgLTE2NywxMSArMTY4LDEyIEBAIHN0YXRpYyB2b2lkIHJlYWRfY29t
bWFuZF9mcm9tX2RldmljZShTdHJlYW1Qb3J0ICZzdHJlYW1fcG9ydCkKPiAgICAgICB9Cj4gICAg
ICAgY2FzZSBTVFJFQU1fVFlQRV9TVEFSVF9TVE9QOiB7Cj4gICAgICAgICAgIFN0YXJ0U3RvcE1l
c3NhZ2UgbXNnID0gaW5fbWVzc2FnZS5nZXRfcGF5bG9hZDxTdGFydFN0b3BNZXNzYWdlPigpOwo+
IC0gICAgICAgIHN0cmVhbWluZ19yZXF1ZXN0ZWQgPSBtc2cuc3RhcnRfc3RyZWFtaW5nOwo+ICsg
ICAgICAgIGNhcHR1cmVfaW5fcHJvZ3Jlc3MgPSBtc2cuc3RhcnRfc3RyZWFtaW5nOwo+ICAgICAg
ICAgICBjbGllbnRfY29kZWNzID0gbXNnLmNsaWVudF9jb2RlY3M7Cj4gKyAgICAgICAgcmVzZXRf
cmVxdWVzdGVkID0gdHJ1ZTsKPiAgIAo+ICAgICAgICAgICBzeXNsb2coTE9HX0lORk8sICJHT1Qg
U1RBUlRfU1RPUCBtZXNzYWdlIC0tIHJlcXVlc3QgdG8gJXMgc3RyZWFtaW5nIiwKPiAtICAgICAg
ICAgICAgICAgc3RyZWFtaW5nX3JlcXVlc3RlZCA/ICJTVEFSVCIgOiAiU1RPUCIpOwo+ICsgICAg
ICAgICAgICAgICBjYXB0dXJlX2luX3Byb2dyZXNzID8gIlNUQVJUIiA6ICJTVE9QIik7Cj4gICAg
ICAgICAgIHJldHVybjsKPiAgICAgICB9fQo+ICAgCj4gQEAgLTIzMywyMCArMjM1LDI1IEBAIGRv
X2NhcHR1cmUoU3RyZWFtUG9ydCAmc3RyZWFtX3BvcnQsIEZyYW1lTG9nICZmcmFtZV9sb2csIENv
bmNyZXRlQWdlbnQgJmFnZW50KQo+ICAgewo+ICAgICAgIHVuc2lnbmVkIGludCBmcmFtZV9jb3Vu
dCA9IDA7Cj4gICAgICAgd2hpbGUgKCFxdWl0X3JlcXVlc3RlZCkgewo+IC0gICAgICAgIHdoaWxl
ICghcXVpdF9yZXF1ZXN0ZWQgJiYgIXN0cmVhbWluZ19yZXF1ZXN0ZWQpIHsKPiArICAgICAgICB3
aGlsZSAoIXF1aXRfcmVxdWVzdGVkICYmICFjYXB0dXJlX2luX3Byb2dyZXNzKSB7Cj4gICAgICAg
ICAgICAgICByZWFkX2NvbW1hbmQoc3RyZWFtX3BvcnQsIHRydWUpOwo+ICAgICAgICAgICB9Cj4g
ICAKPiAgICAgICAgICAgaWYgKHF1aXRfcmVxdWVzdGVkKSB7Cj4gICAgICAgICAgICAgICByZXR1
cm47Cj4gICAgICAgICAgIH0KPiArICAgICAgICByZXNldF9yZXF1ZXN0ZWQgPSBmYWxzZTsKPiAg
IAo+ICAgICAgICAgICBzeXNsb2coTE9HX0lORk8sICJzdHJlYW1pbmcgc3RhcnRzIG5vdyIpOwo+
ICAgICAgICAgICB1aW50NjRfdCB0aW1lX2xhc3QgPSAwOwo+ICAgCj4gICAgICAgICAgIHN0ZDo6
dW5pcXVlX3B0cjxGcmFtZUNhcHR1cmU+IGNhcHR1cmUoYWdlbnQuR2V0QmVzdEZyYW1lQ2FwdHVy
ZShjbGllbnRfY29kZWNzKSk7Cj4gICAgICAgICAgIGlmICghY2FwdHVyZSkgewo+IC0gICAgICAg
ICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoImNhbm5vdCBmaW5kIGEgc3VpdGFibGUgY2Fw
dHVyZSBzeXN0ZW0iKTsKPiArICAgICAgICAgICAgc3lzbG9nKExPR19FUlIsICJFcnJvciBjYW5u
b3QgZmluZCBhIHN1aXRhYmxlIGNhcHR1cmUgc3lzdGVtIik7Cj4gKwo+ICsgICAgICAgICAgICAv
LyB3YWl0IHVudGlsIGEgbmV3IHN0YXJ0L3N0b3AgcmVxdWVzdCBhcnJpdmVzIHdpdGggYSBuZXcg
bGlzdCBvZiBjb2RlY3MKCgpDYW4geW91IGV4cGxhaW4gd2h5IHlvdSBjaGFuZ2UgaXQgdG8gYSBs
b2cgbWVzc2FnZT8gaW4gY2FzZSBvZiBmYWlsdXJlCmhvdyB5b3UnbGwgZ2V0IG91dCBvZiB0aGlz
IGxvb3A/IGNsaWVudCBjb2RlYyB0eXBlcyBhdmFpbGFiaWxpdHkgY2FuIGNoYW5nZQppbiBydW4g
dGltZT8gb3IgaXQgY2FuIGNoYW5nZSBvbmx5IHRoZWlyIHByZWZlcmVuY2U/CgpTbmlyLgoKPiAr
ICAgICAgICAgICAgY2FwdHVyZV9pbl9wcm9ncmVzcyA9IGZhbHNlOwo+ICsgICAgICAgICAgICBj
b250aW51ZTsKPiAgICAgICAgICAgfQo+ICAgCj4gICAgICAgICAgIHN0ZDo6dmVjdG9yPERldmlj
ZURpc3BsYXlJbmZvPiBkaXNwbGF5X2luZm87Cj4gQEAgLTI3NSw3ICsyODIsNyBAQCBkb19jYXB0
dXJlKFN0cmVhbVBvcnQgJnN0cmVhbV9wb3J0LCBGcmFtZUxvZyAmZnJhbWVfbG9nLCBDb25jcmV0
ZUFnZW50ICZhZ2VudCkKPiAgICAgICAgICAgICAgIHN5c2xvZyhMT0dfRVJSLCAiRW1wdHkgZGV2
aWNlIGRpc3BsYXkgaW5mbyBmcm9tIHRoZSBwbHVnaW4iKTsKPiAgICAgICAgICAgfQo+ICAgCj4g
LSAgICAgICAgd2hpbGUgKCFxdWl0X3JlcXVlc3RlZCAmJiBzdHJlYW1pbmdfcmVxdWVzdGVkKSB7
Cj4gKyAgICAgICAgd2hpbGUgKCFxdWl0X3JlcXVlc3RlZCAmJiAhcmVzZXRfcmVxdWVzdGVkICYm
IGNhcHR1cmVfaW5fcHJvZ3Jlc3MpIHsKPiAgICAgICAgICAgICAgIGlmICgrK2ZyYW1lX2NvdW50
ICUgMTAwID09IDApIHsKPiAgICAgICAgICAgICAgICAgICBzeXNsb2coTE9HX0RFQlVHLCAiU0VO
VCAlZCBmcmFtZXMiLCBmcmFtZV9jb3VudCk7Cj4gICAgICAgICAgICAgICB9Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
