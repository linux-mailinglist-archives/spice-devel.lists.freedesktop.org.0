Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FBF8163B
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 12:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D8C89FD9;
	Mon,  5 Aug 2019 10:01:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B6F589FD9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 10:01:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DC9F73084031;
 Mon,  5 Aug 2019 10:01:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CA9B75C3F8;
 Mon,  5 Aug 2019 10:01:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BCD7B18089C8;
 Mon,  5 Aug 2019 10:01:44 +0000 (UTC)
Date: Mon, 5 Aug 2019 06:01:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <2101862064.4704310.1564999304726.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190804191624.29235-4-yuri.benditovich@daynix.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
 <20190804191624.29235-4-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.3]
Thread-Topic: usb-redir: do not use spice_usb_acl_helper for emulated devices
Thread-Index: CKIcVdftVUAjdmanj0I/xsjWQTnIpQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 05 Aug 2019 10:01:44 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v2 3/8] usb-redir: do not use
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
eW5peC5jb20+CgpBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Cgo+IC0tLQo+ICBzcmMvY2hhbm5lbC11c2JyZWRpci5jIHwgMzEgKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMgYi9zcmMv
Y2hhbm5lbC11c2JyZWRpci5jCj4gaW5kZXggOGQ0Y2Q2Ni4uOGZkNmI0MSAxMDA2NDQKPiAtLS0g
YS9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gKysrIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIuYwo+
IEBAIC0zMDEsNyArMzAxLDYgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9v
cGVuX2FjbF9jYigKPiAgfQo+ICAjZW5kaWYKPiAgCj4gLSNpZm5kZWYgVVNFX1BPTEtJVAo+ICBz
dGF0aWMgdm9pZAo+ICBfb3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4gICAgICAg
ICAgICAgICAgICAgICAgICBncG9pbnRlciBvYmplY3QsCj4gQEAgLTMyOCw3ICszMjcsNiBAQCBf
b3Blbl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4gICAgICAgICAgZ190YXNrX3JldHVy
bl9ib29sZWFuKHRhc2ssIFRSVUUpOwo+ICAgICAgfQo+ICB9Cj4gLSNlbmRpZgo+ICAKPiAgR19H
TlVDX0lOVEVSTkFMCj4gIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9jb25uZWN0X2Rldmlj
ZV9hc3luYygKPiBAQCAtMzczLDIxICszNzEsMjIgQEAgdm9pZCBzcGljZV91c2JyZWRpcl9jaGFu
bmVsX2Nvbm5lY3RfZGV2aWNlX2FzeW5jKAo+ICAgICAgcHJpdi0+c3BpY2VfZGV2aWNlID0gZ19i
b3hlZF9jb3B5KHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3R5cGUoKSwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzcGljZV9kZXZpY2UpOwo+ICAjaWZkZWYgVVNFX1BPTEtJ
VAo+IC0gICAgcHJpdi0+dGFzayA9IHRhc2s7Cj4gLSAgICBwcml2LT5zdGF0ZSAgPSBTVEFURV9X
QUlUSU5HX0ZPUl9BQ0xfSEVMUEVSOwo+IC0gICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3Vz
Yl9hY2xfaGVscGVyX25ldygpOwo+IC0gICAgZ19vYmplY3Rfc2V0KHNwaWNlX2NoYW5uZWxfZ2V0
X3Nlc3Npb24oU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSksCj4gLSAgICAgICAgICAgICAgICAgImlu
aGliaXQta2V5Ym9hcmQtZ3JhYiIsIFRSVUUsIE5VTEwpOwo+IC0gICAgc3BpY2VfdXNiX2FjbF9o
ZWxwZXJfb3Blbl9hY2xfYXN5bmMocHJpdi0+YWNsX2hlbHBlciwKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmJ1cywKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmFkZHJlc3MsCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjYW5jZWxsYWJsZSwKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2Is
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVsKTsKPiAt
ICAgIHJldHVybjsKPiAtI2Vsc2UKPiAtICAgIGdfdGFza19ydW5faW5fdGhyZWFkKHRhc2ssIF9v
cGVuX2RldmljZV9hc3luY19jYik7Cj4gKyAgICBpZiAoaW5mby0+YnVzICE9IEJVU19OVU1CRVJf
Rk9SX0VNVUxBVEVEX1VTQikgewo+ICsgICAgICAgIHByaXYtPnRhc2sgPSB0YXNrOwo+ICsgICAg
ICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dBSVRJTkdfRk9SX0FDTF9IRUxQRVI7Cj4gKyAgICAg
ICAgcHJpdi0+YWNsX2hlbHBlciA9IHNwaWNlX3VzYl9hY2xfaGVscGVyX25ldygpOwo+ICsgICAg
ICAgIGdfb2JqZWN0X3NldChzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNFX0NIQU5ORUwo
Y2hhbm5lbCkpLAo+ICsgICAgICAgICAgICAgICAgICAgICJpbmhpYml0LWtleWJvYXJkLWdyYWIi
LCBUUlVFLCBOVUxMKTsKPiArICAgICAgICBzcGljZV91c2JfYWNsX2hlbHBlcl9vcGVuX2FjbF9h
c3luYyhwcml2LT5hY2xfaGVscGVyLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGluZm8tPmJ1cywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBpbmZvLT5hZGRyZXNzLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNhbmNlbGxhYmxlLAo+ICsKPiBzcGljZV91c2JyZWRpcl9jaGFu
bmVsX29wZW5fYWNsX2NiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGNoYW5uZWwpOwo+ICsgICAgICAgIHJldHVybjsKPiArICAgIH0KPiAgI2VuZGlmCj4g
KyAgICBnX3Rhc2tfcnVuX2luX3RocmVhZCh0YXNrLCBfb3Blbl9kZXZpY2VfYXN5bmNfY2IpOwo+
ICAKPiAgZG9uZToKPiAgICAgIGdfb2JqZWN0X3VucmVmKHRhc2spOwoKRnJlZGlhbm8KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
