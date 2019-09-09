Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A54BFAD650
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 12:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC93889AF3;
	Mon,  9 Sep 2019 10:06:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911C889AF3
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:06:52 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EEA252D7E1
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:06:51 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id i4so7127800wri.1
 for <spice-devel@lists.freedesktop.org>; Mon, 09 Sep 2019 03:06:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=iSa0OId+i2tugP2d3JI3W3RsRkEnruloIahIFg11YDc=;
 b=BmoqwprQQA/N2eBGBJurqEpF5lGmd4EI5oP0UOcGLrKmbnsam+hdBxeC45wDj4+tdR
 +27BtJNVaXRolzw8MLbtNCYx3QkUQxegqaaZXHv/HDa7HVngTPo+2uXt15MLQV1y458O
 eiTFlcUBTJzdwqE5Sl82vyFmS5DkgY3V0Cu1hGg7HwnfTrzDXiiVQlU3YEqXjI/aaj3R
 42Xozw/vI31olna/qcEZVIIdld7p97VC8Zpdg+R+a63d+PBxAyBYznE/3bmrmIYFO6YH
 Cras4D0dSQl9i3t616BZeGahPl9ChX/MIzByB5/Q60MqC0nYuJ6Bo/H1rys6uOfxrZHt
 dtTg==
X-Gm-Message-State: APjAAAUBVIAIY5SsphOJHZFIgLXZ618PReus+M5/VLRh3oP7vwriI72x
 05zENKC0lXmT+71TNucm6Ri62DAop4Nna4yKIa9TFOjnDudGs3uGwcXC/yZXQDaxix73s6jYBHF
 CF4ZQzjkQHdWNwJaUIetc/QZgTi/nO+4=
X-Received: by 2002:a1c:80c6:: with SMTP id b189mr1999009wmd.34.1568023610251; 
 Mon, 09 Sep 2019 03:06:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrBmP4qtA4ArpRC18IxsL00L4rf+pOdNAJUD0+CHwiUJatF9YKDk3usjvieDn70rNKrobdtQ==
X-Received: by 2002:a1c:80c6:: with SMTP id b189mr1998985wmd.34.1568023609961; 
 Mon, 09 Sep 2019 03:06:49 -0700 (PDT)
Received: from dhcp-4-151.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id j22sm28290902wre.45.2019.09.09.03.06.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Sep 2019 03:06:49 -0700 (PDT)
To: Victor Toso <victortoso@redhat.com>
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-3-victortoso@redhat.com>
 <4c7556cd-225c-136b-279d-8563cf1cd0eb@redhat.com>
 <20190909090148.axo37j7lngkfdjut@wingsuit>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <06db06be-4c56-b8ec-e471-92b863aacf7a@redhat.com>
