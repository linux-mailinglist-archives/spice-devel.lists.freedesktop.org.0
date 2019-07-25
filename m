Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A82749A8
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 11:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958A06E6A7;
	Thu, 25 Jul 2019 09:17:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 127706E6A7
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 09:17:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6603F30BC58B;
 Thu, 25 Jul 2019 09:17:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C5201001B02;
 Thu, 25 Jul 2019 09:17:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 512EC41F53;
 Thu, 25 Jul 2019 09:17:15 +0000 (UTC)
Date: Thu, 25 Jul 2019 05:17:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <1067233620.2956119.1564046235108.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190724105351.13753-6-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-6-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.14]
Thread-Topic: usb-redir: do not use spice_usb_acl_helper for emulated devices
Thread-Index: nxJdI+jCywoAgG7mKYYgWyRW+kaA1w==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 25 Jul 2019 09:17:15 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 5/9] usb-redir: do not use
 spice_usb_acl_helper for emulated devices
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRh
eW5peC5jb20+Cj4gLS0tCj4gIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgfCAyOSArKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwg
MTUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMg
Yi9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gaW5kZXggOGQ0Y2Q2Ni4uOTYxYTQ2NCAxMDA2NDQK
PiAtLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gKysrIGIvc3JjL2NoYW5uZWwtdXNicmVk
aXIuYwo+IEBAIC0zMDEsNyArMzAxLDYgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hh
bm5lbF9vcGVuX2FjbF9jYigKPiAgfQo+ICAjZW5kaWYKPiAgCj4gLSNpZm5kZWYgVVNFX1BPTEtJ
VAo+ICBzdGF0aWMgdm9pZAo+ICBfb3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4g
ICAgICAgICAgICAgICAgICAgICAgICBncG9pbnRlciBvYmplY3QsCj4gQEAgLTMyOCw3ICszMjcs
NiBAQCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4gICAgICAgICAgZ190YXNr
X3JldHVybl9ib29sZWFuKHRhc2ssIFRSVUUpOwo+ICAgICAgfQo+ICB9Cj4gLSNlbmRpZgo+ICAK
PiAgR19HTlVDX0lOVEVSTkFMCj4gIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9jb25uZWN0
X2RldmljZV9hc3luYygKPiBAQCAtMzczLDIxICszNzEsMjIgQEAgdm9pZCBzcGljZV91c2JyZWRp
cl9jaGFubmVsX2Nvbm5lY3RfZGV2aWNlX2FzeW5jKAo+ICAgICAgcHJpdi0+c3BpY2VfZGV2aWNl
ID0gZ19ib3hlZF9jb3B5KHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3R5cGUoKSwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV9kZXZpY2UpOwo+ICAjaWZkZWYgVVNF
X1BPTEtJVAo+IC0gICAgcHJpdi0+dGFzayA9IHRhc2s7Cj4gLSAgICBwcml2LT5zdGF0ZSAgPSBT
VEFURV9XQUlUSU5HX0ZPUl9BQ0xfSEVMUEVSOwo+IC0gICAgcHJpdi0+YWNsX2hlbHBlciA9IHNw
aWNlX3VzYl9hY2xfaGVscGVyX25ldygpOwo+IC0gICAgZ19vYmplY3Rfc2V0KHNwaWNlX2NoYW5u
ZWxfZ2V0X3Nlc3Npb24oU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSksCj4gLSAgICAgICAgICAgICAg
ICAgImluaGliaXQta2V5Ym9hcmQtZ3JhYiIsIFRSVUUsIE5VTEwpOwo+IC0gICAgc3BpY2VfdXNi
X2FjbF9oZWxwZXJfb3Blbl9hY2xfYXN5bmMocHJpdi0+YWNsX2hlbHBlciwKPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmJ1cywKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmFkZHJlc3MsCj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYW5jZWxsYWJsZSwKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9h
Y2xfY2IsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVs
KTsKPiArICAgIGlmIChpbmZvLT5kZXZpY2VfdHlwZSA9PSBVU0JfREVWX1RZUEVfTk9ORSkgewoK
V2h5IG5vdCAKCiAgIGlmIChpbmZvLT5kZXZpY2VfdHlwZSAhPSBVU0JfREVWX1RZUEVfTk9ORSkg
ewogICAgICByZXR1cm47CiAgIH0KCndvdWxkIG1pbmltaXplIGNoYW5nZXMuCkFzIHN0YXRlZCBp
biBwcmV2aW91cyBjb21tZW50IChvdGhlciBwYXRjaCkgdGhlIGVudW1lcmF0aW9uIGlzIG1pc2xl
YWRpbmcuCkFzICJpbmZvIiBob2xkIGluZm9ybWF0aW9uIGZvciBhbnkgdXNiIGRldmljZSBwZW9w
bGUgcmVhZGluZyB0aGlzIHdvdWxkIHNheQp0aGF0IHRoZSBkZXZpY2Ugd2FzIG5vdCB2YWxpZCwg
c29tZXRoaW5nIGxpa2UKCiAgaWYgKGluZm8tPmVtdWxhdGVkX3R5cGUgIT0gVVNCX0RFVl9FTVVf
VFlQRV9OT1RfRU1VTEFURUQpCgpvcgoKICBpZiAoaW5mby0+ZW11bGF0ZWRfdHlwZSAhPSBVU0Jf
REVWX0VNVV9UWVBFX1JFQUwpCgp3b3VsZCBiZSBtdWNoIG1vcmUgdW5kZXJzdGFuZGFibGUuCgo+
ICsgICAgICAgIHByaXYtPnRhc2sgPSB0YXNrOwo+ICsgICAgICAgIHByaXYtPnN0YXRlICA9IFNU
QVRFX1dBSVRJTkdfRk9SX0FDTF9IRUxQRVI7Cj4gKyAgICAgICAgcHJpdi0+YWNsX2hlbHBlciA9
IHNwaWNlX3VzYl9hY2xfaGVscGVyX25ldygpOwo+ICsgICAgICAgIGdfb2JqZWN0X3NldChzcGlj
ZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNFX0NIQU5ORUwoY2hhbm5lbCkpLAo+ICsgICAgICAg
ICAgICAgICAgICAgICJpbmhpYml0LWtleWJvYXJkLWdyYWIiLCBUUlVFLCBOVUxMKTsKPiArICAg
ICAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9vcGVuX2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVy
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmJ1
cywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbmZvLT5h
ZGRyZXNzLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNh
bmNlbGxhYmxlLAo+ICsKPiBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNoYW5uZWwpOwo+ICsg
ICAgfQo+ICAgICAgcmV0dXJuOwo+IC0jZWxzZQo+IC0gICAgZ190YXNrX3J1bl9pbl90aHJlYWQo
dGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKPiAgI2VuZGlmCj4gKyAgICBnX3Rhc2tfcnVu
X2luX3RocmVhZCh0YXNrLCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IpOwo+ICAKPiAgZG9uZToKPiAg
ICAgIGdfb2JqZWN0X3VucmVmKHRhc2spOwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
