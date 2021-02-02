Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED51530C11A
	for <lists+spice-devel@lfdr.de>; Tue,  2 Feb 2021 15:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD5989AC6;
	Tue,  2 Feb 2021 14:14:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F4F789AC6
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Feb 2021 14:14:46 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id a16so911191plh.8
 for <spice-devel@lists.freedesktop.org>; Tue, 02 Feb 2021 06:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MuvvHQtWMYnWmVxs7iUrf+wXQSfEZ90NOXoBmSR+srg=;
 b=X/FA2jm8+vFAVSRNFP2loUbF0yK0tcjId0T8PY51W47N5IbtnQMwh2Rq00oKpZw8io
 hcwIKOArQ31kQirNGjNvYGuX1oJSmeInPhnGmnJSeyDkaD6jQMwVXHIEygHh9iTSR/xy
 OFP0ZlyLJIUqW1rCKROLY2M71b5XeMIOcl3EJ7vWJyr3B+BUyDe9MG9l55UjPaTQPwD8
 TrpTiB7ydIKeeUywf040jIsNAbPfs1+NG8hoX5IFp+UtmtIeg96roYQmbCCw0yn5Pvee
 g0rIzxOv5+h2iCDCNFBeKOrPyDPwen80dkSu1WqFA7Kly3roMZLshFRlmlY5xoGzVV5b
 OYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MuvvHQtWMYnWmVxs7iUrf+wXQSfEZ90NOXoBmSR+srg=;
 b=B1EF56i6Pc2EMQOp2JD3C0vzp3gay6EPJHQgrfDmI3bxSd5eBIadyLploQCJaW5kz4
 v8M3FOP01uSJ2QIYqWFL4wAikIamFhkD1H2nYonYVVEtq02Fwktx+2K+PBHG6sdWo4nV
 IO3/59olECTmSMlSkOYblKuXdikqzxwZRNAmDnNJs6LPeTsGnNmsfIHSNNg3ZjzuHygn
 Bg3wlLljTMam8mV2BbcFJzTVRbKLj3ah6+3OThOvtxngYrmnEkFwl31nmXrbeYu6u7pc
 4BMct4g5n6vZUHatEZoU8L3lQyciucEUJhHCZBTbBoVigtANJUINfhjCLkPUqawkYJXK
 Z3Mw==
X-Gm-Message-State: AOAM5334jBNouDz7rTzZcmWKjL0mGMydkgbZG8DIoWzjg7FvWxJBa6Af
 Fl9CD+Qdm9DNxP8p4ZGQN1VjExxhcMNQg2UlH8k=
X-Google-Smtp-Source: ABdhPJzfSwpEI+I8QFOgI/gad7vDMp9qXQT93pok9s9kb9+l2FoGlLwq68stVAZiD5ntjg7G4lbcP82Nyw9CcwBlbvc=
X-Received: by 2002:a17:90a:fd0f:: with SMTP id
 cv15mr4732211pjb.36.1612275285865; 
 Tue, 02 Feb 2021 06:14:45 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
 <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
 <CA+5jrfkzL3sGE0g+06aNEKYug2Dfa2njG3WjmVMK6WPJUedTxQ@mail.gmail.com>
 <c2bb34de-0c44-ed62-6712-140c138e0286@redhat.com>
 <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