Date: Mon, 9 Sep 2019 13:06:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909090148.axo37j7lngkfdjut@wingsuit>
Content-Language: en-US
Subject: Re: [Spice-devel] [spice-gtk v1 2/6] display-gst: rely on
 SpiceSession init of GStreamer
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiA5LzkvMTkgMTI6MDEgUE0sIFZpY3RvciBUb3NvIHdyb3RlOgo+IEhpLAo+Cj4gT24g
U3VuLCBTZXAgMDgsIDIwMTkgYXQgMDQ6MjU6MzJQTSArMDMwMCwgU25pciBTaGVyaWJlciB3cm90
ZToKPj4gSGksCj4+Cj4+Cj4+IE9uIDkvMi8xOSA3OjA0IFBNLCBWaWN0b3IgVG9zbyB3cm90ZToK
Pj4+IEZyb206IFZpY3RvciBUb3NvIDxtZUB2aWN0b3J0b3NvLmNvbT4KPj4+Cj4+PiBUaGlzIG1l
YW5zIHdlIGNhbiBkcm9wIGdzdHZpZGVvX2luaXQoKSBmdW5jdGlvbiBhbmQgcmVwbGFjZSBpdHMg
Y2FsbHMKPj4+IHdpdGggZ3N0X2lzX2luaXRpYWxpemVkKCkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogVmljdG9yIFRvc28gPHZpY3RvcnRvc29AcmVkaGF0LmNvbT4KPj4+IC0tLQo+Pj4gICAgc3Jj
L2NoYW5uZWwtZGlzcGxheS1nc3QuYyB8IDIzICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAg
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyBiL3NyYy9jaGFubmVsLWRp
c3BsYXktZ3N0LmMKPj4+IGluZGV4IDZmY2NmNjIuLmEzNGI1ZDAgMTAwNjQ0Cj4+PiAtLS0gYS9z
cmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCj4+PiArKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LWdz
dC5jCj4+PiBAQCAtNzQ4LDIyICs3NDgsNiBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2VfZ3N0X2Rl
Y29kZXJfcXVldWVfZnJhbWUoVmlkZW9EZWNvZGVyICp2aWRlb19kZWNvZGVyLAo+Pj4gICAgICAg
IHJldHVybiBUUlVFOwo+Pj4gICAgfQo+Pj4gLXN0YXRpYyBnYm9vbGVhbiBnc3R2aWRlb19pbml0
KHZvaWQpCj4+PiAtewo+Pj4gLSAgICBzdGF0aWMgaW50IHN1Y2Nlc3MgPSAwOwo+Pj4gLSAgICBp
ZiAoIXN1Y2Nlc3MpIHsKPj4+IC0gICAgICAgIEdFcnJvciAqZXJyID0gTlVMTDsKPj4+IC0gICAg
ICAgIGlmIChnc3RfaW5pdF9jaGVjayhOVUxMLCBOVUxMLCAmZXJyKSkgewo+Pj4gLSAgICAgICAg
ICAgIHN1Y2Nlc3MgPSAxOwo+Pj4gLSAgICAgICAgfSBlbHNlIHsKPj4+IC0gICAgICAgICAgICBz
cGljZV93YXJuaW5nKCJEaXNhYmxpbmcgR1N0cmVhbWVyIHZpZGVvIHN1cHBvcnQ6ICVzIiwgZXJy
LT5tZXNzYWdlKTsKPj4+IC0gICAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnIpOwo+Pj4gLSAg
ICAgICAgICAgIHN1Y2Nlc3MgPSAtMTsKPj4+IC0gICAgICAgIH0KPj4+IC0gICAgfQo+Pj4gLSAg
ICByZXR1cm4gc3VjY2VzcyA+IDA7Cj4+PiAtfQo+Pj4gLQo+Pj4gICAgR19HTlVDX0lOVEVSTkFM
Cj4+PiAgICBWaWRlb0RlY29kZXIqIGNyZWF0ZV9nc3RyZWFtZXJfZGVjb2RlcihpbnQgY29kZWNf
dHlwZSwgZGlzcGxheV9zdHJlYW0gKnN0cmVhbSkKPj4+ICAgIHsKPj4+IEBAIC03NzEsNyArNzU1
LDcgQEAgVmlkZW9EZWNvZGVyKiBjcmVhdGVfZ3N0cmVhbWVyX2RlY29kZXIoaW50IGNvZGVjX3R5
cGUsIGRpc3BsYXlfc3RyZWFtICpzdHJlYW0pCj4+PiAgICAgICAgZ19yZXR1cm5fdmFsX2lmX2Zh
aWwoVkFMSURfVklERU9fQ09ERUNfVFlQRShjb2RlY190eXBlKSwgTlVMTCk7Cj4+PiAtICAgIGlm
IChnc3R2aWRlb19pbml0KCkpIHsKPj4+ICsgICAgaWYgKGdzdF9pc19pbml0aWFsaXplZCgpKSB7
Cj4+IFNpbmNlIHRoZSBsb2dpY2FsIHRoaW5nIHRvIGRvIGlzIHVzdWFsbHkgdG8gaW5pdGlhbGl6
ZQo+PiBnc3RyZWFtZXIgb25jZSB5b3Ugc3RhcnQgdXNpbmcgaXQKPiBXaHk/IEdTdHJlYW1lciBp
cyBhIGxpYnJhcnkgYW5kIEknZCBzYXkgdGhlIGluaXQgaXMgdG8gYmUgY2FsbGVkCj4gZWFybHkg
b24gYmVjYXVzZSB0aGF0IHdvdWxkIGRlYWwgd2l0aCBjb21tYW5kIGxpbmUgb3B0aW9ucywKPiBl
bnZpcm9ubWVudCB2YXJpYWJsZXMgZXRjLiBObyBleHRyYSBkZWxheSBvbiBpbml0aWFsaXppbmcg
dGhpcwo+IGtpbmQgb2YgdGhpbmcgd2hlbiB3ZSB3YW50IHRvIGNyZWF0ZSBhIHBpcGVsaW5lIGZv
ciB2aWRlby9hdWRpbwo+IHByb2Nlc3NpbmcgZm9yIGluc3RhbmNlIGlzIGFsc28gdmFsaWQgYXJn
dW1lbnQuCgoKWWVzLCBpIGdldCBpdCAsIGp1c3QgbWVudGlvbmVkIGl0IGFzIHRoZSByZWFzb24g
Zm9yIGFkZGluZwp0aGUgY29tbWVudCBzbyB0aGF0IGlmIHNvbWVvbmUgd2lsbCBsb29rIGF0IGdz
dHJlYW1lcidzCmNvZGUgaGUgd2lsbCBrbm93IGhlIHdvdWxkbid0IGZpbmQgdGhlIGluaXRpYWxp
emF0aW9uIHRoZXJlCmJ1dCBpbiB0aGUgc2Vzc2lvbiBjb2RlIDopCgpTbmlyLgoKCj4KPj4gaSB3
b3VsZCBhZGQgYSBjb21tZW50IGl0J3Mgbm93IGluaXRpYWxpemVkIGJ5IHRoZSBzZXNzaW9uIChp
Zgo+PiBub3QgZXh0ZXJuYWxseSkKPj4KPj4gKGFsc28gb24gZ3N0YXVkaW8pCj4gT2ssIG5vIHBy
b2JsZW0uIFRoYW5rcyEKPgo+PiBTbmlyLgo+Pgo+Pj4gICAgICAgICAgICBkZWNvZGVyID0gZ19u
ZXcwKFNwaWNlR3N0RGVjb2RlciwgMSk7Cj4+PiAgICAgICAgICAgIGRlY29kZXItPmJhc2UuZGVz
dHJveSA9IHNwaWNlX2dzdF9kZWNvZGVyX2Rlc3Ryb3k7Cj4+PiAgICAgICAgICAgIGRlY29kZXIt
PmJhc2UucmVzY2hlZHVsZSA9IHNwaWNlX2dzdF9kZWNvZGVyX3Jlc2NoZWR1bGU7Cj4+PiBAQCAt
ODIwLDcgKzgwNCwxMCBAQCBnYm9vbGVhbiBnc3R2aWRlb19oYXNfY29kZWMoaW50IGNvZGVjX3R5
cGUpCj4+PiAgICAgICAgR3N0Q2FwcyAqY2FwczsKPj4+ICAgICAgICBHc3RFbGVtZW50RmFjdG9y
eUxpc3RUeXBlIHR5cGU7Cj4+PiAtICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGdzdHZpZGVvX2lu
aXQoKSwgRkFMU0UpOwo+Pj4gKyAgICBpZiAoIWdzdF9pc19pbml0aWFsaXplZCgpKSB7Cj4+PiAr
ICAgICAgICByZXR1cm4gRkFMU0U7Cj4+PiArICAgIH0KPj4+ICsKPj4+ICAgICAgICBnX3JldHVy
bl92YWxfaWZfZmFpbChWQUxJRF9WSURFT19DT0RFQ19UWVBFKGNvZGVjX3R5cGUpLCBGQUxTRSk7
Cj4+PiAgICAgICAgdHlwZSA9IEdTVF9FTEVNRU5UX0ZBQ1RPUllfVFlQRV9ERUNPREVSIHwKPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
