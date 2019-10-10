Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84303D39AC
	for <lists+spice-devel@lfdr.de>; Fri, 11 Oct 2019 08:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9D76EBA9;
	Fri, 11 Oct 2019 06:53:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FF089FEC
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 15:20:35 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id r16so5796447edq.11
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 08:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=39pw2a7O0RDw0Uc04RZuVBIWBac7OJyHK10yq9w2Heo=;
 b=bebdQlhF3Ew4HAzrD2rQ4uhkXryqcSaZ19VOQlJMlSTXUowPiael2W8IjRGPpgg+ny
 FyalQpQXaUdv3Z53blN+afuqdQa+B34zC1ifLPaCif83DPaPxsqSWblDg3961aJ8VMmc
 7bnCM4SDqjROrf3g5CquaySBJ1NsZghiD2+tQP+7jt6OSqhG10pjAEmVJMzozygrTwwC
 wRZVsIQkdkxxnfmOwtdW4MoPzq6mSQ6/MIn9lbmj3c/f9pkqPWiSij8g9E2nFvHwhIcQ
 GxE8PwGsk9fSSiIrL8BddQawQNx1SHYBYPbpYG9pHqcWTK1VZeX0xNftIw4MD+yKvLSK
 F6/w==
X-Gm-Message-State: APjAAAVbSKL9BqEEPfMNTQ6Rhq48au+GVvx5GXxsDJFizzJs7x2hn5+q
 n35WYBmP/0/pOgbBt8xH4u0s4O/9g1s=
X-Google-Smtp-Source: APXvYqwXPy3nfODaEmQYENhAFN6ZDWVq5NZ4JaT6qfDdZS8G2rNVO0nuXrpr8JxhfjRwsjO/OZiWKw==
X-Received: by 2002:a05:6402:1507:: with SMTP id
 f7mr8771526edw.68.1570720834180; 
 Thu, 10 Oct 2019 08:20:34 -0700 (PDT)
Received: from [192.168.0.103] (ip-213-124-186-29.ip.prioritytelecom.net.
 [213.124.186.29])
 by smtp.gmail.com with ESMTPSA id s26sm1000501eds.80.2019.10.10.08.20.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 08:20:33 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
 <1890026837.6264931.1570713772940.JavaMail.zimbra@redhat.com>
