Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C5D9AF5C
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 14:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B347C6EC80;
	Fri, 23 Aug 2019 12:27:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DD66EC80
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 12:27:02 +0000 (UTC)
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0295B796FF
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 12:27:02 +0000 (UTC)
Received: by mail-oi1-f200.google.com with SMTP id s3so3396898oia.19
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 05:27:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XtrIA54G/bQUescpXmyqgL42lDyz2umvbN2nChu1yPk=;
 b=DTU0r3+kzOyloGknNEMWxq/YrhbfCewW9TA9ol7HX4aKX2wccsnEZORtfpfF1DwENX
 ANjw5KUhR/VGz29iefxeZAquAFI3QgXvsrd2FcP5yZtaySsK9LReSaVGXYV2B4LCaG6/
 uXloDdiclkXxHYg9zR1qg961lDTItvBvO5joL4vwqY8unYhGWoZ1fM8GPjMG2A+/V31I
 QiND8rVcIxAkXJHMzofuxMU6IijjKCU87gHn9uNVMTvJygwToiFQ3L04G8cwB5WR8RtX
 G+CqqrSNYCgD3pmkgtpVG/DSEpVDCp82e4xgSVmls2UU35mJbGNUmA+COmUe1XGkuMXc
 4a0Q==
X-Gm-Message-State: APjAAAURDWvZ9JEr+3R1YCJUfM7AUj6BWvRCY86k2sduFqzIOMfkuEQT
 d22YOZ9/zLZ5PW2Y5zypj70irPRt6YKKis4iATPkIs8cZP4S+AGj6wxGHkAvSFV/TLTabi+sGiE
 FsSe52jDnftQbN5kiradUViTDvElMQQ0Ab+9YqGAchcW6+wA=
X-Received: by 2002:a05:6830:1e38:: with SMTP id
 t24mr1596140otr.134.1566563221569; 
 Fri, 23 Aug 2019 05:27:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy4cGMATz2ZWpmcevz2wfLB16UIinRPUb8bF75wvk3dlN4Il3eqPyou1ClDpCpG/7NOr7N4UEKt5a8mmN1lVFA=
X-Received: by 2002:a05:6830:1e38:: with SMTP id
 t24mr1596130otr.134.1566563221371; 
 Fri, 23 Aug 2019 05:27:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190806153453.20616-1-kpouget@redhat.com>
 <20190806153453.20616-2-kpouget@redhat.com>
 <829772421.5808891.1565788131423.JavaMail.zimbra@redhat.com>
 <20190823093235.csb7wntefeh7ltwx@wingsuit>
