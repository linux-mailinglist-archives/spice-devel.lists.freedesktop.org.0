Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 852A46535B
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7BB6E161;
	Thu, 11 Jul 2019 08:51:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F656E161
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:51:31 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id e8so5052291otl.7
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 01:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+VArMtBw3IxjCfSZ3s23UriKCChwaDCQ1sxRAXXNvYU=;
 b=h+q9GF/iMP3D3LMLQYkLBQRbwynZmqS334NGYWzoVYV9/nZQK7sAEbHCsU+FVsc1hX
 FoxWMH3P0eqHcEGzMVJc10ToS/eIPtw3klMn85EXs24RnAynntkBydezYk8dyjEN7zqq
 3WhmMzz07UwHqhdWmE4fXnr2Izt1fCNL0glOEobhtoF3Ozlrle32O2AwKBbF0hqLFrmz
 U69NuGrEg1/ENOQfl0Y3XsuHkRUkEhBiPtjsGOtMpnr4/GaZX5RQI9MQtitZZ+qhpsBO
 ZIZ363bIIKGh0PuoNNVTWg1gTvLdg2ZjlagadfAdrj8uqDTi5XGRiOHF1F6A6awpyNrb
 bE3w==
X-Gm-Message-State: APjAAAV/s+E7wdJjD/w8apLSI4lZk79Su4u7RoC2JdbRLQo8sMt/0w1z
 7/x0zMER8y+EGyCiY81vfzMWGepcy6aBcnfJtTUHgyXd
X-Google-Smtp-Source: APXvYqwkMfiUJE1k3osJMxYPDor73HpHKNcrKmQntuQdr0XgxQyT+5cxCkqdaXyMknsTzYnGb2Qf9bdVclnGqVlnKDM=
X-Received: by 2002:a9d:3e3:: with SMTP id f90mr2453687otf.202.1562835090653; 
 Thu, 11 Jul 2019 01:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190704080841.21403-1-kpouget@redhat.com>
 <984723011.27120737.1562834105738.JavaMail.zimbra@redhat.com>
