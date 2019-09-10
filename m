Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2046AE92F
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 13:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3646E030;
	Tue, 10 Sep 2019 11:31:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10AD6E030
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 11:31:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3EF3F30A7B9B;
 Tue, 10 Sep 2019 11:31:57 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 889B360623;
 Tue, 10 Sep 2019 11:31:56 +0000 (UTC)
To: Rafael de Almeida <rafaelrdealmeida@gmail.com>,
 spice-devel@lists.freedesktop.org
References: <CAOnjVuo6XYni=KF1miXKET8oma7ixB2jLc6-OvfDUw3czr_tdA@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <4c9bc703-a93d-cc4f-63f5-25808973618b@redhat.com>
Date: Tue, 10 Sep 2019 14:31:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOnjVuo6XYni=KF1miXKET8oma7ixB2jLc6-OvfDUw3czr_tdA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 10 Sep 2019 11:31:57 +0000 (UTC)
Subject: Re: [Spice-devel] proxmox spice - control video and audio
 compression
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOS8xMC8xOSAzOjI4IEFNLCBSYWZhZWwgZGUgQWxtZWlkYSB3cm90ZToKPiBIZWxsbywKPiAK
PiBXZSB1c2UgeDJnbyBhbmQgY2hyb21lIHJlbW90ZSBkZXNrdG9wIGZvciBWREkgb24gdGhlIHZp
cnR1YWwgbWFjaGluZXMgCj4gdGhhdCBhcmUgb24gcHJveG1veC4KPiAKPiBXZSByZWNlbnRseSBz
dGFydGVkIHVzaW5nIHNwaWNlIHRvIGFjY2VzcyB3ZWJjYW0gdGhyb3VnaCB3ZWFrZXIgCj4gY29t
cHV0ZXJzIChkdWFsY29yZSBwcm9jZXNzb3JzKSB0aGF0IGRvbid0IHN1cHBvcnQgZ29vZCBxdWFs
aXR5IHZpZGVvIAo+IGNvbmZlcmVuY2luZy4KPiAKPiAKPiBFdmVyeXRoaW5nIGlzIHdvcmtpbmcg
cGVyZmVjdGx5IChhdWRpbyBhbmQgaW1hZ2UpLCBidXQgSSBiZWxpZXZlIHRoZXJlIAo+IGhhcyBi
ZWVuIGEgaGlnaCBjb21wcmVzc2lvbiBpbiB0aGUgc3BpY2UgdGhhdCBjYXVzZXMgYSBzbGlnaHQg
ZGVsYXkgaW4gCj4gc2VuZGluZyB2aWRlbyBhbmQgYXVkaW8uCj4gCj4gVGhlIG5ldHdvcmsgaGFz
IGhhcmRseSBhbnkgbW9yZSBzaWduaWZpY2FudCB1c2UgZXZlbiB3aXRoIHZpZGVvIHNlbmRpbmcu
Cj4gCj4gSG93IGNhbiBJIGNvbnRyb2wgY29tcHJlc3Npb24/IEhvdyBkbyBJIGRlZHVjZSBvciBk
aXNhYmxlIGNvbXByZXNzaW9uIGluIAo+IHZtIHByb3htb3g/Cj4gCgpIaSwKCllvdSBjYW4gdXNl
IHFlbXUta3ZtIC1zcGljZSBvcHRpb24gdG8gc2V0IHRoZSBmb2xsb3dpbmcgb3B0aW9uczoKICAq
IGltYWdlLWNvbXByZXNzaW9uPVthdXRvX2dsenxhdXRvX2x6fHF1aWN8Z2x6fGx6fG9mZl0KICAq
IGpwZWctd2FuLWNvbXByZXNzaW9uPVthdXRvfG5ldmVyfGFsd2F5c10KICAqIHpsaWItZ2x6LXdh
bi1jb21wcmVzc2lvbj1bYXV0b3xuZXZlcnxhbHdheXNdCiAgKiBzdHJlYW1pbmctdmlkZW89W29m
ZnxhbGx8ZmlsdGVyXQoKU2VlIG1hbiBxZW11LWt2bSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KWW91
IGNhbiBzdGFydCBieSBzZXR0aW5nIGFsbCB0aGVzZSBvcHRpb25zIHRvICdvZmYnLgoKU2VlIGxp
YnZpcnQgZG9jdW1lbnRhdGlvbiBhYm91dCBkb21haW4geG1sIGZvciBzZXR0aW5nIHRoZXNlCm9w
dGlvbnMgd2hlbiBydW5uaW5nIHRoZSBWTSB2aWEgbGlidmlydC4KCkhvcGUgdGhhdCBoZWxwcywK
ICAgICBVcmkuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
