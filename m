Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E1910067
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 21:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29AD89211;
	Tue, 30 Apr 2019 19:47:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EC889211
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 19:47:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CBD6C3003193;
 Tue, 30 Apr 2019 19:47:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C22177F1B3;
 Tue, 30 Apr 2019 19:47:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AD2C83FB10;
 Tue, 30 Apr 2019 19:47:27 +0000 (UTC)
Date: Tue, 30 Apr 2019 15:47:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1198976237.15717645.1556653646309.JavaMail.zimbra@redhat.com>
In-Reply-To: <421a38b7-755a-4612-3c47-478b84655259@codeweavers.com>
References: <fa91a050-1cc4-9328-ae1c-a3f93f972f7a@codeweavers.com>
 <20170310170101.koz5a34ibtzlusrs@edamame.cdg.redhat.com>
 <421a38b7-755a-4612-3c47-478b84655259@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.23, 10.4.195.8]
Thread-Topic: gtk client side timeouts
Thread-Index: LTukpwiUXisbFeCtr5vISboDGM2tMA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 30 Apr 2019 19:47:27 +0000 (UTC)
Subject: Re: [Spice-devel] gtk client side timeouts
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>,
 Christophe Fergeau <cfergeau@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiBPbiAzLzEwLzE3IDExOjAxIEFNLCBDaHJpc3RvcGhlIEZlcmdlYXUgd3Jv