In-Reply-To: <984723011.27120737.1562834105738.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Thu, 11 Jul 2019 10:51:19 +0200
Message-ID: <CADJ1XR3NHWJxzX8WYHx0DxGLB2JHTS3ODgCSeWLeJV7e-FgNiA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH spice-server] streaming: Restart streams
 on video-codec changes
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMTA6MzUgQU0gRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gPgo+ID4gSW50ZXJydXB0IHRoZSB2aWRlbyBzdHJlYW1z
IHdoZW4gdGhlIHVzZXIgY2hhbmdlcyB0aGUgcHJlZmVycmVkCj4gPiB2aWRlby1jb2RlY3MgKGRj
Y19oYW5kbGVfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUpIG9yIHdoZW4gdGhlIGhvc3QKPiA+
IGFkbWluIHVwZGF0ZXMgdGhlIGxpc3Qgb2YgdmlkZW8tY29kZWNzIGFsbG93ZWQKPiA+IChkaXNw
bGF5X2NoYW5uZWxfc2V0X3ZpZGVvX2NvZGVjcykuCj4gPgo+ID4gVGhlIHZpZGVvIHN0cmVhbWlu
ZyB3aWxsIGJlIGF1dG9tYXRpY2FsbHkgcmVzdGFydGVkIGJ5IHNwaWNlCj4gPiB2aWRlby1kZXRl
Y3Rpb24gcnVsZXMuCj4KPiBJIHN1cHBvc2UgaXQgd291bGQgYmUgbW9yZSBzbWFydCB0byBjaGVj
ayBpZiB0aGUgdXNlZCBjb2RlYyBpcyBzdGlsbAo+IGZpbmUgYW5kIGFsc28gaWYgYSBzaW5nbGUg
Y2xpZW50IHdhbnRzIHRvIGNoYW5nZSB0aGUgbGlzdCBvZiBjb2RlY3MKPiBpdCB3b3VsZCBiZSBn
b29kIHRvIGNoZWNrIGFsbCBjbGllbnRzLiBPbiB0aGUgb3RoZXIgaGFuZCB0aGUgbGlzdAo+IG9m
IGNvZGVjcyBpcyBub3Qgc3VwcG9zZWQgdG8gYmUgY2hhbmdlZCBtdWNoIGFuZCB0aGUgc3VwcG9y
dCBmb3IKPiBtdWx0aXBsZSBjbGllbnRzIGlzIHNvbWV0aGluZyBuZXZlciBiZWVuIHByb2R1Y3Rp
b24gcmVhZHkgYW5kIGRpc2FibGVkCj4gKG9ubHkgYW4gZXhwZXJpbWVudGFsIGZlYXR1cmUgd2l0
aCBwbGVudHkgb2YgYnVncykKCmZvciBteSB1bmRlcnN0YW5kaW5nLCBob3cgaXMgdGhlIG11bHRp
LWNsaWVudCBzdXBwb3NlZCB0byB3b3JrPyB0aGV5CmFsbCBzZWUgdGhlIHNhbWUgc2NyZWVuL291
dHB1dHMsIG9yIGVhY2ggb2YgdGhlbSBoYXZlIGEgZGlmZmVyZW50CnNlYXQsIGZ1bGx5IGluZGVw
ZW5kZW50PwppbiB0aGUgZmlyc3QgY2FzZSwgd2Ugc2hvdWxkIGxvb2sgZm9yIHRoZSB2aWRlbyBj
b2RlY3MgdGhhdCBhcmUKc3VwcG9ydGVkIGJ5IGFsbCBjbGllbnRzLAppbiB0aGUgc2Vjb25kIGNh
c2UsIEkgZ3Vlc3MgdGhlIHZpZGVvIGVuY29kaW5nIHNob3VsZCAoaW4gdGhlb3J5KSBiZQppbmRl
cGVuZGVudCBmb3IgZWFjaCBvZiB0aGUgb3V0cHV0cz8KCmJ1dCBpbmRlZWQgaXQgY291bGQgaGF2
ZSBiZWVuIHdvcnRoIGNoZWNraW5nIGlmIHRoZSB2aWRlbyBjb2RlYyB0byB1c2UKYWN0dWFsbHkg
Y2hhbmdlZCwgSSdsbCBsb29rIGF0IGl0CgoKPiBBY2tlZAo+Cj4gRnJlZGlhbm8KPgo+ID4gLS0t
Cj4gPiAgc2VydmVyL2RjYy5jICAgICAgICAgICAgIHwgMiArKwo+ID4gIHNlcnZlci9kaXNwbGF5
LWNoYW5uZWwuYyB8IDIgKysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLmMgYi9zZXJ2ZXIvZGNjLmMKPiA+IGluZGV4
IDcxZDA5Yjc3Li44Njg5M2ZmZSAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9kY2MuYwo+ID4gKysr
IGIvc2VydmVyL2RjYy5jCj4gPiBAQCAtMTE5OCw2ICsxMTk4LDggQEAgc3RhdGljIGludAo+ID4g
ZGNjX2hhbmRsZV9wcmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZShEaXNwbGF5Q2hhbm5lbENsaWVu
dCAqZGNjLAo+ID4KPiA+ICAgICAgLyogTmV3IGNsaWVudCBwcmVmZXJlbmNlICovCj4gPiAgICAg
IGRjY191cGRhdGVfcHJlZmVycmVkX3ZpZGVvX2NvZGVjcyhkY2MpOwo+ID4gKyAgICB2aWRlb19z
dHJlYW1fZGV0YWNoX2FuZF9zdG9wKERDQ19UT19EQyhkY2MpKTsKPiA+ICsKPiA+ICAgICAgcmV0
dXJuIFRSVUU7Cj4gPiAgfQo+ID4KPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGlzcGxheS1jaGFu
bmVsLmMgYi9zZXJ2ZXIvZGlzcGxheS1jaGFubmVsLmMKPiA+IGluZGV4IDQ2NzdjMjYxLi43NTI2
NjU5OCAxMDA2NDQKPiA+IC0tLSBhL3NlcnZlci9kaXNwbGF5LWNoYW5uZWwuYwo+ID4gKysrIGIv
c2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gPiBAQCAtMjU1LDYgKzI1NSw4IEBAIHZvaWQgZGlz
cGxheV9jaGFubmVsX3NldF92aWRlb19jb2RlY3MoRGlzcGxheUNoYW5uZWwKPiA+ICpkaXNwbGF5
LCBHQXJyYXkgKnZpZGVvX2NvZAo+ID4gICAgICBnX2NsZWFyX3BvaW50ZXIoJmRpc3BsYXktPnBy
aXYtPnZpZGVvX2NvZGVjcywgZ19hcnJheV91bnJlZik7Cj4gPiAgICAgIGRpc3BsYXktPnByaXYt
PnZpZGVvX2NvZGVjcyA9IGdfYXJyYXlfcmVmKHZpZGVvX2NvZGVjcyk7Cj4gPiAgICAgIGdfb2Jq
ZWN0X25vdGlmeShHX09CSkVDVChkaXNwbGF5KSwgInZpZGVvLWNvZGVjcyIpOwo+ID4gKwo+ID4g
KyAgICB2aWRlb19zdHJlYW1fZGV0YWNoX2FuZF9zdG9wKGRpc3BsYXkpOwo+ID4gIH0KPiA+Cj4g
PiAgR0FycmF5ICpkaXNwbGF5X2NoYW5uZWxfZ2V0X3ZpZGVvX2NvZGVjcyhEaXNwbGF5Q2hhbm5l
bCAqZGlzcGxheSkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
