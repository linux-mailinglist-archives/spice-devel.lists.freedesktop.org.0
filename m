Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 172A64BBCF
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 16:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9916E417;
	Wed, 19 Jun 2019 14:38:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F236E417
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 14:38:10 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id h6so38723532ioh.3
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 07:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0nNAYXeW8Of+2cIrSpNSgfsrrCUTzXvqlAT5x4CryrI=;
 b=bQ3VJdSD7a4ImnnZQRhRu8C2Lj9LK2PJUUOPirixp6x2hLrXdDXL8XsaCBbwbZLeDx
 x0D63/Cl8w71FvbdUROs6O7GDDdrr+RqHkElb7i8BQ+Moxdh06vBvcBE8d6GnwIAiiyP
 E/WDTPaYbiBqDyvevbiuEWWGjrJ7XzG0Oi2s4I70OyyBshxrigs0D5XAIe7Xr3ZoqOvC
 ivI5V911ce4b0fupyGbaLAASK23cNz/6cWclaPmyaOMt9oGYYoDBJ5OnyMjKRvPs7UX2
 ZYSSGTH9v1RRqohSH7JzBBg2bzvr2vharTtvwqaAuZoP/mC4S2oEagyqvYGqE0QQSJni
 4XSg==
X-Gm-Message-State: APjAAAXFYvobpD4BLlJqFh5VOeCnOL4lsm7/sjRiItPL5q96/sA6UAJV
 uuu1uccMib/9lyNnu+gs2SOv7ElLH2sWn9RMESEsUA==
X-Google-Smtp-Source: APXvYqwfIl7iZEsRNCBKkfBuos+7pwld46NjcBQ1Z6ouwulOTbEiVt4X2A69BP0ZNiB1N2gOZWjSIHPlr3t+GFGmBVQ=
X-Received: by 2002:a6b:90c1:: with SMTP id
 s184mr55228410iod.244.1560955089516; 
 Wed, 19 Jun 2019 07:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190617204630.22420-1-jjanku@redhat.com>
 <20190617204630.22420-4-jjanku@redhat.com>
 <1204786216.23630824.1560938340965.JavaMail.zimbra@redhat.com>
In-Reply-To: <1204786216.23630824.1560938340965.JavaMail.zimbra@redhat.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 19 Jun 2019 16:37:58 +0200
Message-ID: <CAH=CeiDoXB9kW3vNirpszjZYwUWtQzw52To+S+Rj4fwrAvZstg@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH spice-gtk 4/5] webdav: remove client on
 empty message
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

SGksCgpPbiBXZWQsIEp1biAxOSwgMjAxOSBhdCAxMTo1OSBBTSBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBNZXNzYWdlIHdpdGggbm8gZGF0YSBm
cm9tIHNwaWNlLXdlYmRhdiBkYWVtb24gbWVhbnMKPiA+IHRoZSBjbGllbnQgZGlzY29ubmVjdGVk
Lgo+ID4KPiA+IEluIHRoaXMgY2FzZSwgdGhlIGNsaWVudCBjb25uZWN0aW9uIHRvIHBob2Rhdgo+
ID4gc2hvdWxkIGJlIGNsb3NlZCBhcyB3ZWxsLgo+ID4KPiA+IFRoaXMgY2FuIGhhcHBlbiBlLmcu
IHdoZW4gZmlsZSB0cmFuc2ZlciBnZXRzIGNhbmNlbGxlZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgc3JjL2NoYW5u
ZWwtd2ViZGF2LmMgfCA0ICsrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC13ZWJkYXYu
YyBiL3NyYy9jaGFubmVsLXdlYmRhdi5jCj4gPiBpbmRleCBlYTI4N2YxLi4zNGQ4OGE5IDEwMDY0
NAo+ID4gLS0tIGEvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiA+ICsrKyBiL3NyYy9jaGFubmVsLXdl
YmRhdi5jCj4gPiBAQCAtMzQxLDggKzM0MSw4IEBAIHN0YXRpYyB2b2lkIGRlbXV4X3RvX2NsaWVu
dChDbGllbnQgKmNsaWVudCkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYy0+Y2FuY2VsbGFibGUsIGRlbXV4X3RvX2NsaWVudF9jYiwKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xpZW50KTsKPiA+ICAgICAgICAgIHJldHVy
bjsKPiA+ICAgICAgfSBlbHNlIHsKPiA+IC0gICAgICAgIC8qIE5vdGhpbmcgdG8gd3JpdGUgKi8K
PiA+IC0gICAgICAgIGRlbXV4X3RvX2NsaWVudF9maW5pc2goY2xpZW50LCBGQUxTRSk7Cj4gPiAr
ICAgICAgICAvKiBDbGllbnQgZGlzY29ubmVjdGVkICovCj4gPiArICAgICAgICBkZW11eF90b19j
bGllbnRfZmluaXNoKGNsaWVudCwgVFJVRSk7Cj4KPiBNaW5vciBzdHlsZTogYXMgd2UgYXJlIGNo
YW5naW5nIHRoaXMuIFByZXZpb3VzIGlmIGJsb2NrIGVuZHMgd2l0aCBhICJyZXR1cm4iLAo+IHdo
eSBub3QgcmVtb3ZpbmcgdGhlICJlbHNlIiBhbmQgcmVkdWNlIGluZGVudGF0aW9uIHRvbz8KCkkg
dGhpbmsgaXQgd291bGQgYWN0dWFsbHkgbWFrZSBiZXR0ZXIgc2Vuc2UgdG8gcHV0IHRoZQpkZW11
eF90b19jbGllbnRfZmluaXNoKCkgY2FsbCBpbiBhbiBpZi1yZXR1cm4gYmxvY2ssIGFzIHRoaXMg
aXMgdGhlCiJzcGVjaWFsIiBjYXNlLgpTbyBJIHdvdWxkIGNoYW5nZSBpdCB0byB0aGF0LCBpZiB5
b3UgZG9uJ3QgbWluZC4KCkpha3ViCj4KPiA+ICAgICAgfQo+ID4gICNlbmRpZgo+ID4gIH0KPgo+
IE90aGVyd2lzZSwKPiAgIEFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KPgo+IEZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
