Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B778E1D34C2
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 17:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A740C6E35D;
	Thu, 14 May 2020 15:15:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 363 seconds by postgrey-1.36 at gabe;
 Thu, 14 May 2020 15:04:09 UTC
Received: from mail-40141.protonmail.ch (mail-40141.protonmail.ch
 [185.70.40.141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03A26E086
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 15:04:09 +0000 (UTC)
Date: Thu, 14 May 2020 14:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1589468279;
 bh=U0tA3MqxJ62EccdOxU6ThEFlJ5WlUtBrqU3oohnPcRg=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=DzLcsQ97MNVIZnA0t/uaxLdyEXPqd+9W0q9Er6Ls2Fd1CqKzBt8QaLQ1cbTKaiG/1
 2t82Sm4Y2LqIcYReIAet42nQ9KfDHEuXezqvbekIT9N87XK+FArDYyJqTKLBWCqHXb
 UktsP+pmZwxXmcaRDMD2zNoQpo3bcQcRkTEkQdHc=
To: Frediano Ziglio <fziglio@redhat.com>
From: Melroy van den Berg <melroy89@protonmail.com>
Message-ID: <7r1IhzdmmYDsgCapmHaP4MXEEaHwy-GPjB1kSiTn-zBmmlkIP32fT2Blj3BqGiZSr6AqqApQF1lgwH5LdoqTQFofviZgo4wjjnOYvqdGDvQ=@protonmail.com>
In-Reply-To: <553095995.26944814.1589448379881.JavaMail.zimbra@redhat.com>
References: <9FF76525-8C44-4C05-A238-2C0C3382A3D2@getmailspring.com>
 <553095995.26944814.1589448379881.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-0.7 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
 FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
X-Mailman-Approved-At: Thu, 14 May 2020 15:15:04 +0000
Subject: Re: [Spice-devel] Bug in qxl kernel driver (bpp)
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
Reply-To: Melroy van den Berg <melroy89@protonmail.com>
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 Melroy van den Berg <webmaster1989@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpUaGFua3MgZm9yIHlvdXIgcmVzcG9uc2UuCgpJdCBsb29rcyBnb29kIGFyb3VuZCB0aGVy
ZToKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3hvcmcvZHJpdmVyL3hmODYtdmlkZW8t
cXhsLy0vYmxvYi9tYXN0ZXIvc3JjL3F4bF91eGEuYyNMNDA5CgpUaGVyZSBpcyBhIGNhbGwgd2l0
aGluIHF4bF9jcmVhdGVfcGl4bWFwKCkgdG93YXJkczogcXhsLT5ib19mdW5jcy0+Y3JlYXRlX3N1
cmZhY2UgKHF4bCwgdywgaCwgZGVwdGgpClRoZSAnZGVwdGgnIHZhcmlhYmxlIGlzIHByb3BlcmJs
eSAxIHdpdGhpbiB0aGlzIGZ1bmN0aW9uIGFscmVhZHkuCgpUaGF0IGNyZWF0ZSBwaXhtYXAgZnVu
Y3Rpb24gcG9pbnRlciBpcyBhZGRlZCB0byBzY3JlZW4tPkNyZWF0ZVBpeG1hcC4KQW55IGNhbGwg
Y291bGQgcG90ZW50aWFsbHkgcHV0ICcxJyBpbnRvIHRoZSA0dGggcGFyYW1ldGVyLCBsaWtlIHRo
ZXNlIGNhbGxzOgpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcveG9yZy9kcml2ZXIveGY4
Ni12aWRlby1xeGwvLS9ibG9iL21hc3Rlci9zcmMvdXhhL3V4YS1yZW5kZXIuYyNMNDcwCmh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy94b3JnL2RyaXZlci94Zjg2LXZpZGVvLXF4bC8tL2Js
b2IvbWFzdGVyL3NyYy91eGEvdXhhLXJlbmRlci5jI0w3OTUKaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL3hvcmcvZHJpdmVyL3hmODYtdmlkZW8tcXhsLy0vYmxvYi9tYXN0ZXIvc3JjL3V4
YS91eGEtZ2x5cGhzLmMjTDE2MQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcveG9yZy9k
cml2ZXIveGY4Ni12aWRlby1xeGwvLS9ibG9iL21hc3Rlci9zcmMvdXhhL3V4YS1nbHlwaHMuYyNM
OTI3Cmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy94b3JnL2RyaXZlci94Zjg2LXZpZGVv
LXF4bC8tL2Jsb2IvbWFzdGVyL3NyYy9kZnBzLmMjTDM1NwoKUmVnYXJkcywKTWVscm95IHZhbiBk
ZW4gQmVyZwoK4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ4oCQIE9yaWdpbmFsIE1lc3NhZ2Ug4oCQ4oCQ4oCQ
4oCQ4oCQ4oCQ4oCQCk9wIGRvbmRlcmRhZywgbWVpIDE0LCAyMDIwIDExOjI2IEFNLCBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4gc2NocmVlZjoKCj4gPiBIaSBmb2xrcywKPgo+
ID4gVGhlIFhvcmcgbG9nIGlzIGdldHRpbmcgc3BhbW1lZCB3aXRoIHRoZSBmb2xsb3dpbmcgbWVz
c2FnZXMgKEkgbm90aWNlZCBJJ20KPiA+IG5vdCB0aGUgb25seSBvbmUgb24gdGhlIEludGVybmV0
KToKPgo+ID4gPiBxeGxfc3VyZmFjZV9jcmVhdGU6IEJhZCBicHA6IDEgKDEpCj4gPgo+ID4gPiBx
eGxfc3VyZmFjZV9jcmVhdGU6IEJhZCBicHA6IDEgKDEpCj4gPgo+ID4gPiBxeGxfc3VyZmFjZV9j
cmVhdGU6IEJhZCBicHA6IDEgKDEpCj4gPgo+ID4gSSB0aGluayB0aGlzIGlzbid0IG5pY2UgZm9y
IGFueW9uZS4gU28gSSBwcm9wb3NlIGEgZml4IGluIHRoZSBkcml2ZXIgYXJvdW5kCj4gPiBoZXJl
IDoKPiA+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJp
dmVycy9ncHUvZHJtL3F4bC9xeGxfY21kLmMjTDM5Ngo+ID4gQSB2YWxpZCB2YWx1ZSBvZiBCaXRz
IHBlciBwaXhlbCAoYnBwIGFrYSBQaXhlbG1hcCkgaXMgb2Z0ZW4gMjQgKG9yIDMyIGJpdAo+ID4g
ZGVwdGgpLiBQbGVhc2UgdHJ5IHRvIHBsYXkgYXJvdW5kIHdpdGggdGhpcywgYW5kIHNlZSBpZiB5
b3UgY291bGQgbWFrZSBYb3JnCj4gPiBzZXJ2ZXIgaGFwcHkgYWdhaW4uCj4KPiA+IFRoYW5rcyEK
Pgo+ID4gUmVnYXJkcywKPiA+IE1lbHJveSB2YW4gZGVuIEJlcmcKPgo+IEhpLAo+IHRoZSAiYnBw
IiB2YWx1ZSBkb2VzIG5vdCBhcnJpdmUgdG8gdGhlIGtlcm5lbCBzbyB0aGVyZSdzIG5vIHBvaW50
IHRvIHVwZGF0ZSBpdC4KPiBJdCBhcnJpdmVzIGZyb20gc29tZSBvdGhlciBjYWxscyBpbiB0aGUg
ZHJpdmVyLiBJIHRoaW5rIHRoZSBmdW5jdGlvbiB0byBiZSBjaGFuZ2VkCj4gc2hvdWxkIHF4bF9j
cmVhdGVfcGl4bWFwIGluIHRoZSBYb3JnIGRyaXZlciAoc3JjL3F4bF91eGEuYykuCj4KPiBSZWdh
cmRzLAo+IEZyZWRpYW5vCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVsCg==
