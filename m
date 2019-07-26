Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE847613C
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 10:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85746E8A7;
	Fri, 26 Jul 2019 08:47:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEBE6E8A7
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 08:47:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C6125859FE;
 Fri, 26 Jul 2019 08:47:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B77E760A35;
 Fri, 26 Jul 2019 08:47:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAC7441F40;
 Fri, 26 Jul 2019 08:47:30 +0000 (UTC)
Date: Fri, 26 Jul 2019 04:47:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <560299027.3089636.1564130850636.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5Oc2yrk5URaDz6mUiYte-kHwY8Z+A=ZdkkxsekN2EVFBig@mail.gmail.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-6-yuri.benditovich@daynix.com>
 <1067233620.2956119.1564046235108.JavaMail.zimbra@redhat.com>
 <CAOEp5Oc2yrk5URaDz6mUiYte-kHwY8Z+A=ZdkkxsekN2EVFBig@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.10]
Thread-Topic: usb-redir: do not use spice_usb_acl_helper for emulated devices
Thread-Index: EBcUhN+x1IYZBO/x6akSEx1VQxb3fg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 26 Jul 2019 08:47:30 +0000 (UTC)
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBPbiBUaHUsIEp1bCAyNSwgMjAxOSBhdCAxMjoxNyBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWds
aW9AcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZdXJp
IEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiA+IC0tLQo+ID4g
PiAgc3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8IDI5ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25z
KC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIvc3Jj
L2NoYW5uZWwtdXNicmVkaXIuYwo+ID4gPiBpbmRleCA4ZDRjZDY2Li45NjFhNDY0IDEwMDY0NAo+
ID4gPiAtLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jCj4gPiA+ICsrKyBiL3NyYy9jaGFubmVs
LXVzYnJlZGlyLmMKPiA+ID4gQEAgLTMwMSw3ICszMDEsNiBAQCBzdGF0aWMgdm9pZCBzcGljZV91
c2JyZWRpcl9jaGFubmVsX29wZW5fYWNsX2NiKAo+ID4gPiAgfQo+ID4gPiAgI2VuZGlmCj4gPiA+
Cj4gPiA+IC0jaWZuZGVmIFVTRV9QT0xLSVQKPiA+ID4gIHN0YXRpYyB2b2lkCj4gPiA+ICBfb3Bl
bl9kZXZpY2VfYXN5bmNfY2IoR1Rhc2sgKnRhc2ssCj4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgZ3BvaW50ZXIgb2JqZWN0LAo+ID4gPiBAQCAtMzI4LDcgKzMyNyw2IEBAIF9vcGVuX2Rldmlj
ZV9hc3luY19jYihHVGFzayAqdGFzaywKPiA+ID4gICAgICAgICAgZ190YXNrX3JldHVybl9ib29s
ZWFuKHRhc2ssIFRSVUUpOwo+ID4gPiAgICAgIH0KPiA+ID4gIH0KPiA+ID4gLSNlbmRpZgo+ID4g
Pgo+ID4gPiAgR19HTlVDX0lOVEVSTkFMCj4gPiA+ICB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5u
ZWxfY29ubmVjdF9kZXZpY2VfYXN5bmMoCj4gPiA+IEBAIC0zNzMsMjEgKzM3MSwyMiBAQCB2b2lk
IHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfY29ubmVjdF9kZXZpY2VfYXN5bmMoCj4gPiA+ICAgICAg
cHJpdi0+c3BpY2VfZGV2aWNlID0gZ19ib3hlZF9jb3B5KHNwaWNlX3VzYl9kZXZpY2VfZ2V0X3R5
cGUoKSwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2Vf
ZGV2aWNlKTsKPiA+ID4gICNpZmRlZiBVU0VfUE9MS0lUCj4gPiA+IC0gICAgcHJpdi0+dGFzayA9
IHRhc2s7Cj4gPiA+IC0gICAgcHJpdi0+c3RhdGUgID0gU1RBVEVfV0FJVElOR19GT1JfQUNMX0hF
TFBFUjsKPiA+ID4gLSAgICBwcml2LT5hY2xfaGVscGVyID0gc3BpY2VfdXNiX2FjbF9oZWxwZXJf
bmV3KCk7Cj4gPiA+IC0gICAgZ19vYmplY3Rfc2V0KHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Npb24o
U1BJQ0VfQ0hBTk5FTChjaGFubmVsKSksCj4gPiA+IC0gICAgICAgICAgICAgICAgICJpbmhpYml0
LWtleWJvYXJkLWdyYWIiLCBUUlVFLCBOVUxMKTsKPiA+ID4gLSAgICBzcGljZV91c2JfYWNsX2hl
bHBlcl9vcGVuX2FjbF9hc3luYyhwcml2LT5hY2xfaGVscGVyLAo+ID4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmJ1cywKPiA+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbmZvLT5hZGRyZXNzLAo+ID4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNhbmNlbGxhYmxlLAo+ID4gPiAtCj4g
PiA+IHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9hY2xfY2IsCj4gPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhbm5lbCk7Cj4gPiA+ICsgICAgaWYgKGlu
Zm8tPmRldmljZV90eXBlID09IFVTQl9ERVZfVFlQRV9OT05FKSB7Cj4gPgo+ID4gV2h5IG5vdAo+
ID4KPiA+ICAgIGlmIChpbmZvLT5kZXZpY2VfdHlwZSAhPSBVU0JfREVWX1RZUEVfTk9ORSkgewo+
ID4gICAgICAgcmV0dXJuOwo+ID4gICAgfQo+ID4KPiAKPiBCZWNhdXNlIHRoaXMgaXMgbm90ICJy
ZXR1cm4iLCB0aGlzIHNob3VsZCBwcm9jZWVkIHRvIGdfdGFza19ydW5faW5fdGhyZWFkIGV0Ywo+
IAoKSW4gdGhpcyBjYXNlIHlvdSBoYXZlIHRvIHJlbW92ZSB0aGUgInJldHVybiIganVzdCBhZnRl
ciB0aGUgaWYuCgpZb3UgZWl0aGVyIGRpc2FibGVkIFBPTEtJVCBvciB5b3UgZGlkbid0IHRlc3Qg
dGhhdCBjb2RlLgoKPiA+IHdvdWxkIG1pbmltaXplIGNoYW5nZXMuCj4gPiBBcyBzdGF0ZWQgaW4g
cHJldmlvdXMgY29tbWVudCAob3RoZXIgcGF0Y2gpIHRoZSBlbnVtZXJhdGlvbiBpcyBtaXNsZWFk
aW5nLgo+ID4gQXMgImluZm8iIGhvbGQgaW5mb3JtYXRpb24gZm9yIGFueSB1c2IgZGV2aWNlIHBl
b3BsZSByZWFkaW5nIHRoaXMgd291bGQgc2F5Cj4gPiB0aGF0IHRoZSBkZXZpY2Ugd2FzIG5vdCB2
YWxpZCwgc29tZXRoaW5nIGxpa2UKPiA+Cj4gPiAgIGlmIChpbmZvLT5lbXVsYXRlZF90eXBlICE9
IFVTQl9ERVZfRU1VX1RZUEVfTk9UX0VNVUxBVEVEKQo+ID4KPiA+IG9yCj4gPgo+ID4gICBpZiAo
aW5mby0+ZW11bGF0ZWRfdHlwZSAhPSBVU0JfREVWX0VNVV9UWVBFX1JFQUwpCj4gPgo+ID4gd291
bGQgYmUgbXVjaCBtb3JlIHVuZGVyc3RhbmRhYmxlLgo+ID4KPiA+ID4gKyAgICAgICAgcHJpdi0+
dGFzayA9IHRhc2s7Cj4gPiA+ICsgICAgICAgIHByaXYtPnN0YXRlICA9IFNUQVRFX1dBSVRJTkdf
Rk9SX0FDTF9IRUxQRVI7Cj4gPiA+ICsgICAgICAgIHByaXYtPmFjbF9oZWxwZXIgPSBzcGljZV91
c2JfYWNsX2hlbHBlcl9uZXcoKTsKPiA+ID4gKyAgICAgICAgZ19vYmplY3Rfc2V0KHNwaWNlX2No
YW5uZWxfZ2V0X3Nlc3Npb24oU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSksCj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICJpbmhpYml0LWtleWJvYXJkLWdyYWIiLCBUUlVFLCBOVUxMKTsKPiA+ID4g
KyAgICAgICAgc3BpY2VfdXNiX2FjbF9oZWxwZXJfb3Blbl9hY2xfYXN5bmMocHJpdi0+YWNsX2hl
bHBlciwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW5mby0+YnVzLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbmZvLT5hZGRyZXNzLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjYW5jZWxsYWJsZSwKPiA+ID4gKwo+ID4gPiBzcGljZV91c2JyZWRpcl9j
aGFubmVsX29wZW5fYWNsX2NiLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjaGFubmVsKTsKPiA+ID4gKyAgICB9Cj4gPiA+ICAgICAgcmV0dXJuOwo+
ID4gPiAtI2Vsc2UKPiA+ID4gLSAgICBnX3Rhc2tfcnVuX2luX3RocmVhZCh0YXNrLCBfb3Blbl9k
ZXZpY2VfYXN5bmNfY2IpOwo+ID4gPiAgI2VuZGlmCj4gPiA+ICsgICAgZ190YXNrX3J1bl9pbl90
aHJlYWQodGFzaywgX29wZW5fZGV2aWNlX2FzeW5jX2NiKTsKPiA+ID4KPiA+ID4gIGRvbmU6Cj4g
PiA+ICAgICAgZ19vYmplY3RfdW5yZWYodGFzayk7Cj4gPgo+ID4gRnJlZGlhbm8KPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
