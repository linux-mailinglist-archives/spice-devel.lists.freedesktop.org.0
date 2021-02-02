Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE01730C1B2
	for <lists+spice-devel@lfdr.de>; Tue,  2 Feb 2021 15:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638BB6E183;
	Tue,  2 Feb 2021 14:32:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD19B6E183
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Feb 2021 14:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612276360;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ovTuAPWUp8cpDyllcX4ifvXegpSuOhsUb8lPudIXQxk=;
 b=ag2gcUWpdm2FLjvRXQeREX9Qu+cEeJYXo0gYkeydmImEfN6vMsc0bliAwNkDHP36OjrASc
 WMlcEGbNrsSOyJXHou1uDWp2xERyIRGvH/BUoQJfFEHAe6R3oC0PMbnZKjmecvKbdZusdk
 gwhnJ68LwUGYtU3FuNixrsgaHUU8FD8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-527-r2zqwA5vOjy6dVabnFaRHQ-1; Tue, 02 Feb 2021 09:32:36 -0500
X-MC-Unique: r2zqwA5vOjy6dVabnFaRHQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 453DE80363C;
 Tue,  2 Feb 2021 14:32:35 +0000 (UTC)
Received: from [10.35.206.215] (unknown [10.35.206.215])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 13F4360C9A;
 Tue,  2 Feb 2021 14:32:33 +0000 (UTC)
To: lx <lxlenovostar@gmail.com>
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
 <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
 <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
 <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <b8defe56-5bb6-de64-169f-7be47db71599@redhat.com>
Date: Tue, 2 Feb 2021 16:32:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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

