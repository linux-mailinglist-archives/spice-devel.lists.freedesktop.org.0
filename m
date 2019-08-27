Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C6C9EAB7
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 16:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1F789B4D;
	Tue, 27 Aug 2019 14:18:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6278989B4D
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 14:18:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0B81F30860A8;
 Tue, 27 Aug 2019 14:18:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F3B6060600;
 Tue, 27 Aug 2019 14:18:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E6DD424F2F;
 Tue, 27 Aug 2019 14:18:18 +0000 (UTC)
Date: Tue, 27 Aug 2019 10:18:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1496957874.9401902.1566915498881.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190827133726.j5oilyus7grtb5uo@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-22-fziglio@redhat.com> <m1sgpmevmv.fsf@dinechin.org>
 <20190827133726.j5oilyus7grtb5uo@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.79, 10.4.195.19]
Thread-Topic: Add --werror
Thread-Index: r9fBq4vmS5x56pmhfZTdogyCKhqmBA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 27 Aug 2019 14:18:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 21/29] CI: Add --werror
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
Cc: spice-devel@lists.freedesktop.org,
 Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBIaSwKPiAKPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAxMjo0MzozNlBNICswMjAwLCBD
aHJpc3RvcGhlIGRlIERpbmVjaGluIHdyb3RlOgo+ID4gCj4gPiBGcmVkaWFubyBaaWdsaW8gd3Jp
dGVzOgo+ID4gCj4gPiA+IEdpdmUgZXJyb3JzIG9uIHdhcm5pbmdzLCB3ZSB3YW50IHRoZSBjb2Rl
IHRvIGNvbXBpbGUgd2l0aG91dAo+ID4gPiB3YXJuaW5ncywgYXQgbGVhc3Qgd2l0aCBDSS4KPiA+
IAo+ID4gTG9va3MgZ29vZCB0byBtZSwgYnV0IGZyb20gZXhwZXJpZW5jZSB3aXRoIG90aGVyIHBy
b2plY3RzLAo+ID4gbmV3IGNvbXBpbGVyIHJlbGVhc2VzIHRlbmQgdG8gYWRkIG5ldyB3YXJuaW5n
cyB0aGF0IHdpbGwgYnJlYWsKPiA+IHlvdXIgYnVpbGRzLiBZb3UgZG9uJ3QgY29udHJvbCB0aGUg
cmVsZWFzZSB0aW1lbGluZSBvZiBjb21waWxlcnMKPiA+IGluIHlvdXIgQ0kgZW52aXJvbm1lbnQu
IFNvIGp1c3QgYmUgcmVhZHkgdG8gc2NyYW1ibGUtZml4Cj4gPiBuZXcgY29tcGlsZXItaW50cm9k
dWNlZCAiZXJyb3JzIi4KPiAKPiBUaGF0J3MgdHJ1ZSBidXQgc29tZWhvdyBiZXR0ZXIgdG8ga25v
dyBhbmQgYWN0IGVpdGhlciBieSBmaXhpbmcKPiBvciBibGFja2xpc3RpbmcgdGhlbS4KPiAKCkkg
d291bGQgaGFkIHRoYXQgd2UgZGlkIHRoaXMgaW4gc3BpY2Utc2VydmVyIGZvciBkaWZmZXJlbnQg
cmVsZWFzZXMKb2YgYm90aCBzcGljZS1zZXJ2ZXIgYW5kIEZlZG9yYSBhbmQgaXMgbm90IHJlYWxs
eSBvdmVya2lsbGluZywgdXN1YWxseQp0aGVyZSdzIGEgY29tcGlsZXIgYnVtcCB3aGVuIHRoZSBk
aXN0cm8gY2hhbmdlcyByZWxlYXNlIHNvIGtpbmQgb2YKdHdpY2UgYSB5ZWFyLCBhbmQgd2UgY2Fu
IHRlbXBvcmFyaWx5IGZvcmNlIHRoZSBvbGQgcmVsZWFzZS4KCj4gUGF0Y2ggc2VlbXMgZmluZSB0
byBtZSBhcyB3ZWxsLAo+IEFja2VkLWJ5OiBWaWN0b3IgVG9zbyA8dmljdG9ydG9zb0ByZWRoYXQu
Y29tPgo+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVk
aGF0LmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAuZ2l0bGFiLWNpLnltbCB8IDEwICsrKysrLS0tLS0K
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4g
PiA+Cj4gPiA+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4g
PiA+IGluZGV4IGZhNzBmN2FkLi44YmNlZjY1ZCAxMDA2NDQKPiA+ID4gLS0tIGEvLmdpdGxhYi1j
aS55bWwKPiA+ID4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiA+ID4gQEAgLTI4LDExICsyOCwxMSBA
QCBmZWRvcmE6Cj4gPiA+ICAgIGJlZm9yZV9zY3JpcHQ6Cj4gPiA+ICAgICAgLSBkbmYgaW5zdGFs
bCAteSAkREVQU19DT01NT04gJERFUFNfRkVET1JBCj4gPiA+ICAgICAgLSBnaXQgY2xvbmUgJHtD
SV9SRVBPU0lUT1JZX1VSTC9zcGljZS1ndGsvc3BpY2UtcHJvdG9jb2x9Cj4gPiA+IC0gICAgLSBt
ZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIHNwaWNlLXByb3RvY29sIGJ1aWxkLXNwaWNlLXByb3Rv
Y29sCj4gPiA+IC0tcHJlZml4PS91c3IKPiA+ID4gKyAgICAtIG1lc29uIC0tYnVpbGR0eXBlPXJl
bGVhc2Ugc3BpY2UtcHJvdG9jb2wgYnVpbGQtc3BpY2UtcHJvdG9jb2wKPiA+ID4gLS1wcmVmaXg9
L3VzciAtLXdlcnJvcgo+ID4gPiAgICAgIC0gbmluamEgLUMgYnVpbGQtc3BpY2UtcHJvdG9jb2wg
aW5zdGFsbAo+ID4gPgo+ID4gPiAgICBzY3JpcHQ6Cj4gPiA+IC0gICAgLSBtZXNvbiAtLWJ1aWxk
dHlwZT1yZWxlYXNlIGJ1aWxkLWRlZmF1bHQKPiA+ID4gKyAgICAtIG1lc29uIC0tYnVpbGR0eXBl
PXJlbGVhc2UgYnVpbGQtZGVmYXVsdCAtLXdlcnJvcgo+ID4gPiAgICAgICMgTWVzb24gZG9lcyBu
b3QgdXBkYXRlIHN1Ym1vZHVsZXMgcmVjdXJzaXZlbHkKPiA+ID4gICAgICAtIGdpdCBzdWJtb2R1
bGUgdXBkYXRlIC0taW5pdCAtLXJlY3Vyc2l2ZQo+ID4gPiAgICAgICMgdGhpcyBmaXggYW4gaXNz
dWUgd2l0aCBNZXNvbiBkaXN0Cj4gPiA+IEBAIC00Miw3ICs0Miw3IEBAIGZlZG9yYToKPiA+ID4g
ICAgICAtIG5pbmphIC1DIGJ1aWxkLWRlZmF1bHQKPiA+ID4gICAgICAtIG5pbmphIC1DIGJ1aWxk
LWRlZmF1bHQgdGVzdAo+ID4gPgo+ID4gPiAtICAgIC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFz
ZSBidWlsZC1mZWF0LWRpc2FibGVkCj4gPiA+IC1EYXV0b19mZWF0dXJlcz1kaXNhYmxlZAo+ID4g
PiArICAgIC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSBidWlsZC1mZWF0LWRpc2FibGVkCj4g
PiA+IC1EYXV0b19mZWF0dXJlcz1kaXNhYmxlZCAtLXdlcnJvcgo+ID4gPiAgICAgIC0gbmluamEg
LUMgYnVpbGQtZmVhdC1kaXNhYmxlZAo+ID4gPiAgICAgIC0gbmluamEgLUMgYnVpbGQtZmVhdC1k
aXNhYmxlZCB0ZXN0Cj4gPiA+Cj4gPiA+IEBAIC01OCwxMSArNTgsMTEgQEAgd2luZG93czoKPiA+
ID4gICAgICAtIGRuZiBpbnN0YWxsIC15ICRERVBTX0NPTU1PTiAkREVQU19NSU5HVwo+ID4gPiAg
ICAgIC0gZ2l0IGNsb25lICR7Q0lfUkVQT1NJVE9SWV9VUkwvc3BpY2UtZ3RrL3NwaWNlLXByb3Rv
Y29sfQo+ID4gPiAgICAgIC0gbWtkaXIgc3BpY2UtcHJvdG9jb2wvYnVpbGQtc3BpY2UtcHJvdG9j
b2wgJiYgY2QKPiA+ID4gICAgICBzcGljZS1wcm90b2NvbC9idWlsZC1zcGljZS1wcm90b2NvbAo+
ID4gPiAtICAgIC0gbWluZ3c2NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC0tcHJlZml4PS91
c3IKPiA+ID4gKyAgICAtIG1pbmd3NjQtbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSAtLXByZWZp
eD0vdXNyIC0td2Vycm9yCj4gPiA+ICAgICAgLSBuaW5qYSBpbnN0YWxsCj4gPiA+Cj4gPiA+ICAg
IHNjcmlwdDoKPiA+ID4gICAgICAtIGNkICRDSV9QUk9KRUNUX0RJUgo+ID4gPiAgICAgIC0gbWtk
aXIgYnVpbGQtd2luNjQgJiYgY2QgYnVpbGQtd2luNjQKPiA+ID4gLSAgICAtIG1pbmd3NjQtbWVz
b24gLS1idWlsZHR5cGU9cmVsZWFzZSAtRGd0a19kb2M9ZGlzYWJsZWQKPiA+ID4gKyAgICAtIG1p
bmd3NjQtbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSAtRGd0a19kb2M9ZGlzYWJsZWQgLS13ZXJy
b3IKPiA+ID4gICAgICAtIG5pbmphIGluc3RhbGwKPiA+IAo+ID4gCj4gPiAtLQo+ID4gQ2hlZXJz
LAo+ID4gQ2hyaXN0b3BoZSBkZSBEaW5lY2hpbiAoSVJDIGMzZCkKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
