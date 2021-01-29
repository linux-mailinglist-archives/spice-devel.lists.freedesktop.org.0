Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6BA3087E1
	for <lists+spice-devel@lfdr.de>; Fri, 29 Jan 2021 11:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258736EAC7;
	Fri, 29 Jan 2021 10:39:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD1D6EAC7
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jan 2021 10:39:40 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id g15so6149257pjd.2
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jan 2021 02:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/R8h4ijsQEffatLREV4pwTDCogCSwYLGtrth0Wb1ZsE=;
 b=eogdrPtWeu9o3tYz+nAVbbD21avl2GaE4FWdnhPE1+uWA0ImyOZOHoCznmG5o40pcz
 2dgIc1pckgxDuTFxYoKghEH6DKQnOHEoiGzHrbYHspg4LXZheakC000vIWZcjZFyyePT
 ZdOWjKn47fIofQx4SzWuoFYxrsg6CCsRiBs7251Imc41WDxf2YO1FUpgN621DzavG02Q
 euoPv0VxMHdRNrhfD3/lGTBPUkk+h3VsvstKTyODwHKG60DSiDOAx5uNd6H4rToQaBDl
 LmpYA5hQq8JwoE4tZ5X2lfjL1jL8qahYnsFP5pHTPekHEpqgjgK8fhS8dnBW6gXjx5P2
 aLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/R8h4ijsQEffatLREV4pwTDCogCSwYLGtrth0Wb1ZsE=;
 b=nBHz6EHS+9VvTk2B76ZKwbymF4HPVsN4vmvDMm94oJmxgIDk2Txuy3R4mx1++BGY9Q
 1YVSCfH049+G+5yv/Sip0Tc7U7LTZQhyEz3b7jjGWJDgecKESp7yQNeny+jlpdqltGe9
 sfmSDG2hj3JPPyOy5QDbMdOelEfkzyWtjvGu8ILPQnxQqqKAsa6/s3SLVQ3nUhdQLI/M
 0NBaDtkCVqIkj6VA3Cr/iAAiSHjaVQTg3nIaxiGgS2bM4rxXzwmSGL4GbvbZTHybKD41
 PJhyKrYeg9olN6aNRoXPhxsN9pz3dC2vsI9fHuIUInkdA1IIrvNX/t1pLJRITMji3Skb
 0fgg==
X-Gm-Message-State: AOAM533KY2fUQU4r9R8pZFjjw6S2/clNzGkC1TkenreXHxpOpyt582Vi
 z18TDdXu5p6GBkhkzGyV+5Cj6D339/SDYfiFw9Q=
X-Google-Smtp-Source: ABdhPJwiQFRY0TRJMlwbo1I/0h/clLz1ETyEgq6NJoPbQeqotjEjIhjfwf31WwDlzYPfTloNaKUNJxCe6HkB91r9/9U=
X-Received: by 2002:a17:902:d48f:b029:de:8c5b:656 with SMTP id
 c15-20020a170902d48fb02900de8c5b0656mr3656678plg.51.1611916779689; Fri, 29
 Jan 2021 02:39:39 -0800 (PST)
MIME-Version: 1.0
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
 <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
 <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
In-Reply-To: <CA+5jrfn5GHRLN2RUu=OSBz6fjVjXHVHHxLqhdezVzxTXb2NMLQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 29 Jan 2021 10:39:28 +0000
Message-ID: <CAHt6W4fZfzsh5QBejxBa1m35AKN6XmZ=L3-4OnMs5X+M6J1rMw@mail.gmail.com>
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

SWwgZ2lvcm5vIGdpbyAyOCBnZW4gMjAyMSBhbGxlIG9yZSAwMTo0NSBseCA8bHhsZW5vdm9zdGFy
QGdtYWlsLmNvbT4gaGEgc2NyaXR0bzoKPgo+Cj4gVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29t
PiDkuo4yMDIx5bm0MeaciDI35pel5ZGo5LiJIOS4i+WNiDExOjQ35YaZ6YGT77yaCj4+Cj4+IE9u
IDEvMjcvMjEgNDoyMiBBTSwgbHggd3JvdGU6Cj4+ID4gSGkgYWxsOgo+PiA+ICAgICAgICAgSWYg
SSByZWRpcmVjdCBVU0IgY2FtZXJhIHRvIHZpcnR1YWwgbWFjaGluZSwgSSB0aGluayB3ZSBzZW5k
Cj4+ID4gb3JpZ2luYWwgVVJCIHRvIHZpcnR1YWwgbWFjaGluZSBieSBVU0IgY2hhbm5lbC4KPj4g
PiBJcyB0aGlzIHVuZGVyc3RhbmRpbmcgY29ycmVjdD8gSWYgd2Ugd2FudCB0byBpbXByb3ZlIHRo
ZSB1c2VyIGV4cGVyaWVuY2UsCj4+ID4gd2UgbmVlZCB0byBjb21wcmVzcyBVUkIgZGF0YT8KPj4K
Pj4gSGksCj4+Cj4+IElmIHlvdSBidWlsZCB3aXRoIGx6NCBlbmFibGVkIChib3RoIGNsaWVudCBh
bmQgc2VydmVyKSwKPj4gdGhlbiBpdCBzaG91bGQgdXNlIGx6NCB0byBjb21wcmVzcyB0aGUgZGF0
YS4KPj4KPj4gVGhlcmUgaXMgbm8gZnVuY3Rpb25hbGl0eSB0byBjcmVhdGUKPj4gYSB2aWRlbyBz
dHJlYW0gb3V0IG9mIHJhdyBkYXRhLgo+Pgo+PiBDYW4gdGhlIFVTQiBjYW1lcmEgYmUgY29uZmln
dXJlZCB0byBzZW5kIGEgY29tcHJlc3Mgc3RyZWFtPwo+Pgo+PiBVcmkuCj4+Cj4KPiAgIEhpOgo+
ICAgIFVTQiBjYW1lcmEgY2FuIHN1cHBvcnQgTUpQRyBhbmQgWVVWLiAgIEkgdGhpbmsgSDI2NCBp
cyBiZXR0ZXIgdGhhbiBNSlBHLiBTbyBDYW4gd2UKPiBsZXQgc3BpY2Ugc3VwcG9ydCBIMjY0ID8g
SXMgdGhpcyBmZWFzaWJsZT8KPgoKVGhpcyBpcyBpbmRlcGVuZGVudCBmcm9tIFNQSUNFLCBpZiB0
aGUgY2FtZXJhIHNlbmQgY29tcHJlc3NlZCBkYXRhCmFscmVhZHkgU1BJQ0Ugd2lsbCBqdXN0CmZv
cndhcmQgY29tcHJlc3NlZCBkYXRhIGluIHdoYXRldmVyIGZvcm1hdCBpcyBpbiBVU0IuCklmIHRo
ZSBjYW1lcmEgc3VwcG9ydHMgTUpQRUcgYW5kIFlVViBjaG9vc2UgTUpQRUcsIFlVViBpcyBub3QK
Y29tcHJlc3NlZCAoanVzdCBhIGRpZmZlcmVudCBjb2xvcgpzcGFjZSB0aGFuIFJHQiwgb2Z0ZW4g
dGFraW5nIGxlc3MgYml0cyBidXQgc3RpbGwgbm90IGNvbXByZXNzZWQpLgoKRnJlZGlhbm8KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