From: Eduardo Hoefel <business@ehoefel.com>
Message-ID: <25c4399c-4ce7-2127-2427-69f6613520a3@ehoefel.com>
Date: Thu, 10 Oct 2019 17:20:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1890026837.6264931.1570713772940.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 11 Oct 2019 06:53:02 +0000
Subject: Re: [Spice-devel] Question about bidirectional audio
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
Reply-To: business@ehoefel.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U29ycnkgZm9yIG5vdCBiZWluZyBjbGVhci4KCgpJbiB0aGlzIGNhc2UsIHRoZSBjbGllbnQgaXMg
QXN0ZXJpc2sgYW5kIHRoZSBzZXJ2ZXIgaXMgYSBTUElDRSBzZXJ2ZXIuCgpUaGV5IHdhbnQgdG8g
c2VuZCBhdWRpbyBmcm9tIHRoZSBjbGllbnQgdG8gdGhlIHNlcnZlci4gVGhlIGRvY3VtZW50YXRp
b24gCnNheXMgdGhhdCBJIG5lZWQgdG8gdXNlClJFRF9SRUNPUkRfKiBtZXNzYWdlcy4gVGhlIHNl
cnZlciBtdXN0IHN0YXJ0IHJlcXVlc3RpbmcgdGhlIHJlY29yZCBmcm9tIAp0aGUgY2xpZW50LCB3
aXRoIGEgUkVEX1JFQ09SRF9TVEFSVCByZXF1ZXN0LiBIb3cgY2FuIEkgdHJpZ2dlciB0aGlzIApy
ZXF1ZXN0PyBPbmUgb2YgdGhlIGNsaWVudCdzIGRldmVsb3BlcnMgc2FpZCB0aGF0IHRoaXMgbWVz
c2FnZSBpcyBzZW50IApmcm9tIHRoZSBzZXJ2ZXIgcmlnaHQgYWZ0ZXIgYSBsaW5rIHdpdGggY29u
bmVjdGlvbiB0eXBlIApTUElDRV9DSEFOTkVMX1JFQ09SRCBpcyBtYWRlLiBJcyB0aGlzIGluZm9y
bWF0aW9uIHRydWU/IEkgY2Fubm90IGZpbmQgCmFueXdoZXJlIGluIHRoZSBkb2N1bWVudGF0aW9u
IGhvdyB0aGlzIGNvbW11bmljYXRpb24gc3RhcnRzLgoKT24gMTAvMTAvMTkgMzoyMiBQTSwgRnJl
ZGlhbm8gWmlnbGlvIHdyb3RlOgo+PiBIZWxsbywKPj4KPj4gSSdtIGEgZGV2ZWxvcGVyIGRvaW5n
IGEgZnJlZWxhbmNlIGpvYiBmb3IgYSBjb21wYW55LiBUaGV5IHdhbnQgdG8KPj4gY29ubmVjdCBB
c3RlcmlzayBjYWxsIGNlbnRlciB0byBhIHZtIHJ1bm5pbmcgU3BpY2UuIEkgc2VlIHRoYXQgaXQn
cwo+PiBwb3NzaWJsZSB0byBkbyBCaWRpcmVjdGlvbmFsIEF1ZGlvLCBhY2NvcmRpbmcgdG8geW91
ciB1c2VyIG1hbnVhbC4KPj4gSSB3YW50IHRvIHN0cmVhbSBhdWRpbyBmcm9tIGEgY2xpZW50IHRv
IHRoZSBzZXJ2ZXIsIGFuZCBoYXZlIHRoYXQgYXVkaW8KPj4gcGxheWVkIHRocm91Z2ggdGhlIG91
dHB1dCBkZXZpY2Ugb2YgdGhlIHNlcnZlci4gSSBuZWVkIHRvIG1ha2UgdGhpcyBjb2RlCj4+IGlu
IEMuCj4+Cj4gTm90IGNsZWFyIGhlcmUgd2hhdCB0aGUgY2xpZW50IGFuZCBzZXJ2ZXIgYXJlLiBT
cGVha2luZyBhYm91dCBTUElDRQo+IHRoZSBzZXJ2ZXIgaXMgdGhlIHBhcnQgYXR0YWNoZWQgdG8g
dGhlIFZNIHdoaWxlIHRoZSBjbGllbnQgaXMgdXN1YWxseQo+IGEgR1VJIGNsaWVudCAobGlrZSBy
ZW1vdGUtdmlld2VyKS4KPgo+PiBMb29raW5nIGF0IHlvdXIgcHJvdG9jb2wgSSBzYXcgdGhhdCBm
b3IgYXVkaW8gbWVzc2FnZXMgdGhlIHNlcnZlciBhbHdheXMKPj4gbmVlZHMgdG8gc3RhcnQgdGhl
IGNvbW11bmljYXRpb24sIGVpdGhlciB3aXRoIFJFRF9QTEFZQkFDS19TVEFSVCBvcgo+PiBSRURf
UkVDT1JEX1NUQVJULgo+Pgo+IFRoZXkgYXJlIDIgc2VwYXJhdGUgY2hhbm5lbHMgd2hpY2ggaGF2
ZSBvbmUgcmVzcGVjdGl2ZSBUQ1AgY29ubmVjdGlvbgo+IChjYW4gYmUgYSBVbml4IHNvY2tldCBj
b25uZWN0aW9uIGJ1dCBpbiB0aGlzIGNhc2Ugd29uJ3QgYmUgcmVtb3RlKS4KPiBUaGUgcGxheWJh
Y2sgY2hhbm5lbCBpcyBsaWtlLCBmb3IgdGhlIFNQSUNFIGNsaWVudCwgYSBzcGVha2VyIHNvIHRo
ZQo+IFZNIHdpbGwgc2VuZCB0aGUgYXVkaW8gdG8gYmUgcGxheWVkLgo+IFRoZSByZWNvcmQgY2hh
bm5lbCBpcyBsaWtlLCBzdGlsbCBmb3IgdGhlIGNsaWVudCwgYSBtaWNyb3Bob25lIHNvCj4gdGhl
IGNsaWVudCB3aWxsIHNlbmQgdGhlIGF1ZGlvIHRvIGJlIHJlY29yZGVyIGJ5IHRoZSBWTS4KPiBU
aGUgU1RBUlQgbWVzc2FnZXMgYXJlIHNlbmQgZnJvbSB0aGUgVk0gZWl0aGVyIHNvIHNheSB0aGF0
IHRoZSBhdWRpbwo+IGNhcmQgaXMgcGxheWluZyBzb21ldGhpbmcgKHBsYXliYWNrKSBvciB0cnlp
bmcgdG8gcmVjb3JkIHNvbWV0aGluZwo+IChyZWNvcmQpCj4KPj4gTXkgY2xpZW50IHdhbnRzIHRv
IHJlY2VpdmUgdGhlIGNhbGwgaW4gdGhlIGNhbGwgY2VudGVyIGFuZCBoYXZlIGl0Cj4+IGF1dG9t
YXRpY2FsbHkgc3RyZWFtZWQgdG8gdGhlIHNlcnZlci4gQnV0IEkgY2Fubm90IHN0YXJ0IG1lc3Nh
Z2luZwo+PiB1bmxlc3MgdGhlIHNlcnZlciByZXF1ZXN0cyB0aGUgY29ubmVjdGlvbi4KPj4KPiBX
aGF0IGlzIHRoZSBzZXJ2ZXIgaGVyZT8gSXQgc2VlbXMgaXQncyBub3QgU1BJQ0Ugc2VydmVyLiBJ
dCdzIG5vdAo+IGNsZWFyIHdoYXQgeW91IGFyZSB0cnlpbmcgdG8gZG8uIFdoZXJlIGlzIGV4ZWN1
dGVkIEFzdGVyaXNrPwo+IEFuZCBob3cgaXMgQXN0ZXJpc2sgaW52b2x2ZWQgaGVyZT8gSXMgaXQg
bm90IHBvc3NpYmxlIHRvIHJlY29yZCBvbgo+IEFzdGVyaXNrIChJIHN1cHBvc2UgdGhlIGNhbGxz
IGFyZSBoYW5kbGVkIGJ5IEFzdGVyaXNrKT8KPgo+PiBIb3cgY2FuIEkgc29sdmUgdGhhdD8KPj4K
Pj4gUmVnYXJkcywKPj4gRWR1YXJkbyBIb2VmZWwKPj4KPiBGcmVkaWFubwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
