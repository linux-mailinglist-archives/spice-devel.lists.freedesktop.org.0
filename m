Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F4872BBB
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 11:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A846E4E1;
	Wed, 24 Jul 2019 09:52:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F068E6E4E1
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 09:52:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9B7D87FDE9;
 Wed, 24 Jul 2019 09:52:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 90C235D9DE;
 Wed, 24 Jul 2019 09:52:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 85FCB1800202;
 Wed, 24 Jul 2019 09:52:25 +0000 (UTC)
Date: Wed, 24 Jul 2019 05:52:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1841516028.2774966.1563961945515.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190718143043.16204-1-jwhite@codeweavers.com>
References: <20190718143043.16204-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.23]
Thread-Topic: Use C99 struct initializiers instead of memset for local
 structures.
Thread-Index: 5HqbEqlewG6IdeFPgUUYUHUsjUUn2A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 24 Jul 2019 09:52:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH x11spice] Use C99 struct initializiers
 instead of memset for local structures.
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+
CgpBY2tlZAoKPiAtLS0KPiAgc3JjL2d1aS5jICAgIHwgMyArLS0KPiAgc3JjL2xpc3Rlbi5jIHwg
MyArLS0KPiAgc3JjL21haW4uYyAgIHwgNCArLS0tCj4gIHNyYy9zcGljZS5jICB8IDMgKy0tCj4g
IDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9zcmMvZ3VpLmMgYi9zcmMvZ3VpLmMKPiBpbmRleCA2NzQ4ZjY2ZS4uODhhY2Y1
YzkgMTAwNjQ0Cj4gLS0tIGEvc3JjL2d1aS5jCj4gKysrIGIvc3JjL2d1aS5jCj4gQEAgLTE0Nywx
MCArMTQ3LDkgQEAgdm9pZCBzZXNzaW9uX2Rpc2Nvbm5lY3RfY2xpZW50KHNlc3Npb25fdCAqc2Vz
c2lvbikKPiAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiAgewo+ICAgICAgZ3Vp
X3QgZ3VpOwo+IC0gICAgc2Vzc2lvbl90IHNlc3Npb247Cj4gKyAgICBzZXNzaW9uX3Qgc2Vzc2lv
biA9IHsgMCB9Owo+ICAKPiAgICAgIHNldGxvY2FsZShMQ19BTEwsICIiKTsKPiAtICAgIG1lbXNl
dCgmc2Vzc2lvbiwgMCwgc2l6ZW9mKHNlc3Npb24pKTsKPiAgICAgIGd1aV9jcmVhdGUoJmd1aSwg
JnNlc3Npb24sIGFyZ2MsIGFyZ3YpOwo+ICAgICAgZ3VpX3J1bigmZ3VpKTsKPiAgICAgIGd1aV9k
ZXN0cm95KCZndWkpOwo+IGRpZmYgLS1naXQgYS9zcmMvbGlzdGVuLmMgYi9zcmMvbGlzdGVuLmMK
PiBpbmRleCAxYmRkZjdlZC4uNDUyZmQ4MWYgMTAwNjQ0Cj4gLS0tIGEvc3JjL2xpc3Rlbi5jCj4g
KysrIGIvc3JjL2xpc3Rlbi5jCj4gQEAgLTExNywxMSArMTE3LDEwIEBAIGludCBsaXN0ZW5fcGFy
c2UoY29uc3QgY2hhciAqbGlzdGVuX3NwZWMsIGNoYXIgKiphZGRyLAo+IGludCAqcG9ydF9zdGFy
dCwgaW50ICpwb3IKPiAgc3RhdGljIGludCB0cnlfcG9ydChjb25zdCBjaGFyICphZGRyLCBpbnQg
cG9ydCkKPiAgewo+ICAgICAgc3RhdGljIGNvbnN0IGludCBvbiA9IDEsIG9mZiA9IDA7Cj4gLSAg
ICBzdHJ1Y3QgYWRkcmluZm8gYWksICpyZXMsICplOwo+ICsgICAgc3RydWN0IGFkZHJpbmZvIGFp
ID0geyAwIH0sICpyZXMsICplOwo+ICAgICAgY2hhciBwb3J0YnVmWzMzXTsKPiAgICAgIGludCBz
b2NrLCByYzsKPiAgCj4gLSAgICBtZW1zZXQoJmFpLCAwLCBzaXplb2YoYWkpKTsKPiAgICAgIGFp
LmFpX2ZsYWdzID0gQUlfUEFTU0lWRSB8IEFJX0FERFJDT05GSUc7Cj4gICAgICBhaS5haV9zb2Nr
dHlwZSA9IFNPQ0tfU1RSRUFNOwo+ICAgICAgYWkuYWlfZmFtaWx5ID0gMDsKPiBkaWZmIC0tZ2l0
IGEvc3JjL21haW4uYyBiL3NyYy9tYWluLmMKPiBpbmRleCA3ZjMyMWFmOS4uZjE4MzExYzkgMTAw
NjQ0Cj4gLS0tIGEvc3JjL21haW4uYwo+ICsrKyBiL3NyYy9tYWluLmMKPiBAQCAtNTUsNyArNTUs
NyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQo+ICB7Cj4gICAgICBpbnQgcmM7
Cj4gIAo+IC0gICAgc2Vzc2lvbl90IHNlc3Npb247Cj4gKyAgICBzZXNzaW9uX3Qgc2Vzc2lvbiA9
IHsgMCB9Owo+ICAKPiAgICAgIGludCBkaXNwbGF5X29wZW5lZCA9IDA7Cj4gICAgICBpbnQgc3Bp
Y2Vfc3RhcnRlZCA9IDA7Cj4gQEAgLTYzLDggKzYzLDYgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNo
YXIgKmFyZ3ZbXSkKPiAgICAgIGludCBzZXNzaW9uX2NyZWF0ZWQgPSAwOwo+ICAgICAgaW50IHNl
c3Npb25fc3RhcnRlZCA9IDA7Cj4gIAo+IC0gICAgbWVtc2V0KCZzZXNzaW9uLCAwLCBzaXplb2Yo
c2Vzc2lvbikpOwo+IC0KPiAgICAgIC8qLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICAgICAqKiAgUGFyc2Ug
YXJndW1lbnRzCj4gICAgICAqKi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0qLwo+IGRpZmYgLS1naXQgYS9zcmMvc3Bp
Y2UuYyBiL3NyYy9zcGljZS5jCj4gaW5kZXggZDk2NjY0NDEuLjQzMGRmNDA1IDEwMDY0NAo+IC0t
LSBhL3NyYy9zcGljZS5jCj4gKysrIGIvc3JjL3NwaWNlLmMKPiBAQCAtNDc0LDkgKzQ3NCw4IEBA
IHN0YXRpYyBpbnQgc2VuZF9tb25pdG9yc19jb25maWcoc3BpY2VfdCAqcywgaW50IHcsIGludCBo
KQo+ICAKPiAgaW50IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KHNwaWNlX3QgKnMsIGludCB3LCBpbnQg
aCwgaW50IGJ5dGVzX3Blcl9saW5lLCB2b2lkCj4gICpzaG1hZGRyKQo+ICB7Cj4gLSAgICBRWExE
ZXZTdXJmYWNlQ3JlYXRlIHN1cmZhY2U7Cj4gKyAgICBRWExEZXZTdXJmYWNlQ3JlYXRlIHN1cmZh
Y2UgPSB7IDAgfTsKPiAgCj4gLSAgICBtZW1zZXQoJnN1cmZhY2UsIDAsIHNpemVvZihzdXJmYWNl
KSk7Cj4gICAgICBzdXJmYWNlLmhlaWdodCA9IGg7Cj4gICAgICBzdXJmYWNlLndpZHRoID0gdzsK
PiAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
