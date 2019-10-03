Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE48CA807
	for <lists+spice-devel@lfdr.de>; Thu,  3 Oct 2019 19:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90D16E1CF;
	Thu,  3 Oct 2019 17:01:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958826E1CF
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Oct 2019 17:01:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 387D53086E27;
 Thu,  3 Oct 2019 17:01:04 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 93B915D721;
 Thu,  3 Oct 2019 17:01:03 +0000 (UTC)
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
 <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
 <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
 <03e794c0-70a8-f43e-6ba9-e8da5cbdfd27@redhat.com>
 <CAHmME9phs=MA2tVhBNwQFVsFvisuxS=HhBU74mbpKm1+oKkfYQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <b04377fc-7af3-c049-807d-a022c89467f2@redhat.com>
Date: Thu, 3 Oct 2019 20:01:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAHmME9phs=MA2tVhBNwQFVsFvisuxS=HhBU74mbpKm1+oKkfYQ@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 03 Oct 2019 17:01:04 +0000 (UTC)
Subject: Re: [Spice-devel] regression from 0.14.0 -> 0.14.2 in screen
 resizing
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTAvMy8xOSA3OjUyIFBNLCBKYXNvbiBBLiBEb25lbmZlbGQgd3JvdGU6Cj4gT24gVGh1LCBP
Y3QgMywgMjAxOSBhdCA2OjUyIFBNIFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+Cj4+Cj4+IEl0IHdvcmtzIGZvciBtZSBhbHNvIHdpdGggc3BpY2UgdjAuMTQuMiAoZnJvbSBn
aXQpIGFuZCBjdXJyZW50IG1hc3Rlci4KPj4KPj4gVGhlIHFlbXUgdmVyc2lvbiBpcyA0LjEuNTAg
KGZyb20gZ2l0KSBhbmQgYWxzbyB0ZXN0ZWQgUUVNVSAzLjEuMSAoRmVkb3JhCj4+IDMwKS4KPj4K
Pj4gQlRXLCB3aGF0IGRpc3RybyBpcyBpdCA/ICBXaGljaCBXaW5kb3dzIGd1ZXN0ID8KPiAKPiBH
ZW50b28uIFdpbmRvd3MgMTAuCgpJJ2xsIHRyeSBXaW5kb3dzIDEwIGxhdGVyIChjb3VwbGUgb2Yg
ZGF5cykuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
