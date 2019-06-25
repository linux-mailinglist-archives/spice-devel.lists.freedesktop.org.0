Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C6255424
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69266E174;
	Tue, 25 Jun 2019 16:12:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BB96E17D
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1CD1F307D984
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:12 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3CB345B68D;
 Tue, 25 Jun 2019 16:12:10 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:39 +0100
Message-Id: <20190625161147.25211-16-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 25 Jun 2019 16:12:12 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 15/23] websocket: Support
 correctly protocol values
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

SWdub3JlIHNwYWNlcyBiZWZvcmUgImJpbmFyeSIgdmFsdWUuCkhUVFAgYWxsb3dzIHNwYWNlIGJl
Zm9yZSBhbmQgYWZ0ZXIgdGhlIHZhbHVlIGFsdGhvdWdoIHVzdWFsbHkKYnJvd3NlcnMgaW1wbGVt
ZW50YXRpb24gc3RhcnQgdGhlIHZhbHVlIHdpdGggYSBzaW5nbGUgQVNDSUkgc3BhY2UuCgpTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2
ZXIvd2Vic29ja2V0LmMgfCAyMiArKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIv
d2Vic29ja2V0LmMgYi9zZXJ2ZXIvd2Vic29ja2V0LmMKaW5kZXggNmYxNTgxZjljLi45NmM2ZmNl
MWYgMTAwNjQ0Ci0tLSBhL3NlcnZlci93ZWJzb2NrZXQuYworKysgYi9zZXJ2ZXIvd2Vic29ja2V0
LmMKQEAgLTUwMSwxNSArNTAxLDIzIEBAIHN0YXRpYyB2b2lkIHdlYnNvY2tldF9hY2tfY2xvc2Uo
dm9pZCAqc3RyZWFtLCB3ZWJzb2NrZXRfd3JpdGVfY2JfdCB3cml0ZV9jYikKIAogc3RhdGljIGJv
b2wgd2Vic29ja2V0X2lzX3N0YXJ0KGNoYXIgKmJ1ZikKIHsKLSAgICBpZiAoc3RybmNtcChidWYs
ICJHRVQgIiwgNCkgPT0gMCAmJgotICAgICAgICAgICAgLy8gVE9ETyBzdHJpcCwgZG8gbm90IGFz
c3VtZSBhIHNpbmdsZSBzcGFjZQotICAgICAgICAgICAgZmluZF9zdHIoYnVmLCAiXG5TZWMtV2Vi
U29ja2V0LVByb3RvY29sOiBiaW5hcnkiKSAmJgotICAgICAgICAgICAgZmluZF9zdHIoYnVmLCAi
XG5TZWMtV2ViU29ja2V0LUtleToiKSAmJgotICAgICAgICAgICAgZ19zdHJfaGFzX3N1ZmZpeChi
dWYsICJcclxuXHJcbiIpKSB7Ci0gICAgICAgIHJldHVybiB0cnVlOworICAgIGNvbnN0IGNoYXIg
KnByb3RvY29sID0gZmluZF9zdHIoYnVmLCAiXG5TZWMtV2ViU29ja2V0LVByb3RvY29sOiIpOwor
ICAgIGNvbnN0IGNoYXIgKmtleSA9IGZpbmRfc3RyKGJ1ZiwgIlxuU2VjLVdlYlNvY2tldC1LZXk6
Iik7CisKKyAgICBpZiAoc3RybmNtcChidWYsICJHRVQgIiwgNCkgIT0gMCB8fAorICAgICAgICAg
ICAgcHJvdG9jb2wgPT0gTlVMTCB8fCBrZXkgPT0gTlVMTCB8fAorICAgICAgICAgICAgIWdfc3Ry
X2hhc19zdWZmaXgoYnVmLCAiXHJcblxyXG4iKSkgeworICAgICAgICByZXR1cm4gZmFsc2U7CiAg
ICAgfQogCi0gICAgcmV0dXJuIGZhbHNlOworICAgIC8qIGNoZWNrIHByb3RvY29sIHZhbHVlIGln
bm9yaW5nIHNwYWNlcyBiZWZvcmUgYW5kIGFmdGVyICovCisgICAgaW50IGJpbmFyeV9wb3MgPSAt
MTsKKyAgICBzc2NhbmYocHJvdG9jb2wsICIgYmluYXJ5ICVuIiwgJmJpbmFyeV9wb3MpOworICAg
IGlmIChiaW5hcnlfcG9zIDw9IDApIHsKKyAgICAgICAgcmV0dXJuIGZhbHNlOworICAgIH0KKwor
ICAgIHJldHVybiB0cnVlOwogfQogCiBzdGF0aWMgdm9pZCB3ZWJzb2NrZXRfY3JlYXRlX3JlcGx5
KGNoYXIgKmJ1ZiwgY2hhciAqb3V0YnVmKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
