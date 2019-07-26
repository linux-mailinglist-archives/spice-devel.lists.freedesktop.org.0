Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45D776427
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 13:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F9B6ED1E;
	Fri, 26 Jul 2019 11:09:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866616ED1E
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 11:09:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0D312A3B6E;
 Fri, 26 Jul 2019 11:09:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 027105DA97;
 Fri, 26 Jul 2019 11:09:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB3DF18089C8;
 Fri, 26 Jul 2019 11:09:07 +0000 (UTC)
Date: Fri, 26 Jul 2019 07:09:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1977790209.3105030.1564139347711.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5OdY1vOTM0dwJOdVh+f7ijg++siw6i30XJVh_B0O6p7SrQ@mail.gmail.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <1528197574.2953680.1564045298943.JavaMail.zimbra@redhat.com>
 <CAOEp5OdB0hg4u=+Nk+2T8P=cdjdQ1n0m0GwkuhPxgLxk6rWiQg@mail.gmail.com>
 <1392106279.2977164.1564054045587.JavaMail.zimbra@redhat.com>
 <615004152.3040546.1564076765218.JavaMail.zimbra@redhat.com>
 <CAOEp5Od0O_GGhnF9q_Ne1rt0-uJUX4LQyFM9Xap+6POqE8=f_Q@mail.gmail.com>
 <20190726070933.wrer35srddo7z2cg@wingsuit>
 <CAOEp5OdY1vOTM0dwJOdVh+f7ijg++siw6i30XJVh_B0O6p7SrQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.10]
