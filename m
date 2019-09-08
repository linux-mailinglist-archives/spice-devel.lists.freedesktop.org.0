Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FBDACEE5
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2019 15:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1D9895E1;
	Sun,  8 Sep 2019 13:25:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E9DF895E1
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 13:25:45 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 665183E2AF
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2019 13:25:44 +0000 (UTC)
Received: by mail-wr1-f69.google.com with SMTP id n6so5623454wrw.14
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Sep 2019 06:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=z3QdivZgwMg7kxMv25fCsvjCHsNsG38ziHY8XBQWUuY=;
 b=OvXR2fv0Es+qDPcuafbNWrxJhWjghWYRKFHiMklGhsbnZ+zqLHbAik8We1CcRBQ7J1
 tlH/sv56bKcd0Lvh5ymvvpNZa/lts1WxfYr1hgQvgIDuzI30hDtlOtGb12wgYQ5jceE3
 71n2tMiit1xCQQM/lgvOKaKtGzOtRvzJoxbqidslZdRv6bPDZI0Mt64xsnWxbfM3mlfH
 /PwIQZ0c6XlaIfzEFECrXw2iOgtfhvvNnFEBmIZK3JokOnApsW2MfYcqogpqJ4CQdjee
 fLl9deIsAK9t0T2LP9F8/lpjA3O2cIkRVY4eSPIvoFZ50OB5BUu219dD5kCMpIMlM2Xt
 6aZA==
X-Gm-Message-State: APjAAAUOTTFJ+SkgbnlYcW/jJQr89b8f8oNSLBBIi3L9CgiAX8WvfVrr
 It4+1j/0CTRynMiSTtyvKoex4mdoPHjcMDXmPkyDIRZNWojM3WhK2Dw/OT8ktktAL3bR4BPS3W1
 z78HEG36JdJac194cQN+XO4aYJWyYnVE=
X-Received: by 2002:a1c:540c:: with SMTP id i12mr16001352wmb.90.1567949142451; 
 Sun, 08 Sep 2019 06:25:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjUw2srgLB+QhoyieXF8/2zFP8SqZV0fEXjNmF/uTkwr/scRF74T92Brt2CvgVeOpiX5Bxjw==
X-Received: by 2002:a1c:540c:: with SMTP id i12mr16001325wmb.90.1567949142184; 
 Sun, 08 Sep 2019 06:25:42 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.220])
 by smtp.gmail.com with ESMTPSA id a192sm14401794wma.1.2019.09.08.06.25.40
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Sep 2019 06:25:41 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190902160449.19589-1-victortoso@redhat.com>
 <20190902160449.19589-3-victortoso@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <4c7556cd-225c-136b-279d-8563cf1cd0eb@redhat.com>