In-Reply-To: <CA+5jrf=8Y1P2rK+LHfkvJC-kBpDjGTgf3TbWa7wcEcyiuRDUAQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 2 Feb 2021 14:14:34 +0000
Message-ID: <CAHt6W4faV3crGTjSVCmjDAYK74ZdzfAtCeiPkf5xQW4KLgTYfQ@mail.gmail.com>
To: lx <lxlenovostar@gmail.com>
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SWwgZ2lvcm5vIG1hciAyIGZlYiAyMDIxIGFsbGUgb3JlIDEyOjUxIGx4IDxseGxlbm92b3N0YXJA
Z21haWwuY29tPiBoYSBzY3JpdHRvOgo+Cj4KPgo+IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNv
bT4g5LqOMjAyMeW5tDHmnIgzMeaXpeWRqOaXpSDkuIvljYg5OjQ45YaZ6YGT77yaCj4+Cj4+IE9u
IDEvMzAvMjEgMToyNSBQTSwgbHggd3JvdGU6Cj4+ID4gRnJlZGlhbm8gWmlnbGlvIDxmcmVkZHk3
N0BnbWFpbC5jb20+IOS6jjIwMjHlubQx5pyIMjnml6XlkajkupQg5LiL5Y2INjozOeWGmemBk++8
mgo+PiA+Cj4+ID4+IElsIGdpb3JubyBnaW8gMjggZ2VuIDIwMjEgYWxsZSBvcmUgMDE6NDUgbHgg
PGx4bGVub3Zvc3RhckBnbWFpbC5jb20+IGhhCj4+ID4+IHNjcml0dG86Cj4+ID4+Pgo+PiA+Pj4K
Pj4gPj4+IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4g5LqOMjAyMeW5tDHmnIgyN+aXpeWR
qOS4iSDkuIvljYgxMTo0N+WGmemBk++8mgo+PiA+Pj4+Cj4+ID4+Pj4gT24gMS8yNy8yMSA0OjIy
IEFNLCBseCB3cm90ZToKPj4gPj4+Pj4gSGkgYWxsOgo+PiA+Pj4+PiAgICAgICAgICBJZiBJIHJl
ZGlyZWN0IFVTQiBjYW1lcmEgdG8gdmlydHVhbCBtYWNoaW5lLCBJIHRoaW5rIHdlIHNlbmQKPj4g
Pj4+Pj4gb3JpZ2luYWwgVVJCIHRvIHZpcnR1YWwgbWFjaGluZSBieSBVU0IgY2hhbm5lbC4KPj4g
Pj4+Pj4gSXMgdGhpcyB1bmRlcnN0YW5kaW5nIGNvcnJlY3Q/IElmIHdlIHdhbnQgdG8gaW1wcm92
ZSB0aGUgdXNlcgo+PiA+PiBleHBlcmllbmNlLAo+PiA+Pj4+PiB3ZSBuZWVkIHRvIGNvbXByZXNz
IFVSQiBkYXRhPwo+PiA+Pj4+Cj4+ID4+Pj4gSGksCj4+ID4+Pj4KPj4gPj4+PiBJZiB5b3UgYnVp
bGQgd2l0aCBsejQgZW5hYmxlZCAoYm90aCBjbGllbnQgYW5kIHNlcnZlciksCj4+ID4+Pj4gdGhl
biBpdCBzaG91bGQgdXNlIGx6NCB0byBjb21wcmVzcyB0aGUgZGF0YS4KPj4gPj4+Pgo+PiA+Pj4+
IFRoZXJlIGlzIG5vIGZ1bmN0aW9uYWxpdHkgdG8gY3JlYXRlCj4+ID4+Pj4gYSB2aWRlbyBzdHJl
YW0gb3V0IG9mIHJhdyBkYXRhLgo+PiA+Pj4+Cj4+ID4+Pj4gQ2FuIHRoZSBVU0IgY2FtZXJhIGJl
IGNvbmZpZ3VyZWQgdG8gc2VuZCBhIGNvbXByZXNzIHN0cmVhbT8KPj4gPj4+Pgo+PiA+Pj4+IFVy
aS4KPj4gPj4+Pgo+PiA+Pj4KPj4gPj4+ICAgIEhpOgo+PiA+Pj4gICAgIFVTQiBjYW1lcmEgY2Fu
IHN1cHBvcnQgTUpQRyBhbmQgWVVWLiAgIEkgdGhpbmsgSDI2NCBpcyBiZXR0ZXIgdGhhbgo+PiA+
PiBNSlBHLiBTbyBDYW4gd2UKPj4gPj4+IGxldCBzcGljZSBzdXBwb3J0IEgyNjQgPyBJcyB0aGlz
IGZlYXNpYmxlPwo+PiA+Pj4KPj4gPj4KPj4gPj4gVGhpcyBpcyBpbmRlcGVuZGVudCBmcm9tIFNQ
SUNFLCBpZiB0aGUgY2FtZXJhIHNlbmQgY29tcHJlc3NlZCBkYXRhCj4+ID4+IGFscmVhZHkgU1BJ
Q0Ugd2lsbCBqdXN0Cj4+ID4+IGZvcndhcmQgY29tcHJlc3NlZCBkYXRhIGluIHdoYXRldmVyIGZv
cm1hdCBpcyBpbiBVU0IuCj4+ID4+IElmIHRoZSBjYW1lcmEgc3VwcG9ydHMgTUpQRUcgYW5kIFlV
ViBjaG9vc2UgTUpQRUcsIFlVViBpcyBub3QKPj4gPj4gY29tcHJlc3NlZCAoanVzdCBhIGRpZmZl
cmVudCBjb2xvcgo+PiA+PiBzcGFjZSB0aGFuIFJHQiwgb2Z0ZW4gdGFraW5nIGxlc3MgYml0cyBi
dXQgc3RpbGwgbm90IGNvbXByZXNzZWQpLgo+PiA+Pgo+PiA+PiBGcmVkaWFubwo+PiA+Pgo+PiA+
Cj4+ID4gSWYgdGhlIGNhbWVyYSBjaG9vc2VzIFlVViwgY2FuIHdlIGVuY29kZSBpdCB0byBIMjY0
IGluIFNQSUNFPyBJcyB0aGlzCj4+ID4gZmVhc2libGU/Cj4+Cj4+IEN1cnJlbnRseSwgU1BJQ0Ug
ZG9lcyBub3QgZG8gbG9vayBhdCBVU0IgZGF0YS4KPgo+Cj4gSGk6Cj4KPiBXaGF0IGRvIHlvdSBt
ZWFuIHNwaWNlIGp1c3QgZm9yd2FyZCBVU0IgcHJvdG9jb2wgZGF0YT8KPgo+IFRoYW5rIHlvdQo+
CgpXZSB0YWtlIGRhdGEgZnJvbSBVU0IgcHJvdG9jb2wsIGVuY2Fwc3VsYXRlLCBzZW5kIHRvIHRo
ZSBvdGhlciBzaWRlLApkZWNhcHN1bGF0ZSBhbmQgc2VuZCB0byAocmVtb3RlKSBVU0IuCgpJbiB0
aGlzIGNhc2UgSSB0aGluayBpdCB3b3VsZCBiZSBiYWQgdG8gZ2V0IGJvdW5kIHRvIGEgc3BlY2lm
aWMgVVNCCnByb3RvY29sIChJIGRvbid0IHRoaW5rIGNhbWVyYSBwcm90b2NvbCBpcyBzdGFuZGFy
ZCBsaWtlIG1vdXNlLAprZXlib2FyZCBhbmQgYmFzZSBzdG9yYWdlKSB0byBhZGQgZW5jb2Rpbmcu
Ck1heWJlIGl0IHdvdWxkIGJlIHdvcnRoIChidXQgaXMgbm90IGltcGxlbWVudGVkIG9yIHBsYW5u
ZWQpIHRvIHVzZSBPUwphY2Nlc3MgdG8gY2FtZXJhIGFuZCBlbXVsYXRlIGEgbW9yZSBwb3dlcmZ1
bCBjYW1lcmEgcHJvdG9jb2wgdG8gYWRkCnRoZSBlbmNvZGluZywgYnV0IHRoYXQncyBub3QgZWFz
eSBqb2IuCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWwK
