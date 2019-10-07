Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A940ECDF77
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 12:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E9956E530;
	Mon,  7 Oct 2019 10:39:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C236E52E
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C5F05302C060
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 10:39:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B84E55D6D0;
 Mon,  7 Oct 2019 10:39:18 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:39:04 +0100
Message-Id: <20191007103906.30517-7-fziglio@redhat.com>
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 07 Oct 2019 10:39:19 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 6/8] red-channel: Make parser
 function compulsory
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

QXMgYmFzZSBtZXNzYWdlcyByZXF1aXJlIHBhcnNpbmcgYmV0dGVyIGNoYW5uZWxzIHNob3VsZCBh
bHdheXMgdXNlCnRoZSBnZW5lcmF0ZWQgcGFyc2VyLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8g
WmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc2VydmVyL3JlZC1jaGFubmVsLWNsaWVu
dC5jICAgICAgIHwgMTMgKystLS0tLS0tLS0tLQogc2VydmVyL3JlZC1jaGFubmVsLmMgICAgICAg
ICAgICAgIHwgIDEgKwogc2VydmVyL3Rlc3RzL3Rlc3Qtc3RyZWFtLWRldmljZS5jIHwgIDMgKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3JlZC1jaGFubmVs
LWNsaWVudC5jCmluZGV4IDY2YjhmZDRhLi4zNWVhZmE3YSAxMDA2NDQKLS0tIGEvc2VydmVyL3Jl
ZC1jaGFubmVsLWNsaWVudC5jCisrKyBiL3NlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQuYwpAQCAt
MTE3NSwxOCArMTE3NSw5IEBAIHN0YXRpYyB1aW50OF90ICpyZWRfY2hhbm5lbF9jbGllbnRfcGFy
c2UoUmVkQ2hhbm5lbENsaWVudCAqcmNjLCB1aW50OF90ICptZXNzYWdlCiB7CiAgICAgUmVkQ2hh
bm5lbCAqY2hhbm5lbCA9IHJlZF9jaGFubmVsX2NsaWVudF9nZXRfY2hhbm5lbChyY2MpOwogICAg
IFJlZENoYW5uZWxDbGFzcyAqa2xhc3MgPSBSRURfQ0hBTk5FTF9HRVRfQ0xBU1MoY2hhbm5lbCk7
Ci0gICAgdWludDhfdCAqcGFyc2VkX21lc3NhZ2U7CiAKLSAgICBpZiAoa2xhc3MtPnBhcnNlcikg
ewotICAgICAgICBwYXJzZWRfbWVzc2FnZSA9IGtsYXNzLT5wYXJzZXIobWVzc2FnZSwgbWVzc2Fn
ZSArIG1lc3NhZ2Vfc2l6ZSwgbWVzc2FnZV90eXBlLAotICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgU1BJQ0VfVkVSU0lPTl9NSU5PUiwgc2l6ZV9vdXQsIGZyZWVfbWVzc2Fn
ZSk7Ci0gICAgfSBlbHNlIHsKLSAgICAgICAgcGFyc2VkX21lc3NhZ2UgPSBtZXNzYWdlOwotICAg
ICAgICAqc2l6ZV9vdXQgPSBtZXNzYWdlX3NpemU7Ci0gICAgICAgICpmcmVlX21lc3NhZ2UgPSBO
VUxMOwotICAgIH0KLQotICAgIHJldHVybiBwYXJzZWRfbWVzc2FnZTsKKyAgICByZXR1cm4ga2xh
c3MtPnBhcnNlcihtZXNzYWdlLCBtZXNzYWdlICsgbWVzc2FnZV9zaXplLCBtZXNzYWdlX3R5cGUs
CisgICAgICAgICAgICAgICAgICAgICAgICAgU1BJQ0VfVkVSU0lPTl9NSU5PUiwgc2l6ZV9vdXQs
IGZyZWVfbWVzc2FnZSk7CiB9CiAKIC8vIFRPRE86IHRoaXMgaW1wbGVtZW50YXRpb24sIGFzIG9w
cG9zZWQgdG8gdGhlIG9sZCBpbXBsZW1lbnRhdGlvbiBpbiByZWRfd29ya2VyLApkaWZmIC0tZ2l0
IGEvc2VydmVyL3JlZC1jaGFubmVsLmMgYi9zZXJ2ZXIvcmVkLWNoYW5uZWwuYwppbmRleCBjMzZi
NjhkYy4uMGVkNThkYzggMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC5jCisrKyBiL3Nl
cnZlci9yZWQtY2hhbm5lbC5jCkBAIC0yMDgsNiArMjA4LDcgQEAgcmVkX2NoYW5uZWxfY29uc3Ry
dWN0ZWQoR09iamVjdCAqb2JqZWN0KQogCiAgICAgR19PQkpFQ1RfQ0xBU1MocmVkX2NoYW5uZWxf
cGFyZW50X2NsYXNzKS0+Y29uc3RydWN0ZWQob2JqZWN0KTsKIAorICAgIHNwaWNlX2Fzc2VydChr
bGFzcy0+cGFyc2VyICE9IE5VTEwpOwogICAgIHNwaWNlX2Fzc2VydChrbGFzcy0+aGFuZGxlX21p
Z3JhdGVfZGF0YSB8fAogICAgICAgICAgICAgICAgICAhKHNlbGYtPnByaXYtPm1pZ3JhdGlvbl9m
bGFncyAmIFNQSUNFX01JR1JBVEVfTkVFRF9EQVRBX1RSQU5TRkVSKSk7CiB9CmRpZmYgLS1naXQg
YS9zZXJ2ZXIvdGVzdHMvdGVzdC1zdHJlYW0tZGV2aWNlLmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1z
dHJlYW0tZGV2aWNlLmMKaW5kZXggNjEzY2FlZDMuLmFiZjY2ZjA0IDEwMDY0NAotLS0gYS9zZXJ2
ZXIvdGVzdHMvdGVzdC1zdHJlYW0tZGV2aWNlLmMKKysrIGIvc2VydmVyL3Rlc3RzL3Rlc3Qtc3Ry
ZWFtLWRldmljZS5jCkBAIC0xMjIsNiArMTIyLDkgQEAgc3RyZWFtX2NoYW5uZWxfaW5pdChTdHJl
YW1DaGFubmVsICpjaGFubmVsKQogc3RhdGljIHZvaWQKIHN0cmVhbV9jaGFubmVsX2NsYXNzX2lu
aXQoU3RyZWFtQ2hhbm5lbENsYXNzICprbGFzcykKIHsKKyAgICBSZWRDaGFubmVsQ2xhc3MgKmNo
YW5uZWxfY2xhc3MgPSBSRURfQ0hBTk5FTF9DTEFTUyhrbGFzcyk7CisKKyAgICBjaGFubmVsX2Ns
YXNzLT5wYXJzZXIgPSBzcGljZV9nZXRfY2xpZW50X2NoYW5uZWxfcGFyc2VyKFNQSUNFX0NIQU5O
RUxfRElTUExBWSwgTlVMTCk7CiB9CiAKIHZvaWQgc3RyZWFtX2NoYW5uZWxfY2hhbmdlX2Zvcm1h
dChTdHJlYW1DaGFubmVsICpjaGFubmVsLAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