Date: Sun, 8 Sep 2019 16:25:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902160449.19589-3-victortoso@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgoKT24gOS8yLzE5IDc6MDQgUE0sIFZpY3RvciBUb3NvIHdyb3RlOgo+IEZyb206IFZpY3Rv
ciBUb3NvIDxtZUB2aWN0b3J0b3NvLmNvbT4KPgo+IFRoaXMgbWVhbnMgd2UgY2FuIGRyb3AgZ3N0
dmlkZW9faW5pdCgpIGZ1bmN0aW9uIGFuZCByZXBsYWNlIGl0cyBjYWxscwo+IHdpdGggZ3N0X2lz
X2luaXRpYWxpemVkKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9z
b0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyB8IDIzICsr
KysrLS0tLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAxOCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdz
dC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IGluZGV4IDZmY2NmNjIuLmEzNGI1ZDAg
MTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+ICsrKyBiL3NyYy9jaGFu
bmVsLWRpc3BsYXktZ3N0LmMKPiBAQCAtNzQ4LDIyICs3NDgsNiBAQCBzdGF0aWMgZ2Jvb2xlYW4g
c3BpY2VfZ3N0X2RlY29kZXJfcXVldWVfZnJhbWUoVmlkZW9EZWNvZGVyICp2aWRlb19kZWNvZGVy
LAo+ICAgICAgIHJldHVybiBUUlVFOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBnYm9vbGVhbiBnc3R2
aWRlb19pbml0KHZvaWQpCj4gLXsKPiAtICAgIHN0YXRpYyBpbnQgc3VjY2VzcyA9IDA7Cj4gLSAg
ICBpZiAoIXN1Y2Nlc3MpIHsKPiAtICAgICAgICBHRXJyb3IgKmVyciA9IE5VTEw7Cj4gLSAgICAg
ICAgaWYgKGdzdF9pbml0X2NoZWNrKE5VTEwsIE5VTEwsICZlcnIpKSB7Cj4gLSAgICAgICAgICAg
IHN1Y2Nlc3MgPSAxOwo+IC0gICAgICAgIH0gZWxzZSB7Cj4gLSAgICAgICAgICAgIHNwaWNlX3dh
cm5pbmcoIkRpc2FibGluZyBHU3RyZWFtZXIgdmlkZW8gc3VwcG9ydDogJXMiLCBlcnItPm1lc3Nh
Z2UpOwo+IC0gICAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnIpOwo+IC0gICAgICAgICAgICBz
dWNjZXNzID0gLTE7Cj4gLSAgICAgICAgfQo+IC0gICAgfQo+IC0gICAgcmV0dXJuIHN1Y2Nlc3Mg
PiAwOwo+IC19Cj4gLQo+ICAgR19HTlVDX0lOVEVSTkFMCj4gICBWaWRlb0RlY29kZXIqIGNyZWF0
ZV9nc3RyZWFtZXJfZGVjb2RlcihpbnQgY29kZWNfdHlwZSwgZGlzcGxheV9zdHJlYW0gKnN0cmVh
bSkKPiAgIHsKPiBAQCAtNzcxLDcgKzc1NSw3IEBAIFZpZGVvRGVjb2RlciogY3JlYXRlX2dzdHJl
YW1lcl9kZWNvZGVyKGludCBjb2RlY190eXBlLCBkaXNwbGF5X3N0cmVhbSAqc3RyZWFtKQo+ICAg
Cj4gICAgICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwoVkFMSURfVklERU9fQ09ERUNfVFlQRShjb2Rl
Y190eXBlKSwgTlVMTCk7Cj4gICAKPiAtICAgIGlmIChnc3R2aWRlb19pbml0KCkpIHsKPiArICAg
IGlmIChnc3RfaXNfaW5pdGlhbGl6ZWQoKSkgewoKU2luY2UgdGhlIGxvZ2ljYWwgdGhpbmcgdG8g
ZG8gaXMgdXN1YWxseSB0byBpbml0aWFsaXplIGdzdHJlYW1lcgpvbmNlIHlvdSBzdGFydCB1c2lu
ZyBpdCBpIHdvdWxkIGFkZCBhIGNvbW1lbnQgaXQncyBub3cgaW5pdGlhbGl6ZWQKYnkgdGhlIHNl
c3Npb24gKGlmIG5vdCBleHRlcm5hbGx5KQoKKGFsc28gb24gZ3N0YXVkaW8pCgpTbmlyLgoKPiAg
ICAgICAgICAgZGVjb2RlciA9IGdfbmV3MChTcGljZUdzdERlY29kZXIsIDEpOwo+ICAgICAgICAg
ICBkZWNvZGVyLT5iYXNlLmRlc3Ryb3kgPSBzcGljZV9nc3RfZGVjb2Rlcl9kZXN0cm95Owo+ICAg
ICAgICAgICBkZWNvZGVyLT5iYXNlLnJlc2NoZWR1bGUgPSBzcGljZV9nc3RfZGVjb2Rlcl9yZXNj
aGVkdWxlOwo+IEBAIC04MjAsNyArODA0LDEwIEBAIGdib29sZWFuIGdzdHZpZGVvX2hhc19jb2Rl
YyhpbnQgY29kZWNfdHlwZSkKPiAgICAgICBHc3RDYXBzICpjYXBzOwo+ICAgICAgIEdzdEVsZW1l
bnRGYWN0b3J5TGlzdFR5cGUgdHlwZTsKPiAgIAo+IC0gICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwo
Z3N0dmlkZW9faW5pdCgpLCBGQUxTRSk7Cj4gKyAgICBpZiAoIWdzdF9pc19pbml0aWFsaXplZCgp
KSB7Cj4gKyAgICAgICAgcmV0dXJuIEZBTFNFOwo+ICsgICAgfQo+ICsKPiAgICAgICBnX3JldHVy
bl92YWxfaWZfZmFpbChWQUxJRF9WSURFT19DT0RFQ19UWVBFKGNvZGVjX3R5cGUpLCBGQUxTRSk7
Cj4gICAKPiAgICAgICB0eXBlID0gR1NUX0VMRU1FTlRfRkFDVE9SWV9UWVBFX0RFQ09ERVIgfApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
