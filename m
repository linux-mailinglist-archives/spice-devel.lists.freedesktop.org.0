Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D9C8BD71
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 17:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38766E192;
	Tue, 13 Aug 2019 15:42:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC75D6E192
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 15:42:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 49DC630B337D
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 15:42:36 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A1C8A34D3B;
 Tue, 13 Aug 2019 15:42:35 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190811092605.31952-1-uril@redhat.com>
 <20190811092605.31952-2-uril@redhat.com>
 <844999742.5452572.1565517745161.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <9c8400c4-1b96-5f4b-7cfc-f969d84c775f@redhat.com>
Date: Tue, 13 Aug 2019 18:42:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <844999742.5452572.1565517745161.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 13 Aug 2019 15:42:36 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-common PATCH 2/2] test-marshallers.proto:
 ArrayMessage: make space for name
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

T24gOC8xMS8xOSAxOjAyIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+IERvIGl0IGJ5
IGFkZGluZyBAZW5kIHRhZy4KPj4gV2l0aG91dCBpdCAnbmFtZScgaXMgYSBub24tYWxsb2NhdGVk
IHBvaW50ZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNv
bT4KPj4gLS0tCj4+Cj4+IElzIHRoZXJlIGEgYmV0dGVyIHdheSB0byBkbyBpdCA/Cj4gCj4gSXMg
bm90IGNsZWFyIHdoYXQgeW91IGFyZSB0cnlpbmcgdG8gYWNoaWV2ZSB3aXRoIHRoaXMgcGF0Y2gu
CgpUaGUgcHJvYmxlbSBpcyBjdXJyZW50bHkgbmFtZSBpcyBkZWZpbmVkIGFzIGEgcG9pbnRlcgpi
dXQgaXMgbm90IGFsbG9jYXRlZC4KVGhlIGdlbmVyYXRlZCBjb2RlIHRyaWVzIHRvIG1lbWNweSBk
YXRhIGludG8gbmFtZSwgd2hpY2ggaXMKd3JvbmcuIEkgc2VlIG5vdyB0aGUgcGF0Y2ggaXMgbWlz
c2luZyBhIHBhcnQgLS0gbW9yZSBiZWxvdy4KCgo+IAo+Pgo+PiAtLS0KPj4KPj4gICB0ZXN0cy90
ZXN0LW1hcnNoYWxsZXJzLnByb3RvIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvdGVzdHMvdGVzdC1tYXJz
aGFsbGVycy5wcm90byBiL3Rlc3RzL3Rlc3QtbWFyc2hhbGxlcnMucHJvdG8KPj4gaW5kZXggMzRj
Yzg5Mi4uZWFiZDQ4NyAxMDA2NDQKPj4gLS0tIGEvdGVzdHMvdGVzdC1tYXJzaGFsbGVycy5wcm90
bwo+PiArKysgYi90ZXN0cy90ZXN0LW1hcnNoYWxsZXJzLnByb3RvCj4+IEBAIC02LDcgKzYsNyBA
QCBjaGFubmVsIFRlc3RDaGFubmVsIHsKPj4gICAgICB9IFNob3J0RGF0YVN1Yk1hcnNoYWxsOwo+
PiAgIAo+PiAgICAgIG1lc3NhZ2Ugewo+PiAtICAgICAgaW50OCBuYW1lW107Cj4+ICsgICAgICBp
bnQ4IG5hbWVbXSBAZW5kOwo+PiAgICAgIH0gQXJyYXlNZXNzYWdlOwo+PiAgIAo+PiAgICAgICBt
ZXNzYWdlIHsKPiAKPiBXb25kZXJpbmcgd2hlcmUgdGhpcyBtZXNzYWdlIGlzIHVzZWQsIEkgY2Fu
bm90IGZpbmQgbXVjaCByZWZlcmVuY2VzCj4gdG8gaXQgYmVzaWRlIGF1dG9nZW5lcmF0ZWQgY29k
ZS4KCkkgdGhpbmsgaXQgaXMgbm90IHVzZWQuCgo+IAo+IFRoZXJlJ3MgYSBkZWNsYXJhdGlvbiBm
b3IgdGhlIHR5cGU6Cj4gCj4gdHlwZWRlZiBzdHJ1Y3Qgewo+ICAgICAgaW50OF90ICpuYW1lOwo+
IH0gU3BpY2VNc2dNYWluQXJyYXlNZXNzYWdlOwoKWWVzLCB0aGlzIGlzIHdyb25nIHRvbyAtLSBp
dCBuZWVkcyB0byBiZSBpbnQ4X3QgbmFtZVswXS4KCj4gCj4gSSB0cmllZCB0byB1c2UgdGhlIGNv
ZGUgdG8gZ2VuZXJhdGUgdGhlIHN0cnVjdHVyZSBkZWZpbml0aW9ucyBhbmQKPiBJIGdvdCB0aGlz
IGluc3RlYWQKPiAKPiB0eXBlZGVmIHN0cnVjdCBTcGljZU1zZ01haW5BcnJheU1lc3NhZ2Ugewo+
ICAgICAgaW50OF90IG5hbWVbMF07Cj4gfSBTcGljZU1zZ01haW5BcnJheU1lc3NhZ2U7CgpUaGF0
J3MgY29ycmVjdC4gTWF5YmUgd2Ugc2hvdWxkIGF1dG8tZ2VuZXJhdGUgdGhpcyAuaCBmaWxlLgoK
PiAKPiBUaGUgZGVtYXJzaGFsbGVyIHNlZW1zIHRvIG5vdCBhbGxvY2F0ZSBzcGFjZSBmb3IgdGhl
IGZpZWxkIHdoaWNoCj4gc2VlbXMgcXVpdGUgYSBwcm9ibGVtIChtYXliZSB0aGlzIGlzIGRldGVj
dGVkIGJ5IENvdmVyaXR5Pz8pLgoKSXQgaXMgaW5kZWVkIGRldGVjdGVkIGJ5IGNvdnNjYW4uCgo+
IAo+IEkgcmVtZW1iZXIgSSBoYWQgYSBwYXRjaCB3aXRoIHNvbWUgbm90ZXMgYWJvdXQgcG9zc2li
bGUKPiBzZWN1cml0eSBjb25jZXJuZWQgbWl4IG9mIGF0dHJpYnV0ZXMsIG1heWJlIHRoaXMgd2Fz
IG9uZQo+IHNpdHVhdGlvbi4KPiBUaGVyZSBhcmUgbm8gb2NjdXJyZW5jZXMgb2YgdGhpcyBtaXgg
aW4gc3BpY2UucHJvdG8sIGVpdGhlcgo+IHlvdSBoYXZlIEBlbmQgb3IgQGFzX3B0ciBub3QgYXJy
YXlzIHdpdGggdW5zcGVjaWZpZWQgbGVuZ3RoLgoKQW5kIHRoaXMgcGF0Y2ggaXMgYWRkaW5nIEBl
bmQuCgpJJ2xsIHNlbmQgYSBWMiAtLSBjaGFuZ2luZyB0ZXN0cy90ZXN0LW1hcnNoYWxsZXJzLmgg
dG9vCgpUaGFua3MsCiAgICAgVXJpLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