T24gMi8yLzIxIDI6NTAgUE0sIGx4IHdyb3RlOgo+IAo+IAo+IFVyaSBMdWJsaW4gPHVyaWxAcmVk
aGF0LmNvbSA8bWFpbHRvOnVyaWxAcmVkaGF0LmNvbT4+IOS6jjIwMjHlubQx5pyIMzHml6Xlkagg
Cj4g5pelIOS4i+WNiDk6NDjlhpnpgZPvvJoKPiAKPiAgICAgT24gMS8zMC8yMSAxOjI1IFBNLCBs
eCB3cm90ZToKPiAgICAgID4gRnJlZGlhbm8gWmlnbGlvIDxmcmVkZHk3N0BnbWFpbC5jb20gPG1h
aWx0bzpmcmVkZHk3N0BnbWFpbC5jb20+Pgo+ICAgICDkuo4yMDIx5bm0MeaciDI55pel5ZGo5LqU
IOS4i+WNiDY6MznlhpnpgZPvvJoKPiAgICAgID4KPiAgICAgID4+IElsIGdpb3JubyBnaW8gMjgg
Z2VuIDIwMjEgYWxsZSBvcmUgMDE6NDUgbHgKPiAgICAgPGx4bGVub3Zvc3RhckBnbWFpbC5jb20g
PG1haWx0bzpseGxlbm92b3N0YXJAZ21haWwuY29tPj4gaGEKPiAgICAgID4+IHNjcml0dG86Cj4g
ICAgICA+Pj4KPiAgICAgID4+Pgo+ICAgICAgPj4+IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNv
bSA8bWFpbHRvOnVyaWxAcmVkaGF0LmNvbT4+IOS6jjIwMjHlubQxCj4gICAgIOaciDI35pel5ZGo
5LiJIOS4i+WNiDExOjQ35YaZ6YGT77yaCj4gICAgICA+Pj4+Cj4gICAgICA+Pj4+IE9uIDEvMjcv
MjEgNDoyMiBBTSwgbHggd3JvdGU6Cj4gICAgICA+Pj4+PiBIaSBhbGw6Cj4gICAgICA+Pj4+PsKg
IMKgIMKgIMKgIMKgIElmIEkgcmVkaXJlY3QgVVNCIGNhbWVyYSB0byB2aXJ0dWFsIG1hY2hpbmUs
IEkgdGhpbmsKPiAgICAgd2Ugc2VuZAo+ICAgICAgPj4+Pj4gb3JpZ2luYWwgVVJCIHRvIHZpcnR1
YWwgbWFjaGluZSBieSBVU0IgY2hhbm5lbC4KPiAgICAgID4+Pj4+IElzIHRoaXMgdW5kZXJzdGFu
ZGluZyBjb3JyZWN0PyBJZiB3ZSB3YW50IHRvIGltcHJvdmUgdGhlIHVzZXIKPiAgICAgID4+IGV4
cGVyaWVuY2UsCj4gICAgICA+Pj4+PiB3ZSBuZWVkIHRvIGNvbXByZXNzIFVSQiBkYXRhPwo+ICAg
ICAgPj4+Pgo+ICAgICAgPj4+PiBIaSwKPiAgICAgID4+Pj4KPiAgICAgID4+Pj4gSWYgeW91IGJ1
aWxkIHdpdGggbHo0IGVuYWJsZWQgKGJvdGggY2xpZW50IGFuZCBzZXJ2ZXIpLAo+ICAgICAgPj4+
PiB0aGVuIGl0IHNob3VsZCB1c2UgbHo0IHRvIGNvbXByZXNzIHRoZSBkYXRhLgo+ICAgICAgPj4+
Pgo+ICAgICAgPj4+PiBUaGVyZSBpcyBubyBmdW5jdGlvbmFsaXR5IHRvIGNyZWF0ZQo+ICAgICAg
Pj4+PiBhIHZpZGVvIHN0cmVhbSBvdXQgb2YgcmF3IGRhdGEuCj4gICAgICA+Pj4+Cj4gICAgICA+
Pj4+IENhbiB0aGUgVVNCIGNhbWVyYSBiZSBjb25maWd1cmVkIHRvIHNlbmQgYSBjb21wcmVzcyBz
dHJlYW0/Cj4gICAgICA+Pj4+Cj4gICAgICA+Pj4+IFVyaS4KPiAgICAgID4+Pj4KPiAgICAgID4+
Pgo+ICAgICAgPj4+wqAgwqAgSGk6Cj4gICAgICA+Pj7CoCDCoCDCoFVTQiBjYW1lcmEgY2FuIHN1
cHBvcnQgTUpQRyBhbmQgWVVWLsKgIMKgSSB0aGluayBIMjY0IGlzCj4gICAgIGJldHRlciB0aGFu
Cj4gICAgICA+PiBNSlBHLiBTbyBDYW4gd2UKPiAgICAgID4+PiBsZXQgc3BpY2Ugc3VwcG9ydCBI
MjY0ID8gSXMgdGhpcyBmZWFzaWJsZT8KPiAgICAgID4+Pgo+ICAgICAgPj4KPiAgICAgID4+IFRo
aXMgaXMgaW5kZXBlbmRlbnQgZnJvbSBTUElDRSwgaWYgdGhlIGNhbWVyYSBzZW5kIGNvbXByZXNz
ZWQgZGF0YQo+ICAgICAgPj4gYWxyZWFkeSBTUElDRSB3aWxsIGp1c3QKPiAgICAgID4+IGZvcndh
cmQgY29tcHJlc3NlZCBkYXRhIGluIHdoYXRldmVyIGZvcm1hdCBpcyBpbiBVU0IuCj4gICAgICA+
PiBJZiB0aGUgY2FtZXJhIHN1cHBvcnRzIE1KUEVHIGFuZCBZVVYgY2hvb3NlIE1KUEVHLCBZVVYg
aXMgbm90Cj4gICAgICA+PiBjb21wcmVzc2VkIChqdXN0IGEgZGlmZmVyZW50IGNvbG9yCj4gICAg
ICA+PiBzcGFjZSB0aGFuIFJHQiwgb2Z0ZW4gdGFraW5nIGxlc3MgYml0cyBidXQgc3RpbGwgbm90
IGNvbXByZXNzZWQpLgo+ICAgICAgPj4KPiAgICAgID4+IEZyZWRpYW5vCj4gICAgICA+Pgo+ICAg
ICAgPgo+ICAgICAgPiBJZiB0aGUgY2FtZXJhIGNob29zZXMgWVVWLCBjYW4gd2UgZW5jb2RlIGl0
IHRvIEgyNjQgaW4gU1BJQ0U/IElzIHRoaXMKPiAgICAgID4gZmVhc2libGU/Cj4gCj4gICAgIEN1
cnJlbnRseSwgU1BJQ0UgZG9lcyBub3QgZG8gbG9vayBhdCBVU0IgZGF0YS4KPiAKPiAKPiBIaToK
PiAKPiBXaGF0IGRvIHlvdSBtZWFuIHNwaWNlIGp1c3QgZm9yd2FyZCBVU0IgcHJvdG9jb2wgZGF0
YT8KClNQSUNFIGRvZXMgbG9vayBhdCBVU0IgaGVhZGVycywgY29uZmlndXJhdGlvbnMsIGV0Yy4K
CkkgbWVhbnQgdGhhdCBTUElDRSBkb2VzIG5vdCBsb29rIGF0IGRhdGEgdGhhdCBpcwpiZWluZyB0
cmFuc2ZlcnJlZC4gU28gZm9yIGV4YW1wbGUsIGl0IGRvZXMKbm90IGtub3cgaWYgdGhlIGRhdGEg
Y29taW5nIGZyb20gdGhlIGNhbWVyYSBpcyBZVVYsClJHQiwgTUpQRUcgb3Igb3RoZXIuCgpUbyBh
bnN3ZXIgeW91ciBxdWVzdGlvbiBhYm92ZSBtb3JlIGNsZWFybHk6CkN1cnJlbnRseSBpdCdzIG5v
dCBwb3NzaWJsZSB0byBIMjY0LWVuY29kZSB0aGUKWVVWIGRhdGEgY29taW5nIGZyb20gdGhlIGNh
bWVyYS4KSXQgaXMgZmVhc2libGUgdG8gYWRkIGNvZGUgdGhhdCBkb2VzIGl0LgpJZiBwb3NzaWJs
ZSwgaXQncyBiZXN0IGlmIHRoZSBjYW1lcmEgc2VuZHMgYW4gZW5jb2RlZCB2aWRlbyBzdHJlYW0u
CgpVcmkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWwK
