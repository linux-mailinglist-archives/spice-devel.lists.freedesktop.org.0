Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5532E7F95
	for <lists+spice-devel@lfdr.de>; Thu, 31 Dec 2020 12:07:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410ED89B18;
	Thu, 31 Dec 2020 11:07:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [IPv6:2a01:e0c:1:1599::13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300A389135
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Dec 2020 09:42:28 +0000 (UTC)
Received: from [IPv6:2a01:e0a:240:a730:aae4:91a8:2d56:10e3] (unknown
 [IPv6:2a01:e0a:240:a730:aae4:91a8:2d56:10e3])
 (Authenticated sender: roland65)
 by smtp4-g21.free.fr (Postfix) with ESMTPSA id 44B9319F57E
 for <spice-devel@lists.freedesktop.org>; Thu, 31 Dec 2020 10:42:24 +0100 (CET)
To: spice-devel@lists.freedesktop.org
From: Roland Baudin <roland65@free.fr>
Message-ID: <ae3d253a-1231-4f9d-1017-05cf3e442ffb@free.fr>
Date: Thu, 31 Dec 2020 10:42:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: fr
X-Mailman-Approved-At: Thu, 31 Dec 2020 11:06:59 +0000
Subject: [Spice-devel] Working seamless mode
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgdGhlcmUsCgpmb3IgbXkgb3duIHB1cnBvc2UsIEkgaGF2ZSBwb3J0ZWQgdGhlIHNlYW1sZXNz
IG1vZGUgcGF0Y2hlcyB3cml0dGVuIGJ5IApKYWt1YiBKYW5rxa8sIE9uZMWZZWogSG9sw70gYW5k
IEx1a8OhxaEgVmVuaG9kYSAoc2VlIApodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9zcGlj
ZS1kZXZlbC9tc2czMDE3Ny5odG1sKSB0byBVYnVudHUgMjAuMDQuCgpJIGhhdmUgYWxzbyBoYWNr
ZWQgdGhlIHZpcnQtdmlld2VyIGd0ayBhcHAgdG8gYWxsb3cgZWFzaWx5IGVudGVyaW5nIGFuZCAK
bGVhdmluZyBzZWFtbGVzcyBtb2RlLiBUaGlzIGlzIGEgdmVyeSBjb252ZW5pZW50IHdheSB0byB3
b3JrIHdpdGggdGhlIFZNIAppbiBVYnVudHUuIEl0J3MgcHJvYmFibHkgbm90IGRpZmZpY3VsdCB0
byBkbyB0aGUgc2FtZSB3aXRoIHZpcnQtbWFuYWdlciAKYnV0IGFsYXMgSSdtIG5vdCBhIFB5dGhv
biBwcm9ncmFtbWVyLgoKU28sIEkgaGF2ZSBhIHNldCBvZiBwYWNrYWdlcyBmb3IgVWJ1bnR1IDIw
LjA0IGFuZCBpbnN0YWxsYXRpb24gb2YgdGhlc2UgCnBhY2thZ2VzIGlzIHZlcnkgc2ltcGxlLiBJ
biB0aGUgV2luZG93cyBWTSwgaXQgaXMgYWxzbyByZXF1aXJlZCB0byAKcmVwbGFjZSB0aGUgdmRh
Z2VudCBhbmQgdmRzZXJ2aWNlIHByb2dyYW1zIGJ5IHRoZSBwYXRjaGVkIG9uZXMuIFRoaXMgaXMg
Cm5vdCBkaWZmaWN1bHQsIGJ1dCBpdCdzIGEgbWFudWFsIHByb2Nlc3MgZm9yIG5vdy4KCkV2ZXJ5
dGhpbmcgd29ya3Mgd2VsbCAoYnV0IHRoZXJlIGFyZSBwcm9iYWJseSBpc3N1ZXMgSSBkaWRuJ3Qg
c2VlLCAKcG9zc2libHkgd2l0aCBtdWx0aXBsZSBzY3JlZW5zKSBhbmQgSSB0aGluayB0aGlzIGNv
dWxkIGJlIGEgbWFqb3IgCmltcHJvdmVtZW50IHRvIHRoZSBrdm0vcWVtdSB1c2VyIGV4cGVyaWVu
Y2UgaW4gTGludXguCgpIb3dldmVyLCBJIGRvbid0IGhhdmUgdGltZSAoYW5kIHNraWxscykgdG8g
bWFpbnRhaW4gdGhlc2UgcGFja2FnZXMgYW5kIApwYXRjaGVzLiBJIGhhdmUgdHdvIG90aGVyIG9w
ZW4gc291cmNlIHByb2plY3RzIChYZmUgYW5kIFRleE1hdGhzKSBhbmQgYSAKZnVsbCB0aW1lIGpv
Yi4uLgoKU28sIEknbSBhc2tpbmcgaGVyZSBpZiBzb21lb25lIGlzIGludGVyZXN0ZWR0byBnZXQg
dGhpcyB3b3JrIGFuZCAKbWFpbnRhaW4gaXQ/IEkgY291bGQgZ2l2ZSB5b3UgbXkgcGFja2FnZXMg
KHRoZSBwYXRjaGVzIGFyZSBpbiB0aGUgc291cmNlIApwYWNrYWdlcykgYW5kIGEgbGl0dGxlIGV4
cGxhbmF0aW9uIHRvIHN0YXJ0LgoKSSdkIGJlIGhhcHB5IGlmIHRoZSBjb21tdW5pdHkgY291bGQg
YnVpbGQgc29tZXRoaW5nIHVzZWZ1bCB1cG9uIHRoaXMgd29yay4KCklmIHNvbWVvbmUgaXMgaW50
ZXJlc3RlZCwgaG93IGNhbiBJIHNlbmQgdGhlIGZpbGVzPyBNYWlsIGF0dGFjaG1lbnQgdG8gCnRo
aXMgbGlzdD8gR29vZ2xlIGRyaXZlPwoKVGhhbmtzIGZvciBhbmR5IGFuc3dlciBhbmQgaGF2ZSBh
IG5pY2UgZGF5LAoKUkIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVsCg==
