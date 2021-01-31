Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 623F2309C69
	for <lists+spice-devel@lfdr.de>; Sun, 31 Jan 2021 14:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664C36E091;
	Sun, 31 Jan 2021 13:48:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35896E091
 for <spice-devel@lists.freedesktop.org>; Sun, 31 Jan 2021 13:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612100922;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V5cLAVNDM68CfyB2S1J1j159aw4Qxs3HuOD8R/lBOuk=;
 b=X27oy7S+jTWbyZbouDQPR4h6bKsLhZgTpKou7MpI7Kj9e/Cu5c9/eMMpuPDkiPA2rgLPuS
 yEytRomLr+rAcH7FdGm6kCvioAt8Ya0Yad3O6zW4gyTdMcpnvOPJhdLefJ5qxzRr5XztbG
 lEUFgW2xHkQGGVhyEkxpNm2sLOv+x9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-577-eAeEPGzwNHq4Iw-cEoPM6Q-1; Sun, 31 Jan 2021 08:48:40 -0500
X-MC-Unique: eAeEPGzwNHq4Iw-cEoPM6Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D22CF1842141;
 Sun, 31 Jan 2021 13:48:38 +0000 (UTC)
Received: from [10.35.206.117] (unknown [10.35.206.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 95BEA60D43;
 Sun, 31 Jan 2021 13:48:37 +0000 (UTC)
To: lx <lxlenovostar@gmail.com>
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
 <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
Date: Sun, 31 Jan 2021 15:48:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Spice-devel] Is the data after USB camera redirection
 compressed?
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Reply-To: uril@redhat.com
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMS8zMC8yMSAxOjI1IFBNLCBseCB3cm90ZToKPiBGcmVkaWFubyBaaWdsaW8gPGZyZWRkeTc3
QGdtYWlsLmNvbT4g5LqOMjAyMeW5tDHmnIgyOeaXpeWRqOS6lCDkuIvljYg2OjM55YaZ6YGT77ya
Cj4gCj4+IElsIGdpb3JubyBnaW8gMjggZ2VuIDIwMjEgYWxsZSBvcmUgMDE6NDUgbHggPGx4bGVu
b3Zvc3RhckBnbWFpbC5jb20+IGhhCj4+IHNjcml0dG86Cj4+Pgo+Pj4KPj4+IFVyaSBMdWJsaW4g
PHVyaWxAcmVkaGF0LmNvbT4g5LqOMjAyMeW5tDHmnIgyN+aXpeWRqOS4iSDkuIvljYgxMTo0N+WG
memBk++8mgo+Pj4+Cj4+Pj4gT24gMS8yNy8yMSA0OjIyIEFNLCBseCB3cm90ZToKPj4+Pj4gSGkg
YWxsOgo+Pj4+PiAgICAgICAgICBJZiBJIHJlZGlyZWN0IFVTQiBjYW1lcmEgdG8gdmlydHVhbCBt
YWNoaW5lLCBJIHRoaW5rIHdlIHNlbmQKPj4+Pj4gb3JpZ2luYWwgVVJCIHRvIHZpcnR1YWwgbWFj
aGluZSBieSBVU0IgY2hhbm5lbC4KPj4+Pj4gSXMgdGhpcyB1bmRlcnN0YW5kaW5nIGNvcnJlY3Q/
IElmIHdlIHdhbnQgdG8gaW1wcm92ZSB0aGUgdXNlcgo+PiBleHBlcmllbmNlLAo+Pj4+PiB3ZSBu
ZWVkIHRvIGNvbXByZXNzIFVSQiBkYXRhPwo+Pj4+Cj4+Pj4gSGksCj4+Pj4KPj4+PiBJZiB5b3Ug
YnVpbGQgd2l0aCBsejQgZW5hYmxlZCAoYm90aCBjbGllbnQgYW5kIHNlcnZlciksCj4+Pj4gdGhl
biBpdCBzaG91bGQgdXNlIGx6NCB0byBjb21wcmVzcyB0aGUgZGF0YS4KPj4+Pgo+Pj4+IFRoZXJl
IGlzIG5vIGZ1bmN0aW9uYWxpdHkgdG8gY3JlYXRlCj4+Pj4gYSB2aWRlbyBzdHJlYW0gb3V0IG9m
IHJhdyBkYXRhLgo+Pj4+Cj4+Pj4gQ2FuIHRoZSBVU0IgY2FtZXJhIGJlIGNvbmZpZ3VyZWQgdG8g
c2VuZCBhIGNvbXByZXNzIHN0cmVhbT8KPj4+Pgo+Pj4+IFVyaS4KPj4+Pgo+Pj4KPj4+ICAgIEhp
Ogo+Pj4gICAgIFVTQiBjYW1lcmEgY2FuIHN1cHBvcnQgTUpQRyBhbmQgWVVWLiAgIEkgdGhpbmsg
SDI2NCBpcyBiZXR0ZXIgdGhhbgo+PiBNSlBHLiBTbyBDYW4gd2UKPj4+IGxldCBzcGljZSBzdXBw
b3J0IEgyNjQgPyBJcyB0aGlzIGZlYXNpYmxlPwo+Pj4KPj4KPj4gVGhpcyBpcyBpbmRlcGVuZGVu
dCBmcm9tIFNQSUNFLCBpZiB0aGUgY2FtZXJhIHNlbmQgY29tcHJlc3NlZCBkYXRhCj4+IGFscmVh
ZHkgU1BJQ0Ugd2lsbCBqdXN0Cj4+IGZvcndhcmQgY29tcHJlc3NlZCBkYXRhIGluIHdoYXRldmVy
IGZvcm1hdCBpcyBpbiBVU0IuCj4+IElmIHRoZSBjYW1lcmEgc3VwcG9ydHMgTUpQRUcgYW5kIFlV
ViBjaG9vc2UgTUpQRUcsIFlVViBpcyBub3QKPj4gY29tcHJlc3NlZCAoanVzdCBhIGRpZmZlcmVu
dCBjb2xvcgo+PiBzcGFjZSB0aGFuIFJHQiwgb2Z0ZW4gdGFraW5nIGxlc3MgYml0cyBidXQgc3Rp
bGwgbm90IGNvbXByZXNzZWQpLgo+Pgo+PiBGcmVkaWFubwo+Pgo+IAo+IElmIHRoZSBjYW1lcmEg
Y2hvb3NlcyBZVVYsIGNhbiB3ZSBlbmNvZGUgaXQgdG8gSDI2NCBpbiBTUElDRT8gSXMgdGhpcwo+
IGZlYXNpYmxlPwoKQ3VycmVudGx5LCBTUElDRSBkb2VzIG5vdCBkbyBsb29rIGF0IFVTQiBkYXRh
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
