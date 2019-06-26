Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB1856617
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 12:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB65B6E34A;
	Wed, 26 Jun 2019 10:02:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED5F6E34A
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 10:02:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4DEF685550;
 Wed, 26 Jun 2019 10:01:58 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DB3D19733;
 Wed, 26 Jun 2019 10:01:57 +0000 (UTC)
To: Francois Gouget <fgouget@codeweavers.com>,
 Frediano Ziglio <fziglio@redhat.com>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
 <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906251256330.18664@amboise.dolphin>
 <672065155.24499471.1561477021845.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906251758070.4284@amboise.dolphin>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <6f7177e2-f149-8c75-b91f-7645a72d455a@redhat.com>
Date: Wed, 26 Jun 2019 13:01:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906251758070.4284@amboise.dolphin>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Wed, 26 Jun 2019 10:02:04 +0000 (UTC)
Subject: Re: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8yNS8xOSA3OjM1IFBNLCBGcmFuY29pcyBHb3VnZXQgd3JvdGU6Cj4gT24gVHVlLCAyNSBK
dW4gMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFsuLi5dCj4+PiAgICAgIHVpbnQ2NF90
IGZvbyA9IDEyMzQ7Cj4+PiAgICAgIHNwaWNlX2RlYnVnKCJmb289JSIgUFJJZDY0LCBmb28gLyBO
U0VDX1BFUl9TRUMpOwo+IFsuLi5dCj4+IElmIHlvdSBhc3N1bWUgbG9uZyBsb25nID09IDY0IGJp
dCBzaG91bGQgbm90IGJlIGEgYmlnIHByb2JsZW0KPj4gYWx0aG91Z2ggeW91IGNhbiBzdGlsbCBo
YXZlIHRoZSB3YXJuaW5nLgoKU28sIHdlIGFsbCBhZ3JlZSB0aGF0IHRoZSBMTCBzdWZmaXggaXMg
bm90IGdvb2QuCkFuZCB3ZSBhbGwgYWdyZWUgdGhhdCB0aGlzIHBhdGNoIGZpeGVzIHRoaXMgaXNz
dWUuCgpBbHNvIGlmIE5TRUNfUEVSX1NFQyBpcyBjaGFuZ2VkIHRvIGJlIG9mIHR5cGUgaW50NjRf
dCwgdGhlbgp0aGVyZSBpcyBubyB3YXJuaW5nIGhlcmUuCgpTbywgdGhlIGRpc2N1c3Npb24gaXMg
aWYgdGhlIGlzc3VlIGNhbiBiZSBmaXhlZCBkaWZmZXJlbnRseSwKd2l0aCBhIHByZWZpeCBvZiAo
aW50NjRfdCkgb3Igd2l0aCBJTlQ2NF9DLgoKClsuLi5dCgoKPiBJJ2QgdmVyeSBtdWNoIHByZWZl
ciB0aGUgY2FzdCB0byBiZSBpbiB0aGUgZXhwcmVzc2lvbiByYXRoZXIgdGhhbiBoaWRkZW4KPiBp
biBzb21lIGZhciBhd2F5IG1hY3JvLgoKSXMgdGhhdCB0cnVlIGV2ZW4gaWYgdGhlIGNhc3QgaXMg
bmVlZGVkIGluIGFsbCB0aGUgZXhwcmVzc2lvbnMKdGhhdCB1c2UgdGhpcyBjb25zdGFudCA/CgpU
aGFua3MsCiAgICAgVXJpLgoKPiAKPiBGb3IgaW5zdGFuY2U6Cj4gCj4gICAgICBpbnQgZnJhbWVz
X2NvdW50Owo+ICAgICAgLi4uCj4gCj4gICAgICBpZiAoZHVyYXRpb24gPiBOU0VDX1BFUl9TRUMg
KiBkcmF3YWJsZS0+ZnJhbWVzX2NvdW50IC8gTUFYX0ZQUykgewo+IAo+IEFueW9uZSBjaGVja2lu
ZyB0aGlzIGNhbGN1bGF0aW9uIHdvdWxkIHRoaW5rIHRoYXQgdGhlcmUgaXMgYSByaXNrIG9mCj4g
b3ZlcmZsb3cuIEFuZCBpdCdzIG9ubHkgd2hlbiB0cmFjaW5nIE5TRUNfUEVSX1NFQyB0byB1dGls
cy5oIHRoYXQgdGhleQo+IHdvdWxkIGRpc2NvdmVyIHRoYXQgTlNFQ19QRVJfU0VDIGZvcmNlcyA2
NCBiaXQgY2FsY3VsYXRpb24uCj4gCj4gQXQgbGVhc3QgdGhpcyBmb3JtIGlzIGNsZWFyIHJpZ2h0
IGF3YXk6Cj4gCj4gICAgICBpZiAoZHVyYXRpb24gPiAoKHVpbnQ2NF90KU5TRUNfUEVSX1NFQykg
KiBkcmF3YWJsZS0+ZnJhbWVzX2NvdW50IC8gTUFYX0ZQUykgewo+IApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
