Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9925538C
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 17:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F186E156;
	Tue, 25 Jun 2019 15:37:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E969C6E155
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 15:37:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6A7D1308FBB1;
 Tue, 25 Jun 2019 15:37:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 61D505C231;
 Tue, 25 Jun 2019 15:37:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55E3E19725;
 Tue, 25 Jun 2019 15:37:03 +0000 (UTC)
Date: Tue, 25 Jun 2019 11:37:01 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <672065155.24499471.1561477021845.JavaMail.zimbra@redhat.com>
In-Reply-To: <alpine.DEB.2.21.1906251256330.18664@amboise.dolphin>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
 <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906251256330.18664@amboise.dolphin>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.16]
Thread-Topic: utils: Remove the LL suffix from NSEC_PER_SEC
Thread-Index: 04RoIcSPEJYUuy1PmO6s+U+wZ3CwOA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 25 Jun 2019 15:37:09 +0000 (UTC)
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiAKPiBVcmkgTHVibGluIHdyb3RlOgo+ID4gV2hlbiB0aGUgdmFyaWFibGUgaXMgNjQgYml0
LCB5b3UgY2FuIHVzZSBhIDY0Yml0IG1hY3JvIGZvciBwcmludGluZywKPiA+IGxpa2UgUFJJZDY0
Lgo+IAo+IFdyb25nLiBTcGljZSB3aWxsIGZhaWwgdG8gcHJvZHVjZSBhIDY0IGJpdCBsaWJyYXJ5
IGlmIHlvdSBhZGQgdGhpcwo+IGFueXdoZXJlOgo+IAo+ICAgICB1aW50NjRfdCBmb28gPSAxMjM0
Owo+ICAgICBzcGljZV9kZWJ1ZygiZm9vPSUiIFBSSWQ2NCwgZm9vIC8gTlNFQ19QRVJfU0VDKTsK
PiAKPiBLbm93aW5nIHRoYXQgdGhlIHZhcmlhYmxlIGlzIDY0IGJpdCBpcyBub3Qgc3VmZmljaWVu
dCB0byBrbm93IHdoYXQKPiBmb3JtYXQgdG8gdXNlLiBBbmQgb25jZSBhIGRldmVsb3BlciBoYXMg
ZmlndXJlZCBvdXQgdGhhdCB0aGUgdGltZQo+IGNvbnN0YW50cyBhcmUgbG9uZyBsb25ncyBoZSds
bCBnZXQgYW4gZXJyb3Igd2l0aCB0aGlzOgo+IAo+ICAgICB1aW50NjRfdCBiYXIgPSAxMjM0Owo+
ICAgICBzcGljZV9kZWJ1ZygiYmFyPSVsbGQiLCBiYXIgLyBOU0VDX1BFUl9NSUNST1NFQyk7Cj4g
CgpJZiB5b3UgYXNzdW1lIGxvbmcgbG9uZyA9PSA2NCBiaXQgc2hvdWxkIG5vdCBiZSBhIGJpZyBw
cm9ibGVtCmFsdGhvdWdoIHlvdSBjYW4gc3RpbGwgaGF2ZSB0aGUgd2FybmluZy4KQnV0IEkgZG9u
J3QgdGhpbmsgVXJpIHdhcyB0aGlua2luZyBhdCB0aGlzIGNhc2UuCk9uZSBzb2x1dGlvbiBmb3Ig
dGhpcyB3b3VsZCBiZSB0byB1c2UgSU5UNjRfQyBtYWNybyBpbnN0ZWFkIG9mCnRoZSBMTCBzdWZm
aXguCgo+IFRoZXNlIGFyZSB0cmFwcy4gSXQncyBvbiB0aGUgc2FtZSBsZXZlbCBhczoKPiAKPiAj
ZGVmaW5lIE9ORSAyCj4gCj4gVXNlbGVzcyBpbmNvbnNpc3RlbmNpZXMgYW5kIG1pc2RpcmVjdGlv
bnMuCj4gCgpUaW1lIHR5cGVzIGFyZSBub3QgcmVhbGx5IGNvbnNpc3RlbnQsIHlvdSBhcmUgZXhw
ZWN0ZWQgdG8gaGF2ZQpkaWZmZXJlbnQgdHlwZXMgYW5kIHByZWNpc2lvbnMsIEkgZG9uJ3Qgc2Vl
IHRoZSBleHRyZW1lIGNhc2UKbGlrZSB0aGUgIk9ORSIuCgo+IAo+IFRoZSBwcmluY2lwbGUgb2Yg
bGVhc3Qgc3VycHJpc2Ugd291bGQgZGljdGF0ZSB0aGF0IGZvciBtYWludGFpbmFibGUKPiBjb2Rl
OgoKU3VycHJpc2UvYXN0b25pc2htZW50IGFyZSByZWFsbHkgc3ViamVjdCB0byBodW1hbiBvcGlu
aW9uLiBUaGV5IGFyZSBiYXNlZApvbiBoYWJpdHMgYW5kIGV4cGVjdGF0aW9ucy4gU2F5aW5nIHRo
YXQgInByaW5jaXBsZSBvZiBsZWFzdCBzdXJwcmlzZSIKZGljdGF0ZXMgc29tZXRoaW5nIGlzIHBy
ZXRlbmRpbmcgYWxsIHBlb3BsZSBoYXZlIHRoZSBzYW1lIGhhYml0cy9leHBlY3RhdGlvbnMuCgo+
IAo+ICAgMS4gQSBzZXQgb2YgcmVsYXRlZCBjb25zdGFudHMgc2hvdWxkIGFsbCBoYXZlIHRoZSBz
YW1lIHR5cGUuCj4gCgpJdCBzb3VuZHMgcmVhc29uYWJsZSwgYWxsIHRoZXNlIGNvbnN0YW50cyBh
cmUgZGVmaW5lZCByZWFsbHkgY2xvc2VkIGluCnRoZSBzb3VyY2UgYW5kIGV4cHJlc3MgdGhlIHNh
bWUgcHJlY2lzaW9uIChuYW5vc2Vjb25kcykuIEkgZG9uJ3QgZXhwZWN0Ck1TRUNfUEVSX1NFQyB0
byBoYXZlIHRoZSBzYW1lIHByZWNpc2lvbi90eXBlLgoKPiAgIDIuIElmIGF0IGFsbCBwb3NzaWJs
ZSBjb25zdGFudHMgc2hvdWxkIG5vdCBmb3JjZSB0aGVpciB0eXBlIG9uIHRoYXQKPiAgICAgIG9m
IGV4cHJlc3Npb25zLgo+IAoKQysrIGFkZGVkIGFuIGV4dGVuc2lvbiB0byBtYWtlIGVudW1lcmF0
aW9uIHR5cGVkLCBDIGhhcyBzb21lIGV4dGVuc2lvbgp0byBhY2hpZXZlIHRoYXQgYW5kIGNvbXBp
bGVycyBoYXZlIG9wdGlvbnMgZm9yIHRoaXMgc28gaXQgc2VlbXMgaW4KZGlmZmVyZW50IGNhc2Vz
IGl0J3Mgd2FudGVkLgoKPiAKPiBTbyB0aGUgYmVzdCBzb2x1dGlvbiBpcyB0byBub3QgaGF2ZSBh
bnkgc3VmZml4IG9uIGFueSBvZiB0aGUgdGltZQo+IGNvbnN0YW50cyBzaW5jZSBub25lIG9mIHRo
ZW0gbmVlZHMgaXQuIFRoYXQncyB3aGF0IEkgaGF2ZSBwcm9wb3NlZC4KPiAKPiBUaGUgbmV4dCBi
ZXN0IHNvbHV0aW9uIGlzIHRvIGhhdmUgYWxsIG9mIHRoZW0gYmUgaW50NjRfdCBzaW5jZSB0aGF0
J3MKPiB0aGUgdHlwZSBvZiB0aGUgdmFyaWFibGVzIHRoZXkgYXJlIHVzdWFsbHkgKGJ1dCBub3Qg
bmVjZXNzYXJpbHkpIHVzZWQKPiB3aXRoLiBUaGF0IGluY2x1ZGVzIE5TRUNfUEVSX01JQ1JPU0VD
IGFuZCBNU0VDX1BFUl9TRUMuIFRoaXMgdmlvbGF0ZXMKPiB0aGUgc2Vjb25kIHBvaW50IHRob3Vn
aC4KPiAKCkkgZG9uJ3QgYWdyZWUgb24gTVNFQ19QRVJfU0VDIGFuZCBzZWNvbmQgcG9pbnQgc28g
aXQgc2VlbXMgcmVhc29uYWJsZQp0byBtZSBhcyBzb2x1dGlvbiB0b28uCgo+IEluIGEgZGlzdGFu
dCB0aGlyZCBwbGFjZSBpcyBhZGRpbmcgdGhlIExMIHN1ZmZpeCB0byBhbGwgY29uc3RhbnRzIG9y
Cj4gY2FzdGluZyB0aGVtIGFsbCB0byBzb21lIGxvbmcgbG9uZyB0eXBlLiBJdCdzIG5vdCBhcyBn
b29kIGFzIHRoZQo+IHNvbHV0aW9uIGFib3ZlIHNpbmNlIHdlIGVzc2VudGlhbGx5IGRvbid0IHVz
ZSBsb25nIGxvbmcgdmFyaWFibGVzCj4gYW55d2hlcmUgKEkgY291bnQgYSB0b3RhbCBvZiB0aHJl
ZSBsb25nIGxvbmcgdmFyaWFibGVzIGluIHNvbWUgZGFyawo+IGNvcm5lciBvZiBzcGljZS1jb21t
b24pIGFuZCB0aHVzIHdpbGwgY2F0Y2ggZGV2ZWxvcGVycyBvZmYtZ3VhcmQgd2hlbgo+IHRoZXkg
dHJ5IHRvIHRyYWNlIHRoZWlyIHZhbHVlcy4KPiAKPiBBbmQgdGhlIHdvcnN0IG9wdGlvbiBpcyB0
aGUgY3VycmVudCBzaXR1YXRpb24gd2hlcmUgaGFsZiB0aGUgY29uc3RhbnRzCj4gZm9yY2UgYW4g
dW51c2VkIHR5cGUgb24gYWxsIGV4cHJlc3Npb25zIHdoZXJlIHRoZXkgYXJlIHVzZWQgaW4gYW5k
IGhhbGYKPiBkb24ndC4KPiAKClllcywgSSB0aGluayBhbGwgTlNFQ19QRVJfKiBzaG91bGQgaGF2
ZSB0aGUgc2FtZSB0eXBlLgoKPiAKPiBPbiBUdWUsIDI1IEp1biAyMDE5LCBGcmVkaWFubyBaaWds
aW8gd3JvdGU6Cj4gWy4uLl0KPiA+ID4gV2hlbmV2ZXIgTlNFQ19QRVJfTUlMTElTRUMgb3IgTlNF
Q19QRVJfU0VDIGFyZSB1c2VkIGluIGEgc3BpY2VfZGVidWcoKQo+ID4gPiBwYXJhbWV0ZXIgb25l
IGNhbm5vdCB1c2UgJXUgb3IgJWx1IGFzIHRoZSBmb3JtYXQuIEJ1dCBub3Qgc28gZm9yCj4gPiAK
PiA+IEJlaW5nIHNpZ25lZCB5b3Ugd291bGQgdXNlICVsbGQgb3Igc2ltaWxhcnMuCj4gCj4gQXMg
dGhlIGNvZGUgY3VycmVudGx5IHN0YW5kcyB0aGF0J3Mgb25seSB0cnVlIGZvciBleHByZXNzaW9u
cyB0aGF0IHVzZQo+IE5TRUNfUEVSX1NFQy4gQWxsIGV4cHJlc3Npb25zIHRoYXQgdXNlIHRoZSBv
dGhlciB0aW1lIGNvbnN0YW50cyBoYXZlIHRoZQo+IHR5cGUgb2YgdGhlIHZhcmlhYmxlcyB1c2Vk
IGluIHRoZSBleHByZXNzaW9uIHdoaWNoIG1lYW5zIG9uZSBzaG91bGQgdXNlCj4gZWl0aGVyICVk
LyV1IG9yICVsZC8lbHUuCj4gCgpNb3N0IGFyZSA2NCBiaXQgc28gYWxsICVkLCAldSwgJWxkIGFu
ZCAlbHUgYXJlIG5vdCBnb29kLgoKPiAKPiA+ID4gTlNFQ19QRVJfTUlDUk9TRUMgb3IgTVNFQ19Q
RVJfU0VDLiBUaGlzIGlzIGluY29uc2lzdGVudCBzbyB0aGF0IHRpbWluZwo+ID4gCj4gPiBObywg
eW91IGNhbm5vdCB1c2UgbG9uZyBvciBub3QgbG9uZyBmb3Igb3RoZXIgY29uc3RhbnRzIHRvbywg
dGhleSBhcmUKPiA+IGRpZmZlcmVudCBmb3IgMzItYml0IHNvIHdpdGggYm90aCB5b3UgY2Fubm90
IG1peC4KPiAKPiA/Pz8KPiAKPiAKPiA+ID4gdHJhY2VzIHJlcXVpcmUgbG90cyBvZiBndWVzc2lu
ZyBhbmQgcmVjb21waWxhdGlvbnMuCj4gPiA+IAo+ID4gCj4gPiBUaGF0J3Mgd2h5IHdlIHVzZSAt
V2Zvcm1hdCBzbyBjb21waWxlciB3aWxsIHRlbGwgeW91IHdoaWNoIG9uZXMgYXJlIHdyb25nLgo+
ID4gSSBkb24ndCBzZWUgd2h5IHlvdSBuZWVkIHRvIGd1ZXNzIGFuZCByZWNvbXBpbGUsCj4gPiBi
ZXNpZGUgSSBzdXBwb3NlIHRoZSBmaXJzdCB0aW1lIHlvdSBhcmUgd3JpdGluZyB0aGUgY29kZS4K
PiAgIF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eCj4gCj4gUHJlY2lzZWx5LiBBbmQgc2luY2UgaXQncyB1c2VkIGluIG9uZS1vZmYgZGVidWdn
aW5nIGV4cHJlc3Npb25zIGl0IGtlZXBzCj4gY29taW5nIHVwLiBQbHVzIGhhbGYgdGhlIHNwaWNl
X2RlYnVnKCkgYXJndW1lbnRzIGFyZSBoaWRkZW4gc28gdGhhdCB3aGVuCj4gdGhlIGNvbXBpbGVy
IHNheXMgdGhlcmUncyBhIHByb2JsZW0gd2l0aCBhcmd1bWVudCA1IGl0J3MgYW55Ym9keSdzIGd1
ZXNzCj4gYXMgdG8gd2hlcmUgdGhlIHByb2JsZW0gYWN0dWFsbHkgbGllcy4KPiAKCkJ1dCBtb3N0
IG9mIHR5cGVzIGFyZSA2NCBiaXQgc28geW91IGhhdmUgdGhlIHNhbWUgaXNzdWUgdG9vLCBpc24n
dCBpdD8KQW5kIHRoaXMgcGF0Y2ggaXMgbm90IGZpeGluZyB0aGVzZSBtYWNyb3MuCgo+IFN1cmUg
YWxsIGlzIHdlbGwgaWYgeW91IG1lbW9yaXplIHRoYXQgTlNFQ19QRVJfU0VDIGFuZCBOU0VDX1BF
Ul9NSUxMSVNFQwo+IGFyZSBsb25nIGxvbmdzLCBidXQgTlNFQ19QRVJfTUlMTElTRUMgaXMgbm90
IGFueW1vcmUsIGFuZCBuZWl0aGVyIGFyZQo+IGFueSBvZiB0aGUgb3RoZXIgdGltZSBjb25zdGFu
dHMgYW5kIHRoYXQgc3BpY2VfZGVidWcoKSBoYXMgcHJlY2lzZWx5IHgKPiBoaWRkZW4gYXJndW1l
bnRzIHdoaWNoIHlvdSBtdXN0IHN1YnN0cmFjdCBmcm9tIGNvbXBpbGVyIGVycm9yIG1lc3NhZ2Vz
Lgo+IAo+IEJ1dCB0aGF0J3MganVzdCBzZXR0aW5nIHVwIHRyYXBzIGZvciBkZXZlbG9wZXJzIHdo
byBJIGFyZ3VlIGhhdmUgbXVjaAo+IGJldHRlciB0aGluZ3MgdG8gbWVtb3JpemUgYW5kIHRoaW5r
IGFib3V0Lgo+IAo+IAo+ID4gQW5kIGlmIHlvdSBuZWVkIHRvIGd1ZXNzIGl0IG1lYW5zIHlvdSBk
b24ndCBrbm93IHRoZSB0eXBlcyB5b3UgYXJlCj4gPiB1c2luZyBhbmQgc28geW91IGFyZSBub3Qg
c3VyZSBhYm91dCBvdmVyZmxvd3Mgc28geW91IGFyZSBub3QgcGF5aW5nCj4gPiBtdWNoIGF0dGVu
dGlvbiB0byB0aGUgY29kZSB5b3UgYXJlIHdyaXRpbmcuCj4gCj4gSSBrbm93IHdoYXQgdGhlIHR5
cGVzIG9mIHRoZSB2YXJpYWJsZXMgSSdtIHVzaW5nIGFyZSwgdGhhbmsgeW91LiBJdCdzCgpNeSBz
ZW50ZW5jZSBkb2VzIG5vdCBjb250YWluIGFueSAidmFyaWFibGUiIGluIGl0LgoKPiB0aGUgY29u
c3RhbnRzIHRoYXQgaGF2ZSBpbmNvbnNpc3RlbnQgYW5kIGNvbmZ1c2luZyB0eXBlcyBhbmQgY2hh
bmdlIHRoZQo+IHR5cGUgb2YgdGhlIGV4cHJlc3Npb24gSSdtIHVzaW5nIHRoZW0gd2l0aC4KPiAK
PiBBbHNvLCB3aXRoIEMncyBpbXBsaWNpdCBjYXN0cyB0aGUgTEwgc3VmZml4IGlzIG5vdCBhbnkg
YmV0dGVyIGF0Cj4gYXZvaWRpbmcgb3ZlcmZsb3dzIHRoYW4gaGF2aW5nIGFuIGludDY0X3QgY2Fz
dCBiYWNrZWQgaW50byB0aGUKPiBjb25zdGFudHMuCj4gCgpJIGFncmVlLgoKPiBJdCdzIG9ubHkg
d2hlbiB1c2luZyB0aGUgY29uc3RhbnRzIGFyZSB1c2VkIGFzIGFyZ3VtZW50cyB0byBhCj4gcHJp
bnRmKCktZXF1aXZhbGVudCB0aGF0IHRoZSBMTCB0cmFwIGlzIHNwcnVuZy4gQW5kIEknZCBhcmd1
ZSB0aGlzIGlzCj4gbm90IGEgY2FzZSB3aGVyZSB0aGVyZSdzIG11Y2ggb2YgYW4gb3ZlcmZsb3cg
cmlzayB0byBzdGFydCB3aXRoLCBhbmQgbm90Cj4gb25lIHdoZXJlIGl0IHdvdWxkIGV2ZW4gbWF0
dGVyIG11Y2ggc2luY2UgbW9zdCBvZiB0aG9zZSBhcmUgdGVtcG9yYXJ5Cj4gb25lLW9mZiBkZWJ1
Z2dpbmcgdHJhY2VzLgo+IAo+IAoKSSBzdXBwb3NlIGVpdGhlciB0aGlzIHBhdGNoIG9yIGhhdmlu
ZyBhbGwgTlNFQ19QRVJfU0VDL05TRUNfUEVSX01JTExJU0VDLwpOU0VDX1BFUl9NSUNST1NFQyB3
cmFwcGVkIGluIElOVDY0X0Mgc291bmRzIHJlYXNvbmFibGUgdG8gbWUuCgpGcmVkaWFubwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