Thread-Topic: usb-redir: device error signal without device object
Thread-Index: rKVBheG22PHA8riDgttB6hh2x2aLNw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Fri, 26 Jul 2019 11:09:08 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 2/9] usb-redir: device error signal
 without device object
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAxMDowOSBBTSBWaWN0b3IgVG9zbyA8dmljdG9y
dG9zb0ByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiBIaSwKPiA+Cj4gPiBPbiBGcmksIEp1bCAy
NiwgMjAxOSBhdCAwODowODowN0FNICswMzAwLCBZdXJpIEJlbmRpdG92aWNoIHdyb3RlOgo+ID4g
PiBPbiBUaHUsIEp1bCAyNSwgMjAxOSBhdCA4OjQ2IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgo+ID4gPiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IEBAIC0xNDQwLDYgKzE0
NDYsMTAgQEAgZ2NoYXIKPiA+ID4gPiA+ID4gPiA+ICpzcGljZV91c2JfZGV2aWNlX2dldF9kZXNj
cmlwdGlvbihTcGljZVVzYkRldmljZQo+ID4gPiA+ID4gPiA+ID4gKmRldmljZSwgY29uc3QgZ2No
YXIgKmZvcgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ICAgICAgZ19yZXR1cm5fdmFs
X2lmX2ZhaWwoZGV2aWNlICE9IE5VTEwsIE5VTEwpOwo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiA+ICsgICAgaWYgKCFkZXZpY2UtPmJkZXYpIHsKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAg
IHJldHVybiBnX3N0cmR1cChfKCJVU0IgcmVkaXJlY3Rpb24iKSk7Cj4gPiA+ID4gPiA+ID4gPiAr
ICAgIH0KPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ICAgICAgYnVzICAgICA9IHNw
aWNlX3VzYl9kZXZpY2VfZ2V0X2J1c251bShkZXZpY2UpOwo+ID4gPiA+ID4gPiA+ID4gICAgICBh
ZGRyZXNzID0gc3BpY2VfdXNiX2RldmljZV9nZXRfZGV2YWRkcihkZXZpY2UpOwo+ID4gPiA+ID4g
PiA+ID4gICAgICB2aWQgICAgID0gc3BpY2VfdXNiX2RldmljZV9nZXRfdmlkKGRldmljZSk7Cj4g
PiA+ID4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IE9rLCBub3cgSSBoYWQgdW5kZXJzdGFuZCB0aGlz
IHBhdGNoLiBUaGlzIGlzIHJlbW92aW5nIHRoZQo+ID4gPiA+IGFzc3VtcHRpb24gdGhhdCBiZGV2
IGlzIG5ldmVyIE5VTEwuCj4gPiA+ID4gT25seSB0byBzdXBwb3J0IGNhbGxpbmcgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyX2RldmljZV9lcnJvcgo+ID4gPiA+IHdpdGggYSBOVUxMIGRldmljZS4K
PiA+ID4gPiBJIHdvdWxkIHNheSBuYWNrIHRvIHRoaXMgcGF0Y2ggYW5kIGZpbmQgYW5vdGhlciBz
b2x1dGlvbi4KPiA+ID4gPiBNYXliZSBhZGRpbmcgYSAiZGV2aWNlX2NyZWF0aW9uX2Vycm9yIiBz
aWduYWwgd2l0aCAiZXJyb3IiCj4gPiA+ID4gYnV0IG5vIGRldmljZS4KPiA+ID4KPiA+ID4gSU1P
LCBjcmVhdGluZyBzcGVjaWFsIGVudGl0eSBmb3IgZWFjaCBjYXNlIHRoYXQgaXMgbGl0dGxlCj4g
PiA+IGRpZmZlcmVudCBmcm9tIGV4aXN0aW5nIG9uZXMgaXMgZGlzcmVzcGVjdCB0byBPY2NhbSdz
IHByaW5jaXBsZQo+ID4gPiAoYW5kIHNldmVyYWwgc2ltaWxhciBvbmVzKS4KPiA+Cj4gPiBIZWgs
IG5pY2UgdHJ5LiBUaGUgZGlmZmVyZW5jZSBoZXJlLCBJTU8sIHdvdWxkIGJlIHRoYXQgeW91IGhh
dmUgYQo+ID4gY2xlYXIgb2JqZWN0aXZlOiBnaXZlIGFuIGVycm9yIHdoZW4gZGV2aWNlIGNyZWF0
aW9uIGZhaWxzLiBZb3UKPiA+IHdhbnQgdG8gZG8gaXQgYnkgZW1pdCBhbiBlcnJvciBzaWduYWwg
aW4gYSBmYWtlLCBlbXB0eSBkZXZpY2UKPiA+IHdoaWNoIGlzIHF1aXRlIHRoZSB3b3JrYXJvdW5k
IGFuZCBJIHdvdWxkbid0IGNhbGwgaXQgYSBzaW1wbGVyCj4gPiBhbHRlcm5hdGl2ZS4KPiA+Cj4g
PiA+IEluIGNvbnRleHQgb2YgJ2RldmljZSBlcnJvciBzaWduYWwnIHRoZSAnZGV2aWNlJyBpcyBz
b21ldGhpbmcKPiA+ID4gdGhhdCBjYW4gcmVmZXJlbmNlZC9kZXJlZmVyZW5jZWQgYW5kIHdoaWNo
IG5hbWUgY2FuIGJlCj4gPiA+IHJldHJpZXZlZC4KPiA+ID4gPiBUaGlzIGlzIG5vdCBhIGRldmlj
ZSBlcnJvciwgaXQncyBhIGRldmljZSBtYW5hZ2VyIGVycm9yLgo+ID4gPgo+ID4gPiBXZSBjYW4g
dmlldyBkZXZpY2UgbWFuYWdlciBhcyBraW5kIG9mIGRldmljZSwgdGhlbiB0aGVyZSBpcyBjb25m
bGljdC4KPiA+Cj4gPiBUaGF0IHVwc2V0cyBtZSBhIGxpdHRsZS4gV2hlbiBJIHN0YXJ0ZWQgbGVh
cm5pbmcgdGhlIHVzYiBzdGFjayBpbgo+ID4gc3BpY2UtZ3RrIHRvIGdpdmUgc29tZSB0aG91Z2gg
b24gdGhlIGRlc2lnbiBwcm9wb3NhbHMsIEkgc2F3IGxvdHMKPiA+IG9mIHBvdGVudGlhbCB0byB0
aGUgdXNiLWJhY2tlbmQgd29yay4gV2hhdCB5b3UgcHJvcG9zZXMgaGVyZSBnb2VzCj4gPiBpbiBv
cHBvc2l0ZSBkaXJlY3Rpb24gb2YgYSBjbGVhciBkZWZpbml0aW9uIG9mIHdoYXQgZWFjaAo+ID4g
Y29tcG9uZW50IG9mIHRoaXMgZG9lcy4KPiA+Cj4gPiBTbywgSSdkIHNheSBhbHNvIGluIHJlcGx5
IHRvIHlvdXIgcHJldmlvdXMgYXJndW1lbnQgYXJvdW5kIG5vdAo+ID4gZGVmaW5pbmcgYW4gQVBJ
LiBXZSBjYW4gZGVmaW5lIGFuIEFQSSBhbiBzdGlsbCBjaGFuZ2UgaXQgYmVmb3JlCj4gPiB0aGUg
bmV4dCByZWxlYXNlLCB0aGF0J3Mgb2suIEl0IGlzIGFsc28gb2sgdG8gZGVwcmVjYXRlIGl0IGlu
IHRoZQo+ID4gbmV4dCByZWxlYXNlIGlmIHdlIGZlZWwgd2UgZGlkIGl0IHdyb25nLiBCdXQgbGV0
J3MgZG8gaXQgaW4gdGhlCj4gPiByaWdodCB3YXksIHRyeWluZyB0byBhY2hpZXZlIHNvbWV0aGlu
ZyBlYXN5IHRvIHVuZGVyc3RhbmQgYW5kCj4gPiBtYWludGFpbi4KPiAKPiBUaGUgcG9pbnQgaXMg
dGhhdCBldmVuIHdlIGRlZmluZSB0aGUgQVBJIChpbiBvbGQgcHJldmlldyB2ZXJzaW9uIG9mCj4g
Y2Qtc2hhcmluZyBpdCB3YXMpCj4gdGhlIGVycm9yIHRoYXQgY2FuIGhhcHBlbiBkdXJpbmcgY3Jl
YXRpb24gb2YgZGV2aWNlIGNhbiBub3QgYmUgcHJvcGFnYXRlZCB1cC4KPiBUaGUgc3BpY2Utc2Vz
c2lvbiBkb2VzIG5vdCBoYXZlIHN1Y2ggYWJpbGl0eSAoaWYgSSdtIG5vdCBtaXN0YWtlbikuCj4g
U28gaXQgY2FuIG9ubHkgaXNzdWUgZGVidWcgd2FybmluZy4gQnV0IHRoaXMgaXMgYWx3YXlzIHBv
c3NpYmxlIGFsc28KPiB3aXRob3V0IGN1cnJlbnQgcGF0Y2guCj4gdXNiLWRldmljZS1tYW5hZ2Vy
IGlzIGFibGUgdG8gc2VuZCB0aGUgZXJyb3IgdXAgdG8gdGhlIGFwcGxpY2F0aW9uLAo+IHRoaXMg
aXMgYSByZWFzb24gd2h5IEkgd2FudGVkIHRvIHVzZSB0aGlzIG1ldGhvZC4KPiAKCldoeSBhbiBB
UEkgbGlrZToKCmdib29sZWFuIApzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY3JlYXRlX3NoYXJl
ZF9jZChTcGljZVVzYkRldmljZU1hbmFnZXIgKm1hbmFnZXIsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKnNoYXJlX2NkLCBHRXJyb3IgKiplcnIp
OwoKY2Fubm90IHdvcmsgYW5kIHByb3BhZ2F0ZSB0aGUgZXJyb3I/Cgo+ID4KPiA+ID4KPiA+ID4g
PiBUaGlzIGlzIGNhdXNlZCBieSB3YW50aW5nIHRvIHVzZSBhbiBpbnRlcmZhY2UgKHByb3BlcnRp
ZXMpCj4gPiA+ID4gdGhhdCBkb2VzIG5vdCBhbGxvdyB0byByZXR1cm4gYW4gZXJyb3IgaW5zdGVh
ZC4KPiA+ID4KPiA+ID4gQXMgYW55IHNvbHV0aW9uLCB0aGlzIG9uZSBoYXMgcHJvcyBhbmQgY29u
cy4gRnJvbSBteSBwZXJzb25hbAo+ID4gPiBwb2ludCBvZiB2aWV3LCBpdCBoYXMgc2lnbmlmaWNh
bnQgcHJvIChsb3cgY29zdCBvZgo+ID4gPiBpbXBsZW1lbnRhdGlvbikgYW5kIGRvZXMgbm90IGhh
dmUgYW55IHNpZ25pZmljYW50IGNvbi4KPiA+Cj4gPiBDaGVlcnMsCj4gPiBWaWN0b3IKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