dGU6Cj4gPiBPbiBGcmksIE1hciAxMCwgMjAxNyBhdCAxMDo0OTo1NEFNIC0wNjAwLCBKZXJlbXkg
V2hpdGUgd3JvdGU6Cj4gPj4gSGV5IGFsbCwKPiA+Pgo+ID4+IFdlJ3ZlIGdvdCBhbiBpc3N1ZSB3
aXRoIGEgcmVtb3RlIHZpZXdlciBraW9zay4gIFRoYXQgaXMsIGluIG91ciBub3JtYWwKPiA+PiBt
b2RlIG9mIG9wZXJhdGlvbiwgaWYgc29tZXRoaW5nIGdvZXMgd3Jvbmcgd2l0aCBhIGNsaWVudCBj
b25uZWN0aW9uCj4gPj4gKGUuZy4gdGhlIHNlc3Npb25zIGlzIGtpbGxlZCwgc2VydmVyIHJlc3Rh
cnRlZCBub3JtYWxseSksIHRoZSBraW9zayB3aWxsCj4gPj4gZXhpdCBvbiBkaXNjb25uZWN0LCBh
bmQgd2UgZ2V0IGEgY2hhbmNlIHRvIHJldHJ5IHRoZSBjb25uZWN0aW9uLCBvcgo+ID4+IHByZXNl
bnQgdGhlIHVzZXIgd2l0aCBhICdzZXJ2ZXIgZG93bicgc3R5bGUgbWVzc2FnZS4KPiA+Pgo+ID4+
IEJ1dCBpbiB0aGUgY2FzZSBvZiBhIHNlcmlvdXMgbmV0d29yayBwcm9ibGVtIG9yIGEgc2VydmVy
IGhhcmQgcG93ZXIKPiA+PiBjeWNsZSAoaS5lLiBubyBUQ1AgRklOIHBhY2tldHMgY2FuIGZsb3cp
LCBvdXIgZW5kIHVzZXIgYmVoYXZpb3IgaXMgbm90Cj4gPj4gaWRlYWwgLSB0aGUga2lvc2sgYXBw
ZWFycyB0byBoYW5nIHNvbGlkLCByZXF1aXJpbmcgYSBwb3dlciBjeWNsZS4KPiA+Pgo+ID4+IFRo
YXQncyBiZWNhdXNlIHdlJ3ZlIGdvdCB0aGUgc3RvY2sga2VlcGFsaXZlIHRpbWVvdXRzLCBvciBh
Ym91dCAyIGhvdXJzCj4gPj4gYW5kIDExIG1pbnV0ZXMsIGJlZm9yZSB0aGUgY2xpZW50IHNlZXMg
dGhlIGRpc2Nvbm5lY3QuCj4gPj4KPiA+PiBOb3cgdGhpcyBpcyBhIHJlbGF0aXZlbHkgcmFyZSBv
Y2N1cnJlbmNlLCBhbmQgYXJndWFibHkgYSBtaW5vciBudWlzYW5jZSwKPiA+PiBidXQgSSd2ZSBi
ZWVuIGFza2VkIHRvIHNlZSB3aGF0IGl0IHdvdWxkIHRha2UgdG8gaW1wcm92ZSB0aGUgc2l0dWF0
aW9uLgo+ID4+Cj4gPj4gSSBsb29rZWQgZm9yIHBhc3QgZGlzY3Vzc2lvbnMgb24gc3BpY2UtZGV2
ZWw7IEkgb25seSByZWFkaWx5IGZvdW5kCj4gPj4gZGlzY3Vzc2lvbiBvZiB0aGUga2VlcGFsaXZl
IHBhcmFtZXRlcnMgb24gdGhlIHNlcnZlciBzaWRlLCBhbmQgaXQgbG9va3MKPiA+PiBsaWtlIHdl
IHRha2UgdGhlIGlkbGUgdGltZXIgZG93biB0byAxMCBtaW51dGVzIG5vdywgZnJvbSAyIGhvdXJz
LiAgSQo+ID4+IGRpZG4ndCBmaW5kIGRpc2N1c3Npb24gb2Ygc29tZXRoaW5nIHNpbWlsYXIgY2xp
ZW50IHNpZGUuCj4gPj4KPiA+PiBIYXZlIHdlIGNvbnNpZGVyZWQgdHVuaW5nIHRoZW0gb24gdGhl
IHNwaWNlLWd0ayBjbGllbnQgc2lkZT8KPiA+Pgo+ID4+IFRoZSBhdHRhY2hlZCBwYXRjaCBhcHBs
aWVzIGEgcm91Z2hseSA3NSBzZWNvbmQgdGltZW91dCBmb3IgbWU7IGlzIHRoaXMKPiA+PiBzb21l
dGhpbmcgdGhhdCB3b3VsZCBiZSB2aWFibGUgdG8gYWRkIHRvIHRoZSBndGsgY2xpZW50LCBldmVu
IGlmIG9ubHkgYXMKPiA+PiBhbiBvcHRpb24/Cj4gPiAKPiA+IEFoLCBJJ3ZlIGNvaW5jaWRlbnRh
bGx5IGJlZW4gbG9va2luZyBhdCB0aGlzIHRoaXMgd2VlayB0b28sIG5vdCB3aXRoIHRoZQo+ID4g
c2FtZSBnb2FsIGluIG1pbmQgdGhvdWdoLCBteSBwcm9ibGVtIGlzIFNQSUNFIGNvbm5lY3Rpb24g
c29tZXRpbWVzCj4gPiBnZXR0aW5nIGRyb3BwZWQgaWYgaWRsZSBmb3IgdG9vIGxvbmcuIEJ1dCB0
aGUgY3VycmVudCBhbnN3ZXIgaXMgYWxzbwo+ID4gdHdlYWtpbmcgVENQIGtlZXBhbGl2ZXMuCj4g
PiBEZWZpbml0ZWx5IG5vIG9iamVjdGlvbiBoYXZpbmcgc29tZSBmb3JtIG9mIGtlZXBhbGl2ZSBj
bGllbnQgc2lkZXMsCj4gPiB0aG91Z2ggeW91ciBwcm9wb3NlZCBjaGFuZ2UgaXMgbm90IGdvaW5n
IHRvIHdvcmsgZm9yIHRoZSBXaW5kb3dzIGNsaWVudC4KPiA+IAo+ID4gSSd2ZSBtYWRlIHNvbWUg
Z29vZCBwcm9ncmVzcyBvbiBwYXRjaGVzIHRvIGFkZCBib3RoIFdpbmRvd3MvbGludXgKPiA+IHN1
cHBvcnQgdG8gZ2xpYiwgYnV0IG5lZWQgdG8gZmluaXNoIHRoZW0gdXAgOykKPiAKPiBQaW5nPyAg
VGhpcyBwcm9ibGVtIHBlcnNpc3RzLCBhbmQgdGhlIHBhdGNoIEkgc2VudCB0aGVuOgo+ICAKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9zcGljZS1kZXZlbC9hdHRhY2ht
ZW50cy8yMDE3MDMxMC82OTM4YzZkYy9hdHRhY2htZW50LmRpZmYKPiAKPiBoYXMgYmVlbiB3b3Jr
aW5nIGZvciB1cyBmb3IgYSBudW1iZXIgb2YgeWVhcnMgd2l0aG91dCBhbnkgdW5leHBlY3RlZAo+
IGNvbnNlcXVlbmNlcy4KPiAKPiBDb3VsZCBJIHN1Ym1pdCB0aGlzIHBhdGNoIGFuZCB3ZSByZW1v
dmUgaXQgd2hlbiB0aGVyZSBpcyBhIGJldHRlcgo+IHNvbHV0aW9uIHRoYXQgYWxzbyBzdXBwb3J0
cyBXaW5kb3dzPwo+IAo+IENoZWVycywKPiAKPiBKZXJlbXkKCkkgdGhpbmsgaXQgd2FzIGp1c3Qg
YSBtaXN0YWtlLiBXZSBoYXZlIHNpbWlsYXIgY29kZSBpbiBTUElDRSBzZXJ2ZXIgYW5kIHVzYnJl
ZGlyLApqdXN0IHByb2JhYmx5IGdvdCBmb3Jnb3R0ZW4uCkl0IG5lZWRzIG9ubHkgc29tZSBwb3J0
YWJpbGl0eSBlbmhhbmNlbWVudCAoZmlyc3Qgd291bGQgYmUgVW5peCwgdGhlbiBXaW5kb3dzKS4K
Q2FuIHlvdSBzZW5kIGEgcHJvcGVyIHBhdGNoIHdpdGggY29tbWl0IG1lc3NhZ2U/CgpGcmVkaWFu
bwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
