Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA025542B
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8066E192;
	Tue, 25 Jun 2019 16:12:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9215D6E192
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3CDD2AED51
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:23 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 33FFB5D70D;
 Tue, 25 Jun 2019 16:12:21 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:44 +0100
Message-Id: <20190625161147.25211-21-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 25 Jun 2019 16:12:23 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 20/23] websocket: Do not require
 "Sec-WebSocket-Protocol" header
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Tm90IHN0cmljdGx5IG5lZWRlZCwgY2xpZW50IGNhbiB3b3JrIGV2ZW4gd2l0aG91dCBzcGVjaWZ5
aW5nCnRoYXQuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KLS0tCiBzZXJ2ZXIvd2Vic29ja2V0LmMgfCAzMyArKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvd2Vic29ja2V0LmMgYi9zZXJ2ZXIvd2Vic29ja2V0
LmMKaW5kZXggY2IyMjJjNjkzLi41MTRlNzJjOTYgMTAwNjQ0Ci0tLSBhL3NlcnZlci93ZWJzb2Nr
ZXQuYworKysgYi9zZXJ2ZXIvd2Vic29ja2V0LmMKQEAgLTY2OCwzNyArNjY4LDQxIEBAIHN0YXRp
YyBpbnQgd2Vic29ja2V0X2Fja19jbG9zZShSZWRzV2ViU29ja2V0ICp3cykKICAgICByZXR1cm4g
cmM7CiB9CiAKLXN0YXRpYyBib29sIHdlYnNvY2tldF9pc19zdGFydChjaGFyICpidWYpCitzdGF0
aWMgYm9vbCB3ZWJzb2NrZXRfaXNfc3RhcnQoY2hhciAqYnVmLCBib29sICpwX2hhc19wcm90b3Rv
bCkKIHsKLSAgICBjb25zdCBjaGFyICpwcm90b2NvbCA9IGZpbmRfc3RyKGJ1ZiwgIlxuU2VjLVdl
YlNvY2tldC1Qcm90b2NvbDoiKTsKKyAgICAqcF9oYXNfcHJvdG90b2wgPSBmYWxzZTsKICAgICBj
b25zdCBjaGFyICprZXkgPSBmaW5kX3N0cihidWYsICJcblNlYy1XZWJTb2NrZXQtS2V5OiIpOwog
CiAgICAgaWYgKHN0cm5jbXAoYnVmLCAiR0VUICIsIDQpICE9IDAgfHwKLSAgICAgICAgICAgIHBy
b3RvY29sID09IE5VTEwgfHwga2V5ID09IE5VTEwgfHwKKyAgICAgICAgICAgIGtleSA9PSBOVUxM
IHx8CiAgICAgICAgICAgICAhZ19zdHJfaGFzX3N1ZmZpeChidWYsICJcclxuXHJcbiIpKSB7CiAg
ICAgICAgIHJldHVybiBmYWxzZTsKICAgICB9CiAKLSAgICAvKiBjaGVjayBwcm90b2NvbCB2YWx1
ZSBpZ25vcmluZyBzcGFjZXMgYmVmb3JlIGFuZCBhZnRlciAqLwotICAgIGludCBiaW5hcnlfcG9z
ID0gLTE7Ci0gICAgc3NjYW5mKHByb3RvY29sLCAiIGJpbmFyeSAlbiIsICZiaW5hcnlfcG9zKTsK
LSAgICBpZiAoYmluYXJ5X3BvcyA8PSAwKSB7Ci0gICAgICAgIHJldHVybiBmYWxzZTsKKyAgICBj
b25zdCBjaGFyICpwcm90b2NvbCA9IGZpbmRfc3RyKGJ1ZiwgIlxuU2VjLVdlYlNvY2tldC1Qcm90
b2NvbDoiKTsKKyAgICBpZiAocHJvdG9jb2wpIHsKKyAgICAgICAgKnBfaGFzX3Byb3RvdG9sID0g
dHJ1ZTsKKyAgICAgICAgLyogY2hlY2sgcHJvdG9jb2wgdmFsdWUgaWdub3Jpbmcgc3BhY2VzIGJl
Zm9yZSBhbmQgYWZ0ZXIgKi8KKyAgICAgICAgaW50IGJpbmFyeV9wb3MgPSAtMTsKKyAgICAgICAg
c3NjYW5mKHByb3RvY29sLCAiIGJpbmFyeSAlbiIsICZiaW5hcnlfcG9zKTsKKyAgICAgICAgaWYg
KGJpbmFyeV9wb3MgPD0gMCkgeworICAgICAgICAgICAgcmV0dXJuIGZhbHNlOworICAgICAgICB9
CiAgICAgfQogCiAgICAgcmV0dXJuIHRydWU7CiB9CiAKLXN0YXRpYyB2b2lkIHdlYnNvY2tldF9j
cmVhdGVfcmVwbHkoY2hhciAqYnVmLCBjaGFyICpvdXRidWYpCitzdGF0aWMgdm9pZCB3ZWJzb2Nr
ZXRfY3JlYXRlX3JlcGx5KGNoYXIgKmJ1ZiwgY2hhciAqb3V0YnVmLCBib29sIGhhc19wcm90b2Nv
bCkKIHsKICAgICBjaGFyICprZXk7CiAKICAgICBrZXkgPSBnZW5lcmF0ZV9yZXBseV9rZXkoYnVm
KTsKICAgICBzcHJpbnRmKG91dGJ1ZiwgIkhUVFAvMS4xIDEwMSBTd2l0Y2hpbmcgUHJvdG9jb2xz
XHJcbiIKLSAgICAgICAgICAgICAgICAgICAgIlVwZ3JhZGU6IHdlYnNvY2tldFxyXG4iCisgICAg
ICAgICAgICAgICAgICAgICJVcGdyYWRlOiBXZWJTb2NrZXRcclxuIgogICAgICAgICAgICAgICAg
ICAgICAiQ29ubmVjdGlvbjogVXBncmFkZVxyXG4iCi0gICAgICAgICAgICAgICAgICAgICJTZWMt
V2ViU29ja2V0LUFjY2VwdDogJXNcclxuIgotICAgICAgICAgICAgICAgICAgICAiU2VjLVdlYlNv
Y2tldC1Qcm90b2NvbDogYmluYXJ5XHJcblxyXG4iLCBrZXkpOworICAgICAgICAgICAgICAgICAg
ICAiU2VjLVdlYlNvY2tldC1BY2NlcHQ6ICVzXHJcbiVzXHJcbiIsIGtleSwKKyAgICAgICAgICAg
ICAgICAgICAgaGFzX3Byb3RvY29sID8gIlNlYy1XZWJTb2NrZXQtUHJvdG9jb2w6IGJpbmFyeVxy
XG4iOiAiIik7CiAgICAgZ19mcmVlKGtleSk7CiB9CiAKQEAgLTczMSwxMyArNzM1LDE0IEBAIFJl
ZHNXZWJTb2NrZXQgKndlYnNvY2tldF9uZXcoY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuLCB2
b2lkICpzdHJlYW0sIHdlYnNvY2tlCiAgICAgICAgICAgICAgIHNvIGl0IHNlZW1zIHdpc2VzdCB0
byBsaXZlIHdpdGggdGhpcyB0aGVvcmV0aWNhbCBmbGF3LgogICAgICovCiAKLSAgICBpZiAoIXdl
YnNvY2tldF9pc19zdGFydChyYnVmKSkgeworICAgIGJvb2wgaGFzX3Byb3RvY29sOworICAgIGlm
ICghd2Vic29ja2V0X2lzX3N0YXJ0KHJidWYsICZoYXNfcHJvdG9jb2wpKSB7CiAgICAgICAgIHJl
dHVybiBOVUxMOwogICAgIH0KIAogICAgIGNoYXIgb3V0YnVmWzEwMjRdOwogCi0gICAgd2Vic29j
a2V0X2NyZWF0ZV9yZXBseShyYnVmLCBvdXRidWYpOworICAgIHdlYnNvY2tldF9jcmVhdGVfcmVw
bHkocmJ1Ziwgb3V0YnVmLCBoYXNfcHJvdG9jb2wpOwogICAgIHJjID0gd3JpdGVfY2Ioc3RyZWFt
LCBvdXRidWYsIHN0cmxlbihvdXRidWYpKTsKICAgICBpZiAocmMgIT0gc3RybGVuKG91dGJ1Zikp
IHsKICAgICAgICAgcmV0dXJuIE5VTEw7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