In-Reply-To: <20190823093235.csb7wntefeh7ltwx@wingsuit>
From: Kevin Pouget <kpouget@redhat.com>
Date: Fri, 23 Aug 2019 14:26:50 +0200
Message-ID: <CADJ1XR1j=TCdmYgnVMmcOP8BtBq=dkJ0TW4bh=pazeBLRd4qnw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Subject: Re: [Spice-devel] [RFC spice-server 1/3] stream-channel: Add
 preferred video codec capability
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMTE6MzIgQU0gVmljdG9yIFRvc28gPHZpY3RvcnRvc29A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDA5
OjA4OjUxQU0gLTA0MDAsIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+ID4gKy8qIFJldHVybnMg
YW4gYXJyYXkgd2l0aCBTUElDRV9WSURFT19DT0RFQ19UWVBFX0VOVU1fRU5EIGVsZW1lbnRzLAo+
ID4gPiArICogd2l0aCB0aGUgY2xpZW50IHByZWZlcmVuY2Ugb3JkZXIgKGluZGV4KSBhcyB2YWx1
ZSAqLwo+ID4gPiArR0FycmF5Cj4gPiA+ICp2aWRlb19zdHJlYW1fcGFyc2VfcHJlZmVycmVkX2Nv
ZGVjcyhTcGljZU1zZ2NEaXNwbGF5UHJlZmVycmVkVmlkZW9Db2RlY1R5cGUKPiA+ID4gKm1zZykK
PiA+ID4gK3sKPiA+ID4gKyAgICBnaW50IGksIGxlbjsKPiA+Cj4gPiBnbm90IGdhIGdiaWcgZ2Z1
biBnb2YgZ2FsbCBndGhlc2UgZ2cgZ3N0cmluZ3MKPgo+IEhhaGEsIHlvdSBicm91Z2h0IHNvbWV0
aGluZyBsaWtlIHRoYXQgaW4gdGhlIHBhc3QgdG9vLiBXaGF0IGNhbgo+IHdlIGRvIGFib3V0IGl0
PyBJIGRvbid0IGV2ZW4gdGhpbmsgbXVjaCwgaWYgSSdtIHdvcmtpbmcgb24gY29kZQo+IHdpdGgg
Z2xpYi9nb2JqZWN0IEkgZy1wcmVmaXggdHlwZXMgdG9vLiBJIHdvdWxkIHNheSBpdCBtYWtlcwo+
IHNlbnNlIHdoZW4gaW50ZXJhY3Rpbmcgd2l0aCB0aGUgaXRzIGxpYnJhcmllcywgcmFuZG9tIGUu
ZzoKPgo+ICAgICBnbG9uZyBnX3V0Zjhfc3RybGVuIChjb25zdCBnY2hhciAqcCwgZ3NzaXplIG1h
eCk7Cj4KPiBJJ20gcmFpc2luZyB0aGlzIHF1ZXN0aW9uL2VtYWlsIHNvIHdlIGNhbiBpbXByb3Zl
IHRoaXMgc29tZWhvdwo+IChjaGVja3BhdGNoLnBsIGdpdC1ob29rcyBhbmQvb3IgY29kaW5nIHN0
eWxlIHN0YW5kYXJkcykgYW5kIG1ha2UKPiBpdCBjbGVhciBmb3IgY29udHJpYnV0b3JzL3Jldmll
d2VycyB3aXRob3V0IG11Y2ggdGltZSBsb3NzIGluCj4gZGlzY3Vzc2lvbi4KCiBIZWxsbywKCmZv
ciB0aGlzIHBhcnRpY3VsYXIgZnVuY3Rpb25zIChhbmQgb3ZlcmFsbCB0aGlzIHBhdGNoKSwgSSBk
aWRuJ3Qgd3JpdGUKYW55dGhpbmcgbmV3LCBldmVyeXRoaW5nIGlzIGNvcGllZCBvciBtb3ZlZCBm
cm9tIHRoZSBkaXNwbGF5LWNoYW5uZWwKcHJlZmVycmVkIGNvZGVjIGNvZGUsIHNvIHRoZXNlIGdp
bnRzIGFyZSBhbHJlYWR5IGluIHRoZSBjb2RlYmFzZSEKYnV0IGJlc2lkZXMgdGhhdCwgSSBhZ3Jl
ZSB0aGF0IGl0IHNob3VsZCBiZSB1c2VkIG9ubHkgdG8gaW50ZXJhY3Qgd2l0aApnbGliIGZ1bmN0
aW9ucywgd2hpY2ggaXMgbm90IHRoZSBjYXNlIGZvciB0aGlzIGdpbnQgaSwgYW5kIGEgZmV3Cm90
aGVycyBpbiB0aGlzIGZ1bmN0aW9uISBhZnRlciBhIHF1aWNrIGdsYW5jZSwgSSB0aGluayBtdWx0
aXBsZSBnKgp0eXBlcyBhcmUgd3JvbmdseSB1c2VkOyBJJ2xsIGZpeCB0aGF0IHdoZW4gSSdsbCB1
cGRhdGUgdGhlIHBhdGNoLgoKcmVnYXJkcywKCktldmluCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
