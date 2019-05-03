Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E0712F5A
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 15:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2B86E79A;
	Fri,  3 May 2019 13:38:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDB2B6E79A
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 13:38:11 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id o4so7958728wra.3
 for <spice-devel@lists.freedesktop.org>; Fri, 03 May 2019 06:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=RzjmsNB5qaoP/vW4caNWnyJFlVgYEFdJAirWRpwlHPo=;
 b=LShVfhxet4JdOfSEtyGQLsaPW8CYG5+7rH0HDHiS3sV1VWqqzirzbRRquadkwoK2qo
 FhZwZ03tg97S0HblnbOMUhwiY0Jv62A1rIufdROPlY88ql2NfJh0OP/o1QSx/pUzFOKS
 EnmONF7B8dlxaVrqyhTIQKwPFjtVjkMPsqeSnfVCDaF9KLle9fqnCMrTIQ2ivQdHuCux
 xP35Bs1Wsr0xD40XjRa928MvX5xJXRyLi2t8gMo/GSaD1NdsUTXo2bW2ppba4hrv5YUL
 HaA3Pfmw4H/LIleW92HgaDCsZa3uDwqufxTetvsJIR4P5aBdx0gztc7DlADFYfKrmAVZ
 2EUQ==
X-Gm-Message-State: APjAAAVHoYxlh16E9AMl44BpTF1C1l093tAL8hyvBnT8xVOHl6M/+9sQ
 bTdL2NUh8Jb1+iD4xydSfNC0gw==
X-Google-Smtp-Source: APXvYqzCjXRWpgs7uW+S8aBxQLwLspqajiHKAsyzdDEEsACGAEwUZpC5xQTaNutKP9OokewJhA5Bdg==
X-Received: by 2002:a5d:51cf:: with SMTP id n15mr6734313wrv.104.1556890690343; 
 Fri, 03 May 2019 06:38:10 -0700 (PDT)
Received: from [192.168.77.22] (val06-1-88-182-161-34.fbx.proxad.net.
 [88.182.161.34])
 by smtp.gmail.com with ESMTPSA id z9sm2580784wma.39.2019.05.03.06.38.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 06:38:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
From: Christophe de Dinechin <dinechin@redhat.com>
In-Reply-To: <20190503133142.GG17905@redhat.com>
Date: Fri, 3 May 2019 15:38:07 +0200
Message-Id: <D2FB2C77-6943-49F1-A621-2B8A7056EEED@redhat.com>
References: <ED7F853E-C347-49BC-A50B-CEB1ABECDE3B@redhat.com>
 <20190503133142.GG17905@redhat.com>
