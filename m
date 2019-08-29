Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B695A205B
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908FB6E0CD;
	Thu, 29 Aug 2019 16:09:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BD86E0CD
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:09:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C3037F742
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:09:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2429460E3E
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:09:58 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1C56E24F2F;
 Thu, 29 Aug 2019 16:09:58 +0000 (UTC)
Date: Thu, 29 Aug 2019 12:09:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Message-ID: <2000944511.10115796.1567094997637.JavaMail.zimbra@redhat.com>
In-Reply-To: <50dcbe6b-87db-e3ef-9490-e27b000b9cfb@redhat.com>
References: <20190829042606.11637-1-fziglio@redhat.com>
 <20190829042606.11637-2-fziglio@redhat.com>
 <50dcbe6b-87db-e3ef-9490-e27b000b9cfb@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.16]
Thread-Topic: meson: Remove a warning in spice-common
Thread-Index: 68zJdkCd6zTE20fcpHadwujC3eIdkg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Thu, 29 Aug 2019 16:09:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/2] meson: Remove a warning
 in spice-common
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

PiAKPiBPbiA4LzI5LzE5IDE6MjYgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiA+IFRoaXMg
d2lsbCBkcm9wIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKPiA+ICJQcm9qZWN0IHRhcmdldHRpbmcg
Jz49IDAuNDguMCcgYnV0IHRyaWVkIHRvIHVzZSBmZWF0dXJlIGludHJvZHVjZWQKPiA+IGluICcw
LjUwLjAnOiBpbnN0YWxsIGFyZyBpbiBjb25maWd1cmVfZmlsZSIKPiA+IAo+ID4gVGhpcyBicmlu
Z3MgaW4gdGhlIGZvbGxvd2luZyBjaGFuZ2VzOgo+ID4gCj4gPiBGcmVkaWFubyBaaWdsaW8gKDUp
Ogo+ID4gICAgICAgY29kZWdlbjogVXNlIGhhc19lbmRfYXR0ciBpbnN0ZWFkIG9mIGhhc19hdHRy
KCJlbmQiKQo+ID4gICAgICAgY29kZWdlbjogRXhpdCB3aXRoIGVycm9yIG9uIGVycm9yIGdlbmVy
YXRpbmcgQyBzdHJ1Y3R1cmVzCj4gPiAgICAgICBwcm90b2NvbDogUmVtb3ZlZCB1bm5lZWRlZCB0
eXBlIHNwZWNpZmljYXRpb25zCj4gPiAgICAgICBjb2RlZ2VuOiBBZGQgYSBjaGVjayBmb3IgQyBz
dHJ1Y3R1cmUgZmllbGRzCj4gPiAgICAgICBtZXNvbjogUmVtb3ZlICJpbnN0YWxsIiBhcmd1bWVu
dCBmcm9tIGNvbmZpZ3VyZV9maWxlCj4gPiAKPiA+IFVyaSBMdWJsaW4gKDIpOgo+ID4gICAgICAg
cHR5cGVzLnB5OiByZW1vdmUgdXNlbGVzcyBjb25kaXRpb24gbWVtYmVyICE9IE5vbmUKPiA+ICAg
ICAgIHRlc3QtbWFyc2hhbGxlcnMucHJvdG86IEFycmF5TWVzc2FnZTogbWFrZSBzcGFjZSBmb3Ig
bmFtZQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVk
aGF0LmNvbT4KPiA+IC0tLQo+ID4gIHN1YnByb2plY3RzL3NwaWNlLWNvbW1vbiB8IDIgKy0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbiBiL3N1YnByb2plY3RzL3NwaWNl
LWNvbW1vbgo+ID4gaW5kZXggZmYyZTk5ZDg5Li40NzI3YzE5ZDMgMTYwMDAwCj4gPiAtLS0gYS9z
dWJwcm9qZWN0cy9zcGljZS1jb21tb24KPiA+ICsrKyBiL3N1YnByb2plY3RzL3NwaWNlLWNvbW1v
bgo+ID4gQEAgLTEgKzEgQEAKPiA+IC1TdWJwcm9qZWN0IGNvbW1pdCBmZjJlOTlkODkzMmRiNmIz
MGIyNDUwMWFlZjA3ODk4NTM1YWMwYmI0Cj4gPiArU3VicHJvamVjdCBjb21taXQgNDcyN2MxOWQz
NmIzMzA3MTkyODUwMGFkYWE4MzJlY2VmNmJkZDk0Mgo+ID4gCj4gCj4gRm9yIHRoZSBzZXJpZXM6
Cj4gCj4gQWNrZWQtYnk6IEVkdWFyZG8gTGltYSAoRXRydW5rbykgPGV0cnVua29AcmVkaGF0LmNv
bT4KPiAKCk11bWJsZSwgSSBqdXN0IHJlYWxpemVkIHRoYXQgSSBjYW4gZG8gd2l0aG91dCBidW1w
aW5nIHRoZSB2ZXJzaW9uLgpJJ2xsIHNlbmQgYW4gdXBkYXRlCgpGcmVkaWFubwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
