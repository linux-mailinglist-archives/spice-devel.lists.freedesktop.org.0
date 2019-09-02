Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD12A560E
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 14:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C690B898BE;
	Mon,  2 Sep 2019 12:31:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25F7898BE
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 12:31:40 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1DFCB356C5
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 12:31:40 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id r187so3292556wme.0
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Sep 2019 05:31:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GFfOInpJzaGrDyPIa7vn6gvY5EW4p2uLNWi2tGfn44Y=;
 b=A7xXA+GdkvTHoc2wDhyE6jtk1vXSepH3tx5JN4u8ym3n51oE+fHXrBf7kTcqkgVyB1
 gYdCw5sMLWIGs+lZrA7/jwxS/murU9K3hfncUMPaX4YBjk4Bwzwih5GoAjIjBoddQc53
 gy49ipsgFHzT7Im0ddTzlmlk1Y6rFNiQB/TWzeRNQM3H6JqNpy7GxSdM/niKIofs6CPl
 qsi3BSzyYmRt/A0dnP72OnTUD9Q8JjzsKXGtsNlILBqOcA/AH5qd1f+PlHCt5/Jfg2Xe
 bBhkv0Y9FI+UEIXZjdKjnfhYgtbahT6eYahbLe/IMeF/QyNIRsB8HWm4GJJYlU/BTu3k
 /xJw==
X-Gm-Message-State: APjAAAXlqIV2cIVBufSeY7P991ystpp26PD8EQJQE3/7R39Hq3XLwshb
 WuwpV8Dlu2T/qjPheFLIrjIsiufK9bgkYirRTBoQP2yTlZl0tJ0AAeO58Hi8d7XM1U13RkrDflg
 My2YqjfRLji3z9irUlNt1Rae6X7/t6ZA=
X-Received: by 2002:adf:c594:: with SMTP id m20mr38123859wrg.126.1567427498518; 
 Mon, 02 Sep 2019 05:31:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6waleWj0hVI+/9vjKekDb08MFRlodCCF/EbIuCRYtH5mY+lWcnv0dlsDHEF/im5kSPJBCNw==
X-Received: by 2002:adf:c594:: with SMTP id m20mr38123817wrg.126.1567427498138; 
 Mon, 02 Sep 2019 05:31:38 -0700 (PDT)
Received: from dhcp-4-148.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id t19sm15788505wmi.29.2019.09.02.05.31.36
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Sep 2019 05:31:36 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <782333838.10040153.1567072456525.JavaMail.zimbra@redhat.com>
 <20190829121602.16695-1-kpouget@redhat.com>
 <401101174.10116584.1567095463808.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <683621ff-a450-c516-f619-a32bf46ad9fb@redhat.com>
Date: Mon, 2 Sep 2019 15:31:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <401101174.10116584.1567095463808.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH] streaming: make draw-area visible on
 MJPEG encoder creation
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