To: =?utf-8?B?IkRhbmllbCBQLiBCZXJyYW5nw6ki?= <berrange@redhat.com>
X-Mailer: Apple Mail (2.3445.104.8)
Subject: Re: [Spice-devel] LGPL or GPL for recorder library
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Cgo+IE9uIDMgTWF5IDIwMTksIGF0IDE1OjMxLCBEYW5pZWwgUC4gQmVycmFuZ8OpIDxiZXJyYW5n
ZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBPbiBGcmksIE1heSAwMywgMjAxOSBhdCAwMzoyMTow
OVBNICswMjAwLCBDaHJpc3RvcGhlIGRlIERpbmVjaGluIHdyb3RlOgo+PiBIaSBGcmVkaWFubywK
Pj4gCj4+IAo+PiBXZSBkaXNjdXNzZWQgR1BMIHZzIExHUEwgZm9yIHRoZSByZWNvcmRlciBsaWJy
YXJ5Lgo+PiAKPj4gSSBtYWRlIGEgbWlzdGFrZSBpbiBjb21taXQgZTdkZjEwNDExNzZlZGE4OGFl
YTYxMDJkMWM0ZWNkOWYxNDQzMjFhNiBvZgo+PiB0aGUgcmVjb3JkZXIgbGlicmFyeSB0cnlpbmcg
dG8g4oCccmVub3JtYWxpemXigJ0gdGhlIGhlYWRlcnMgYmVmb3JlIHN1Ym1pdHRpbmcKPj4gdGhl
IEZlZG9yYSBwYWNrYWdlICh0aGUg4oCcbm9ybeKAnSBiZWluZyB0aGF0IGVhY2ggZmlsZSBzaG91
bGQgY29udGFpbiB0aGUKPj4gbGljZW5zZSBibHVyYikuIFRoZSBzY3JpcHQgSSBhcHBsaWVkIHB1
dCBhIEdQTCBsaWNlbnNlIGJsdXJiIG9uIGVhY2ggZmlsZSwKPj4gbm90IExHUEwuIEkgYmVsaWV2
ZSBvdXIgYWdyZWVtZW50IHdhcyB0byBzdGljayB0byBMR1BMIGluIG9yZGVyIHRvCj4+IGZhY2ls
aXRhdGUgdGhlIGludGVncmF0aW9uIGluIFNQSUNFLgo+PiAKPj4gU28gZmlyc3QsIHRoaXMgZW1h
aWwgaXMgYSBwdWJsaWMgcmVjb3JkIHRoYXQgdGhpcyBpcyBhIG1pc3Rha2Ugb24gbXkgcGFydCwK
Pj4gdGhhdCB0aGUgaW50ZW50IGlzIGFuZCByZW1haW4gdG8gaGF2ZSBhIGxpY2Vuc2UgdGhhdCBt
YWtlcyBpdCBwb3NzaWJsZSB0bwo+PiBpbnRlZ3JhdGUgaW4gU1BJQ0UsIGFuZCB0aGF0IGlmIEdQ
TCBtYWtlcyB0aGlzIGltcG9zc2libGUsIHRoZSBsaWJyYXJ5Cj4+IHdpbGwgYmUgcmV2ZXJ0ZWQg
dG8gTEdQTCBBU0FQLgo+PiAKPj4gU2Vjb25kLCBJIHZhZ3VlbHkgcmVtZW1iZXIgdGhlcmUgd2Fz
IGFuIG9iamVjdGlvbiB0byBzb21lIHZhcmlhbnQgb2YgTEdQTAo+PiAodjIgb3IgdjMpLiBUaGUg
cHJpbWFyeSBsaWNlbnNlIHRleHQgZm9yIHRoZSByZWNvcmRlciBsaWJyYXJ5IGlzIGN1cnJlbnRs
eQo+PiBMR1BMdjMuIENhbiB5b3UgcGxlYXNlIGNvbmZpcm0gdGhhdCBMR1BMdjMgd29ya3MgZm9y
IFNQSUNFPwo+IAo+IERvIHlvdSBMR1BMdjMtb25seSBvciBMR1BMdjMtb3ItbGF0ZXIgPwoKUmln
aHQgbm93LCBpdOKAmXMgTEdQTHYzLW9yLWxhdGVyCgo+IAo+IFRoZSByZXN0IG9mIHRoZSBTUElD
RSBnaXQgcmVwb3MgYXJlIExHUEx2Mi1vci1sYXRlciBsaWNlbnNlZC4gVGh1cyB1c2luZwo+IGFu
eSBMR1BMdjMgbGljZW5zZSB3aWxsIHByZXZlbnQgc2hhcmluZyBvciBtb3ZlbWVudCBvZiBjb2Rl
IGZyb20gc3BpY2UKPiByZWNvcmRlciBpbnRvIGFueSBvZiB0aGUgb3RoZXIgc3BpY2UgbGlicmFy
aWVzLCB3aXRob3V0IHRoZSBjb3B5cmlnaHQKPiBob2xkZXJzIGFncmVlaW5nIHRvIHJlbGljZW5z
ZSBpdCB0byBMR1BMdjItb3ItbGF0ZXIuCj4gCj4gTEdQTHYzIHdpbGwgYWxzbyBwcmV2ZW50IHNw
aWNlIHJlY29yZGVyIGJlaW5nIHVzZWQgaW4gYW55IGFwcCB3aGljaCBoYXMKPiBHUEx2Mi1vbmx5
IGNvZGUuIFFFTVUgaXMgc3VjaCBhbiBhcHBsaWNhdGlvbiBmb3IgZXhhbXBsZS4KPiAKPiBMR1BM
djItb3ItbGF0ZXIgZmVlbHMgbGlrZSBhIG1vcmUgbmF0dXJhbCBjaG9pY2UgZm9yIGNvbnNpc3Rl
bmN5IHdpdGgKPiBleGlzdGluZyBzcGljZSBjb2RlICYgZ3JlYXRlciBhcHBsaWNhdGlvbiBsaWNl
bnNlIGNvbXBhdGliaWxpdHkuCgpPSy4gV2lsbCBkbyB0aGF0IHRoZW4uCgooRnJlZGlhbm8sIHlv
dSBhcmUgdGhlIG90aGVyIGNvcHlyaWdodCBob2xkZXIgb24gdGhpcyBjb2RlLCBzbyByYWlzZSB5
b3VyIHZvaWNlIG5vdyBpZiB5b3UgZGlzYWdyZWUpLgoKClRoYW5rcwpDaHJpc3RvcGhlCgo+IAo+
IFJlZ2FyZHMsCj4gRGFuaWVsCj4gLS0gCj4gfDogaHR0cHM6Ly9iZXJyYW5nZS5jb20gICAgICAt
by0gICAgaHR0cHM6Ly93d3cuZmxpY2tyLmNvbS9waG90b3MvZGJlcnJhbmdlIDp8Cj4gfDogaHR0
cHM6Ly9saWJ2aXJ0Lm9yZyAgICAgICAgIC1vLSAgICAgICAgICAgIGh0dHBzOi8vZnN0b3AxMzgu
YmVycmFuZ2UuY29tIDp8Cj4gfDogaHR0cHM6Ly9lbnRhbmdsZS1waG90by5vcmcgICAgLW8tICAg
IGh0dHBzOi8vd3d3Lmluc3RhZ3JhbS5jb20vZGJlcnJhbmdlIDp8Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
