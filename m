Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F61645A1
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 13:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D423989EEB;
	Wed, 10 Jul 2019 11:11:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C612789EEB
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 11:11:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 67CE13082A49
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 11:11:53 +0000 (UTC)
Received: from lub.tlv (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 02D115D9CD;
 Wed, 10 Jul 2019 11:11:49 +0000 (UTC)
To: Victor Toso <victortoso@redhat.com>, Frediano Ziglio <fziglio@redhat.com>
References: <20190708120016.27270-1-fziglio@redhat.com>
 <a29c56ec-11b8-247a-1ec1-6feb0bb8033f@redhat.com>
 <1438838942.26817085.1562672838194.JavaMail.zimbra@redhat.com>
 <20190709141619.im3227v46n2s2u52@wingsuit>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <ebbe6125-75a6-5773-c5c3-77f14ff74e45@redhat.com>
Date: Wed, 10 Jul 2019 14:11:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709141619.im3227v46n2s2u52@wingsuit>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 10 Jul 2019 11:11:53 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/2] Drop autotools
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

T24gNy85LzE5IDU6MTYgUE0sIFZpY3RvciBUb3NvIHdyb3RlOgo+IEhpLAo+IAo+IE9uIFR1ZSwg
SnVsIDA5LCAyMDE5IGF0IDA3OjQ3OjE4QU0gLTA0MDAsIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToK
Pj4+Cj4+PiBPbiA3LzgvMTkgMzowMCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pj4+IFRo
aXMgc2VyaWVzIGlzIGZyb20gTWFyYy1BbmRyw6ksIEkganVzdCByZWJhc2VkIGl0IG9uIGN1cnJl
bnQgbWFzdGVyLgo+Pj4+IE5vdCBtdWNoIGxlZnQgb2YgdGhlIG9yaWdpbmFsIHNlcmllcy4KPj4+
PiBJIHRoaW5rIGl0J3MgdGltZSB0byBnZXQgYmFjayB0byBpdC4KPj4+Cj4+Pgo+Pj4gRG9lcyBt
ZXNvbiB3b3JrIHdlbGwgZm9yIG1pbmd3LXNwaWNlLWd0ayA/Cj4gCj4gSXQgc2hvdWxkLCBub3Rl
IHRoYSBtaW5ndzY0LWZpbGVzeXN0ZW0tMTA2IHByb3ZpZGVzIG1pbmd3NjQtbWVzb24KPiAKPiAg
ICAgICh3aW5nc3VpdCkgc3BpY2UtZ3RrIChtYXN0ZXIgOWE2ZmZiYWMpICQgZG5mIHdoYXRwcm92
aWRlcyBtaW5ndzY0LW1lc29uCj4gICAgICBMYXN0IG1ldGFkYXRhIGV4cGlyYXRpb24gY2hlY2s6
IDY6MzY6NTQgYWdvIG9uIE1vbiAwOCBKdWwgMjAxOSAxMzozNjoxNyBDRVNULgo+ICAgICAgbWlu
Z3c2NC1maWxlc3lzdGVtLTEwNi0xLmZjMzAubm9hcmNoIDogTWluR1cgY3Jvc3MgY29tcGlsZXIg
YmFzZSBmaWxlc3lzdGVtIGFuZCBlbnZpcm9ubWVudCBmb3IgdGhlIHdpbjY0IHRhcmdldAo+ICAg
ICAgUmVwbyAgICAgICAgOiBmZWRvcmEKPiAgICAgIE1hdGNoZWQgZnJvbToKPiAgICAgIEZpbGVu
YW1lICAgIDogL3Vzci9iaW4vbWluZ3c2NC1tZXNvbgo+IAo+IAo+Pj4KPj4+IEkgdGhpbmsgYSBz
YWZlciBwYXRoIGlzIHRvIG1ha2UgYSByZWxlYXNlIHdpdGggTWVzb24KPj4+IGJlZm9yZSByZW1v
dmluZyBhdXRvdG9vbHMuCj4gCj4gSSBoYWQgdGhhdCBpbiBtaW5kIHdpdGggMC4zNyByZWxlYXNl
IG8vCj4gCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNlL3NwaWNlLWd0ay8t
L3RhZ3MvdjAuMzcKCk5vdGUgdGhhdCB0aGlzIHJlbGVhc2Ugd2FzIGRvbmUgd2l0aCBhdXRvdG9v
bHMgYW5kIG5vdCBtZXNvbi4KCmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9kb3dubG9hZC9n
dGsvc3BpY2UtZ3RrLTAuMzcudGFyLmJ6MgoKVXJpCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
