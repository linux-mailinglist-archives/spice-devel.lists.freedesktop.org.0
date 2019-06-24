Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B656F5059C
	for <lists+spice-devel@lfdr.de>; Mon, 24 Jun 2019 11:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE58893A4;
	Mon, 24 Jun 2019 09:26:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41625893A4
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 09:26:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A42BA3086216
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 09:26:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C72C5D721
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 09:26:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 942C1206D1;
 Mon, 24 Jun 2019 09:26:46 +0000 (UTC)
Date: Mon, 24 Jun 2019 05:26:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <1573218229.24039242.1561368404209.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190624090314.21734-1-jjanku@redhat.com>
References: <20190624090314.21734-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.19]
Thread-Topic: file-transfer-task: emit signals in main context
Thread-Index: RNcBj74Br/KennQKOMAw3rEZ0XXK3Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 24 Jun 2019 09:26:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] file-transfer-task: emit
 signals in main context
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

PiAKPiBTb21lIHBhcnRzIG9mIHRoZSBpbnRlcm5hbCBmaWxlIHRyYW5zZmVyIHRhc2sgQVBJCgpJ
IHdvdWxkIGV4cGVjdCAiTW9zdCIgb2YgdGhlbSBhcyB0aGUgYWdlbnQgbWVzc2FnZXMgYXJlIGZy
b20gdGhlIG1haW4KY2hhbm5lbC4KCj4gY2FuIGJlIGludm9rZWQgaW4gdGhlIGNvcm91dGluZSBj
b250ZXh0LCBzbyBpbiB0aGVzZSBjYXNlcwo+IHVzZSBnX2Nvcm91dGluZV9zaWduYWxfZW1pdCBh
bmQgZ19jb3JvdXRpbmVfb2JqZWN0X25vdGlmeS4KPiAKCkkgd291bGQgYWRkIHRoZSAid2h5Iiwg
SSBzdXBwb3NlIHRoZXNlIHNpZ25hbHMgYXJlIGV4cGVjdGVkIHRvIGJlCnJ1biBpbiB0aGUgbWFp
biBjb250ZXh0LiBUaGUgcXVlc3Rpb24gaXMgd2h5IHRoZXkgc2hvdWxkIGJlIHJ1biBpbgp0aGUg
bWFpbiBjb250ZXh0LiBUaGV5IGFyZSBub3QgZGlmZmVyZW50IHRocmVhZCwgdGhlIG9ubHkgZGlm
ZmVyZW5jZQp3aWxsIGJlIHRoZSBzdGFjayB0aGV5IHdpbGwgdXNlLgoKPiBTaWduZWQtb2ZmLWJ5
OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMvc3BpY2UtZmls
ZS10cmFuc2Zlci10YXNrLmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvc3BpY2UtZmlsZS10
cmFuc2Zlci10YXNrLmMgYi9zcmMvc3BpY2UtZmlsZS10cmFuc2Zlci10YXNrLmMKPiBpbmRleCBk
MDE3MGRhLi45MGYzMWRiIDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1maWxlLXRyYW5zZmVyLXRh
c2suYwo+ICsrKyBiL3NyYy9zcGljZS1maWxlLXRyYW5zZmVyLXRhc2suYwo+IEBAIC0zMjcsNyAr
MzI3LDcgQEAgdm9pZAo+IHNwaWNlX2ZpbGVfdHJhbnNmZXJfdGFza19jb21wbGV0ZWQoU3BpY2VG
aWxlVHJhbnNmZXJUYXNrICpzZWxmLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c2VsZik7Cj4gICAgICBzZWxmLT5wZW5kaW5nID0gVFJVRTsKPiAgc2lnbmFsOgo+IC0gICAgZ19z
aWduYWxfZW1pdChzZWxmLCB0YXNrX3NpZ25hbHNbU0lHTkFMX0ZJTklTSEVEXSwgMCwgc2VsZi0+
ZXJyb3IpOwo+ICsgICAgZ19jb3JvdXRpbmVfc2lnbmFsX2VtaXQoc2VsZiwgdGFza19zaWduYWxz
W1NJR05BTF9GSU5JU0hFRF0sIDAsCj4gc2VsZi0+ZXJyb3IpOwo+ICAgICAgLyogU3BpY2VGaWxl
VHJhbnNmZXJUYXNrIHVucmVmIGlzIGRvbmUgYWZ0ZXIgaW5wdXQgc3RyZWFtIGlzIGNsb3NlZCAq
Lwo+ICB9Cj4gIAo+IEBAIC00MzMsOCArNDMzLDggQEAgdm9pZAo+IHNwaWNlX2ZpbGVfdHJhbnNm
ZXJfdGFza19yZWFkX2FzeW5jKFNwaWNlRmlsZVRyYW5zZmVyVGFzayAqc2VsZiwKPiAgICAgIC8q
IE5vdGlmeSB0aGUgcHJvZ3Jlc3MgcHJpb3IgdGhlIHJlYWQgdG8gbWFrZSB0aGUgaW5mbyBiZSBy
ZWxhdGVkIHRvIHRoZQo+ICAgICAgICogZGF0YSB0aGF0IHdhcyBhbHJlYWR5IHNlbnQuIFRvIG5v
dGlmeSB0aGUgMTAwJSAoY29tcGxldGVkKSwKPiAgICAgICBjaGFubmVsLW1haW4KPiAgICAgICAq
IHNob3VsZCBjYWxsIHJlYWQtYXN5bmMgd2hlbiBpdCBleHBlY3RzIEVPRi4gKi8KPiAtICAgIGdf
b2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInByb2dyZXNzIik7Cj4gLSAgICBnX29iamVj
dF9ub3RpZnkoR19PQkpFQ1Qoc2VsZiksICJ0cmFuc2ZlcnJlZC1ieXRlcyIpOwo+ICsgICAgZ19j
b3JvdXRpbmVfb2JqZWN0X25vdGlmeShHX09CSkVDVChzZWxmKSwgInByb2dyZXNzIik7Cj4gKyAg
ICBnX2Nvcm91dGluZV9vYmplY3Rfbm90aWZ5KEdfT0JKRUNUKHNlbGYpLCAidHJhbnNmZXJyZWQt
Ynl0ZXMiKTsKPiAgCj4gICAgICB0YXNrID0gZ190YXNrX25ldyhzZWxmLCBzZWxmLT5jYW5jZWxs
YWJsZSwgY2FsbGJhY2ssIHVzZXJkYXRhKTsKPiAgCgpPdGhlcndpc2UgcGF0Y2ggbG9va3MgZ29v
ZC4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