SGksCgpPbiA4LzI5LzE5IDc6MTcgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4gVGhpcyBw
YXRjaCBhbGxvd3MgdGhlIE1KUEVHIGVuY29kZXIgdG8gaW5mb3JtIHRoZSBzcGljZS13aWRnZXQg
dGhhdAo+PiBpdHMgdmlkZW8gZHJhd2luZyBhcmVhIChkcmF3LWFyZWEpIHNob3VsZCBiZSBtYWRl
IHZpc2libGUgb24gc2NyZWVuLgo+Pgo+PiBUaGlzIGlzIHJlcXVpcmVkIHRvIHN3aXRjaCBmcm9t
IEdTVCB2aWRlbyBkZWNvZGluZyB0byBuYXRpdmUgTUpQRUcKPj4gZGVjb2RpbmcsIG90aGVyd2lz
ZSB0aGUgZ3N0LWFyZWEgcmVtYWluZWQgb24gdG9wIGFuZCB0aGUgTUpQRUcgdmlkZW8KPj4gc3Ry
ZWFtIHdhcyBuZXZlciBzaG93bi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxr
cG91Z2V0QHJlZGhhdC5jb20+Cj4gRmluZSBmb3IgbWUuIFNuaXIgaGFkIHRoZSBtb3N0IGNvbW1l
bnRzIG9uIGVhcmxpZXIgdmVyc2lvbnMuCj4KPj4gLS0tCj4+ICAgc3JjL2NoYW5uZWwtZGlzcGxh
eS1tanBlZy5jIHwgMyArKysKPj4gICBzcmMvc3BpY2Utd2lkZ2V0LmMgICAgICAgICAgfCA5ICsr
KysrKysrLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1tanBlZy5jIGIvc3Jj
L2NoYW5uZWwtZGlzcGxheS1tanBlZy5jCj4+IGluZGV4IDY0N2QzMWIuLjYzNmE5OGIgMTAwNjQ0
Cj4+IC0tLSBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYwo+PiArKysgYi9zcmMvY2hhbm5l
bC1kaXNwbGF5LW1qcGVnLmMKPj4gQEAgLTMwMCw1ICszMDAsOCBAQCBWaWRlb0RlY29kZXIqIGNy
ZWF0ZV9tanBlZ19kZWNvZGVyKGludCBjb2RlY190eXBlLAo+PiBkaXNwbGF5X3N0cmVhbSAqc3Ry
ZWFtKQo+PiAgIAo+PiAgICAgICAvKiBBbGwgdGhlIG90aGVyIGZpZWxkcyBhcmUgaW5pdGlhbGl6
ZWQgdG8gemVybyBieSBnX25ldzAoKS4gKi8KPj4gICAKPj4gKyAgICAvKiBtYWtlcyB0aGUgZHJh
dy1hcmVhIHZpc2libGUgKi8KPj4gKyAgICBoYW5kX3BpcGVsaW5lX3RvX3dpZGdldChzdHJlYW0s
IE5VTEwpOwo+PiArCj4+ICAgICAgIHJldHVybiAoVmlkZW9EZWNvZGVyKilkZWNvZGVyOwo+PiAg
IH0KPj4gZGlmZiAtLWdpdCBhL3NyYy9zcGljZS13aWRnZXQuYyBiL3NyYy9zcGljZS13aWRnZXQu
Ywo+PiBpbmRleCBhOWJhMWYxLi43YzI1N2ZmIDEwMDY0NAo+PiAtLS0gYS9zcmMvc3BpY2Utd2lk
Z2V0LmMKPj4gKysrIGIvc3JjL3NwaWNlLXdpZGdldC5jCj4+IEBAIC0yNzgwLDEzICsyNzgwLDIw
IEBAIHN0YXRpYyB2b2lkIGdzdF9zaXplX2FsbG9jYXRlKEd0a1dpZGdldCAqd2lkZ2V0LAo+PiBH
ZGtSZWN0YW5nbGUgKmEsIGdwb2ludGVyIGRhdGEpCj4+ICAgfQo+PiAgIAo+PiAgIC8qIFRoaXMg
Y2FsbGJhY2sgc2hvdWxkIHBhc3MgdG8gdGhlIHdpZGdldCBhIHBvaW50ZXIgb2YgdGhlIHBpcGVs
aW5lCj4+IC0gKiBzbyB0aGF0IHdlIGNhbiBzZXQgcGlwZWxpbmUgYW5kIG92ZXJsYXkgcmVsYXRl
ZCBjYWxscyBmcm9tIGhlcmUuCj4+ICsgKiBzbyB0aGF0IHdlIGNhbiB0aGUgc2V0IEdTVCBwaXBl
bGluZSBhbmQgb3ZlcmxheSByZWxhdGVkIGNhbGxzIGZyb20KPj4gKyAqIGhlcmUuICBJZiB0aGUg
cGlwZWxpbmUgcG9pbnRlciBpcyBOVUxMLCB0aGUgZHJhd2luZyBhcmVhIG9mIHRoZQo+PiArICog
bmF0aXZlIHJlbmRlcmVyIGlzIHNldCB2aXNpYmxlLgo+PiAgICAqLwoKSSB0aGluayB5b3Ugc2hv
dWxkIHVwZGF0ZSBhbHNvIHRoZSBzaWduYWwgY29tbWVudCAoZ3N0LXZpZGVvLW92ZXJsYXkpLCB0
aGF0CnRoZSBwaXBlbGluZSBtYXkgYmUgTlVMTAoKPj4gICBzdGF0aWMgZ2Jvb2xlYW4gc2V0X292
ZXJsYXkoU3BpY2VDaGFubmVsICpjaGFubmVsLCB2b2lkKiBwaXBlbGluZV9wdHIsCj4+ICAgU3Bp
Y2VEaXNwbGF5ICpkaXNwbGF5KQo+PiAgIHsKPj4gICAjaWYgZGVmaW5lZChHREtfV0lORE9XSU5H
X1gxMSkKPj4gICAgICAgU3BpY2VEaXNwbGF5UHJpdmF0ZSAqZCA9IGRpc3BsYXktPnByaXY7Cj4+
ICAgCj4+ICsgICAgaWYgKHBpcGVsaW5lX3B0ciA9PSBOVUxMKSB7Cj4+ICsgICAgICAgIGd0a19z
dGFja19zZXRfdmlzaWJsZV9jaGlsZF9uYW1lKGQtPnN0YWNrLCAiZHJhdy1hcmVhIik7Cj4+ICsg
ICAgICAgIHJldHVybiB0cnVlOwo+PiArICAgIH0KPj4gKwoKQWx0aG91Z2ggdGhpcyB3b3VsZCBw
cm9iYWJseSBhbHdheXMgd29yayBmaW5lIGFuZCByZXR1cm5lZCB2YWx1ZSBpcwphbHNvIG5vdCBj
aGVja2VkIGJ1dCB0aGUgZHJhdy1hcmVhIGlzIG5vdCBuZWNlc3NhcmlseSByZWxhdGVkIHRvIFgx
MQpzbyBpdCBzaG91bGQgYmUgb3V0c2lkZSB0aGUgZGVmaW5lLgoKQ29uc2lkZXIgdGhlc2UsIGJ1
dCBvdGhlciB0aGFuIHRoYXQgZmluZSB3aXRoIG1lCgooT2gsIGFub3RoZXIgbm90IHJlYWxseSBu
ZWNlc3NhcnkgdGhpbmcgd291bGQgYmUgdG8gbWFrZSBzdXJlIGVnbCBpcyBub3QKZW5hYmxlZCwg
YnV0IHByb2JhYmx5IHNob3VsZCBuZXZlciBoYXBwZW4gOnApCgpTbmlyLgoKCj4+ICAgICAgIC8q
IEdzdFZpZGVvT3ZlcmxheSBpcyBjdXJyZW50bHkgdXNlZCBvbmx5IHVuZGVyIHggKi8KPj4gICAg
ICAgaWYgKCFnX2dldGVudigiRElTQUJMRV9HU1RWSURFT09WRVJMQVkiKSAmJgo+PiAgICAgICAg
ICAgR0RLX0lTX1gxMV9ESVNQTEFZKGdka19kaXNwbGF5X2dldF9kZWZhdWx0KCkpKSB7Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
