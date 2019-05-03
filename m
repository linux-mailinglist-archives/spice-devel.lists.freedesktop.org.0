Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E6E129AB
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 10:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7F08986D;
	Fri,  3 May 2019 08:16:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E585B89852
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 08:16:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 82453307D98F;
 Fri,  3 May 2019 08:16:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 750825D9C4;
 Fri,  3 May 2019 08:16:04 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6838541F3C;
 Fri,  3 May 2019 08:16:04 +0000 (UTC)
Date: Fri, 3 May 2019 04:16:04 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1521055835.16187989.1556871364366.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190502221211.25575-4-jwhite@codeweavers.com>
References: <20190502221211.25575-1-jwhite@codeweavers.com>
 <20190502221211.25575-4-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.13]
Thread-Topic: Add a --enable-dummy option to configure.
Thread-Index: vWaQpaRUpn1mV9DDscBnDF4aw0dbMw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 03 May 2019 08:16:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v3 x11spice 4/5] Add a --enable-dummy
 option to configure.
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBQcm92aWRlIHNvbWUgYmFzaWMgZG9jdW1lbnRhdGlvbiBhcyB0byBob3cgdG8gdXNlIHRo
ZSBuZXcKPiBzcGljZS12aWRlby1kdW1teSBkcml2ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVy
ZW15IFdoaXRlIDxqd2hpdGVAY29kZXdlYXZlcnMuY29tPgoKQWNrZWQtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKPiAtLS0KPiB2MzogVW5jaGFuZ2VkCj4gLS0tCj4g
IE1ha2VmaWxlLmFtICAgICAgICAgICAgICAgICAgICAgfCAgMyArKysKPiAgUkVBRE1FICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiAgY29uZmlndXJl
LmFjICAgICAgICAgICAgICAgICAgICB8ICA3ICsrKysrKysKPiAgc3BpY2UtdmlkZW8tZHVtbXkv
c3BpY2VkdW1teS5zaCB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICA0IGZp
bGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNzU1IHNwaWNl
LXZpZGVvLWR1bW15L3NwaWNlZHVtbXkuc2gKPiAKPiBkaWZmIC0tZ2l0IGEvTWFrZWZpbGUuYW0g
Yi9NYWtlZmlsZS5hbQo+IGluZGV4IGI5NDUyZjYuLmNkMjNkODEgMTAwNjQ0Cj4gLS0tIGEvTWFr
ZWZpbGUuYW0KPiArKysgYi9NYWtlZmlsZS5hbQo+IEBAIC0xLDQgKzEsNyBAQAo+ICBTVUJESVJT
ID0gc3JjCj4gK2lmIERVTU1ZCj4gKyAgICBTVUJESVJTICs9IHNwaWNlLXZpZGVvLWR1bW15Cj4g
K2VuZGlmCj4gIAo+ICBycG06IGRpc3QKPiAgCXJwbWJ1aWxkIC1iYSAtLWRlZmluZSAiX3NvdXJj
ZWRpciAkJFBXRCIgc3JjL2RhdGEveDExc3BpY2Uuc3BlYwo+IGRpZmYgLS1naXQgYS9SRUFETUUg
Yi9SRUFETUUKPiBpbmRleCAzNGU4YzFmLi4zZGJlZTgwIDEwMDY0NAo+IC0tLSBhL1JFQURNRQo+
ICsrKyBiL1JFQURNRQo+IEBAIC03NSw2ICs3NSwyNSBAQCBwYXNzd29yZCB5b3UgY2FuIHVzZSB0
byBjb25uZWN0Lgo+ICAKPiAgUmVmZXIgdG8gdGhlIHgxMXNwaWNlIG1hbiBwYWdlIGZvciBtb3Jl
IGRldGFpbHMuCj4gIAo+ICtTcGljZSBWaWRlbyBEdW1teSBEcml2ZXIKPiArLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gK0lmIHlvdSB3aXNoIHRvIGNyZWF0ZSBhICdoZWFkbGVzcycgY29ubmVj
dGlvbiB0byBhIHNlcnZlciAtIGNyZWF0ZSBhbgo+ICtYIHNlc3Npb24gd2l0aG91dCB1c2luZyB0
aGUgbWFpbiBzeXN0ZW0gZGlzcGxheSAtIHRoZXJlIGlzIGEgc3RyYWlnaHQKPiArZm9yd2FyZCBw
cm9jZXNzIHRoYXQgaXMgbm93IGluY2x1ZGVkIHdpdGggeDExc3BpY2UuCj4gKwo+ICtUaGF0IGlz
LCB4MTFzcGljZSBub3cgb3B0aW9uYWxseSBidWlsZHMgYW4gWG9yZyBkcml2ZXIgdGhhdCBpcyBi
YXNlZAo+ICtvbiB0aGUgZHVtbXkgZHJpdmVyIGFuZCB0aGUgbW9kZXNldHRpbmcgZHJpdmVyLiAg
VGhpcyBnaXZlcyBhIHZpcnR1YWwKPiArZnJhbWUgYnVmZmVyIGRyaXZlciB3aGljaCBzaG91bGQg
aW5jbHVkZSBtb2Rlcm4gTWVzYSBjYXBhYmlsaXRpZXMuCj4gKwo+ICtUbyB1c2UgdGhpcyBkcml2
ZXIsIHNpbXBseSBhZGQ6Cj4gKwo+ICsgIC0tZW5hYmxlLWR1bW15Cj4gKwo+ICt0byB0aGUgY29u
ZmlndXJlIGxpbmUuICBUaGlzIHdpbGwgYnVpbGQgdGhlIFhvcmcgZHJpdmVyLiAgQSBzaW1wbGlz
dGljCj4gK2V4YW1wbGUgaXMgaW5jbHVkZWQgc2hvd2luZyB0aGUgZ2VuZXJhbCBjb25jZXB0cyBv
ZiB1c2luZyB0aGlzIGRyaXZlci4KPiArUmVmZXIgdG8gdGhlIHNwaWNlLXZpZGVvLWR1bW15L3Nw
aWNlZHVtbXkuc2ggYmFzaCBzY3JpcHQgZm9yIG1vcmUKPiAraW5mb3JtYXRpb24uCj4gKwo+ICAK
PiAgVXNpbmcgY29kZSBjb3ZlcmFnZSAoZ2NvdikKPiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+IGRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKPiBpbmRleCBjZWU3
ZWMzLi4wYWNiNGQyIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3VyZS5hYwo+ICsrKyBiL2NvbmZpZ3Vy
ZS5hYwo+IEBAIC0xNyw2ICsxNywxMyBAQCBQS0dfQ0hFQ0tfTU9EVUxFUyhQSVhNQU4sIHBpeG1h
bi0xKQo+ICAKPiAgQU1fQ09ORElUSU9OQUwoW0hBVkVfR1RFU1RdLCBbcGtnLWNvbmZpZyAtLWF0
bGVhc3QtdmVyc2lvbj0yLjM4IGdsaWItMi4wXSkKPiAgCj4gK0FDX0FSR19FTkFCTEUoW2R1bW15
XSwgQVNfSEVMUF9TVFJJTkcoWy0tZW5hYmxlLWR1bW15XSwgW0J1aWxkcyB0aGUKPiBzcGljZS12
aWRlby1kdW1teSBkcml2ZXJdKSwgW2R1bW15PXRydWVdKQo+ICtBTV9DT05ESVRJT05BTChbRFVN
TVldLCB0ZXN0IHgkZHVtbXkgPSB4dHJ1ZSkKPiArCj4gK0FTX0lGKFt0ZXN0ICJ4JGR1bW15IiA9
ICJ4dHJ1ZSJdLCBbCj4gKyAgQUNfQ09ORklHX1NVQkRJUlMoW3NwaWNlLXZpZGVvLWR1bW15XSkK
PiArXSkKPiArCj4gIEFDX1BST0dfU0VECj4gICMgVG8gdXNlIGdjb3YsIG1ha2Ugc3VyZSB5b3Ug
aGF2ZSB0aGUgYXBwcm9wcmlhdGUgYXV0b2NvbmYgbWFjb3JzLAo+ICAjIGFuZCB1bmNvbW1lbnQg
dGhpcyBsaW5lLCBhbmQgdGhlIG1hdGNoaW5nIG9uZSBpbiBzcmMvTWFrZWZpbGUuYW0uCj4gZGlm
ZiAtLWdpdCBhL3NwaWNlLXZpZGVvLWR1bW15L3NwaWNlZHVtbXkuc2gKPiBiL3NwaWNlLXZpZGVv
LWR1bW15L3NwaWNlZHVtbXkuc2gKPiBuZXcgZmlsZSBtb2RlIDEwMDc1NQo+IGluZGV4IDAwMDAw
MDAuLmM4MzkzNGMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvc3BpY2UtdmlkZW8tZHVtbXkvc3Bp
Y2VkdW1teS5zaAo+IEBAIC0wLDAgKzEsMzAgQEAKPiArIyEvYmluL2Jhc2gKPiArIyAgRXhhbXBs
ZSBzY3JpcHQgdGhhdCBzaG93cyBob3cgdG8gbGF1bmNoIHRoZSBzcGljZSB2aWRlbyBkcml2ZXIK
PiArIyAgIGFuZCBhdHRhY2ggeDExc3BpY2UgdG8gaXQuICBUaGlzIGlzIG5vdCBtZWFudCBmb3Ig
cHJvZHVjdGlvbgo+ICsjICAgcHVycG9zZXMuCj4gKwo+ICtleHBvcnQgRElTUExBWT06Mgo+ICsK
PiArcGFzc3dvcmQ9YGhleGR1bXAgLW4yIC1lICcyLzEgIiUwMngiJyAvZGV2L3VyYW5kb21gCj4g
K3plcm9kaXI9YGRpcm5hbWUgJDBgCj4gK2R1bW15ZGlyPWAoY2QgJHplcm9kaXI7IHB3ZClgCj4g
K3htb2R1bGVzPWBYb3JnIC1zaG93RGVmYXVsdE1vZHVsZVBhdGggMj4mMWAKPiArCj4gKyMgU3Rh
cnQgWG9yZwo+ICt4aW5pdCAtLSBgd2hpY2ggWG9yZ2AgJERJU1BMQVkgXAo+ICsgICAgLW1vZHVs
ZXBhdGggIiRkdW1teWRpci9zcmMvLmxpYnMsJHhtb2R1bGVzIiBcCj4gKyAgICAtY29uZmlnICIk
ZHVtbXlkaXIvc3BpY2VkdW1teS5jb25mIiAmCj4gK3hwaWQ9JCEKPiArc2xlZXAgMQo+ICsKPiAr
JGR1bW15ZGlyLy4uL3NyYy94MTFzcGljZSAtLXBhc3N3b3JkPSRwYXNzd29yZCAtLWFsbG93LWNv
bnRyb2wgJgo+ICtzcGljZXBpZD0kIQo+ICsKPiArZWNobyBYb3JnIHNlcnZlciBzdGFydGVkIGFz
IHBpZCAkeHBpZAo+ICtlY2hvIFNwaWNlIHNlcnZlciBzdGFydGVkIGFzIHBpZCAkc3BpY2VwaWQK
PiArZWNobyBZb3Ugc2hvdWxkIGJlIGFibGUgdG8gY29ubmVjdCB3aXRoIGEgc3BpY2UgY2xpZW50
IG5vdyB0byBwb3J0IDU5MDAsCj4gK2VjaG8gIHVzaW5nIGEgcGFzc3dvcmQgb2YgJHBhc3N3b3Jk
Cj4gKwo+ICt3YWl0ICRzcGljZXBpZAo+ICsKPiAra2lsbCAkeHBpZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
